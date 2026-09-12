; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@bb = external dso_local global i64, align 8
@bk = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_window() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inflate_stored() #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %n = alloca i32, align 4, !mymd !7
  %w = alloca i32, align 4, !mymd !8
  %b = alloca i64, align 8, !mymd !9
  %k = alloca i32, align 4, !mymd !10
  %0 = load i64, ptr @bb, align 8, !mymd !11
  store i64 %0, ptr %b, align 8, !mymd !12
  %1 = load i32, ptr @bk, align 4, !mymd !13
  store i32 %1, ptr %k, align 4, !mymd !14
  %2 = load i32, ptr @outcnt, align 4, !mymd !15
  store i32 %2, ptr %w, align 4, !mymd !16
  %3 = load i32, ptr %k, align 4, !mymd !17
  %and = and i32 %3, 7, !mymd !18
  store i32 %and, ptr %n, align 4, !mymd !19
  %4 = load i32, ptr %n, align 4, !mymd !20
  %5 = load i64, ptr %b, align 8, !mymd !21
  %sh_prom = zext i32 %4 to i64, !mymd !22
  %shr = lshr i64 %5, %sh_prom, !mymd !23
  store i64 %shr, ptr %b, align 8, !mymd !24
  %6 = load i32, ptr %n, align 4, !mymd !25
  %7 = load i32, ptr %k, align 4, !mymd !26
  %sub = sub i32 %7, %6, !mymd !27
  store i32 %sub, ptr %k, align 4, !mymd !28
  br label %while.cond, !mymd !29

while.cond:                                       ; preds = %cond.end, %entry
  %8 = load i32, ptr %k, align 4, !mymd !30
  %cmp = icmp ult i32 %8, 16, !mymd !31
  br i1 %cmp, label %while.body, label %while.end, !mymd !32

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr @inptr, align 4, !mymd !33
  %10 = load i32, ptr @insize, align 4, !mymd !34
  %cmp1 = icmp ult i32 %9, %10, !mymd !35
  br i1 %cmp1, label %cond.true, label %cond.false, !mymd !36

cond.true:                                        ; preds = %while.body
  %11 = load i32, ptr @inptr, align 4, !mymd !37
  %inc = add i32 %11, 1, !mymd !38
  store i32 %inc, ptr @inptr, align 4, !mymd !39
  %idxprom = zext i32 %11 to i64, !mymd !40
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !41
  %12 = load i8, ptr %arrayidx, align 1, !mymd !42
  %conv = zext i8 %12 to i32, !mymd !43
  br label %cond.end, !mymd !44

cond.false:                                       ; preds = %while.body
  %13 = load i32, ptr %w, align 4, !mymd !45
  store i32 %13, ptr @outcnt, align 4, !mymd !46
  %call = call i32 @fill_inbuf(i32 noundef 0), !mymd !47
  br label %cond.end, !mymd !48

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ], !mymd !49
  %conv2 = trunc i32 %cond to i8, !mymd !50
  %conv3 = zext i8 %conv2 to i64, !mymd !51
  %14 = load i32, ptr %k, align 4, !mymd !52
  %sh_prom4 = zext i32 %14 to i64, !mymd !53
  %shl = shl i64 %conv3, %sh_prom4, !mymd !54
  %15 = load i64, ptr %b, align 8, !mymd !55
  %or = or i64 %15, %shl, !mymd !56
  store i64 %or, ptr %b, align 8, !mymd !57
  %16 = load i32, ptr %k, align 4, !mymd !58
  %add = add i32 %16, 8, !mymd !59
  store i32 %add, ptr %k, align 4, !mymd !60
  br label %while.cond, !llvm.loop !61, !mymd !63

