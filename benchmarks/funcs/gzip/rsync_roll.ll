; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rsync_chunk_end = external hidden global i64, align 8
@rsync_sum = external hidden global i64, align 8
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @rsync_roll(i32 noundef %start, i32 noundef %num) #0 {
entry:
  %start.addr = alloca i32, align 4, !mymd !6
  %num.addr = alloca i32, align 4, !mymd !7
  %i = alloca i32, align 4, !mymd !8
  store i32 %start, ptr %start.addr, align 4, !mymd !9
  store i32 %num, ptr %num.addr, align 4, !mymd !10
  %0 = load i32, ptr %start.addr, align 4, !mymd !11
  %cmp = icmp ult i32 %0, 4096, !mymd !12
  br i1 %cmp, label %if.then, label %if.end6, !mymd !13

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %start.addr, align 4, !mymd !14
  store i32 %1, ptr %i, align 4, !mymd !15
  br label %for.cond, !mymd !16

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !mymd !17
  %cmp1 = icmp ult i32 %2, 4096, !mymd !18
  br i1 %cmp1, label %for.body, label %for.end, !mymd !19

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !mymd !20
  %4 = load i32, ptr %start.addr, align 4, !mymd !21
  %5 = load i32, ptr %num.addr, align 4, !mymd !22
  %add = add i32 %4, %5, !mymd !23
  %cmp2 = icmp eq i32 %3, %add, !mymd !24
  br i1 %cmp2, label %if.then3, label %if.end, !mymd !25

if.then3:                                         ; preds = %for.body
  br label %for.end30, !mymd !26

if.end:                                           ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !mymd !27
  %idxprom = zext i32 %6 to i64, !mymd !28
  %arrayidx = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom, !mymd !29
  %7 = load i8, ptr %arrayidx, align 1, !mymd !30
  %conv = zext i8 %7 to i64, !mymd !31
  %8 = load i64, ptr @rsync_sum, align 8, !mymd !32
  %add4 = add i64 %8, %conv, !mymd !33
  store i64 %add4, ptr @rsync_sum, align 8, !mymd !34
  br label %for.inc, !mymd !35

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !mymd !36
  %inc = add i32 %9, 1, !mymd !37
  store i32 %inc, ptr %i, align 4, !mymd !38
  br label %for.cond, !llvm.loop !39, !mymd !41

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %start.addr, align 4, !mymd !42
  %sub = sub i32 4096, %10, !mymd !43
  %11 = load i32, ptr %num.addr, align 4, !mymd !44
  %sub5 = sub i32 %11, %sub, !mymd !45
  store i32 %sub5, ptr %num.addr, align 4, !mymd !46
  store i32 4096, ptr %start.addr, align 4, !mymd !47
  br label %if.end6, !mymd !48

if.end6:                                          ; preds = %for.end, %entry
  %12 = load i32, ptr %start.addr, align 4, !mymd !49
  store i32 %12, ptr %i, align 4, !mymd !50
  br label %for.cond7, !mymd !51

for.cond7:                                        ; preds = %for.inc28, %if.end6
  %13 = load i32, ptr %i, align 4, !mymd !52
  %14 = load i32, ptr %start.addr, align 4, !mymd !53
  %15 = load i32, ptr %num.addr, align 4, !mymd !54
  %add8 = add i32 %14, %15, !mymd !55
  %cmp9 = icmp ult i32 %13, %add8, !mymd !56
  br i1 %cmp9, label %for.body11, label %for.end30, !mymd !57

for.body11:                                       ; preds = %for.cond7
  %16 = load i32, ptr %i, align 4, !mymd !58
  %idxprom12 = zext i32 %16 to i64, !mymd !59
  %arrayidx13 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom12, !mymd !60
  %17 = load i8, ptr %arrayidx13, align 1, !mymd !61
  %conv14 = zext i8 %17 to i64, !mymd !62
  %18 = load i64, ptr @rsync_sum, align 8, !mymd !63
  %add15 = add i64 %18, %conv14, !mymd !64
  store i64 %add15, ptr @rsync_sum, align 8, !mymd !65
  %19 = load i32, ptr %i, align 4, !mymd !66
  %sub16 = sub i32 %19, 4096, !mymd !67
  %idxprom17 = zext i32 %sub16 to i64, !mymd !68
  %arrayidx18 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom17, !mymd !69
  %20 = load i8, ptr %arrayidx18, align 1, !mymd !70
  %conv19 = zext i8 %20 to i64, !mymd !71
  %21 = load i64, ptr @rsync_sum, align 8, !mymd !72
  %sub20 = sub i64 %21, %conv19, !mymd !73
  store i64 %sub20, ptr @rsync_sum, align 8, !mymd !74
  %22 = load i64, ptr @rsync_chunk_end, align 8, !mymd !75
  %cmp21 = icmp eq i64 %22, 4294967295, !mymd !76
  br i1 %cmp21, label %land.lhs.true, label %if.end27, !mymd !77

