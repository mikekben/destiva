; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@strstart = external dso_local global i32, align 4
@block_start = external dso_local global i64, align 8
@level = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@length_code = external hidden global [256 x i8], align 16
@extra_dbits = external hidden global [30 x i32], align 16
@dist_code = external hidden global [512 x i8], align 16
@flags = external hidden global i8, align 1
@flag_buf = external hidden global [4096 x i8], align 16
@last_flags = external hidden global i32, align 4
@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@dyn_dtree = external hidden global [61 x %struct.ct_data], align 16
@last_lit = external hidden global i32, align 4
@d_buf = external dso_local global [32768 x i16], align 16
@last_dist = external hidden global i32, align 4
@flag_bit = external hidden global i8, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ct_tally(i32 noundef %dist, i32 noundef %lc) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %dist.addr = alloca i32, align 4, !mymd !7
  %lc.addr = alloca i32, align 4, !mymd !8
  %out_length = alloca i64, align 8, !mymd !9
  %in_length = alloca i64, align 8, !mymd !10
  %dcode = alloca i32, align 4, !mymd !11
  store i32 %dist, ptr %dist.addr, align 4, !mymd !12
  store i32 %lc, ptr %lc.addr, align 4, !mymd !13
  %0 = load i32, ptr %lc.addr, align 4, !mymd !14
  %conv = trunc i32 %0 to i8, !mymd !15
  %1 = load i32, ptr @last_lit, align 4, !mymd !16
  %inc = add i32 %1, 1, !mymd !17
  store i32 %inc, ptr @last_lit, align 4, !mymd !18
  %idxprom = zext i32 %1 to i64, !mymd !19
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !20
  store i8 %conv, ptr %arrayidx, align 1, !mymd !21
  %2 = load i32, ptr %dist.addr, align 4, !mymd !22
  %cmp = icmp eq i32 %2, 0, !mymd !23
  br i1 %cmp, label %if.then, label %if.else, !mymd !24

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %lc.addr, align 4, !mymd !25
  %idxprom2 = sext i32 %3 to i64, !mymd !26
  %arrayidx3 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom2, !mymd !27
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx3, i32 0, i32 0, !mymd !28
  %4 = load i16, ptr %fc, align 4, !mymd !29
  %inc4 = add i16 %4, 1, !mymd !30
  store i16 %inc4, ptr %fc, align 4, !mymd !31
  br label %if.end, !mymd !32

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %dist.addr, align 4, !mymd !33
  %dec = add nsw i32 %5, -1, !mymd !34
  store i32 %dec, ptr %dist.addr, align 4, !mymd !35
  %6 = load i32, ptr %lc.addr, align 4, !mymd !36
  %idxprom5 = sext i32 %6 to i64, !mymd !37
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %idxprom5, !mymd !38
  %7 = load i8, ptr %arrayidx6, align 1, !mymd !39
  %conv7 = zext i8 %7 to i32, !mymd !40
  %add = add nsw i32 %conv7, 256, !mymd !41
  %add8 = add nsw i32 %add, 1, !mymd !42
  %idxprom9 = sext i32 %add8 to i64, !mymd !43
  %arrayidx10 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom9, !mymd !44
  %fc11 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx10, i32 0, i32 0, !mymd !45
  %8 = load i16, ptr %fc11, align 4, !mymd !46
  %inc12 = add i16 %8, 1, !mymd !47
  store i16 %inc12, ptr %fc11, align 4, !mymd !48
  %9 = load i32, ptr %dist.addr, align 4, !mymd !49
  %cmp13 = icmp slt i32 %9, 256, !mymd !50
  br i1 %cmp13, label %cond.true, label %cond.false, !mymd !51

cond.true:                                        ; preds = %if.else
  %10 = load i32, ptr %dist.addr, align 4, !mymd !52
  %idxprom15 = sext i32 %10 to i64, !mymd !53
  %arrayidx16 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %idxprom15, !mymd !54
  %11 = load i8, ptr %arrayidx16, align 1, !mymd !55
  %conv17 = zext i8 %11 to i32, !mymd !56
  br label %cond.end, !mymd !57