while.end:                                        ; preds = %while.cond
  %17 = load i64, ptr %b, align 8, !mymd !64
  %conv5 = trunc i64 %17 to i32, !mymd !65
  %and6 = and i32 %conv5, 65535, !mymd !66
  store i32 %and6, ptr %n, align 4, !mymd !67
  %18 = load i64, ptr %b, align 8, !mymd !68
  %shr7 = lshr i64 %18, 16, !mymd !69
  store i64 %shr7, ptr %b, align 8, !mymd !70
  %19 = load i32, ptr %k, align 4, !mymd !71
  %sub8 = sub i32 %19, 16, !mymd !72
  store i32 %sub8, ptr %k, align 4, !mymd !73
  br label %while.cond9, !mymd !74

while.cond9:                                      ; preds = %cond.end22, %while.end
  %20 = load i32, ptr %k, align 4, !mymd !75
  %cmp10 = icmp ult i32 %20, 16, !mymd !76
  br i1 %cmp10, label %while.body12, label %while.end30, !mymd !77

while.body12:                                     ; preds = %while.cond9
  %21 = load i32, ptr @inptr, align 4, !mymd !78
  %22 = load i32, ptr @insize, align 4, !mymd !79
  %cmp13 = icmp ult i32 %21, %22, !mymd !80
  br i1 %cmp13, label %cond.true15, label %cond.false20, !mymd !81

cond.true15:                                      ; preds = %while.body12
  %23 = load i32, ptr @inptr, align 4, !mymd !82
  %inc16 = add i32 %23, 1, !mymd !83
  store i32 %inc16, ptr @inptr, align 4, !mymd !84
  %idxprom17 = zext i32 %23 to i64, !mymd !85
  %arrayidx18 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom17, !mymd !86
  %24 = load i8, ptr %arrayidx18, align 1, !mymd !87
  %conv19 = zext i8 %24 to i32, !mymd !88
  br label %cond.end22, !mymd !89

cond.false20:                                     ; preds = %while.body12
  %25 = load i32, ptr %w, align 4, !mymd !90
  store i32 %25, ptr @outcnt, align 4, !mymd !91
  %call21 = call i32 @fill_inbuf(i32 noundef 0), !mymd !92
  br label %cond.end22, !mymd !93

cond.end22:                                       ; preds = %cond.false20, %cond.true15
  %cond23 = phi i32 [ %conv19, %cond.true15 ], [ %call21, %cond.false20 ], !mymd !94
  %conv24 = trunc i32 %cond23 to i8, !mymd !95
  %conv25 = zext i8 %conv24 to i64, !mymd !96
  %26 = load i32, ptr %k, align 4, !mymd !97
  %sh_prom26 = zext i32 %26 to i64, !mymd !98
  %shl27 = shl i64 %conv25, %sh_prom26, !mymd !99
  %27 = load i64, ptr %b, align 8, !mymd !100
  %or28 = or i64 %27, %shl27, !mymd !101
  store i64 %or28, ptr %b, align 8, !mymd !102
  %28 = load i32, ptr %k, align 4, !mymd !103
  %add29 = add i32 %28, 8, !mymd !104
  store i32 %add29, ptr %k, align 4, !mymd !105
  br label %while.cond9, !llvm.loop !106, !mymd !107

while.end30:                                      ; preds = %while.cond9
  %29 = load i32, ptr %n, align 4, !mymd !108
  %30 = load i64, ptr %b, align 8, !mymd !109
  %not = xor i64 %30, -1, !mymd !110
  %and31 = and i64 %not, 65535, !mymd !111
  %conv32 = trunc i64 %and31 to i32, !mymd !112
  %cmp33 = icmp ne i32 %29, %conv32, !mymd !113
  br i1 %cmp33, label %if.then, label %if.end, !mymd !114

if.then:                                          ; preds = %while.end30
  store i32 1, ptr %retval, align 4, !mymd !115
  br label %return, !mymd !116

if.end:                                           ; preds = %while.end30
  %31 = load i64, ptr %b, align 8, !mymd !117
  %shr35 = lshr i64 %31, 16, !mymd !118
  store i64 %shr35, ptr %b, align 8, !mymd !119
  %32 = load i32, ptr %k, align 4, !mymd !120
  %sub36 = sub i32 %32, 16, !mymd !121
  store i32 %sub36, ptr %k, align 4, !mymd !122
  br label %while.cond37, !mymd !123

