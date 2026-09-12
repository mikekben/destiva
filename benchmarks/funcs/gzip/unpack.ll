; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@ifd = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@bytes_out = external dso_local global i64, align 8
@valid = external hidden global i32, align 4
@bitbuf = external hidden global i64, align 8
@peek_bits = external hidden global i32, align 4
@leaves = external hidden global [26 x i32], align 16
@max_len = external hidden global i32, align 4
@parents = external hidden global [26 x i32], align 16
@literal = external hidden global [256 x i8], align 16
@lit_base = external hidden global [26 x i32], align 16
@orig_len = external hidden global i64, align 8
@.str.58 = external hidden unnamed_addr constant [38 x i8], align 1
@outbuf = external dso_local global [18432 x i8], align 16
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_window() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unpack(i32 noundef %in, i32 noundef %out) #0 {
entry:
  %in.addr = alloca i32, align 4, !mymd !6
  %out.addr = alloca i32, align 4, !mymd !7
  %len = alloca i32, align 4, !mymd !8
  %eob = alloca i32, align 4, !mymd !9
  %peek = alloca i32, align 4, !mymd !10
  %peek_mask = alloca i32, align 4, !mymd !11
  %mask = alloca i64, align 8, !mymd !12
  store i32 %in, ptr %in.addr, align 4, !mymd !13
  store i32 %out, ptr %out.addr, align 4, !mymd !14
  %0 = load i32, ptr %in.addr, align 4, !mymd !15
  store i32 %0, ptr @ifd, align 4, !mymd !16
  %1 = load i32, ptr %out.addr, align 4, !mymd !17
  store i32 %1, ptr @ofd, align 4, !mymd !18
  call void @read_tree(), !mymd !19
  call void @build_tree(), !mymd !20
  store i32 0, ptr @valid, align 4, !mymd !21
  store i64 0, ptr @bitbuf, align 8, !mymd !22
  %2 = load i32, ptr @peek_bits, align 4, !mymd !23
  %shl = shl i32 1, %2, !mymd !24
  %sub = sub nsw i32 %shl, 1, !mymd !25
  store i32 %sub, ptr %peek_mask, align 4, !mymd !26
  %3 = load i32, ptr @max_len, align 4, !mymd !27
  %idxprom = sext i32 %3 to i64, !mymd !28
  %arrayidx = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom, !mymd !29
  %4 = load i32, ptr %arrayidx, align 4, !mymd !30
  %sub1 = sub nsw i32 %4, 1, !mymd !31
  store i32 %sub1, ptr %eob, align 4, !mymd !32
  br label %for.cond, !mymd !33

for.cond:                                         ; preds = %if.end67, %entry
  br label %while.cond, !mymd !34

while.cond:                                       ; preds = %cond.end, %for.cond
  %5 = load i32, ptr @valid, align 4, !mymd !35
  %6 = load i32, ptr @peek_bits, align 4, !mymd !36
  %cmp = icmp slt i32 %5, %6, !mymd !37
  br i1 %cmp, label %while.body, label %while.end, !mymd !38

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr @bitbuf, align 8, !mymd !39
  %shl2 = shl i64 %7, 8, !mymd !40
  %8 = load i32, ptr @inptr, align 4, !mymd !41
  %9 = load i32, ptr @insize, align 4, !mymd !42
  %cmp3 = icmp ult i32 %8, %9, !mymd !43
  br i1 %cmp3, label %cond.true, label %cond.false, !mymd !44

cond.true:                                        ; preds = %while.body
  %10 = load i32, ptr @inptr, align 4, !mymd !45
  %inc = add i32 %10, 1, !mymd !46
  store i32 %inc, ptr @inptr, align 4, !mymd !47
  %idxprom4 = zext i32 %10 to i64, !mymd !48
  %arrayidx5 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom4, !mymd !49
  %11 = load i8, ptr %arrayidx5, align 1, !mymd !50
  %conv = zext i8 %11 to i32, !mymd !51
  br label %cond.end, !mymd !52

