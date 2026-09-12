; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@leaves = external hidden global [26 x i32], align 16
@max_len = external hidden global i32, align 4
@literal = external hidden global [256 x i8], align 16
@lit_base = external hidden global [26 x i32], align 16
@orig_len = external hidden global i64, align 8
@.str.198 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.199 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @read_tree() #0 {
entry:
  %len = alloca i32, align 4, !mymd !6
  %base = alloca i32, align 4, !mymd !7
  %n = alloca i32, align 4, !mymd !8
  store i64 0, ptr @orig_len, align 8, !mymd !9
  store i32 1, ptr %n, align 4, !mymd !10
  br label %for.cond, !mymd !11

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !mymd !12
  %cmp = icmp sle i32 %0, 4, !mymd !13
  br i1 %cmp, label %for.body, label %for.end, !mymd !14

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr @orig_len, align 8, !mymd !15
  %shl = shl i64 %1, 8, !mymd !16
  %2 = load i32, ptr @inptr, align 4, !mymd !17
  %3 = load i32, ptr @insize, align 4, !mymd !18
  %cmp1 = icmp ult i32 %2, %3, !mymd !19
  br i1 %cmp1, label %cond.true, label %cond.false, !mymd !20

cond.true:                                        ; preds = %for.body
  %4 = load i32, ptr @inptr, align 4, !mymd !21
  %inc = add i32 %4, 1, !mymd !22
  store i32 %inc, ptr @inptr, align 4, !mymd !23
  %idxprom = zext i32 %4 to i64, !mymd !24
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !25
  %5 = load i8, ptr %arrayidx, align 1, !mymd !26
  %conv = zext i8 %5 to i32, !mymd !27
  br label %cond.end, !mymd !28

cond.false:                                       ; preds = %for.body
  %call = call i32 @fill_inbuf(i32 noundef 0), !mymd !29
  br label %cond.end, !mymd !30

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ], !mymd !31
  %conv2 = sext i32 %cond to i64, !mymd !32
  %or = or i64 %shl, %conv2, !mymd !33
  store i64 %or, ptr @orig_len, align 8, !mymd !34
  br label %for.inc, !mymd !35

for.inc:                                          ; preds = %cond.end
  %6 = load i32, ptr %n, align 4, !mymd !36
  %inc3 = add nsw i32 %6, 1, !mymd !37
  store i32 %inc3, ptr %n, align 4, !mymd !38
  br label %for.cond, !llvm.loop !39, !mymd !41

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr @inptr, align 4, !mymd !42
  %8 = load i32, ptr @insize, align 4, !mymd !43
  %cmp4 = icmp ult i32 %7, %8, !mymd !44
  br i1 %cmp4, label %cond.true6, label %cond.false11, !mymd !45

cond.true6:                                       ; preds = %for.end
  %9 = load i32, ptr @inptr, align 4, !mymd !46
  %inc7 = add i32 %9, 1, !mymd !47
  store i32 %inc7, ptr @inptr, align 4, !mymd !48
  %idxprom8 = zext i32 %9 to i64, !mymd !49
  %arrayidx9 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom8, !mymd !50
  %10 = load i8, ptr %arrayidx9, align 1, !mymd !51
  %conv10 = zext i8 %10 to i32, !mymd !52
  br label %cond.end13, !mymd !53

cond.false11:                                     ; preds = %for.end
  %call12 = call i32 @fill_inbuf(i32 noundef 0), !mymd !54
  br label %cond.end13, !mymd !55

cond.end13:                                       ; preds = %cond.false11, %cond.true6
  %cond14 = phi i32 [ %conv10, %cond.true6 ], [ %call12, %cond.false11 ], !mymd !56
  store i32 %cond14, ptr @max_len, align 4, !mymd !57
  %11 = load i32, ptr @max_len, align 4, !mymd !58
  %cmp15 = icmp sgt i32 %11, 25, !mymd !59
  br i1 %cmp15, label %if.then, label %if.end, !mymd !60

if.then:                                          ; preds = %cond.end13
  call void @error(ptr noundef @.str.198), !mymd !61
  br label %if.end, !mymd !62

if.end:                                           ; preds = %if.then, %cond.end13
  store i32 0, ptr %n, align 4, !mymd !63
  store i32 1, ptr %len, align 4, !mymd !64
  br label %for.cond17, !mymd !65

for.cond17:                                       ; preds = %for.inc36, %if.end
  %12 = load i32, ptr %len, align 4, !mymd !66
  %13 = load i32, ptr @max_len, align 4, !mymd !67
  %cmp18 = icmp sle i32 %12, %13, !mymd !68
  br i1 %cmp18, label %for.body20, label %for.end38, !mymd !69