while.cond37:                                     ; preds = %if.end68, %if.end
  %33 = load i32, ptr %n, align 4, !mymd !124
  %dec = add i32 %33, -1, !mymd !125
  store i32 %dec, ptr %n, align 4, !mymd !126
  %tobool = icmp ne i32 %33, 0, !mymd !127
  br i1 %tobool, label %while.body38, label %while.end71, !mymd !128

while.body38:                                     ; preds = %while.cond37
  br label %while.cond39, !mymd !129

while.cond39:                                     ; preds = %cond.end52, %while.body38
  %34 = load i32, ptr %k, align 4, !mymd !130
  %cmp40 = icmp ult i32 %34, 8, !mymd !131
  br i1 %cmp40, label %while.body42, label %while.end60, !mymd !132

while.body42:                                     ; preds = %while.cond39
  %35 = load i32, ptr @inptr, align 4, !mymd !133
  %36 = load i32, ptr @insize, align 4, !mymd !134
  %cmp43 = icmp ult i32 %35, %36, !mymd !135
  br i1 %cmp43, label %cond.true45, label %cond.false50, !mymd !136

cond.true45:                                      ; preds = %while.body42
  %37 = load i32, ptr @inptr, align 4, !mymd !137
  %inc46 = add i32 %37, 1, !mymd !138
  store i32 %inc46, ptr @inptr, align 4, !mymd !139
  %idxprom47 = zext i32 %37 to i64, !mymd !140
  %arrayidx48 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom47, !mymd !141
  %38 = load i8, ptr %arrayidx48, align 1, !mymd !142
  %conv49 = zext i8 %38 to i32, !mymd !143
  br label %cond.end52, !mymd !144

cond.false50:                                     ; preds = %while.body42
  %39 = load i32, ptr %w, align 4, !mymd !145
  store i32 %39, ptr @outcnt, align 4, !mymd !146
  %call51 = call i32 @fill_inbuf(i32 noundef 0), !mymd !147
  br label %cond.end52, !mymd !148

cond.end52:                                       ; preds = %cond.false50, %cond.true45
  %cond53 = phi i32 [ %conv49, %cond.true45 ], [ %call51, %cond.false50 ], !mymd !149
  %conv54 = trunc i32 %cond53 to i8, !mymd !150
  %conv55 = zext i8 %conv54 to i64, !mymd !151
  %40 = load i32, ptr %k, align 4, !mymd !152
  %sh_prom56 = zext i32 %40 to i64, !mymd !153
  %shl57 = shl i64 %conv55, %sh_prom56, !mymd !154
  %41 = load i64, ptr %b, align 8, !mymd !155
  %or58 = or i64 %41, %shl57, !mymd !156
  store i64 %or58, ptr %b, align 8, !mymd !157
  %42 = load i32, ptr %k, align 4, !mymd !158
  %add59 = add i32 %42, 8, !mymd !159
  store i32 %add59, ptr %k, align 4, !mymd !160
  br label %while.cond39, !llvm.loop !161, !mymd !162

while.end60:                                      ; preds = %while.cond39
  %43 = load i64, ptr %b, align 8, !mymd !163
  %conv61 = trunc i64 %43 to i8, !mymd !164
  %44 = load i32, ptr %w, align 4, !mymd !165
  %inc62 = add i32 %44, 1, !mymd !166
  store i32 %inc62, ptr %w, align 4, !mymd !167
  %idxprom63 = zext i32 %44 to i64, !mymd !168
  %arrayidx64 = getelementptr inbounds nuw [65536 x i8], ptr @window, i64 0, i64 %idxprom63, !mymd !169
  store i8 %conv61, ptr %arrayidx64, align 1, !mymd !170
  %45 = load i32, ptr %w, align 4, !mymd !171
  %cmp65 = icmp eq i32 %45, 32768, !mymd !172
  br i1 %cmp65, label %if.then67, label %if.end68, !mymd !173

