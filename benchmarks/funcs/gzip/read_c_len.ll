; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d_buf = external dso_local global [32768 x i16], align 16
@outbuf = external dso_local global [18432 x i8], align 16
@prev = external dso_local global [65536 x i16], align 16
@io_bitbuf = external hidden global i16, align 2
@pt_len = external hidden global [19 x i8], align 16
@pt_table = external hidden global [256 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @getbits(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @read_c_len() #0 {
entry:
  %i = alloca i32, align 4, !mymd !6
  %c = alloca i32, align 4, !mymd !7
  %n = alloca i32, align 4, !mymd !8
  %mask = alloca i32, align 4, !mymd !9
  %call = call i32 @getbits(i32 noundef 9), !mymd !10
  store i32 %call, ptr %n, align 4, !mymd !11
  %0 = load i32, ptr %n, align 4, !mymd !12
  %cmp = icmp eq i32 %0, 0, !mymd !13
  br i1 %cmp, label %if.then, label %if.else, !mymd !14

if.then:                                          ; preds = %entry
  %call1 = call i32 @getbits(i32 noundef 9), !mymd !15
  store i32 %call1, ptr %c, align 4, !mymd !16
  store i32 0, ptr %i, align 4, !mymd !17
  br label %for.cond, !mymd !18

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !mymd !19
  %cmp2 = icmp slt i32 %1, 510, !mymd !20
  br i1 %cmp2, label %for.body, label %for.end, !mymd !21

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !mymd !22
  %idxprom = sext i32 %2 to i64, !mymd !23
  %arrayidx = getelementptr inbounds [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom, !mymd !24
  store i8 0, ptr %arrayidx, align 1, !mymd !25
  br label %for.inc, !mymd !26

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !mymd !27
  %inc = add nsw i32 %3, 1, !mymd !28
  store i32 %inc, ptr %i, align 4, !mymd !29
  br label %for.cond, !llvm.loop !30, !mymd !32

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !mymd !33
  br label %for.cond3, !mymd !34

for.cond3:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %i, align 4, !mymd !35
  %cmp4 = icmp slt i32 %4, 4096, !mymd !36
  br i1 %cmp4, label %for.body5, label %for.end10, !mymd !37

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %c, align 4, !mymd !38
  %conv = trunc i32 %5 to i16, !mymd !39
  %6 = load i32, ptr %i, align 4, !mymd !40
  %idxprom6 = sext i32 %6 to i64, !mymd !41
  %arrayidx7 = getelementptr inbounds [32768 x i16], ptr @d_buf, i64 0, i64 %idxprom6, !mymd !42
  store i16 %conv, ptr %arrayidx7, align 2, !mymd !43
  br label %for.inc8, !mymd !44

for.inc8:                                         ; preds = %for.body5
  %7 = load i32, ptr %i, align 4, !mymd !45
  %inc9 = add nsw i32 %7, 1, !mymd !46
  store i32 %inc9, ptr %i, align 4, !mymd !47
  br label %for.cond3, !llvm.loop !48, !mymd !49

for.end10:                                        ; preds = %for.cond3
  br label %if.end74, !mymd !50

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !mymd !51
  br label %while.cond, !mymd !52

while.cond:                                       ; preds = %if.end64, %if.else
  %8 = load i32, ptr %i, align 4, !mymd !53
  %9 = load i32, ptr %n, align 4, !mymd !54
  %cmp11 = icmp slt i32 %8, %9, !mymd !55
  br i1 %cmp11, label %while.body, label %while.end65, !mymd !56

while.body:                                       ; preds = %while.cond
  %10 = load i16, ptr @io_bitbuf, align 2, !mymd !57
  %conv13 = zext i16 %10 to i32, !mymd !58
  %shr = ashr i32 %conv13, 8, !mymd !59
  %idxprom14 = sext i32 %shr to i64, !mymd !60
  %arrayidx15 = getelementptr inbounds [256 x i16], ptr @pt_table, i64 0, i64 %idxprom14, !mymd !61
  %11 = load i16, ptr %arrayidx15, align 2, !mymd !62
  %conv16 = zext i16 %11 to i32, !mymd !63
  store i32 %conv16, ptr %c, align 4, !mymd !64
  %12 = load i32, ptr %c, align 4, !mymd !65
  %cmp17 = icmp sge i32 %12, 19, !mymd !66
  br i1 %cmp17, label %if.then19, label %if.end32, !mymd !67

if.then19:                                        ; preds = %while.body
  store i32 128, ptr %mask, align 4, !mymd !68
  br label %do.body, !mymd !69

do.body:                                          ; preds = %do.cond, %if.then19
  %13 = load i16, ptr @io_bitbuf, align 2, !mymd !70
  %conv20 = zext i16 %13 to i32, !mymd !71
  %14 = load i32, ptr %mask, align 4, !mymd !72
  %and = and i32 %conv20, %14, !mymd !73
  %tobool = icmp ne i32 %and, 0, !mymd !74
  br i1 %tobool, label %if.then21, label %if.else25, !mymd !75

if.then21:                                        ; preds = %do.body
  %15 = load i32, ptr %c, align 4, !mymd !76
  %idxprom22 = sext i32 %15 to i64, !mymd !77
  %arrayidx23 = getelementptr inbounds i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom22, !mymd !78
  %16 = load i16, ptr %arrayidx23, align 2, !mymd !79
  %conv24 = zext i16 %16 to i32, !mymd !80
  store i32 %conv24, ptr %c, align 4, !mymd !81
  br label %if.end, !mymd !82

if.else25:                                        ; preds = %do.body
  %17 = load i32, ptr %c, align 4, !mymd !83
  %idxprom26 = sext i32 %17 to i64, !mymd !84
  %arrayidx27 = getelementptr inbounds [65536 x i16], ptr @prev, i64 0, i64 %idxprom26, !mymd !85
  %18 = load i16, ptr %arrayidx27, align 2, !mymd !86
  %conv28 = zext i16 %18 to i32, !mymd !87
  store i32 %conv28, ptr %c, align 4, !mymd !88
  br label %if.end, !mymd !89

if.end:                                           ; preds = %if.else25, %if.then21
  %19 = load i32, ptr %mask, align 4, !mymd !90
  %shr29 = lshr i32 %19, 1, !mymd !91
  store i32 %shr29, ptr %mask, align 4, !mymd !92
  br label %do.cond, !mymd !93

do.cond:                                          ; preds = %if.end
  %20 = load i32, ptr %c, align 4, !mymd !94
  %cmp30 = icmp sge i32 %20, 19, !mymd !95
  br i1 %cmp30, label %do.body, label %do.end, !llvm.loop !96, !mymd !97

do.end:                                           ; preds = %do.cond
  br label %if.end32, !mymd !98

if.end32:                                         ; preds = %do.end, %while.body
  %21 = load i32, ptr %c, align 4, !mymd !99
  %idxprom33 = sext i32 %21 to i64, !mymd !100
  %arrayidx34 = getelementptr inbounds [19 x i8], ptr @pt_len, i64 0, i64 %idxprom33, !mymd !101
  %22 = load i8, ptr %arrayidx34, align 1, !mymd !102
  %conv35 = zext i8 %22 to i32, !mymd !103
  call void @fillbuf(i32 noundef %conv35), !mymd !104
  %23 = load i32, ptr %c, align 4, !mymd !105
  %cmp36 = icmp sle i32 %23, 2, !mymd !106
  br i1 %cmp36, label %if.then38, label %if.else59, !mymd !107

if.then38:                                        ; preds = %if.end32
  %24 = load i32, ptr %c, align 4, !mymd !108
  %cmp39 = icmp eq i32 %24, 0, !mymd !109
  br i1 %cmp39, label %if.then41, label %if.else42, !mymd !110

if.then41:                                        ; preds = %if.then38
  store i32 1, ptr %c, align 4, !mymd !111
  br label %if.end51, !mymd !112

if.else42:                                        ; preds = %if.then38
  %25 = load i32, ptr %c, align 4, !mymd !113
  %cmp43 = icmp eq i32 %25, 1, !mymd !114
  br i1 %cmp43, label %if.then45, label %if.else47, !mymd !115

if.then45:                                        ; preds = %if.else42
  %call46 = call i32 @getbits(i32 noundef 4), !mymd !116
  %add = add i32 %call46, 3, !mymd !117
  store i32 %add, ptr %c, align 4, !mymd !118
  br label %if.end50, !mymd !119

if.else47:                                        ; preds = %if.else42
  %call48 = call i32 @getbits(i32 noundef 9), !mymd !120
  %add49 = add i32 %call48, 20, !mymd !121
  store i32 %add49, ptr %c, align 4, !mymd !122
  br label %if.end50, !mymd !123

if.end50:                                         ; preds = %if.else47, %if.then45
  br label %if.end51, !mymd !124

if.end51:                                         ; preds = %if.end50, %if.then41
  br label %while.cond52, !mymd !125

while.cond52:                                     ; preds = %while.body55, %if.end51
  %26 = load i32, ptr %c, align 4, !mymd !126
  %dec = add nsw i32 %26, -1, !mymd !127
  store i32 %dec, ptr %c, align 4, !mymd !128
  %cmp53 = icmp sge i32 %dec, 0, !mymd !129
  br i1 %cmp53, label %while.body55, label %while.end, !mymd !130

while.body55:                                     ; preds = %while.cond52
  %27 = load i32, ptr %i, align 4, !mymd !131
  %inc56 = add nsw i32 %27, 1, !mymd !132
  store i32 %inc56, ptr %i, align 4, !mymd !133
  %idxprom57 = sext i32 %27 to i64, !mymd !134
  %arrayidx58 = getelementptr inbounds [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom57, !mymd !135
  store i8 0, ptr %arrayidx58, align 1, !mymd !136
  br label %while.cond52, !llvm.loop !137, !mymd !138

while.end:                                        ; preds = %while.cond52
  br label %if.end64, !mymd !139

if.else59:                                        ; preds = %if.end32
  %28 = load i32, ptr %c, align 4, !mymd !140
  %sub = sub nsw i32 %28, 2, !mymd !141
  %conv60 = trunc i32 %sub to i8, !mymd !142
  %29 = load i32, ptr %i, align 4, !mymd !143
  %inc61 = add nsw i32 %29, 1, !mymd !144
  store i32 %inc61, ptr %i, align 4, !mymd !145
  %idxprom62 = sext i32 %29 to i64, !mymd !146
  %arrayidx63 = getelementptr inbounds [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom62, !mymd !147
  store i8 %conv60, ptr %arrayidx63, align 1, !mymd !148
  br label %if.end64, !mymd !149

if.end64:                                         ; preds = %if.else59, %while.end
  br label %while.cond, !llvm.loop !150, !mymd !151

while.end65:                                      ; preds = %while.cond
  br label %while.cond66, !mymd !152

while.cond66:                                     ; preds = %while.body69, %while.end65
  %30 = load i32, ptr %i, align 4, !mymd !153
  %cmp67 = icmp slt i32 %30, 510, !mymd !154
  br i1 %cmp67, label %while.body69, label %while.end73, !mymd !155

while.body69:                                     ; preds = %while.cond66
  %31 = load i32, ptr %i, align 4, !mymd !156
  %inc70 = add nsw i32 %31, 1, !mymd !157
  store i32 %inc70, ptr %i, align 4, !mymd !158
  %idxprom71 = sext i32 %31 to i64, !mymd !159
  %arrayidx72 = getelementptr inbounds [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom71, !mymd !160
  store i8 0, ptr %arrayidx72, align 1, !mymd !161
  br label %while.cond66, !llvm.loop !162, !mymd !163

while.end73:                                      ; preds = %while.cond66
  call void @make_table(i32 noundef 510, ptr noundef @outbuf, i32 noundef 12, ptr noundef @d_buf), !mymd !164
  br label %if.end74, !mymd !165

if.end74:                                         ; preds = %while.end73, %for.end10
  ret void, !mymd !166
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @make_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"13578"}
!7 = !{!"13579"}
!8 = !{!"13580"}
!9 = !{!"13581"}
!10 = !{!"13582"}
!11 = !{!"13583"}
!12 = !{!"13584"}
!13 = !{!"13585"}
!14 = !{!"13586"}
!15 = !{!"13587"}
!16 = !{!"13588"}
!17 = !{!"13589"}
!18 = !{!"13590"}
!19 = !{!"13591"}
!20 = !{!"13592"}
!21 = !{!"13593"}
!22 = !{!"13594"}
!23 = !{!"13595"}
!24 = !{!"13596"}
!25 = !{!"13597"}
!26 = !{!"13598"}
!27 = !{!"13599"}
!28 = !{!"13600"}
!29 = !{!"13601"}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"13602"}
!33 = !{!"13603"}
!34 = !{!"13604"}
!35 = !{!"13605"}
!36 = !{!"13606"}
!37 = !{!"13607"}
!38 = !{!"13608"}
!39 = !{!"13609"}
!40 = !{!"13610"}
!41 = !{!"13611"}
!42 = !{!"13612"}
!43 = !{!"13613"}
!44 = !{!"13614"}
!45 = !{!"13615"}
!46 = !{!"13616"}
!47 = !{!"13617"}
!48 = distinct !{!48, !31}
!49 = !{!"13618"}
!50 = !{!"13619"}
!51 = !{!"13620"}
!52 = !{!"13621"}
!53 = !{!"13622"}
!54 = !{!"13623"}
!55 = !{!"13624"}
!56 = !{!"13625"}
!57 = !{!"13626"}
!58 = !{!"13627"}
!59 = !{!"13628"}
!60 = !{!"13629"}
!61 = !{!"13630"}
!62 = !{!"13631"}
!63 = !{!"13632"}
!64 = !{!"13633"}
!65 = !{!"13634"}
!66 = !{!"13635"}
!67 = !{!"13636"}
!68 = !{!"13637"}
!69 = !{!"13638"}
!70 = !{!"13639"}
!71 = !{!"13640"}
!72 = !{!"13641"}
!73 = !{!"13642"}
!74 = !{!"13643"}
!75 = !{!"13644"}
!76 = !{!"13645"}
!77 = !{!"13646"}
!78 = !{!"13647"}
!79 = !{!"13648"}
!80 = !{!"13649"}
!81 = !{!"13650"}
!82 = !{!"13651"}
!83 = !{!"13652"}
!84 = !{!"13653"}
!85 = !{!"13654"}
!86 = !{!"13655"}
!87 = !{!"13656"}
!88 = !{!"13657"}
!89 = !{!"13658"}
!90 = !{!"13659"}
!91 = !{!"13660"}
!92 = !{!"13661"}
!93 = !{!"13662"}
!94 = !{!"13663"}
!95 = !{!"13664"}
!96 = distinct !{!96, !31}
!97 = !{!"13665"}
!98 = !{!"13666"}
!99 = !{!"13667"}
!100 = !{!"13668"}
!101 = !{!"13669"}
!102 = !{!"13670"}
!103 = !{!"13671"}
!104 = !{!"13672"}
!105 = !{!"13673"}
!106 = !{!"13674"}
!107 = !{!"13675"}
!108 = !{!"13676"}
!109 = !{!"13677"}
!110 = !{!"13678"}
!111 = !{!"13679"}
!112 = !{!"13680"}
!113 = !{!"13681"}
!114 = !{!"13682"}
!115 = !{!"13683"}
!116 = !{!"13684"}
!117 = !{!"13685"}
!118 = !{!"13686"}
!119 = !{!"13687"}
!120 = !{!"13688"}
!121 = !{!"13689"}
!122 = !{!"13690"}
!123 = !{!"13691"}
!124 = !{!"13692"}
!125 = !{!"13693"}
!126 = !{!"13694"}
!127 = !{!"13695"}
!128 = !{!"13696"}
!129 = !{!"13697"}
!130 = !{!"13698"}
!131 = !{!"13699"}
!132 = !{!"13700"}
!133 = !{!"13701"}
!134 = !{!"13702"}
!135 = !{!"13703"}
!136 = !{!"13704"}
!137 = distinct !{!137, !31}
!138 = !{!"13705"}
!139 = !{!"13706"}
!140 = !{!"13707"}
!141 = !{!"13708"}
!142 = !{!"13709"}
!143 = !{!"13710"}
!144 = !{!"13711"}
!145 = !{!"13712"}
!146 = !{!"13713"}
!147 = !{!"13714"}
!148 = !{!"13715"}
!149 = !{!"13716"}
!150 = distinct !{!150, !31}
!151 = !{!"13717"}
!152 = !{!"13718"}
!153 = !{!"13719"}
!154 = !{!"13720"}
!155 = !{!"13721"}
!156 = !{!"13722"}
!157 = !{!"13723"}
!158 = !{!"13724"}
!159 = !{!"13725"}
!160 = !{!"13726"}
!161 = !{!"13727"}
!162 = distinct !{!162, !31}
!163 = !{!"13728"}
!164 = !{!"13729"}
!165 = !{!"13730"}
!166 = !{!"13731"}
