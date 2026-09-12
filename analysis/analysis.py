#!/usr/bin/env python3
"""Generate the paper's result tables (see paper_src/6_evaluation.tex) from a
merged results JSONL file, as Markdown, plus the two Figure 7 speedup plots.

Table numbering follows the paper's own \\begin{table} floats: Table 1 is an
unrelated proof-cases table (not generated here), Table 5 is the per-pass
breakdown (not generated — needs data this script doesn't have), so the
tables below are numbered 2, 3, 4, 5, 6 (5 and 6 renumbered down from the
paper's 6 and 7 to close the gap left by omitting table 5).

Usage:
    python3 analysis.py <merged.jsonl> [-o tables.md]
"""

import argparse
import json
import math
import sys
from pathlib import Path

import matplotlib.pyplot as plt

SLOW = 10
PAIR_METHODS = ["pairs_fixed", "pairs_mean", "pairs_top2", "pairs_dynamic", "pairs_dynamic_four"]
PAIR_LABELS = ["fixed", "cutout", "top2", "cluster", "clusterfour"]
DECOMPOSE_METHODS = ["decompose_fixed", "decompose_mean", "decompose_top2", "decompose_dynamic", "decompose_dynamic_four"]
DECOMPOSE_LABELS = ["fixed", "cutout", "top2", "cluster", "clusterfour"]
BEST_METHODS = ["decompose", "pairs_dynamic_four", "decompose_dynamic_four"]
BEST_LABELS = ["Spatial", "Temporal", "Combined"]

PLOT_THRESHOLDS = list(range(0, 11)) + list(range(30, 330, 30))


def load_records(path):
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            r = json.loads(line)
            # Functions not supported by vanilla alive_tv -> excluded
            if r["alive_tv"]["result"] == "incorrect":
                continue
            records.append(r)
    return records


def geomean(vals):
    if not vals:
        return float("nan")
    return math.exp(sum(math.log(v) for v in vals) / len(vals))


def compute_stats(buckets, portfolio_speedups):
    total_timeouts = len(buckets[(False, False)]) + len(buckets[(False, True)])
    timeout_solved = len(buckets[(False, True)])
    gm_overall = geomean([v for vals in buckets.values() for v in vals])
    gm_portfolio = geomean(portfolio_speedups)
    return total_timeouts, timeout_solved, gm_overall, gm_portfolio


def pair_stats(records, method_base, method_b, slow=False):
    """Compare method_b against method_base. Returns (total_timeouts, timeout_solved,
    gm_overall, gm_portfolio) over records (optionally filtered to base time > SLOW)."""
    buckets = {(False, False): [], (False, True): [], (True, False): [], (True, True): []}
    portfolio = []
    for r in records:
        ra = r[method_base]
        if slow and ra["time"] <= SLOW:
            continue
        rb = r[method_b]
        if rb["result"] == "incorrect":
            rb = ra
        a_solved = ra["result"] == "correct"
        b_solved = rb["result"] == "correct"
        speedup = ra["time"] / rb["time"] if rb["time"] > 0 else float("inf")
        port_speedup = ra["time"] / min(ra["time"], rb["time"])
        buckets[(a_solved, b_solved)].append(speedup)
        portfolio.append(port_speedup)
    return compute_stats(buckets, portfolio)


def md_table(headers, rows, aligns=None):
    if aligns is None:
        aligns = ["---"] * len(headers)
    lines = ["| " + " | ".join(str(h) for h in headers) + " |"]
    lines.append("| " + " | ".join(aligns) + " |")
    for row in rows:
        lines.append("| " + " | ".join(str(c) for c in row) + " |")
    return "\n".join(lines)


def multi_comparison_stats(records, method_base, methods):
    all_stats = {}
    for method_b in methods:
        all_stats[method_b] = {
            "all": pair_stats(records, method_base, method_b, slow=False),
            "slow": pair_stats(records, method_base, method_b, slow=True),
        }
    return all_stats


def avg_num_pairs(records, method):
    vals = [r[method]["num_pairs"] for r in records if "num_pairs" in r.get(method, {})]
    return f"{sum(vals)/len(vals):.2f}" if vals else "--"