if.then67:                                        ; preds = %while.end60
  %46 = load i32, ptr %w, align 4, !mymd !174
  store i32 %46, ptr @outcnt, align 4, !mymd !175
  call void @flush_window(), !mymd !176
  store i32 0, ptr %w, align 4, !mymd !177
  br label %if.end68, !mymd !178

if.end68:                                         ; preds = %if.then67, %while.end60
  %47 = load i64, ptr %b, align 8, !mymd !179
  %shr69 = lshr i64 %47, 8, !mymd !180
  store i64 %shr69, ptr %b, align 8, !mymd !181
  %48 = load i32, ptr %k, align 4, !mymd !182
  %sub70 = sub i32 %48, 8, !mymd !183
  store i32 %sub70, ptr %k, align 4, !mymd !184
  br label %while.cond37, !llvm.loop !185, !mymd !186

while.end71:                                      ; preds = %while.cond37
  %49 = load i32, ptr %w, align 4, !mymd !187
  store i32 %49, ptr @outcnt, align 4, !mymd !188
  %50 = load i64, ptr %b, align 8, !mymd !189
  store i64 %50, ptr @bb, align 8, !mymd !190
  %51 = load i32, ptr %k, align 4, !mymd !191
  store i32 %51, ptr @bk, align 4, !mymd !192
  store i32 0, ptr %retval, align 4, !mymd !193
  br label %return, !mymd !194