for.body20:                                       ; preds = %for.cond17
  %14 = load i32, ptr @inptr, align 4, !mymd !70
  %15 = load i32, ptr @insize, align 4, !mymd !71
  %cmp21 = icmp ult i32 %14, %15, !mymd !72
  br i1 %cmp21, label %cond.true23, label %cond.false28, !mymd !73

cond.true23:                                      ; preds = %for.body20
  %16 = load i32, ptr @inptr, align 4, !mymd !74
  %inc24 = add i32 %16, 1, !mymd !75
  store i32 %inc24, ptr @inptr, align 4, !mymd !76
  %idxprom25 = zext i32 %16 to i64, !mymd !77
  %arrayidx26 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom25, !mymd !78
  %17 = load i8, ptr %arrayidx26, align 1, !mymd !79
  %conv27 = zext i8 %17 to i32, !mymd !80
  br label %cond.end30, !mymd !81

cond.false28:                                     ; preds = %for.body20
  %call29 = call i32 @fill_inbuf(i32 noundef 0), !mymd !82
  br label %cond.end30, !mymd !83

cond.end30:                                       ; preds = %cond.false28, %cond.true23
  %cond31 = phi i32 [ %conv27, %cond.true23 ], [ %call29, %cond.false28 ], !mymd !84
  %18 = load i32, ptr %len, align 4, !mymd !85
  %idxprom32 = sext i32 %18 to i64, !mymd !86
  %arrayidx33 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom32, !mymd !87
  store i32 %cond31, ptr %arrayidx33, align 4, !mymd !88
  %19 = load i32, ptr %len, align 4, !mymd !89
  %idxprom34 = sext i32 %19 to i64, !mymd !90
  %arrayidx35 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom34, !mymd !91
  %20 = load i32, ptr %arrayidx35, align 4, !mymd !92
  %21 = load i32, ptr %n, align 4, !mymd !93
  %add = add nsw i32 %21, %20, !mymd !94
  store i32 %add, ptr %n, align 4, !mymd !95
  br label %for.inc36, !mymd !96

for.inc36:                                        ; preds = %cond.end30
  %22 = load i32, ptr %len, align 4, !mymd !97
  %inc37 = add nsw i32 %22, 1, !mymd !98
  store i32 %inc37, ptr %len, align 4, !mymd !99
  br label %for.cond17, !llvm.loop !100, !mymd !101

for.end38:                                        ; preds = %for.cond17
  %23 = load i32, ptr %n, align 4, !mymd !102
  %cmp39 = icmp sgt i32 %23, 256, !mymd !103
  br i1 %cmp39, label %if.then41, label %if.end42, !mymd !104

if.then41:                                        ; preds = %for.end38
  call void @error(ptr noundef @.str.199), !mymd !105
  br label %if.end42, !mymd !106

if.end42:                                         ; preds = %if.then41, %for.end38
  %24 = load i32, ptr @max_len, align 4, !mymd !107
  %idxprom43 = sext i32 %24 to i64, !mymd !108
  %arrayidx44 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom43, !mymd !109
  %25 = load i32, ptr %arrayidx44, align 4, !mymd !110
  %inc45 = add nsw i32 %25, 1, !mymd !111
  store i32 %inc45, ptr %arrayidx44, align 4, !mymd !112
  store i32 0, ptr %base, align 4, !mymd !113
  store i32 1, ptr %len, align 4, !mymd !114
  br label %for.cond46, !mymd !115

for.cond46:                                       ; preds = %for.inc75, %if.end42
  %26 = load i32, ptr %len, align 4, !mymd !116
  %27 = load i32, ptr @max_len, align 4, !mymd !117
  %cmp47 = icmp sle i32 %26, %27, !mymd !118
  br i1 %cmp47, label %for.body49, label %for.end77, !mymd !119

for.body49:                                       ; preds = %for.cond46
  %28 = load i32, ptr %base, align 4, !mymd !120
  %29 = load i32, ptr %len, align 4, !mymd !121
  %idxprom50 = sext i32 %29 to i64, !mymd !122
  %arrayidx51 = getelementptr inbounds [26 x i32], ptr @lit_base, i64 0, i64 %idxprom50, !mymd !123
  store i32 %28, ptr %arrayidx51, align 4, !mymd !124
  %30 = load i32, ptr %len, align 4, !mymd !125
  %idxprom52 = sext i32 %30 to i64, !mymd !126
  %arrayidx53 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom52, !mymd !127
  %31 = load i32, ptr %arrayidx53, align 4, !mymd !128
  store i32 %31, ptr %n, align 4, !mymd !129
  br label %for.cond54, !mymd !130