# ---------------------------------------------------------------------------
# Table 2: benchmark summary
# ---------------------------------------------------------------------------

def table_2_benchmark(records):
    from collections import defaultdict
    lines = ["## Table 2: Summary of LLVM IR functions in the evaluation dataset", ""]
    stem_data = defaultdict(list)
    for r in records:
        stem = r["file"].split("/")[-2]
        stem_data[stem].append(r["num_instructions"])

    all_instrs = []
    rows = []
    for stem in sorted(stem_data):
        ni = stem_data[stem]
        all_instrs.extend(ni)
        rows.append([stem, len(ni), f"{sum(ni)/len(ni):.1f}", min(ni), max(ni)])
    rows.append(["**Total**", len(all_instrs), f"{sum(all_instrs)/len(all_instrs):.1f}",
                 min(all_instrs), max(all_instrs)])
    lines.append(md_table(["Stem", "# Functions", "Avg Instrs", "Min", "Max"], rows,
                           aligns=["---", "---:", "---:", "---:", "---:"]))
    return lines


# ---------------------------------------------------------------------------
# Table 3: spatial decomposition (end-to-end + pass-by-pass subtables)
# ---------------------------------------------------------------------------

def table_3_spatial(records):
    lines = ["## Table 3: Spatial decomposition results", ""]

    def subtable(title, method_a, method_b):
        sub = [f"### {title}", ""]
        thresholds = [0, SLOW]
        stats_by_t = {t: pair_stats(records, method_a, method_b, slow=(t > 0)) for t in thresholds}
        counts_by_t = {t: sum(1 for r in records if r[method_a]["time"] > t) for t in thresholds}

        s0 = stats_by_t[0]
        total_timeouts, timeout_solved = s0[0], s0[1]
        tt_pct = f"{100 * timeout_solved / total_timeouts:.1f}%" if total_timeouts else "n/a"
        sub.append(f"- Timeout cases: {total_timeouts}")
        sub.append(f"- Timeout -> solved: {timeout_solved} ({tt_pct})")
        sub.append("")

        headers = ["Metric", "All"] + [f"> {t}s" for t in thresholds[1:]]
        rows = [
            ["Cases"] + [str(counts_by_t[t]) for t in thresholds],
            ["Speedup"] + [f"{stats_by_t[t][2]:.3f}x" for t in thresholds],
            ["Portfolio Speedup"] + [f"{stats_by_t[t][3]:.3f}x" for t in thresholds],
        ]
        sub.append(md_table(headers, rows))
        return sub

    lines += subtable("End-to-end translation validation", "alive_tv", "alive_tv_decompose")
    lines.append("")
    lines += subtable("Pass-by-pass translation validation", "all_passes", "decompose")
    return lines


# ---------------------------------------------------------------------------
# Table 4: breakdown by benchmark
# ---------------------------------------------------------------------------