cond.false:                                       ; preds = %if.else
  %12 = load i32, ptr %dist.addr, align 4, !mymd !58
  %shr = ashr i32 %12, 7, !mymd !59
  %add18 = add nsw i32 256, %shr, !mymd !60
  %idxprom19 = sext i32 %add18 to i64, !mymd !61
  %arrayidx20 = getelementptr inbounds [512 x i8], ptr @dist_code, i64 0, i64 %idxprom19, !mymd !62
  %13 = load i8, ptr %arrayidx20, align 1, !mymd !63
  %conv21 = zext i8 %13 to i32, !mymd !64
  br label %cond.end, !mymd !65

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %conv21, %cond.false ], !mymd !66
  %idxprom22 = sext i32 %cond to i64, !mymd !67
  %arrayidx23 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %idxprom22, !mymd !68
  %fc24 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx23, i32 0, i32 0, !mymd !69
  %14 = load i16, ptr %fc24, align 4, !mymd !70
  %inc25 = add i16 %14, 1, !mymd !71
  store i16 %inc25, ptr %fc24, align 4, !mymd !72
  %15 = load i32, ptr %dist.addr, align 4, !mymd !73
  %conv26 = trunc i32 %15 to i16, !mymd !74
  %16 = load i32, ptr @last_dist, align 4, !mymd !75
  %inc27 = add i32 %16, 1, !mymd !76
  store i32 %inc27, ptr @last_dist, align 4, !mymd !77
  %idxprom28 = zext i32 %16 to i64, !mymd !78
  %arrayidx29 = getelementptr inbounds nuw [32768 x i16], ptr @d_buf, i64 0, i64 %idxprom28, !mymd !79
  store i16 %conv26, ptr %arrayidx29, align 2, !mymd !80
  %17 = load i8, ptr @flag_bit, align 1, !mymd !81
  %conv30 = zext i8 %17 to i32, !mymd !82
  %18 = load i8, ptr @flags, align 1, !mymd !83
  %conv31 = zext i8 %18 to i32, !mymd !84
  %or = or i32 %conv31, %conv30, !mymd !85
  %conv32 = trunc i32 %or to i8, !mymd !86
  store i8 %conv32, ptr @flags, align 1, !mymd !87
  br label %if.end, !mymd !88

if.end:                                           ; preds = %cond.end, %if.then
  %19 = load i8, ptr @flag_bit, align 1, !mymd !89
  %conv33 = zext i8 %19 to i32, !mymd !90
  %shl = shl i32 %conv33, 1, !mymd !91
  %conv34 = trunc i32 %shl to i8, !mymd !92
  store i8 %conv34, ptr @flag_bit, align 1, !mymd !93
  %20 = load i32, ptr @last_lit, align 4, !mymd !94
  %and = and i32 %20, 7, !mymd !95
  %cmp35 = icmp eq i32 %and, 0, !mymd !96
  br i1 %cmp35, label %if.then37, label %if.end41, !mymd !97

if.then37:                                        ; preds = %if.end
  %21 = load i8, ptr @flags, align 1, !mymd !98
  %22 = load i32, ptr @last_flags, align 4, !mymd !99
  %inc38 = add i32 %22, 1, !mymd !100
  store i32 %inc38, ptr @last_flags, align 4, !mymd !101
  %idxprom39 = zext i32 %22 to i64, !mymd !102
  %arrayidx40 = getelementptr inbounds nuw [4096 x i8], ptr @flag_buf, i64 0, i64 %idxprom39, !mymd !103
  store i8 %21, ptr %arrayidx40, align 1, !mymd !104
  store i8 0, ptr @flags, align 1, !mymd !105
  store i8 1, ptr @flag_bit, align 1, !mymd !106
  br label %if.end41, !mymd !107

if.end41:                                         ; preds = %if.then37, %if.end
  %23 = load i32, ptr @level, align 4, !mymd !108
  %cmp42 = icmp sgt i32 %23, 2, !mymd !109
  br i1 %cmp42, label %land.lhs.true, label %if.end72, !mymd !110

land.lhs.true:                                    ; preds = %if.end41
  %24 = load i32, ptr @last_lit, align 4, !mymd !111
  %and44 = and i32 %24, 4095, !mymd !112
  %cmp45 = icmp eq i32 %and44, 0, !mymd !113
  br i1 %cmp45, label %if.then47, label %if.end72, !mymd !114

if.then47:                                        ; preds = %land.lhs.true
  %25 = load i32, ptr @last_lit, align 4, !mymd !115
  %conv48 = zext i32 %25 to i64, !mymd !116
  %mul = mul i64 %conv48, 8, !mymd !117
  store i64 %mul, ptr %out_length, align 8, !mymd !118
  %26 = load i32, ptr @strstart, align 4, !mymd !119
  %conv49 = zext i32 %26 to i64, !mymd !120
  %27 = load i64, ptr @block_start, align 8, !mymd !121
  %sub = sub i64 %conv49, %27, !mymd !122
  store i64 %sub, ptr %in_length, align 8, !mymd !123
  store i32 0, ptr %dcode, align 4, !mymd !124
  br label %for.cond, !mymd !125

