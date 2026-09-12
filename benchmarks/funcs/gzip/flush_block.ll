; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }
%struct.tree_desc = type { ptr, ptr, ptr, i32, i32, i32, i32 }

@file_type = external dso_local global ptr, align 8
@file_method = external dso_local global ptr, align 8
@input_len = external hidden global i64, align 8
@compressed_len = external hidden global i64, align 8
@static_dtree = external hidden global [30 x %struct.ct_data], align 16
@static_ltree = external hidden global [288 x %struct.ct_data], align 16
@flags = external hidden global i8, align 1
@flag_buf = external hidden global [4096 x i8], align 16
@last_flags = external hidden global i32, align 4
@l_desc = external hidden global %struct.tree_desc, align 8
@d_desc = external hidden global %struct.tree_desc, align 8
@opt_len = external hidden global i64, align 8
@static_len = external hidden global i64, align 8
@.str.53 = external hidden unnamed_addr constant [15 x i8], align 1
@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@dyn_dtree = external hidden global [61 x %struct.ct_data], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @send_bits(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @bi_windup() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @copy_block(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @flush_block(ptr noundef %buf, i64 noundef %stored_len, i32 noundef %pad, i32 noundef %eof) #0 {
entry:
  %buf.addr = alloca ptr, align 8, !mymd !6
  %stored_len.addr = alloca i64, align 8, !mymd !7
  %pad.addr = alloca i32, align 4, !mymd !8
  %eof.addr = alloca i32, align 4, !mymd !9
  %opt_lenb = alloca i64, align 8, !mymd !10
  %static_lenb = alloca i64, align 8, !mymd !11
  %max_blindex = alloca i32, align 4, !mymd !12
  store ptr %buf, ptr %buf.addr, align 8, !mymd !13
  store i64 %stored_len, ptr %stored_len.addr, align 8, !mymd !14
  store i32 %pad, ptr %pad.addr, align 4, !mymd !15
  store i32 %eof, ptr %eof.addr, align 4, !mymd !16
  %0 = load i8, ptr @flags, align 1, !mymd !17
  %1 = load i32, ptr @last_flags, align 4, !mymd !18
  %idxprom = zext i32 %1 to i64, !mymd !19
  %arrayidx = getelementptr inbounds nuw [4096 x i8], ptr @flag_buf, i64 0, i64 %idxprom, !mymd !20
  store i8 %0, ptr %arrayidx, align 1, !mymd !21
  %2 = load ptr, ptr @file_type, align 8, !mymd !22
  %3 = load i16, ptr %2, align 2, !mymd !23
  %conv = zext i16 %3 to i32, !mymd !24
  %cmp = icmp eq i32 %conv, 65535, !mymd !25
  br i1 %cmp, label %if.then, label %if.end, !mymd !26

if.then:                                          ; preds = %entry
  call void @set_file_type(), !mymd !27
  br label %if.end, !mymd !28

if.end:                                           ; preds = %if.then, %entry
  call void @build_tree_1(ptr noundef @l_desc), !mymd !29
  call void @build_tree_1(ptr noundef @d_desc), !mymd !30
  %call = call i32 @build_bl_tree(), !mymd !31
  store i32 %call, ptr %max_blindex, align 4, !mymd !32
  %4 = load i64, ptr @opt_len, align 8, !mymd !33
  %add = add i64 %4, 3, !mymd !34
  %add2 = add i64 %add, 7, !mymd !35
  %shr = lshr i64 %add2, 3, !mymd !36
  store i64 %shr, ptr %opt_lenb, align 8, !mymd !37
  %5 = load i64, ptr @static_len, align 8, !mymd !38
  %add3 = add i64 %5, 3, !mymd !39
  %add4 = add i64 %add3, 7, !mymd !40
  %shr5 = lshr i64 %add4, 3, !mymd !41
  store i64 %shr5, ptr %static_lenb, align 8, !mymd !42
  %6 = load i64, ptr %stored_len.addr, align 8, !mymd !43
  %7 = load i64, ptr @input_len, align 8, !mymd !44
  %add6 = add i64 %7, %6, !mymd !45
  store i64 %add6, ptr @input_len, align 8, !mymd !46
  %8 = load i64, ptr %static_lenb, align 8, !mymd !47
  %9 = load i64, ptr %opt_lenb, align 8, !mymd !48
  %cmp7 = icmp ule i64 %8, %9, !mymd !49
  br i1 %cmp7, label %if.then9, label %if.end10, !mymd !50

if.then9:                                         ; preds = %if.end
  %10 = load i64, ptr %static_lenb, align 8, !mymd !51
  store i64 %10, ptr %opt_lenb, align 8, !mymd !52
  br label %if.end10, !mymd !53

if.end10:                                         ; preds = %if.then9, %if.end
  %11 = load i64, ptr %stored_len.addr, align 8, !mymd !54
  %12 = load i64, ptr %opt_lenb, align 8, !mymd !55
  %cmp11 = icmp ule i64 %11, %12, !mymd !56
  br i1 %cmp11, label %land.lhs.true, label %if.else, !mymd !57

land.lhs.true:                                    ; preds = %if.end10
  %13 = load i32, ptr %eof.addr, align 4, !mymd !58
  %tobool = icmp ne i32 %13, 0, !mymd !59
  br i1 %tobool, label %land.lhs.true13, label %if.else, !mymd !60

land.lhs.true13:                                  ; preds = %land.lhs.true
  %14 = load i64, ptr @compressed_len, align 8, !mymd !61
  %cmp14 = icmp eq i64 %14, 0, !mymd !62
  br i1 %cmp14, label %land.lhs.true16, label %if.else, !mymd !63

land.lhs.true16:                                  ; preds = %land.lhs.true13
  br i1 false, label %if.then17, label %if.else, !mymd !64

if.then17:                                        ; preds = %land.lhs.true16
  %15 = load ptr, ptr %buf.addr, align 8, !mymd !65
  %cmp18 = icmp eq ptr %15, null, !mymd !66
  br i1 %cmp18, label %if.then20, label %if.end21, !mymd !67

if.then20:                                        ; preds = %if.then17
  call void @error(ptr noundef @.str.53), !mymd !68
  br label %if.end21, !mymd !69

if.end21:                                         ; preds = %if.then20, %if.then17
  %16 = load ptr, ptr %buf.addr, align 8, !mymd !70
  %17 = load i64, ptr %stored_len.addr, align 8, !mymd !71
  %conv22 = trunc i64 %17 to i32, !mymd !72
  call void @copy_block(ptr noundef %16, i32 noundef %conv22, i32 noundef 0), !mymd !73
  %18 = load i64, ptr %stored_len.addr, align 8, !mymd !74
  %shl = shl i64 %18, 3, !mymd !75
  store i64 %shl, ptr @compressed_len, align 8, !mymd !76
  %19 = load ptr, ptr @file_method, align 8, !mymd !77
  store i32 0, ptr %19, align 4, !mymd !78
  br label %if.end53, !mymd !79

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true13, %land.lhs.true, %if.end10
  %20 = load i64, ptr %stored_len.addr, align 8, !mymd !80
  %add23 = add i64 %20, 4, !mymd !81
  %21 = load i64, ptr %opt_lenb, align 8, !mymd !82
  %cmp24 = icmp ule i64 %add23, %21, !mymd !83
  br i1 %cmp24, label %land.lhs.true26, label %if.else37, !mymd !84

land.lhs.true26:                                  ; preds = %if.else
  %22 = load ptr, ptr %buf.addr, align 8, !mymd !85
  %cmp27 = icmp ne ptr %22, null, !mymd !86
  br i1 %cmp27, label %if.then29, label %if.else37, !mymd !87

if.then29:                                        ; preds = %land.lhs.true26
  %23 = load i32, ptr %eof.addr, align 4, !mymd !88
  %add30 = add nsw i32 0, %23, !mymd !89
  call void @send_bits(i32 noundef %add30, i32 noundef 3), !mymd !90
  %24 = load i64, ptr @compressed_len, align 8, !mymd !91
  %add31 = add nsw i64 %24, 3, !mymd !92
  %add32 = add nsw i64 %add31, 7, !mymd !93
  %and = and i64 %add32, -8, !mymd !94
  store i64 %and, ptr @compressed_len, align 8, !mymd !95
  %25 = load i64, ptr %stored_len.addr, align 8, !mymd !96
  %add33 = add i64 %25, 4, !mymd !97
  %shl34 = shl i64 %add33, 3, !mymd !98
  %26 = load i64, ptr @compressed_len, align 8, !mymd !99
  %add35 = add i64 %26, %shl34, !mymd !100
  store i64 %add35, ptr @compressed_len, align 8, !mymd !101
  %27 = load ptr, ptr %buf.addr, align 8, !mymd !102
  %28 = load i64, ptr %stored_len.addr, align 8, !mymd !103
  %conv36 = trunc i64 %28 to i32, !mymd !104
  call void @copy_block(ptr noundef %27, i32 noundef %conv36, i32 noundef 1), !mymd !105
  br label %if.end52, !mymd !106

if.else37:                                        ; preds = %land.lhs.true26, %if.else
  %29 = load i64, ptr %static_lenb, align 8, !mymd !107
  %30 = load i64, ptr %opt_lenb, align 8, !mymd !108
  %cmp38 = icmp eq i64 %29, %30, !mymd !109
  br i1 %cmp38, label %if.then40, label %if.else44, !mymd !110

if.then40:                                        ; preds = %if.else37
  %31 = load i32, ptr %eof.addr, align 4, !mymd !111
  %add41 = add nsw i32 2, %31, !mymd !112
  call void @send_bits(i32 noundef %add41, i32 noundef 3), !mymd !113
  call void @compress_block(ptr noundef @static_ltree, ptr noundef @static_dtree), !mymd !114
  %32 = load i64, ptr @static_len, align 8, !mymd !115
  %add42 = add i64 3, %32, !mymd !116
  %33 = load i64, ptr @compressed_len, align 8, !mymd !117
  %add43 = add i64 %33, %add42, !mymd !118
  store i64 %add43, ptr @compressed_len, align 8, !mymd !119
  br label %if.end51, !mymd !120

if.else44:                                        ; preds = %if.else37
  %34 = load i32, ptr %eof.addr, align 4, !mymd !121
  %add45 = add nsw i32 4, %34, !mymd !122
  call void @send_bits(i32 noundef %add45, i32 noundef 3), !mymd !123
  %35 = load i32, ptr getelementptr inbounds nuw (%struct.tree_desc, ptr @l_desc, i32 0, i32 6), align 4, !mymd !124
  %add46 = add nsw i32 %35, 1, !mymd !125
  %36 = load i32, ptr getelementptr inbounds nuw (%struct.tree_desc, ptr @d_desc, i32 0, i32 6), align 4, !mymd !126
  %add47 = add nsw i32 %36, 1, !mymd !127
  %37 = load i32, ptr %max_blindex, align 4, !mymd !128
  %add48 = add nsw i32 %37, 1, !mymd !129
  call void @send_all_trees(i32 noundef %add46, i32 noundef %add47, i32 noundef %add48), !mymd !130
  call void @compress_block(ptr noundef @dyn_ltree, ptr noundef @dyn_dtree), !mymd !131
  %38 = load i64, ptr @opt_len, align 8, !mymd !132
  %add49 = add i64 3, %38, !mymd !133
  %39 = load i64, ptr @compressed_len, align 8, !mymd !134
  %add50 = add i64 %39, %add49, !mymd !135
  store i64 %add50, ptr @compressed_len, align 8, !mymd !136
  br label %if.end51, !mymd !137

if.end51:                                         ; preds = %if.else44, %if.then40
  br label %if.end52, !mymd !138

if.end52:                                         ; preds = %if.end51, %if.then29
  br label %if.end53, !mymd !139

if.end53:                                         ; preds = %if.end52, %if.end21
  call void @init_block(), !mymd !140
  %40 = load i32, ptr %eof.addr, align 4, !mymd !141
  %tobool54 = icmp ne i32 %40, 0, !mymd !142
  br i1 %tobool54, label %if.then55, label %if.else57, !mymd !143

if.then55:                                        ; preds = %if.end53
  call void @bi_windup(), !mymd !144
  %41 = load i64, ptr @compressed_len, align 8, !mymd !145
  %add56 = add nsw i64 %41, 7, !mymd !146
  store i64 %add56, ptr @compressed_len, align 8, !mymd !147
  br label %if.end68, !mymd !148

if.else57:                                        ; preds = %if.end53
  %42 = load i32, ptr %pad.addr, align 4, !mymd !149
  %tobool58 = icmp ne i32 %42, 0, !mymd !150
  br i1 %tobool58, label %land.lhs.true59, label %if.end67, !mymd !151

land.lhs.true59:                                  ; preds = %if.else57
  %43 = load i64, ptr @compressed_len, align 8, !mymd !152
  %rem = srem i64 %43, 8, !mymd !153
  %cmp60 = icmp ne i64 %rem, 0, !mymd !154
  br i1 %cmp60, label %if.then62, label %if.end67, !mymd !155

if.then62:                                        ; preds = %land.lhs.true59
  %44 = load i32, ptr %eof.addr, align 4, !mymd !156
  %add63 = add nsw i32 0, %44, !mymd !157
  call void @send_bits(i32 noundef %add63, i32 noundef 3), !mymd !158
  %45 = load i64, ptr @compressed_len, align 8, !mymd !159
  %add64 = add nsw i64 %45, 3, !mymd !160
  %add65 = add nsw i64 %add64, 7, !mymd !161
  %and66 = and i64 %add65, -8, !mymd !162
  store i64 %and66, ptr @compressed_len, align 8, !mymd !163
  %46 = load ptr, ptr %buf.addr, align 8, !mymd !164
  call void @copy_block(ptr noundef %46, i32 noundef 0, i32 noundef 1), !mymd !165
  br label %if.end67, !mymd !166

if.end67:                                         ; preds = %if.then62, %land.lhs.true59, %if.else57
  br label %if.end68, !mymd !167

if.end68:                                         ; preds = %if.end67, %if.then55
  %47 = load i64, ptr @compressed_len, align 8, !mymd !168
  %shr69 = ashr i64 %47, 3, !mymd !169
  ret i64 %shr69, !mymd !170
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @init_block() #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @set_file_type() #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @build_tree_1(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @build_bl_tree() #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @compress_block(ptr noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @send_all_trees(i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"1824"}
!7 = !{!"1825"}
!8 = !{!"1826"}
!9 = !{!"1827"}
!10 = !{!"1828"}
!11 = !{!"1829"}
!12 = !{!"1830"}
!13 = !{!"1831"}
!14 = !{!"1832"}
!15 = !{!"1833"}
!16 = !{!"1834"}
!17 = !{!"1835"}
!18 = !{!"1836"}
!19 = !{!"1837"}
!20 = !{!"1838"}
!21 = !{!"1839"}
!22 = !{!"1840"}
!23 = !{!"1841"}
!24 = !{!"1842"}
!25 = !{!"1843"}
!26 = !{!"1844"}
!27 = !{!"1845"}
!28 = !{!"1846"}
!29 = !{!"1847"}
!30 = !{!"1848"}
!31 = !{!"1849"}
!32 = !{!"1850"}
!33 = !{!"1851"}
!34 = !{!"1852"}
!35 = !{!"1853"}
!36 = !{!"1854"}
!37 = !{!"1855"}
!38 = !{!"1856"}
!39 = !{!"1857"}
!40 = !{!"1858"}
!41 = !{!"1859"}
!42 = !{!"1860"}
!43 = !{!"1861"}
!44 = !{!"1862"}
!45 = !{!"1863"}
!46 = !{!"1864"}
!47 = !{!"1865"}
!48 = !{!"1866"}
!49 = !{!"1867"}
!50 = !{!"1868"}
!51 = !{!"1869"}
!52 = !{!"1870"}
!53 = !{!"1871"}
!54 = !{!"1872"}
!55 = !{!"1873"}
!56 = !{!"1874"}
!57 = !{!"1875"}
!58 = !{!"1876"}
!59 = !{!"1877"}
!60 = !{!"1878"}
!61 = !{!"1879"}
!62 = !{!"1880"}
!63 = !{!"1881"}
!64 = !{!"1882"}
!65 = !{!"1883"}
!66 = !{!"1884"}
!67 = !{!"1885"}
!68 = !{!"1886"}
!69 = !{!"1887"}
!70 = !{!"1888"}
!71 = !{!"1889"}
!72 = !{!"1890"}
!73 = !{!"1891"}
!74 = !{!"1892"}
!75 = !{!"1893"}
!76 = !{!"1894"}
!77 = !{!"1895"}
!78 = !{!"1896"}
!79 = !{!"1897"}
!80 = !{!"1898"}
!81 = !{!"1899"}
!82 = !{!"1900"}
!83 = !{!"1901"}
!84 = !{!"1902"}
!85 = !{!"1903"}
!86 = !{!"1904"}
!87 = !{!"1905"}
!88 = !{!"1906"}
!89 = !{!"1907"}
!90 = !{!"1908"}
!91 = !{!"1909"}
!92 = !{!"1910"}
!93 = !{!"1911"}
!94 = !{!"1912"}
!95 = !{!"1913"}
!96 = !{!"1914"}
!97 = !{!"1915"}
!98 = !{!"1916"}
!99 = !{!"1917"}
!100 = !{!"1918"}
!101 = !{!"1919"}
!102 = !{!"1920"}
!103 = !{!"1921"}
!104 = !{!"1922"}
!105 = !{!"1923"}
!106 = !{!"1924"}
!107 = !{!"1925"}
!108 = !{!"1926"}
!109 = !{!"1927"}
!110 = !{!"1928"}
!111 = !{!"1929"}
!112 = !{!"1930"}
!113 = !{!"1931"}
!114 = !{!"1932"}
!115 = !{!"1933"}
!116 = !{!"1934"}
!117 = !{!"1935"}
!118 = !{!"1936"}
!119 = !{!"1937"}
!120 = !{!"1938"}
!121 = !{!"1939"}
!122 = !{!"1940"}
!123 = !{!"1941"}
!124 = !{!"1942"}
!125 = !{!"1943"}
!126 = !{!"1944"}
!127 = !{!"1945"}
!128 = !{!"1946"}
!129 = !{!"1947"}
!130 = !{!"1948"}
!131 = !{!"1949"}
!132 = !{!"1950"}
!133 = !{!"1951"}
!134 = !{!"1952"}
!135 = !{!"1953"}
!136 = !{!"1954"}
!137 = !{!"1955"}
!138 = !{!"1956"}
!139 = !{!"1957"}
!140 = !{!"1958"}
!141 = !{!"1959"}
!142 = !{!"1960"}
!143 = !{!"1961"}
!144 = !{!"1962"}
!145 = !{!"1963"}
!146 = !{!"1964"}
!147 = !{!"1965"}
!148 = !{!"1966"}
!149 = !{!"1967"}
!150 = !{!"1968"}
!151 = !{!"1969"}
!152 = !{!"1970"}
!153 = !{!"1971"}
!154 = !{!"1972"}
!155 = !{!"1973"}
!156 = !{!"1974"}
!157 = !{!"1975"}
!158 = !{!"1976"}
!159 = !{!"1977"}
!160 = !{!"1978"}
!161 = !{!"1979"}
!162 = !{!"1980"}
!163 = !{!"1981"}
!164 = !{!"1982"}
!165 = !{!"1983"}
!166 = !{!"1984"}
!167 = !{!"1985"}
!168 = !{!"1986"}
!169 = !{!"1987"}
!170 = !{!"1988"}