for.cond54:                                       ; preds = %for.inc73, %for.body49
  %32 = load i32, ptr %n, align 4, !mymd !131
  %cmp55 = icmp sgt i32 %32, 0, !mymd !132
  br i1 %cmp55, label %for.body57, label %for.end74, !mymd !133

for.body57:                                       ; preds = %for.cond54
  %33 = load i32, ptr @inptr, align 4, !mymd !134
  %34 = load i32, ptr @insize, align 4, !mymd !135
  %cmp58 = icmp ult i32 %33, %34, !mymd !136
  br i1 %cmp58, label %cond.true60, label %cond.false65, !mymd !137

cond.true60:                                      ; preds = %for.body57
  %35 = load i32, ptr @inptr, align 4, !mymd !138
  %inc61 = add i32 %35, 1, !mymd !139
  store i32 %inc61, ptr @inptr, align 4, !mymd !140
  %idxprom62 = zext i32 %35 to i64, !mymd !141
  %arrayidx63 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom62, !mymd !142
  %36 = load i8, ptr %arrayidx63, align 1, !mymd !143
  %conv64 = zext i8 %36 to i32, !mymd !144
  br label %cond.end67, !mymd !145

cond.false65:                                     ; preds = %for.body57
  %call66 = call i32 @fill_inbuf(i32 noundef 0), !mymd !146
  br label %cond.end67, !mymd !147

cond.end67:                                       ; preds = %cond.false65, %cond.true60
  %cond68 = phi i32 [ %conv64, %cond.true60 ], [ %call66, %cond.false65 ], !mymd !148
  %conv69 = trunc i32 %cond68 to i8, !mymd !149
  %37 = load i32, ptr %base, align 4, !mymd !150
  %inc70 = add nsw i32 %37, 1, !mymd !151
  store i32 %inc70, ptr %base, align 4, !mymd !152
  %idxprom71 = sext i32 %37 to i64, !mymd !153
  %arrayidx72 = getelementptr inbounds [256 x i8], ptr @literal, i64 0, i64 %idxprom71, !mymd !154
  store i8 %conv69, ptr %arrayidx72, align 1, !mymd !155
  br label %for.inc73, !mymd !156

for.inc73:                                        ; preds = %cond.end67
  %38 = load i32, ptr %n, align 4, !mymd !157
  %dec = add nsw i32 %38, -1, !mymd !158
  store i32 %dec, ptr %n, align 4, !mymd !159
  br label %for.cond54, !llvm.loop !160, !mymd !161

for.end74:                                        ; preds = %for.cond54
  br label %for.inc75, !mymd !162

for.inc75:                                        ; preds = %for.end74
  %39 = load i32, ptr %len, align 4, !mymd !163
  %inc76 = add nsw i32 %39, 1, !mymd !164
  store i32 %inc76, ptr %len, align 4, !mymd !165
  br label %for.cond46, !llvm.loop !166, !mymd !167