return:                                           ; preds = %while.end71, %if.then
  %52 = load i32, ptr %retval, align 4, !mymd !195
  ret i32 %52, !mymd !196
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
!6 = !{!"6402"}
!7 = !{!"6403"}
!8 = !{!"6404"}
!9 = !{!"6405"}
!10 = !{!"6406"}
!11 = !{!"6407"}
!12 = !{!"6408"}
!13 = !{!"6409"}
!14 = !{!"6410"}
!15 = !{!"6411"}
!16 = !{!"6412"}
!17 = !{!"6413"}
!18 = !{!"6414"}
!19 = !{!"6415"}
!20 = !{!"6416"}
!21 = !{!"6417"}
!22 = !{!"6418"}
!23 = !{!"6419"}
!24 = !{!"6420"}
!25 = !{!"6421"}
!26 = !{!"6422"}
!27 = !{!"6423"}
!28 = !{!"6424"}
!29 = !{!"6425"}
!30 = !{!"6426"}
!31 = !{!"6427"}
!32 = !{!"6428"}
!33 = !{!"6429"}
!34 = !{!"6430"}
!35 = !{!"6431"}
!36 = !{!"6432"}
!37 = !{!"6433"}
!38 = !{!"6434"}
!39 = !{!"6435"}
!40 = !{!"6436"}
!41 = !{!"6437"}
!42 = !{!"6438"}
!43 = !{!"6439"}
!44 = !{!"6440"}
!45 = !{!"6441"}
!46 = !{!"6442"}
!47 = !{!"6443"}
!48 = !{!"6444"}
!49 = !{!"6445"}
!50 = !{!"6446"}
!51 = !{!"6447"}
!52 = !{!"6448"}
!53 = !{!"6449"}
!54 = !{!"6450"}
!55 = !{!"6451"}
!56 = !{!"6452"}
!57 = !{!"6453"}
!58 = !{!"6454"}
!59 = !{!"6455"}
!60 = !{!"6456"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"6457"}
!64 = !{!"6458"}
!65 = !{!"6459"}
!66 = !{!"6460"}
!67 = !{!"6461"}
!68 = !{!"6462"}
!69 = !{!"6463"}
!70 = !{!"6464"}
!71 = !{!"6465"}
!72 = !{!"6466"}
!73 = !{!"6467"}
!74 = !{!"6468"}
!75 = !{!"6469"}
!76 = !{!"6470"}
!77 = !{!"6471"}
!78 = !{!"6472"}
!79 = !{!"6473"}
!80 = !{!"6474"}
!81 = !{!"6475"}
!82 = !{!"6476"}
!83 = !{!"6477"}
!84 = !{!"6478"}
!85 = !{!"6479"}
!86 = !{!"6480"}
!87 = !{!"6481"}
!88 = !{!"6482"}
!89 = !{!"6483"}
!90 = !{!"6484"}
!91 = !{!"6485"}
!92 = !{!"6486"}
!93 = !{!"6487"}
!94 = !{!"6488"}
!95 = !{!"6489"}
!96 = !{!"6490"}
!97 = !{!"6491"}
!98 = !{!"6492"}
!99 = !{!"6493"}
!100 = !{!"6494"}
!101 = !{!"6495"}
!102 = !{!"6496"}
!103 = !{!"6497"}
!104 = !{!"6498"}
!105 = !{!"6499"}
!106 = distinct !{!106, !62}
!107 = !{!"6500"}
!108 = !{!"6501"}
!109 = !{!"6502"}
!110 = !{!"6503"}
!111 = !{!"6504"}
!112 = !{!"6505"}
!113 = !{!"6506"}
!114 = !{!"6507"}
!115 = !{!"6508"}
!116 = !{!"6509"}
!117 = !{!"6510"}
!118 = !{!"6511"}
!119 = !{!"6512"}
!120 = !{!"6513"}
!121 = !{!"6514"}
!122 = !{!"6515"}
!123 = !{!"6516"}
!124 = !{!"6517"}
!125 = !{!"6518"}
!126 = !{!"6519"}
!127 = !{!"6520"}
!128 = !{!"6521"}
!129 = !{!"6522"}
!130 = !{!"6523"}
!131 = !{!"6524"}
!132 = !{!"6525"}
!133 = !{!"6526"}
!134 = !{!"6527"}
!135 = !{!"6528"}
!136 = !{!"6529"}
!137 = !{!"6530"}
!138 = !{!"6531"}
!139 = !{!"6532"}
!140 = !{!"6533"}
!141 = !{!"6534"}
!142 = !{!"6535"}
!143 = !{!"6536"}
!144 = !{!"6537"}
!145 = !{!"6538"}
!146 = !{!"6539"}
!147 = !{!"6540"}
!148 = !{!"6541"}
!149 = !{!"6542"}
!150 = !{!"6543"}
!151 = !{!"6544"}
!152 = !{!"6545"}
!153 = !{!"6546"}
!154 = !{!"6547"}
!155 = !{!"6548"}
!156 = !{!"6549"}
!157 = !{!"6550"}
!158 = !{!"6551"}
!159 = !{!"6552"}
!160 = !{!"6553"}
!161 = distinct !{!161, !62}
!162 = !{!"6554"}
!163 = !{!"6555"}
!164 = !{!"6556"}
!165 = !{!"6557"}
!166 = !{!"6558"}
!167 = !{!"6559"}
!168 = !{!"6560"}
!169 = !{!"6561"}
!170 = !{!"6562"}
!171 = !{!"6563"}
!172 = !{!"6564"}
!173 = !{!"6565"}
!174 = !{!"6566"}
!175 = !{!"6567"}
!176 = !{!"6568"}
!177 = !{!"6569"}
!178 = !{!"6570"}
!179 = !{!"6571"}
!180 = !{!"6572"}
!181 = !{!"6573"}
!182 = !{!"6574"}
!183 = !{!"6575"}
!184 = !{!"6576"}
!185 = distinct !{!185, !62}
!186 = !{!"6577"}
!187 = !{!"6578"}
!188 = !{!"6579"}
!189 = !{!"6580"}
!190 = !{!"6581"}
!191 = !{!"6582"}
!192 = !{!"6583"}
!193 = !{!"6584"}
!194 = !{!"6585"}
!195 = !{!"6586"}
!196 = !{!"6587"}