for.cond:                                         ; preds = %for.inc, %if.then47
  %28 = load i32, ptr %dcode, align 4, !mymd !126
  %cmp50 = icmp slt i32 %28, 30, !mymd !127
  br i1 %cmp50, label %for.body, label %for.end, !mymd !128

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %dcode, align 4, !mymd !129
  %idxprom52 = sext i32 %29 to i64, !mymd !130
  %arrayidx53 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %idxprom52, !mymd !131
  %fc54 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx53, i32 0, i32 0, !mymd !132
  %30 = load i16, ptr %fc54, align 4, !mymd !133
  %conv55 = zext i16 %30 to i64, !mymd !134
  %31 = load i32, ptr %dcode, align 4, !mymd !135
  %idxprom56 = sext i32 %31 to i64, !mymd !136
  %arrayidx57 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom56, !mymd !137
  %32 = load i32, ptr %arrayidx57, align 4, !mymd !138
  %conv58 = sext i32 %32 to i64, !mymd !139
  %add59 = add nsw i64 5, %conv58, !mymd !140
  %mul60 = mul i64 %conv55, %add59, !mymd !141
  %33 = load i64, ptr %out_length, align 8, !mymd !142
  %add61 = add i64 %33, %mul60, !mymd !143
  store i64 %add61, ptr %out_length, align 8, !mymd !144
  br label %for.inc, !mymd !145

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %dcode, align 4, !mymd !146
  %inc62 = add nsw i32 %34, 1, !mymd !147
  store i32 %inc62, ptr %dcode, align 4, !mymd !148
  br label %for.cond, !llvm.loop !149, !mymd !151

for.end:                                          ; preds = %for.cond
  %35 = load i64, ptr %out_length, align 8, !mymd !152
  %shr63 = lshr i64 %35, 3, !mymd !153
  store i64 %shr63, ptr %out_length, align 8, !mymd !154
  %36 = load i32, ptr @last_dist, align 4, !mymd !155
  %37 = load i32, ptr @last_lit, align 4, !mymd !156
  %div = udiv i32 %37, 2, !mymd !157
  %cmp64 = icmp ult i32 %36, %div, !mymd !158
  br i1 %cmp64, label %land.lhs.true66, label %if.end71, !mymd !159

land.lhs.true66:                                  ; preds = %for.end
  %38 = load i64, ptr %out_length, align 8, !mymd !160
  %39 = load i64, ptr %in_length, align 8, !mymd !161
  %div67 = udiv i64 %39, 2, !mymd !162
  %cmp68 = icmp ult i64 %38, %div67, !mymd !163
  br i1 %cmp68, label %if.then70, label %if.end71, !mymd !164

if.then70:                                        ; preds = %land.lhs.true66
  store i32 1, ptr %retval, align 4, !mymd !165
  br label %return, !mymd !166

if.end71:                                         ; preds = %land.lhs.true66, %for.end
  br label %if.end72, !mymd !167

if.end72:                                         ; preds = %if.end71, %land.lhs.true, %if.end41
  %40 = load i32, ptr @last_lit, align 4, !mymd !168
  %cmp73 = icmp eq i32 %40, 32767, !mymd !169
  br i1 %cmp73, label %lor.end, label %lor.rhs, !mymd !170

lor.rhs:                                          ; preds = %if.end72
  %41 = load i32, ptr @last_dist, align 4, !mymd !171
  %cmp75 = icmp eq i32 %41, 32768, !mymd !172
  br label %lor.end, !mymd !173

lor.end:                                          ; preds = %lor.rhs, %if.end72
  %42 = phi i1 [ true, %if.end72 ], [ %cmp75, %lor.rhs ], !mymd !174
  %lor.ext = zext i1 %42 to i32, !mymd !175
  store i32 %lor.ext, ptr %retval, align 4, !mymd !176
  br label %return, !mymd !177

