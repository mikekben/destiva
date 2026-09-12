; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decompress = external dso_local global i32, align 4
@z_suffix = external dso_local global ptr, align 8
@save_orig_name = external dso_local global i32, align 4
@.str.162 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.166 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.170 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.178 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.179 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.180 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden ptr @get_suffix(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @shorten_name(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8, !mymd !6
  %len = alloca i32, align 4, !mymd !7
  %trunc = alloca ptr, align 8, !mymd !8
  %plen = alloca i32, align 4, !mymd !9
  %min_part = alloca i32, align 4, !mymd !10
  %p = alloca ptr, align 8, !mymd !11
  store ptr %name, ptr %name.addr, align 8, !mymd !12
  store ptr null, ptr %trunc, align 8, !mymd !13
  store i32 3, ptr %min_part, align 4, !mymd !14
  %0 = load ptr, ptr %name.addr, align 8, !mymd !15
  %call = call i64 @strlen(ptr noundef %0) #3, !mymd !16
  %conv = trunc i64 %call to i32, !mymd !17
  store i32 %conv, ptr %len, align 4, !mymd !18
  %1 = load i32, ptr @decompress, align 4, !mymd !19
  %tobool = icmp ne i32 %1, 0, !mymd !20
  br i1 %tobool, label %if.then, label %if.end3, !mymd !21

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %len, align 4, !mymd !22
  %cmp = icmp sle i32 %2, 1, !mymd !23
  br i1 %cmp, label %if.then2, label %if.end, !mymd !24

if.then2:                                         ; preds = %if.then
  call void @error(ptr noundef @.str.178), !mymd !25
  br label %if.end, !mymd !26

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load ptr, ptr %name.addr, align 8, !mymd !27
  %4 = load i32, ptr %len, align 4, !mymd !28
  %sub = sub nsw i32 %4, 1, !mymd !29
  %idxprom = sext i32 %sub to i64, !mymd !30
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom, !mymd !31
  store i8 0, ptr %arrayidx, align 1, !mymd !32
  br label %return, !mymd !33

if.end3:                                          ; preds = %entry
  %5 = load ptr, ptr %name.addr, align 8, !mymd !34
  %call4 = call ptr @get_suffix(ptr noundef %5), !mymd !35
  store ptr %call4, ptr %p, align 8, !mymd !36
  %6 = load ptr, ptr %p, align 8, !mymd !37
  %cmp5 = icmp eq ptr %6, null, !mymd !38
  br i1 %cmp5, label %if.then7, label %if.end8, !mymd !39

if.then7:                                         ; preds = %if.end3
  call void @error(ptr noundef @.str.179), !mymd !40
  br label %if.end8, !mymd !41

if.end8:                                          ; preds = %if.then7, %if.end3
  %7 = load ptr, ptr %p, align 8, !mymd !42
  store i8 0, ptr %7, align 1, !mymd !43
  store i32 1, ptr @save_orig_name, align 4, !mymd !44
  %8 = load i32, ptr %len, align 4, !mymd !45
  %cmp9 = icmp sgt i32 %8, 4, !mymd !46
  br i1 %cmp9, label %land.lhs.true, label %if.end17, !mymd !47

land.lhs.true:                                    ; preds = %if.end8
  %9 = load ptr, ptr %p, align 8, !mymd !48
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 -4, !mymd !49
  %call11 = call i32 @strcmp(ptr noundef %add.ptr, ptr noundef @.str.170) #3, !mymd !50
  %cmp12 = icmp eq i32 %call11, 0, !mymd !51
  br i1 %cmp12, label %if.then14, label %if.end17, !mymd !52

if.then14:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %p, align 8, !mymd !53
  %add.ptr15 = getelementptr inbounds i8, ptr %10, i64 -4, !mymd !54
  %call16 = call ptr @strcpy(ptr noundef %add.ptr15, ptr noundef @.str.162) #4, !mymd !55
  br label %return, !mymd !56

if.end17:                                         ; preds = %land.lhs.true, %if.end8
  br label %do.body, !mymd !57

do.body:                                          ; preds = %land.end, %if.end17
  %11 = load ptr, ptr %name.addr, align 8, !mymd !58
  %call18 = call ptr @strrchr(ptr noundef %11, i32 noundef 47) #3, !mymd !59
  store ptr %call18, ptr %p, align 8, !mymd !60
  %12 = load ptr, ptr %p, align 8, !mymd !61
  %tobool19 = icmp ne ptr %12, null, !mymd !62
  br i1 %tobool19, label %cond.true, label %cond.false, !mymd !63

cond.true:                                        ; preds = %do.body
  %13 = load ptr, ptr %p, align 8, !mymd !64
  %add.ptr20 = getelementptr inbounds i8, ptr %13, i64 1, !mymd !65
  br label %cond.end, !mymd !66

cond.false:                                       ; preds = %do.body
  %14 = load ptr, ptr %name.addr, align 8, !mymd !67
  br label %cond.end, !mymd !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr20, %cond.true ], [ %14, %cond.false ], !mymd !69
  store ptr %cond, ptr %p, align 8, !mymd !70
  br label %while.cond, !mymd !71

while.cond:                                       ; preds = %if.end32, %cond.end
  %15 = load ptr, ptr %p, align 8, !mymd !72
  %16 = load i8, ptr %15, align 1, !mymd !73
  %tobool21 = icmp ne i8 %16, 0, !mymd !74
  br i1 %tobool21, label %while.body, label %while.end, !mymd !75

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %p, align 8, !mymd !76
  %call22 = call i64 @strcspn(ptr noundef %17, ptr noundef @.str.166) #3, !mymd !77
  %conv23 = trunc i64 %call22 to i32, !mymd !78
  store i32 %conv23, ptr %plen, align 4, !mymd !79
  %18 = load i32, ptr %plen, align 4, !mymd !80
  %19 = load ptr, ptr %p, align 8, !mymd !81
  %idx.ext = sext i32 %18 to i64, !mymd !82
  %add.ptr24 = getelementptr inbounds i8, ptr %19, i64 %idx.ext, !mymd !83
  store ptr %add.ptr24, ptr %p, align 8, !mymd !84
  %20 = load i32, ptr %plen, align 4, !mymd !85
  %21 = load i32, ptr %min_part, align 4, !mymd !86
  %cmp25 = icmp sgt i32 %20, %21, !mymd !87
  br i1 %cmp25, label %if.then27, label %if.end29, !mymd !88

if.then27:                                        ; preds = %while.body
  %22 = load ptr, ptr %p, align 8, !mymd !89
  %add.ptr28 = getelementptr inbounds i8, ptr %22, i64 -1, !mymd !90
  store ptr %add.ptr28, ptr %trunc, align 8, !mymd !91
  br label %if.end29, !mymd !92

if.end29:                                         ; preds = %if.then27, %while.body
  %23 = load ptr, ptr %p, align 8, !mymd !93
  %24 = load i8, ptr %23, align 1, !mymd !94
  %tobool30 = icmp ne i8 %24, 0, !mymd !95
  br i1 %tobool30, label %if.then31, label %if.end32, !mymd !96

if.then31:                                        ; preds = %if.end29
  %25 = load ptr, ptr %p, align 8, !mymd !97
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %25, i32 1, !mymd !98
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !99
  br label %if.end32, !mymd !100

if.end32:                                         ; preds = %if.then31, %if.end29
  br label %while.cond, !llvm.loop !101, !mymd !103

while.end:                                        ; preds = %while.cond
  br label %do.cond, !mymd !104

do.cond:                                          ; preds = %while.end
  %26 = load ptr, ptr %trunc, align 8, !mymd !105
  %cmp33 = icmp eq ptr %26, null, !mymd !106
  br i1 %cmp33, label %land.rhs, label %land.end, !mymd !107

land.rhs:                                         ; preds = %do.cond
  %27 = load i32, ptr %min_part, align 4, !mymd !108
  %dec = add nsw i32 %27, -1, !mymd !109
  store i32 %dec, ptr %min_part, align 4, !mymd !110
  %cmp35 = icmp ne i32 %dec, 0, !mymd !111
  br label %land.end, !mymd !112

land.end:                                         ; preds = %land.rhs, %do.cond
  %28 = phi i1 [ false, %do.cond ], [ %cmp35, %land.rhs ], !mymd !113
  br i1 %28, label %do.body, label %do.end, !llvm.loop !114, !mymd !115

do.end:                                           ; preds = %land.end
  %29 = load ptr, ptr %trunc, align 8, !mymd !116
  %cmp37 = icmp ne ptr %29, null, !mymd !117
  br i1 %cmp37, label %if.then39, label %if.else, !mymd !118

if.then39:                                        ; preds = %do.end
  br label %do.body40, !mymd !119

do.body40:                                        ; preds = %do.cond43, %if.then39
  %30 = load ptr, ptr %trunc, align 8, !mymd !120
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 1, !mymd !121
  %31 = load i8, ptr %arrayidx41, align 1, !mymd !122
  %32 = load ptr, ptr %trunc, align 8, !mymd !123
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 0, !mymd !124
  store i8 %31, ptr %arrayidx42, align 1, !mymd !125
  br label %do.cond43, !mymd !126

do.cond43:                                        ; preds = %do.body40
  %33 = load ptr, ptr %trunc, align 8, !mymd !127
  %incdec.ptr44 = getelementptr inbounds nuw i8, ptr %33, i32 1, !mymd !128
  store ptr %incdec.ptr44, ptr %trunc, align 8, !mymd !129
  %34 = load i8, ptr %33, align 1, !mymd !130
  %tobool45 = icmp ne i8 %34, 0, !mymd !131
  br i1 %tobool45, label %do.body40, label %do.end46, !llvm.loop !132, !mymd !133

do.end46:                                         ; preds = %do.cond43
  %35 = load ptr, ptr %trunc, align 8, !mymd !134
  %incdec.ptr47 = getelementptr inbounds i8, ptr %35, i32 -1, !mymd !135
  store ptr %incdec.ptr47, ptr %trunc, align 8, !mymd !136
  br label %if.end61, !mymd !137

if.else:                                          ; preds = %do.end
  %36 = load ptr, ptr %name.addr, align 8, !mymd !138
  %37 = load i8, ptr @.str.166, align 1, !mymd !139
  %conv48 = sext i8 %37 to i32, !mymd !140
  %call49 = call ptr @strrchr(ptr noundef %36, i32 noundef %conv48) #3, !mymd !141
  store ptr %call49, ptr %trunc, align 8, !mymd !142
  %38 = load ptr, ptr %trunc, align 8, !mymd !143
  %cmp50 = icmp eq ptr %38, null, !mymd !144
  br i1 %cmp50, label %if.then52, label %if.end53, !mymd !145

if.then52:                                        ; preds = %if.else
  call void @error(ptr noundef @.str.180), !mymd !146
  br label %if.end53, !mymd !147

if.end53:                                         ; preds = %if.then52, %if.else
  %39 = load ptr, ptr %trunc, align 8, !mymd !148
  %arrayidx54 = getelementptr inbounds i8, ptr %39, i64 1, !mymd !149
  %40 = load i8, ptr %arrayidx54, align 1, !mymd !150
  %conv55 = sext i8 %40 to i32, !mymd !151
  %cmp56 = icmp eq i32 %conv55, 0, !mymd !152
  br i1 %cmp56, label %if.then58, label %if.end60, !mymd !153

if.then58:                                        ; preds = %if.end53
  %41 = load ptr, ptr %trunc, align 8, !mymd !154
  %incdec.ptr59 = getelementptr inbounds i8, ptr %41, i32 -1, !mymd !155
  store ptr %incdec.ptr59, ptr %trunc, align 8, !mymd !156
  br label %if.end60, !mymd !157

if.end60:                                         ; preds = %if.then58, %if.end53
  br label %if.end61, !mymd !158

if.end61:                                         ; preds = %if.end60, %do.end46
  %42 = load ptr, ptr %trunc, align 8, !mymd !159
  %43 = load ptr, ptr @z_suffix, align 8, !mymd !160
  %call62 = call ptr @strcpy(ptr noundef %42, ptr noundef %43) #4, !mymd !161
  br label %return, !mymd !162

return:                                           ; preds = %if.end61, %if.then14, %if.end
  ret void, !mymd !163
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12277"}
!7 = !{!"12278"}
!8 = !{!"12279"}
!9 = !{!"12280"}
!10 = !{!"12281"}
!11 = !{!"12282"}
!12 = !{!"12283"}
!13 = !{!"12284"}
!14 = !{!"12285"}
!15 = !{!"12286"}
!16 = !{!"12287"}
!17 = !{!"12288"}
!18 = !{!"12289"}
!19 = !{!"12290"}
!20 = !{!"12291"}
!21 = !{!"12292"}
!22 = !{!"12293"}
!23 = !{!"12294"}
!24 = !{!"12295"}
!25 = !{!"12296"}
!26 = !{!"12297"}
!27 = !{!"12298"}
!28 = !{!"12299"}
!29 = !{!"12300"}
!30 = !{!"12301"}
!31 = !{!"12302"}
!32 = !{!"12303"}
!33 = !{!"12304"}
!34 = !{!"12305"}
!35 = !{!"12306"}
!36 = !{!"12307"}
!37 = !{!"12308"}
!38 = !{!"12309"}
!39 = !{!"12310"}
!40 = !{!"12311"}
!41 = !{!"12312"}
!42 = !{!"12313"}
!43 = !{!"12314"}
!44 = !{!"12315"}
!45 = !{!"12316"}
!46 = !{!"12317"}
!47 = !{!"12318"}
!48 = !{!"12319"}
!49 = !{!"12320"}
!50 = !{!"12321"}
!51 = !{!"12322"}
!52 = !{!"12323"}
!53 = !{!"12324"}
!54 = !{!"12325"}
!55 = !{!"12326"}
!56 = !{!"12327"}
!57 = !{!"12328"}
!58 = !{!"12329"}
!59 = !{!"12330"}
!60 = !{!"12331"}
!61 = !{!"12332"}
!62 = !{!"12333"}
!63 = !{!"12334"}
!64 = !{!"12335"}
!65 = !{!"12336"}
!66 = !{!"12337"}
!67 = !{!"12338"}
!68 = !{!"12339"}
!69 = !{!"12340"}
!70 = !{!"12341"}
!71 = !{!"12342"}
!72 = !{!"12343"}
!73 = !{!"12344"}
!74 = !{!"12345"}
!75 = !{!"12346"}
!76 = !{!"12347"}
!77 = !{!"12348"}
!78 = !{!"12349"}
!79 = !{!"12350"}
!80 = !{!"12351"}
!81 = !{!"12352"}
!82 = !{!"12353"}
!83 = !{!"12354"}
!84 = !{!"12355"}
!85 = !{!"12356"}
!86 = !{!"12357"}
!87 = !{!"12358"}
!88 = !{!"12359"}
!89 = !{!"12360"}
!90 = !{!"12361"}
!91 = !{!"12362"}
!92 = !{!"12363"}
!93 = !{!"12364"}
!94 = !{!"12365"}
!95 = !{!"12366"}
!96 = !{!"12367"}
!97 = !{!"12368"}
!98 = !{!"12369"}
!99 = !{!"12370"}
!100 = !{!"12371"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"12372"}
!104 = !{!"12373"}
!105 = !{!"12374"}
!106 = !{!"12375"}
!107 = !{!"12376"}
!108 = !{!"12377"}
!109 = !{!"12378"}
!110 = !{!"12379"}
!111 = !{!"12380"}
!112 = !{!"12381"}
!113 = !{!"12382"}
!114 = distinct !{!114, !102}
!115 = !{!"12383"}
!116 = !{!"12384"}
!117 = !{!"12385"}
!118 = !{!"12386"}
!119 = !{!"12387"}
!120 = !{!"12388"}
!121 = !{!"12389"}
!122 = !{!"12390"}
!123 = !{!"12391"}
!124 = !{!"12392"}
!125 = !{!"12393"}
!126 = !{!"12394"}
!127 = !{!"12395"}
!128 = !{!"12396"}
!129 = !{!"12397"}
!130 = !{!"12398"}
!131 = !{!"12399"}
!132 = distinct !{!132, !102}
!133 = !{!"12400"}
!134 = !{!"12401"}
!135 = !{!"12402"}
!136 = !{!"12403"}
!137 = !{!"12404"}
!138 = !{!"12405"}
!139 = !{!"12406"}
!140 = !{!"12407"}
!141 = !{!"12408"}
!142 = !{!"12409"}
!143 = !{!"12410"}
!144 = !{!"12411"}
!145 = !{!"12412"}
!146 = !{!"12413"}
!147 = !{!"12414"}
!148 = !{!"12415"}
!149 = !{!"12416"}
!150 = !{!"12417"}
!151 = !{!"12418"}
!152 = !{!"12419"}
!153 = !{!"12420"}
!154 = !{!"12421"}
!155 = !{!"12422"}
!156 = !{!"12423"}
!157 = !{!"12424"}
!158 = !{!"12425"}
!159 = !{!"12426"}
!160 = !{!"12427"}
!161 = !{!"12428"}
!162 = !{!"12429"}
!163 = !{!"12430"}