cond.false:                                       ; preds = %while.body
  %call = call i32 @fill_inbuf(i32 noundef 0), !mymd !53
  br label %cond.end, !mymd !54

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ], !mymd !55
  %conv6 = sext i32 %cond to i64, !mymd !56
  %or = or i64 %shl2, %conv6, !mymd !57
  store i64 %or, ptr @bitbuf, align 8, !mymd !58
  %12 = load i32, ptr @valid, align 4, !mymd !59
  %add = add nsw i32 %12, 8, !mymd !60
  store i32 %add, ptr @valid, align 4, !mymd !61
  br label %while.cond, !llvm.loop !62, !mymd !64

while.end:                                        ; preds = %while.cond
  %13 = load i64, ptr @bitbuf, align 8, !mymd !65
  %14 = load i32, ptr @valid, align 4, !mymd !66
  %15 = load i32, ptr @peek_bits, align 4, !mymd !67
  %sub7 = sub nsw i32 %14, %15, !mymd !68
  %sh_prom = zext i32 %sub7 to i64, !mymd !69
  %shr = lshr i64 %13, %sh_prom, !mymd !70
  %16 = load i32, ptr %peek_mask, align 4, !mymd !71
  %conv8 = zext i32 %16 to i64, !mymd !72
  %and = and i64 %shr, %conv8, !mymd !73
  %conv9 = trunc i64 %and to i32, !mymd !74
  store i32 %conv9, ptr %peek, align 4, !mymd !75
  %17 = load i32, ptr %peek, align 4, !mymd !76
  %idxprom10 = zext i32 %17 to i64, !mymd !77
  %arrayidx11 = getelementptr inbounds nuw [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom10, !mymd !78
  %18 = load i8, ptr %arrayidx11, align 1, !mymd !79
  %conv12 = zext i8 %18 to i32, !mymd !80
  store i32 %conv12, ptr %len, align 4, !mymd !81
  %19 = load i32, ptr %len, align 4, !mymd !82
  %cmp13 = icmp sgt i32 %19, 0, !mymd !83
  br i1 %cmp13, label %if.then, label %if.else, !mymd !84

if.then:                                          ; preds = %while.end
  %20 = load i32, ptr @peek_bits, align 4, !mymd !85
  %21 = load i32, ptr %len, align 4, !mymd !86
  %sub15 = sub nsw i32 %20, %21, !mymd !87
  %22 = load i32, ptr %peek, align 4, !mymd !88
  %shr16 = lshr i32 %22, %sub15, !mymd !89
  store i32 %shr16, ptr %peek, align 4, !mymd !90
  br label %if.end, !mymd !91

if.else:                                          ; preds = %while.end
  %23 = load i32, ptr %peek_mask, align 4, !mymd !92
  %conv17 = zext i32 %23 to i64, !mymd !93
  store i64 %conv17, ptr %mask, align 8, !mymd !94
  %24 = load i32, ptr @peek_bits, align 4, !mymd !95
  store i32 %24, ptr %len, align 4, !mymd !96
  br label %do.body, !mymd !97

do.body:                                          ; preds = %do.cond, %if.else
  %25 = load i32, ptr %len, align 4, !mymd !98
  %inc18 = add nsw i32 %25, 1, !mymd !99
  store i32 %inc18, ptr %len, align 4, !mymd !100
  %26 = load i64, ptr %mask, align 8, !mymd !101
  %shl19 = shl i64 %26, 1, !mymd !102
  %add20 = add i64 %shl19, 1, !mymd !103
  store i64 %add20, ptr %mask, align 8, !mymd !104
  br label %while.cond21, !mymd !105

while.cond21:                                     ; preds = %cond.end35, %do.body
  %27 = load i32, ptr @valid, align 4, !mymd !106
  %28 = load i32, ptr %len, align 4, !mymd !107
  %cmp22 = icmp slt i32 %27, %28, !mymd !108
  br i1 %cmp22, label %while.body24, label %while.end40, !mymd !109

while.body24:                                     ; preds = %while.cond21
  %29 = load i64, ptr @bitbuf, align 8, !mymd !110
  %shl25 = shl i64 %29, 8, !mymd !111
  %30 = load i32, ptr @inptr, align 4, !mymd !112
  %31 = load i32, ptr @insize, align 4, !mymd !113
  %cmp26 = icmp ult i32 %30, %31, !mymd !114
  br i1 %cmp26, label %cond.true28, label %cond.false33, !mymd !115

cond.true28:                                      ; preds = %while.body24
  %32 = load i32, ptr @inptr, align 4, !mymd !116
  %inc29 = add i32 %32, 1, !mymd !117
  store i32 %inc29, ptr @inptr, align 4, !mymd !118
  %idxprom30 = zext i32 %32 to i64, !mymd !119
  %arrayidx31 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom30, !mymd !120
  %33 = load i8, ptr %arrayidx31, align 1, !mymd !121
  %conv32 = zext i8 %33 to i32, !mymd !122
  br label %cond.end35, !mymd !123

cond.false33:                                     ; preds = %while.body24
  %call34 = call i32 @fill_inbuf(i32 noundef 0), !mymd !124
  br label %cond.end35, !mymd !125

cond.end35:                                       ; preds = %cond.false33, %cond.true28
  %cond36 = phi i32 [ %conv32, %cond.true28 ], [ %call34, %cond.false33 ], !mymd !126
  %conv37 = sext i32 %cond36 to i64, !mymd !127
  %or38 = or i64 %shl25, %conv37, !mymd !128
  store i64 %or38, ptr @bitbuf, align 8, !mymd !129
  %34 = load i32, ptr @valid, align 4, !mymd !130
  %add39 = add nsw i32 %34, 8, !mymd !131
  store i32 %add39, ptr @valid, align 4, !mymd !132
  br label %while.cond21, !llvm.loop !133, !mymd !134

while.end40:                                      ; preds = %while.cond21
  %35 = load i64, ptr @bitbuf, align 8, !mymd !135
  %36 = load i32, ptr @valid, align 4, !mymd !136
  %37 = load i32, ptr %len, align 4, !mymd !137
  %sub41 = sub nsw i32 %36, %37, !mymd !138
  %sh_prom42 = zext i32 %sub41 to i64, !mymd !139
  %shr43 = lshr i64 %35, %sh_prom42, !mymd !140
  %38 = load i64, ptr %mask, align 8, !mymd !141
  %and44 = and i64 %shr43, %38, !mymd !142
  %conv45 = trunc i64 %and44 to i32, !mymd !143
  store i32 %conv45, ptr %peek, align 4, !mymd !144
  br label %do.cond, !mymd !145

do.cond:                                          ; preds = %while.end40
  %39 = load i32, ptr %peek, align 4, !mymd !146
  %40 = load i32, ptr %len, align 4, !mymd !147
  %idxprom46 = sext i32 %40 to i64, !mymd !148
  %arrayidx47 = getelementptr inbounds [26 x i32], ptr @parents, i64 0, i64 %idxprom46, !mymd !149
  %41 = load i32, ptr %arrayidx47, align 4, !mymd !150
  %cmp48 = icmp ult i32 %39, %41, !mymd !151
  br i1 %cmp48, label %do.body, label %do.end, !llvm.loop !152, !mymd !153

do.end:                                           ; preds = %do.cond
  br label %if.end, !mymd !154

if.end:                                           ; preds = %do.end, %if.then
  %42 = load i32, ptr %peek, align 4, !mymd !155
  %43 = load i32, ptr %eob, align 4, !mymd !156
  %cmp50 = icmp eq i32 %42, %43, !mymd !157
  br i1 %cmp50, label %land.lhs.true, label %if.end55, !mymd !158

land.lhs.true:                                    ; preds = %if.end
  %44 = load i32, ptr %len, align 4, !mymd !159
  %45 = load i32, ptr @max_len, align 4, !mymd !160
  %cmp52 = icmp eq i32 %44, %45, !mymd !161
  br i1 %cmp52, label %if.then54, label %if.end55, !mymd !162

if.then54:                                        ; preds = %land.lhs.true
  br label %for.end, !mymd !163

if.end55:                                         ; preds = %land.lhs.true, %if.end
  %46 = load i32, ptr %peek, align 4, !mymd !164
  %47 = load i32, ptr %len, align 4, !mymd !165
  %idxprom56 = sext i32 %47 to i64, !mymd !166
  %arrayidx57 = getelementptr inbounds [26 x i32], ptr @lit_base, i64 0, i64 %idxprom56, !mymd !167
  %48 = load i32, ptr %arrayidx57, align 4, !mymd !168
  %add58 = add i32 %46, %48, !mymd !169
  %idxprom59 = zext i32 %add58 to i64, !mymd !170
  %arrayidx60 = getelementptr inbounds nuw [256 x i8], ptr @literal, i64 0, i64 %idxprom59, !mymd !171
  %49 = load i8, ptr %arrayidx60, align 1, !mymd !172
  %50 = load i32, ptr @outcnt, align 4, !mymd !173
  %inc61 = add i32 %50, 1, !mymd !174
  store i32 %inc61, ptr @outcnt, align 4, !mymd !175
  %idxprom62 = zext i32 %50 to i64, !mymd !176
  %arrayidx63 = getelementptr inbounds nuw [65536 x i8], ptr @window, i64 0, i64 %idxprom62, !mymd !177
  store i8 %49, ptr %arrayidx63, align 1, !mymd !178
  %51 = load i32, ptr @outcnt, align 4, !mymd !179
  %cmp64 = icmp eq i32 %51, 32768, !mymd !180
  br i1 %cmp64, label %if.then66, label %if.end67, !mymd !181

if.then66:                                        ; preds = %if.end55
  call void @flush_window(), !mymd !182
  br label %if.end67, !mymd !183

if.end67:                                         ; preds = %if.then66, %if.end55
  %52 = load i32, ptr %len, align 4, !mymd !184
  %53 = load i32, ptr @valid, align 4, !mymd !185
  %sub68 = sub nsw i32 %53, %52, !mymd !186
  store i32 %sub68, ptr @valid, align 4, !mymd !187
  br label %for.cond, !mymd !188

for.end:                                          ; preds = %if.then54
  call void @flush_window(), !mymd !189
  %54 = load i64, ptr @orig_len, align 8, !mymd !190
  %55 = load i64, ptr @bytes_out, align 8, !mymd !191
  %and69 = and i64 %55, 4294967295, !mymd !192
  %cmp70 = icmp ne i64 %54, %and69, !mymd !193
  br i1 %cmp70, label %if.then72, label %if.end73, !mymd !194

if.then72:                                        ; preds = %for.end
  call void @error(ptr noundef @.str.58), !mymd !195
  br label %if.end73, !mymd !196

if.end73:                                         ; preds = %if.then72, %for.end
  ret i32 0, !mymd !197
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @read_tree() #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @build_tree() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"9191"}
!7 = !{!"9192"}
!8 = !{!"9193"}
!9 = !{!"9194"}
!10 = !{!"9195"}
!11 = !{!"9196"}
!12 = !{!"9197"}
!13 = !{!"9198"}
!14 = !{!"9199"}
!15 = !{!"9200"}
!16 = !{!"9201"}
!17 = !{!"9202"}
!18 = !{!"9203"}
!19 = !{!"9204"}
!20 = !{!"9205"}
!21 = !{!"9206"}
!22 = !{!"9207"}
!23 = !{!"9208"}
!24 = !{!"9209"}
!25 = !{!"9210"}
!26 = !{!"9211"}
!27 = !{!"9212"}
!28 = !{!"9213"}
!29 = !{!"9214"}
!30 = !{!"9215"}
!31 = !{!"9216"}
!32 = !{!"9217"}
!33 = !{!"9218"}
!34 = !{!"9219"}
!35 = !{!"9220"}
!36 = !{!"9221"}
!37 = !{!"9222"}
!38 = !{!"9223"}
!39 = !{!"9224"}
!40 = !{!"9225"}
!41 = !{!"9226"}
!42 = !{!"9227"}
!43 = !{!"9228"}
!44 = !{!"9229"}
!45 = !{!"9230"}
!46 = !{!"9231"}
!47 = !{!"9232"}
!48 = !{!"9233"}
!49 = !{!"9234"}
!50 = !{!"9235"}
!51 = !{!"9236"}
!52 = !{!"9237"}
!53 = !{!"9238"}
!54 = !{!"9239"}
!55 = !{!"9240"}
!56 = !{!"9241"}
!57 = !{!"9242"}
!58 = !{!"9243"}
!59 = !{!"9244"}
!60 = !{!"9245"}
!61 = !{!"9246"}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"9247"}
!65 = !{!"9248"}
!66 = !{!"9249"}
!67 = !{!"9250"}
!68 = !{!"9251"}
!69 = !{!"9252"}
!70 = !{!"9253"}
!71 = !{!"9254"}
!72 = !{!"9255"}
!73 = !{!"9256"}
!74 = !{!"9257"}
!75 = !{!"9258"}
!76 = !{!"9259"}
!77 = !{!"9260"}
!78 = !{!"9261"}
!79 = !{!"9262"}
!80 = !{!"9263"}
!81 = !{!"9264"}
!82 = !{!"9265"}
!83 = !{!"9266"}
!84 = !{!"9267"}
!85 = !{!"9268"}
!86 = !{!"9269"}
!87 = !{!"9270"}
!88 = !{!"9271"}
!89 = !{!"9272"}
!90 = !{!"9273"}
!91 = !{!"9274"}
!92 = !{!"9275"}
!93 = !{!"9276"}
!94 = !{!"9277"}
!95 = !{!"9278"}
!96 = !{!"9279"}
!97 = !{!"9280"}
!98 = !{!"9281"}
!99 = !{!"9282"}
!100 = !{!"9283"}
!101 = !{!"9284"}
!102 = !{!"9285"}
!103 = !{!"9286"}
!104 = !{!"9287"}
!105 = !{!"9288"}
!106 = !{!"9289"}
!107 = !{!"9290"}
!108 = !{!"9291"}
!109 = !{!"9292"}
!110 = !{!"9293"}
!111 = !{!"9294"}
!112 = !{!"9295"}
!113 = !{!"9296"}
!114 = !{!"9297"}
!115 = !{!"9298"}
!116 = !{!"9299"}
!117 = !{!"9300"}
!118 = !{!"9301"}
!119 = !{!"9302"}
!120 = !{!"9303"}
!121 = !{!"9304"}
!122 = !{!"9305"}
!123 = !{!"9306"}
!124 = !{!"9307"}
!125 = !{!"9308"}
!126 = !{!"9309"}
!127 = !{!"9310"}
!128 = !{!"9311"}
!129 = !{!"9312"}
!130 = !{!"9313"}
!131 = !{!"9314"}
!132 = !{!"9315"}
!133 = distinct !{!133, !63}
!134 = !{!"9316"}
!135 = !{!"9317"}
!136 = !{!"9318"}
!137 = !{!"9319"}
!138 = !{!"9320"}
!139 = !{!"9321"}
!140 = !{!"9322"}
!141 = !{!"9323"}
!142 = !{!"9324"}
!143 = !{!"9325"}
!144 = !{!"9326"}
!145 = !{!"9327"}
!146 = !{!"9328"}
!147 = !{!"9329"}
!148 = !{!"9330"}
!149 = !{!"9331"}
!150 = !{!"9332"}
!151 = !{!"9333"}
!152 = distinct !{!152, !63}
!153 = !{!"9334"}
!154 = !{!"9335"}
!155 = !{!"9336"}
!156 = !{!"9337"}
!157 = !{!"9338"}
!158 = !{!"9339"}
!159 = !{!"9340"}
!160 = !{!"9341"}
!161 = !{!"9342"}
!162 = !{!"9343"}
!163 = !{!"9344"}
!164 = !{!"9345"}
!165 = !{!"9346"}
!166 = !{!"9347"}
!167 = !{!"9348"}
!168 = !{!"9349"}
!169 = !{!"9350"}
!170 = !{!"9351"}
!171 = !{!"9352"}
!172 = !{!"9353"}
!173 = !{!"9354"}
!174 = !{!"9355"}
!175 = !{!"9356"}
!176 = !{!"9357"}
!177 = !{!"9358"}
!178 = !{!"9359"}
!179 = !{!"9360"}
!180 = !{!"9361"}
!181 = !{!"9362"}
!182 = !{!"9363"}
!183 = !{!"9364"}
!184 = !{!"9365"}
!185 = !{!"9366"}
!186 = !{!"9367"}
!187 = !{!"9368"}
!188 = !{!"9369"}
!189 = !{!"9370"}
!190 = !{!"9371"}
!191 = !{!"9372"}
!192 = !{!"9373"}
!193 = !{!"9374"}
!194 = !{!"9375"}
!195 = !{!"9376"}
!196 = !{!"9377"}
!197 = !{!"9378"}