for.end77:                                        ; preds = %for.cond46
  %40 = load i32, ptr @max_len, align 4, !mymd !168
  %idxprom78 = sext i32 %40 to i64, !mymd !169
  %arrayidx79 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom78, !mymd !170
  %41 = load i32, ptr %arrayidx79, align 4, !mymd !171
  %inc80 = add nsw i32 %41, 1, !mymd !172
  store i32 %inc80, ptr %arrayidx79, align 4, !mymd !173
  ret void, !mymd !174
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
!6 = !{!"9379"}
!7 = !{!"9380"}
!8 = !{!"9381"}
!9 = !{!"9382"}
!10 = !{!"9383"}
!11 = !{!"9384"}
!12 = !{!"9385"}
!13 = !{!"9386"}
!14 = !{!"9387"}
!15 = !{!"9388"}
!16 = !{!"9389"}
!17 = !{!"9390"}
!18 = !{!"9391"}
!19 = !{!"9392"}
!20 = !{!"9393"}
!21 = !{!"9394"}
!22 = !{!"9395"}
!23 = !{!"9396"}
!24 = !{!"9397"}
!25 = !{!"9398"}
!26 = !{!"9399"}
!27 = !{!"9400"}
!28 = !{!"9401"}
!29 = !{!"9402"}
!30 = !{!"9403"}
!31 = !{!"9404"}
!32 = !{!"9405"}
!33 = !{!"9406"}
!34 = !{!"9407"}
!35 = !{!"9408"}
!36 = !{!"9409"}
!37 = !{!"9410"}
!38 = !{!"9411"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"9412"}
!42 = !{!"9413"}
!43 = !{!"9414"}
!44 = !{!"9415"}
!45 = !{!"9416"}
!46 = !{!"9417"}
!47 = !{!"9418"}
!48 = !{!"9419"}
!49 = !{!"9420"}
!50 = !{!"9421"}
!51 = !{!"9422"}
!52 = !{!"9423"}
!53 = !{!"9424"}
!54 = !{!"9425"}
!55 = !{!"9426"}
!56 = !{!"9427"}
!57 = !{!"9428"}
!58 = !{!"9429"}
!59 = !{!"9430"}
!60 = !{!"9431"}
!61 = !{!"9432"}
!62 = !{!"9433"}
!63 = !{!"9434"}
!64 = !{!"9435"}
!65 = !{!"9436"}
!66 = !{!"9437"}
!67 = !{!"9438"}
!68 = !{!"9439"}
!69 = !{!"9440"}
!70 = !{!"9441"}
!71 = !{!"9442"}
!72 = !{!"9443"}
!73 = !{!"9444"}
!74 = !{!"9445"}
!75 = !{!"9446"}
!76 = !{!"9447"}
!77 = !{!"9448"}
!78 = !{!"9449"}
!79 = !{!"9450"}
!80 = !{!"9451"}
!81 = !{!"9452"}
!82 = !{!"9453"}
!83 = !{!"9454"}
!84 = !{!"9455"}
!85 = !{!"9456"}
!86 = !{!"9457"}
!87 = !{!"9458"}
!88 = !{!"9459"}
!89 = !{!"9460"}
!90 = !{!"9461"}
!91 = !{!"9462"}
!92 = !{!"9463"}
!93 = !{!"9464"}
!94 = !{!"9465"}
!95 = !{!"9466"}
!96 = !{!"9467"}
!97 = !{!"9468"}
!98 = !{!"9469"}
!99 = !{!"9470"}
!100 = distinct !{!100, !40}
!101 = !{!"9471"}
!102 = !{!"9472"}
!103 = !{!"9473"}
!104 = !{!"9474"}
!105 = !{!"9475"}
!106 = !{!"9476"}
!107 = !{!"9477"}
!108 = !{!"9478"}
!109 = !{!"9479"}
!110 = !{!"9480"}
!111 = !{!"9481"}
!112 = !{!"9482"}
!113 = !{!"9483"}
!114 = !{!"9484"}
!115 = !{!"9485"}
!116 = !{!"9486"}
!117 = !{!"9487"}
!118 = !{!"9488"}
!119 = !{!"9489"}
!120 = !{!"9490"}
!121 = !{!"9491"}
!122 = !{!"9492"}
!123 = !{!"9493"}
!124 = !{!"9494"}
!125 = !{!"9495"}
!126 = !{!"9496"}
!127 = !{!"9497"}
!128 = !{!"9498"}
!129 = !{!"9499"}
!130 = !{!"9500"}
!131 = !{!"9501"}
!132 = !{!"9502"}
!133 = !{!"9503"}
!134 = !{!"9504"}
!135 = !{!"9505"}
!136 = !{!"9506"}
!137 = !{!"9507"}
!138 = !{!"9508"}
!139 = !{!"9509"}
!140 = !{!"9510"}
!141 = !{!"9511"}
!142 = !{!"9512"}
!143 = !{!"9513"}
!144 = !{!"9514"}
!145 = !{!"9515"}
!146 = !{!"9516"}
!147 = !{!"9517"}
!148 = !{!"9518"}
!149 = !{!"9519"}
!150 = !{!"9520"}
!151 = !{!"9521"}
!152 = !{!"9522"}
!153 = !{!"9523"}
!154 = !{!"9524"}
!155 = !{!"9525"}
!156 = !{!"9526"}
!157 = !{!"9527"}
!158 = !{!"9528"}
!159 = !{!"9529"}
!160 = distinct !{!160, !40}
!161 = !{!"9530"}
!162 = !{!"9531"}
!163 = !{!"9532"}
!164 = !{!"9533"}
!165 = !{!"9534"}
!166 = distinct !{!166, !40}
!167 = !{!"9535"}
!168 = !{!"9536"}
!169 = !{!"9537"}
!170 = !{!"9538"}
!171 = !{!"9539"}
!172 = !{!"9540"}
!173 = !{!"9541"}
!174 = !{!"9542"}