land.lhs.true:                                    ; preds = %for.body11
  %23 = load i64, ptr @rsync_sum, align 8, !mymd !78
  %rem = urem i64 %23, 4096, !mymd !79
  %cmp23 = icmp eq i64 %rem, 0, !mymd !80
  br i1 %cmp23, label %if.then25, label %if.end27, !mymd !81

if.then25:                                        ; preds = %land.lhs.true
  %24 = load i32, ptr %i, align 4, !mymd !82
  %conv26 = zext i32 %24 to i64, !mymd !83
  store i64 %conv26, ptr @rsync_chunk_end, align 8, !mymd !84
  br label %if.end27, !mymd !85

if.end27:                                         ; preds = %if.then25, %land.lhs.true, %for.body11
  br label %for.inc28, !mymd !86

for.inc28:                                        ; preds = %if.end27
  %25 = load i32, ptr %i, align 4, !mymd !87
  %inc29 = add i32 %25, 1, !mymd !88
  store i32 %inc29, ptr %i, align 4, !mymd !89
  br label %for.cond7, !llvm.loop !90, !mymd !91

for.end30:                                        ; preds = %for.cond7, %if.then3
  ret void, !mymd !92
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"1740"}
!7 = !{!"1741"}
!8 = !{!"1742"}
!9 = !{!"1743"}
!10 = !{!"1744"}
!11 = !{!"1745"}
!12 = !{!"1746"}
!13 = !{!"1747"}
!14 = !{!"1748"}
!15 = !{!"1749"}
!16 = !{!"1750"}
!17 = !{!"1751"}
!18 = !{!"1752"}
!19 = !{!"1753"}
!20 = !{!"1754"}
!21 = !{!"1755"}
!22 = !{!"1756"}
!23 = !{!"1757"}
!24 = !{!"1758"}
!25 = !{!"1759"}
!26 = !{!"1760"}
!27 = !{!"1761"}
!28 = !{!"1762"}
!29 = !{!"1763"}
!30 = !{!"1764"}
!31 = !{!"1765"}
!32 = !{!"1766"}
!33 = !{!"1767"}
!34 = !{!"1768"}
!35 = !{!"1769"}
!36 = !{!"1770"}
!37 = !{!"1771"}
!38 = !{!"1772"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"1773"}
!42 = !{!"1774"}
!43 = !{!"1775"}
!44 = !{!"1776"}
!45 = !{!"1777"}
!46 = !{!"1778"}
!47 = !{!"1779"}
!48 = !{!"1780"}
!49 = !{!"1781"}
!50 = !{!"1782"}
!51 = !{!"1783"}
!52 = !{!"1784"}
!53 = !{!"1785"}
!54 = !{!"1786"}
!55 = !{!"1787"}
!56 = !{!"1788"}
!57 = !{!"1789"}
!58 = !{!"1790"}
!59 = !{!"1791"}
!60 = !{!"1792"}
!61 = !{!"1793"}
!62 = !{!"1794"}
!63 = !{!"1795"}
!64 = !{!"1796"}
!65 = !{!"1797"}
!66 = !{!"1798"}
!67 = !{!"1799"}
!68 = !{!"1800"}
!69 = !{!"1801"}
!70 = !{!"1802"}
!71 = !{!"1803"}
!72 = !{!"1804"}
!73 = !{!"1805"}
!74 = !{!"1806"}
!75 = !{!"1807"}
!76 = !{!"1808"}
!77 = !{!"1809"}
!78 = !{!"1810"}
!79 = !{!"1811"}
!80 = !{!"1812"}
!81 = !{!"1813"}
!82 = !{!"1814"}
!83 = !{!"1815"}
!84 = !{!"1816"}
!85 = !{!"1817"}
!86 = !{!"1818"}
!87 = !{!"1819"}
!88 = !{!"1820"}
!89 = !{!"1821"}
!90 = distinct !{!90, !40}
!91 = !{!"1822"}
!92 = !{!"1823"}