return:                                           ; preds = %lor.end, %if.then70
  %43 = load i32, ptr %retval, align 4, !mymd !178
  ret i32 %43, !mymd !179
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
!6 = !{!"1568"}
!7 = !{!"1569"}
!8 = !{!"1570"}
!9 = !{!"1571"}
!10 = !{!"1572"}
!11 = !{!"1573"}
!12 = !{!"1574"}
!13 = !{!"1575"}
!14 = !{!"1576"}
!15 = !{!"1577"}
!16 = !{!"1578"}
!17 = !{!"1579"}
!18 = !{!"1580"}
!19 = !{!"1581"}
!20 = !{!"1582"}
!21 = !{!"1583"}
!22 = !{!"1584"}
!23 = !{!"1585"}
!24 = !{!"1586"}
!25 = !{!"1587"}
!26 = !{!"1588"}
!27 = !{!"1589"}
!28 = !{!"1590"}
!29 = !{!"1591"}
!30 = !{!"1592"}
!31 = !{!"1593"}
!32 = !{!"1594"}
!33 = !{!"1595"}
!34 = !{!"1596"}
!35 = !{!"1597"}
!36 = !{!"1598"}
!37 = !{!"1599"}
!38 = !{!"1600"}
!39 = !{!"1601"}
!40 = !{!"1602"}
!41 = !{!"1603"}
!42 = !{!"1604"}
!43 = !{!"1605"}
!44 = !{!"1606"}
!45 = !{!"1607"}
!46 = !{!"1608"}
!47 = !{!"1609"}
!48 = !{!"1610"}
!49 = !{!"1611"}
!50 = !{!"1612"}
!51 = !{!"1613"}
!52 = !{!"1614"}
!53 = !{!"1615"}
!54 = !{!"1616"}
!55 = !{!"1617"}
!56 = !{!"1618"}
!57 = !{!"1619"}
!58 = !{!"1620"}
!59 = !{!"1621"}
!60 = !{!"1622"}
!61 = !{!"1623"}
!62 = !{!"1624"}
!63 = !{!"1625"}
!64 = !{!"1626"}
!65 = !{!"1627"}
!66 = !{!"1628"}
!67 = !{!"1629"}
!68 = !{!"1630"}
!69 = !{!"1631"}
!70 = !{!"1632"}
!71 = !{!"1633"}
!72 = !{!"1634"}
!73 = !{!"1635"}
!74 = !{!"1636"}
!75 = !{!"1637"}
!76 = !{!"1638"}
!77 = !{!"1639"}
!78 = !{!"1640"}
!79 = !{!"1641"}
!80 = !{!"1642"}
!81 = !{!"1643"}
!82 = !{!"1644"}
!83 = !{!"1645"}
!84 = !{!"1646"}
!85 = !{!"1647"}
!86 = !{!"1648"}
!87 = !{!"1649"}
!88 = !{!"1650"}
!89 = !{!"1651"}
!90 = !{!"1652"}
!91 = !{!"1653"}
!92 = !{!"1654"}
!93 = !{!"1655"}
!94 = !{!"1656"}
!95 = !{!"1657"}
!96 = !{!"1658"}
!97 = !{!"1659"}
!98 = !{!"1660"}
!99 = !{!"1661"}
!100 = !{!"1662"}
!101 = !{!"1663"}
!102 = !{!"1664"}
!103 = !{!"1665"}
!104 = !{!"1666"}
!105 = !{!"1667"}
!106 = !{!"1668"}
!107 = !{!"1669"}
!108 = !{!"1670"}
!109 = !{!"1671"}
!110 = !{!"1672"}
!111 = !{!"1673"}
!112 = !{!"1674"}
!113 = !{!"1675"}
!114 = !{!"1676"}
!115 = !{!"1677"}
!116 = !{!"1678"}
!117 = !{!"1679"}
!118 = !{!"1680"}
!119 = !{!"1681"}
!120 = !{!"1682"}
!121 = !{!"1683"}
!122 = !{!"1684"}
!123 = !{!"1685"}
!124 = !{!"1686"}
!125 = !{!"1687"}
!126 = !{!"1688"}
!127 = !{!"1689"}
!128 = !{!"1690"}
!129 = !{!"1691"}
!130 = !{!"1692"}
!131 = !{!"1693"}
!132 = !{!"1694"}
!133 = !{!"1695"}
!134 = !{!"1696"}
!135 = !{!"1697"}
!136 = !{!"1698"}
!137 = !{!"1699"}
!138 = !{!"1700"}
!139 = !{!"1701"}
!140 = !{!"1702"}
!141 = !{!"1703"}
!142 = !{!"1704"}
!143 = !{!"1705"}
!144 = !{!"1706"}
!145 = !{!"1707"}
!146 = !{!"1708"}
!147 = !{!"1709"}
!148 = !{!"1710"}
!149 = distinct !{!149, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!"1711"}
!152 = !{!"1712"}
!153 = !{!"1713"}
!154 = !{!"1714"}
!155 = !{!"1715"}
!156 = !{!"1716"}
!157 = !{!"1717"}
!158 = !{!"1718"}
!159 = !{!"1719"}
!160 = !{!"1720"}
!161 = !{!"1721"}
!162 = !{!"1722"}
!163 = !{!"1723"}
!164 = !{!"1724"}
!165 = !{!"1725"}
!166 = !{!"1726"}
!167 = !{!"1727"}
!168 = !{!"1728"}
!169 = !{!"1729"}
!170 = !{!"1730"}
!171 = !{!"1731"}
!172 = !{!"1732"}
!173 = !{!"1733"}
!174 = !{!"1734"}
!175 = !{!"1735"}
!176 = !{!"1736"}
!177 = !{!"1737"}
!178 = !{!"1738"}
!179 = !{!"1739"}