def table_4_breakout(records):
    lines = ["## Table 4: Breakdown of spatial decomposition results by benchmark", ""]
    stems = sorted(set(r["file"].split("/")[-2] for r in records))

    def stem_stats(stem_records, baseline, method, slow=False):
        buckets = {(False, False): [], (False, True): [], (True, False): [], (True, True): []}
        portfolio = []
        for r in stem_records:
            ra = r[baseline]
            if slow and ra["time"] <= SLOW:
                continue
            rb = r[method]
            if rb["result"] == "incorrect":
                rb = ra
            a_solved = ra["result"] == "correct"
            b_solved = rb["result"] == "correct"
            speedup = ra["time"] / rb["time"] if rb["time"] > 0 else float("inf")
            port_speedup = ra["time"] / min(ra["time"], rb["time"])
            buckets[(a_solved, b_solved)].append(speedup)
            portfolio.append(port_speedup)
        all_speedups = [v for vals in buckets.values() for v in vals]
        if not all_speedups:
            return float("nan"), float("nan"), 0, 0
        t2s = len(buckets[(False, True)])
        total_timeouts = len(buckets[(False, False)]) + len(buckets[(False, True)])
        return geomean(all_speedups), geomean(portfolio), t2s, total_timeouts

    def fmt_t2s(t2s, tot):
        pct = round(t2s / tot * 100) if tot > 0 else 0
        return f"{t2s} ({pct}%)"

    def row_for(label, sr):
        gm_atv, gp_atv, t2s_atv, tot_atv = stem_stats(sr, "alive_tv", "alive_tv_decompose", slow=False)
        gm_atv_s, gp_atv_s, t2s_atv_s, tot_atv_s = stem_stats(sr, "alive_tv", "alive_tv_decompose", slow=True)
        gm_ap, gp_ap, t2s_ap, tot_ap = stem_stats(sr, "all_passes", "decompose", slow=False)
        gm_ap_s, gp_ap_s, t2s_ap_s, tot_ap_s = stem_stats(sr, "all_passes", "decompose", slow=True)
        return [label,
                f"{gm_atv:.3f}x", f"{gm_atv_s:.3f}x", f"{gp_atv:.3f}x", fmt_t2s(t2s_atv, tot_atv),
                f"{gm_ap:.3f}x", f"{gm_ap_s:.3f}x", f"{gp_ap:.3f}x", fmt_t2s(t2s_ap, tot_ap)]

    rows = []
    for stem in stems:
        sr = [r for r in records if r["file"].split("/")[-2] == stem]
        rows.append(row_for(stem, sr))
    rows.append(row_for("**Overall**", records))

    headers = ["Stem",
               "End-to-end: Overall", f"End-to-end: >{SLOW}s", "End-to-end: Portfolio", "End-to-end: T->S",
               "Pass-by-pass: Overall", f"Pass-by-pass: >{SLOW}s", "Pass-by-pass: Portfolio", "Pass-by-pass: T->S"]
    lines.append(md_table(headers, rows))
    return lines


# ---------------------------------------------------------------------------
# Tables 5 & 6: temporal decomposition heuristics / combined heuristics
# (renumbered down from the paper's Table 6 / Table 7, since Table 5 --
# the per-pass breakdown -- is not generated here)
# ---------------------------------------------------------------------------

def _combined_heuristics_table(records, methods, labels, title):
    lines = [f"## {title}", ""]
    all_cols = methods + ["all_passes", "alive_tv"]
    col_labels = labels + ["pp", "ee"]

    stats_ee = multi_comparison_stats(records, "alive_tv", methods + ["all_passes"])
    stats_pp = multi_comparison_stats(records, "all_passes", methods + ["alive_tv"])

    avg_pairs = {c: avg_num_pairs(records, c) for c in methods}
    avg_pairs["alive_tv"] = "1"
    pass_counts = []
    for r in records:
        passes_path = r["file"].replace(".ll", "_passes.json")
        try:
            with open(passes_path) as f:
                data = json.load(f)
            pass_counts.append(len(data["passes"]))
        except FileNotFoundError:
            pass
    avg_pairs["all_passes"] = f"{sum(pass_counts)/len(pass_counts):.2f}" if pass_counts else "--"

    header_row = ["# Segments (avg)"] + [avg_pairs.get(c, "--") for c in all_cols]
    lines.append(md_table(["Metric"] + col_labels, [header_row]))
    lines.append("")

    row_labels = ["T -> S", "Overall", f">{SLOW}s", "Portfolio"]

    def build_section(section_name, stats, skip_col):
        rows = []
        for i, rlabel in enumerate(row_labels):
            row = [rlabel]
            for c in all_cols:
                if c == skip_col or c not in stats:
                    row.append("--")
                    continue
                entry = stats[c]
                if i == 0:
                    row.append(str(entry["all"][1]))
                elif i == 1:
                    row.append(f"{entry['all'][2]:.3f}x")
                elif i == 2:
                    row.append(f"{entry['slow'][2]:.3f}x" if entry["slow"][3] else "--")
                else:
                    row.append(f"{entry['all'][3]:.3f}x")
            rows.append(row)
        return [f"### Versus {section_name}", "", md_table(["Metric"] + col_labels, rows), ""]

    lines += build_section("alive_tv (ee)", stats_ee, "alive_tv")
    lines += build_section("all_passes (pp)", stats_pp, "all_passes")
    return lines


