# Result tables

Source: `merged.jsonl` (3025 records after excluding alive_tv-unsupported functions)

Table numbers match the paper (Table 1 and Table 5 are not generated here: Table 1 is an unrelated proof-cases table, and Table 5 is the per-pass breakdown, which needs data not produced by this pipeline).

## Table 2: Summary of LLVM IR functions in the evaluation dataset

| Stem | # Functions | Avg Instrs | Min | Max |
| --- | ---: | ---: | ---: | ---: |
| bzip2 | 56 | 41.4 | 4 | 276 |
| fiat | 416 | 528.3 | 15 | 5681 |
| gzip | 37 | 35.1 | 4 | 165 |
| oggenc | 213 | 49.2 | 5 | 587 |
| ph7 | 857 | 47.9 | 5 | 1601 |
| sqlite3 | 1446 | 50.0 | 4 | 5131 |
| **Total** | 3025 | 114.8 | 4 | 5681 |

## Table 3: Spatial decomposition results

### End-to-end translation validation

- Timeout cases: 1445
- Timeout -> solved: 271 (18.8%)

| Metric | All | > 10s |
| --- | --- | --- |
| Cases | 3025 | 1987 |
| Speedup | 1.179x | 1.960x |
| Portfolio Speedup | 1.919x | 2.335x |

### Pass-by-pass translation validation

- Timeout cases: 1437
- Timeout -> solved: 172 (12.0%)

| Metric | All | > 10s |
| --- | --- | --- |
| Cases | 3025 | 1700 |
| Speedup | 0.676x | 1.251x |
| Portfolio Speedup | 1.273x | 1.452x |

## Table 4: Breakdown of spatial decomposition results by benchmark

| Stem | End-to-end: Overall | End-to-end: >10s | End-to-end: Portfolio | End-to-end: T->S | Pass-by-pass: Overall | Pass-by-pass: >10s | Pass-by-pass: Portfolio | Pass-by-pass: T->S |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| bzip2 | 1.244x | 2.063x | 1.709x | 8 (38%) | 0.665x | 1.182x | 1.307x | 3 (14%) |
| fiat | 0.806x | 1.035x | 1.446x | 91 (37%) | 0.424x | 1.118x | 1.163x | 63 (26%) |
| gzip | 1.460x | 2.217x | 1.641x | 5 (31%) | 1.672x | 3.772x | 2.073x | 5 (33%) |
| oggenc | 1.365x | 2.213x | 1.894x | 19 (22%) | 0.657x | 1.682x | 1.437x | 13 (15%) |
| ph7 | 2.168x | 3.494x | 3.196x | 48 (12%) | 0.776x | 1.175x | 1.233x | 24 (6%) |
| sqlite3 | 0.891x | 1.621x | 1.554x | 100 (15%) | 0.700x | 1.274x | 1.289x | 64 (10%) |
| **Overall** | 1.179x | 1.960x | 1.919x | 271 (19%) | 0.676x | 1.251x | 1.273x | 172 (12%) |

## Table 5: Temporal decomposition heuristics

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| # Segments (avg) | 4.00 | 4.03 | 4.78 | 4.93 | 3.52 | 112.04 | 1 |

### Versus alive_tv (ee)

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| T -> S | 216 | 133 | 137 | 208 | 289 | 145 | -- |
| Overall | 1.923x | 1.548x | 1.532x | 1.647x | 1.935x | 1.562x | -- |
| >10s | 2.409x | 1.986x | 1.990x | 2.146x | 2.721x | 2.032x | -- |
| Portfolio | 2.097x | 1.833x | 1.823x | 1.886x | 2.195x | 1.845x | -- |

### Versus all_passes (pp)

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| T -> S | 140 | 10 | 15 | 88 | 184 | -- | 137 |
| Overall | 1.231x | 0.991x | 0.981x | 1.281x | 1.505x | -- | 0.640x |
| >10s | 1.258x | 0.999x | 0.992x | 1.396x | 1.855x | -- | 1.074x |
| Portfolio | 1.267x | 1.048x | 1.026x | 1.333x | 1.565x | -- | 1.181x |


## Table 6: Combined spatial and temporal decomposition heuristics

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| # Segments (avg) | 4.00 | 4.03 | 4.78 | 4.93 | 3.52 | 112.04 | 1 |

### Versus alive_tv (ee)

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| T -> S | 292 | 202 | 204 | 265 | 381 | 145 | -- |
| Overall | 1.219x | 1.029x | 1.050x | 1.259x | 1.577x | 1.562x | -- |
| >10s | 2.141x | 1.822x | 1.849x | 2.016x | 2.765x | 2.032x | -- |
| Portfolio | 2.017x | 1.806x | 1.822x | 1.907x | 2.357x | 1.845x | -- |

### Versus all_passes (pp)

| Metric | fixed | cutout | top2 | cluster | clusterfour | pp | ee |
| --- | --- | --- | --- | --- | --- | --- | --- |
| T -> S | 255 | 165 | 170 | 227 | 348 | -- | 137 |
| Overall | 0.778x | 0.661x | 0.680x | 0.975x | 1.225x | -- | 0.640x |
| >10s | 1.436x | 1.223x | 1.234x | 1.673x | 2.428x | -- | 1.074x |
| Portfolio | 1.391x | 1.254x | 1.263x | 1.574x | 1.943x | -- | 1.181x |


## Figure 8b: Overall results (spatial / temporal / combined)

### Versus alive_tv (ee)

| Metric | Spatial | Temporal | Combined |
| --- | --- | --- | --- |
| T -> S | 207 | 289 | 381 |
| Overall | 1.058x | 1.935x | 1.577x |
| >10s | 1.884x | 2.721x | 2.765x |
| Portfolio | 1.847x | 2.195x | 2.357x |

### Versus all_passes (pp)

| Metric | Spatial | Temporal | Combined |
| --- | --- | --- | --- |
| T -> S | 172 | 184 | 348 |
| Overall | 0.676x | 1.505x | 1.225x |
| >10s | 1.251x | 1.855x | 2.428x |
| Portfolio | 1.273x | 1.565x | 1.943x |


## Figure 8a: Venn diagram (all_passes / alive_tv / decompose_dynamic_four)

only all_passes: 62
only alive_tv: 87
only decompose_dynamic_four: 298
all_passes ∩ alive_tv: 522
all_passes ∩ decompose_dynamic_four: 83
alive_tv ∩ decompose_dynamic_four: 50
all three: 921
none (all timeout): 1002

Venn centre (all three solve): 921 functions
tool vs end-to-end (all): geomean=1.593x, portfolio=2.421x (n=921)
tool vs end-to-end (>10s): geomean=10.336x, portfolio=15.148x (n=209)
tool vs pass-by-pass (all): geomean=1.074x, portfolio=1.667x (n=921)
tool vs pass-by-pass (>10s): geomean=4.805x, portfolio=6.223x (n=114)