def table_5_temporal(records):
    return _combined_heuristics_table(records, PAIR_METHODS, PAIR_LABELS,
                                       "Table 5: Temporal decomposition heuristics")


def table_6_combined(records):
    return _combined_heuristics_table(records, DECOMPOSE_METHODS, DECOMPOSE_LABELS,
                                       "Table 6: Combined spatial and temporal decomposition heuristics")


# ---------------------------------------------------------------------------
# Figure 8b: overall results (spatial / temporal / combined), tab:overall
# ---------------------------------------------------------------------------

def figure_8b_overall(records):
    lines = ["## Figure 8b: Overall results (spatial / temporal / combined)", ""]
    methods, labels = BEST_METHODS, BEST_LABELS

    stats_ee = multi_comparison_stats(records, "alive_tv", methods)
    stats_pp = multi_comparison_stats(records, "all_passes", methods)

    row_labels = ["T -> S", "Overall", f">{SLOW}s", "Portfolio"]

    def build_section(section_name, stats):
        rows = []
        for i, rlabel in enumerate(row_labels):
            row = [rlabel]
            for c in methods:
                entry = stats[c]
                if i == 0:
                    row.append(str(entry["all"][1]))
                elif i == 1:
                    row.append(f"{entry['all'][2]:.3f}x")
                elif i == 2:
                    row.append(f"{entry['slow'][2]:.3f}x" if entry["slow"][3] else "--")
                else:
                    row.append(f"{entry['all'][3]:.3f}x")
            rows.append(row)
        return [f"### Versus {section_name}", "", md_table(["Metric"] + labels, rows), ""]

    lines += build_section("alive_tv (ee)", stats_ee)
    lines += build_section("all_passes (pp)", stats_pp)
    return lines


# ---------------------------------------------------------------------------
# Figure 8a: Venn diagram counts (fig:venn) -- printed as plain numbers
# ---------------------------------------------------------------------------

def figure_8a_venn(records):
    lines = ["## Figure 8a: Venn diagram (all_passes / alive_tv / decompose_dynamic_four)", ""]

    def solved(r, m):
        return r[m]["result"] == "correct"

    counts = {mask: 0 for mask in range(8)}
    for r in records:
        a = solved(r, "all_passes")
        b = solved(r, "alive_tv")
        c = solved(r, "decompose_dynamic_four")
        counts[(a << 2) | (b << 1) | c] += 1

    lines.append(f"only all_passes: {counts[0b100]}")
    lines.append(f"only alive_tv: {counts[0b010]}")
    lines.append(f"only decompose_dynamic_four: {counts[0b001]}")
    lines.append(f"all_passes ∩ alive_tv: {counts[0b110]}")
    lines.append(f"all_passes ∩ decompose_dynamic_four: {counts[0b101]}")
    lines.append(f"alive_tv ∩ decompose_dynamic_four: {counts[0b011]}")
    lines.append(f"all three: {counts[0b111]}")
    lines.append(f"none (all timeout): {counts[0b000]}")
    lines.append("")

    venn_centre = [r for r in records
                   if r["all_passes"]["result"] == "correct"
                   and r["alive_tv"]["result"] == "correct"
                   and r["decompose_dynamic_four"]["result"] == "correct"]
    lines.append(f"Venn centre (all three solve): {len(venn_centre)} functions")
    for baseline, label_b in [("alive_tv", "end-to-end"), ("all_passes", "pass-by-pass")]:
        for slow, slabel in [(False, "all"), (True, f">{SLOW}s")]:
            sub = [r for r in venn_centre
                   if r["decompose_dynamic_four"]["time"] > 0
                   and (not slow or r[baseline]["time"] > SLOW)]
            if not sub:
                lines.append(f"tool vs {label_b} ({slabel}): n=0")
                continue
            speedups = [r[baseline]["time"] / r["decompose_dynamic_four"]["time"] for r in sub]
            port_speedups = [r[baseline]["time"] / min(r[baseline]["time"], r["decompose_dynamic_four"]["time"]) for r in sub]
            lines.append(f"tool vs {label_b} ({slabel}): geomean={geomean(speedups):.3f}x, "
                          f"portfolio={geomean(port_speedups):.3f}x (n={len(sub)})")
    return lines


# ---------------------------------------------------------------------------
# Figure 7: speedup-vs-threshold plots (fig:spatial_graph)
# ---------------------------------------------------------------------------

def compute_speedup_curve(records, method_a, method_b):
    def empty_buckets():
        return {(False, False): [], (False, True): [], (True, False): [], (True, True): []}

    buckets = {t: empty_buckets() for t in PLOT_THRESHOLDS}
    portfolio = {t: [] for t in PLOT_THRESHOLDS}

    for r in records:
        ra = r[method_a]
        rb = r[method_b]
        if rb["result"] == "incorrect":
            rb = ra
        speedup = ra["time"] / rb["time"] if rb["time"] > 0 else float("inf")
        port_speedup = ra["time"] / min(ra["time"], rb["time"])
        a_solved = ra["result"] == "correct"
        b_solved = rb["result"] == "correct"
        for t in PLOT_THRESHOLDS:
            if ra["time"] > t:
                buckets[t][(a_solved, b_solved)].append(speedup)
                portfolio[t].append(port_speedup)

    gm, gm_port = [], []
    for t in PLOT_THRESHOLDS:
        all_sp = [v for vals in buckets[t].values() for v in vals]
        port_sp = portfolio[t]
        gm.append(geomean(all_sp) if all_sp else float("nan"))
        gm_port.append(geomean(port_sp) if port_sp else float("nan"))
    return gm, gm_port


def figure_7_plots(records, out_dir):
    """Generate the two Figure 7 (fig:spatial_graph) speedup-vs-threshold PNGs."""
    pairs = [
        ("alive_tv", "alive_tv_decompose"),
        ("all_passes", "decompose"),
    ]
    saved = []
    for method_a, method_b in pairs:
        gm, gm_port = compute_speedup_curve(records, method_a, method_b)
        xs = PLOT_THRESHOLDS
        indices = list(range(len(xs)))

        fig, ax = plt.subplots(figsize=(10, 5))
        ax.plot(indices, gm, label="Speedup", linewidth=1.5)
        ax.plot(indices, gm_port, label="Speedup (portfolio)", linewidth=1.5, linestyle="--")
        ax.axhline(1.0, color="black", linewidth=0.8, linestyle=":")
        ax.set_xlabel("Min original solving time threshold (s)")
        ax.set_ylabel("GeoMean speedup")
        ax.set_title(f"{method_a} vs {method_b}")
        ax.legend()
        ax.set_xticks(indices)
        ax.set_xticklabels([str(t) for t in xs], rotation=45, ha="right", fontsize=7)
        ax.set_xlim(0, len(xs) - 1)

        fname = out_dir / f"speedup_{method_a}_vs_{method_b}.png"
        fig.savefig(fname, dpi=300, bbox_inches="tight")
        plt.close(fig)
        saved.append(fname)
    return saved


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("merged", help="Path to merged results JSONL file")
    parser.add_argument("-o", "--output", help="Output markdown path (default: tables.md next to input)")
    args = parser.parse_args()

    merged_path = Path(args.merged)
    out_path = Path(args.output) if args.output else merged_path.parent / "tables.md"

    records = load_records(merged_path)

    out = ["# Result tables", "",
           f"Source: `{merged_path}` ({len(records)} records after excluding alive_tv-unsupported functions)", "",
           "Table numbers match the paper (Table 1 and Table 5 are not generated here: "
           "Table 1 is an unrelated proof-cases table, and Table 5 is the per-pass "
           "breakdown, which needs data not produced by this pipeline).", ""]

    out += table_2_benchmark(records); out.append("")
    out += table_3_spatial(records); out.append("")
    out += table_4_breakout(records); out.append("")
    out += table_5_temporal(records); out.append("")
    out += table_6_combined(records); out.append("")
    out += figure_8b_overall(records); out.append("")
    out += figure_8a_venn(records)

    out_path.write_text("\n".join(out) + "\n")
    print(f"Saved {out_path}", file=sys.stderr)

    saved = figure_7_plots(records, out_path.parent)
    for fname in saved:
        print(f"Saved {fname}", file=sys.stderr)


if __name__ == "__main__":
    main()
