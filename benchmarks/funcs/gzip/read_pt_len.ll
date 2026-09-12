; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_bitbuf = external hidden global i16, align 2
@pt_len = external hidden global [19 x i8], align 16
@pt_table = external hidden global [256 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @getbits(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @read_pt_len(i32 noundef %nn, i32 noundef %nbit, i32 noundef %i_special) #0 {
entry:
  %nn.addr = alloca i32, align 4, !mymd !6
  %nbit.addr = alloca i32, align 4, !mymd !7
  %i_special.addr = alloca i32, align 4, !mymd !8
  %i = alloca i32, align 4, !mymd !9
  %c = alloca i32, align 4, !mymd !10
  %n = alloca i32, align 4, !mymd !11
  %mask = alloca i32, align 4, !mymd !12
  store i32 %nn, ptr %nn.addr, align 4, !mymd !13
  store i32 %nbit, ptr %nbit.addr, align 4, !mymd !14
  store i32 %i_special, ptr %i_special.addr, align 4, !mymd !15
  %0 = load i32, ptr %nbit.addr, align 4, !mymd !16
  %call = call i32 @getbits(i32 noundef %0), !mymd !17
  store i32 %call, ptr %n, align 4, !mymd !18
  %1 = load i32, ptr %n, align 4, !mymd !19
  %cmp = icmp eq i32 %1, 0, !mymd !20
  br i1 %cmp, label %if.then, label %if.else, !mymd !21

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nbit.addr, align 4, !mymd !22
  %call1 = call i32 @getbits(i32 noundef %2), !mymd !23
  store i32 %call1, ptr %c, align 4, !mymd !24
  store i32 0, ptr %i, align 4, !mymd !25
  br label %for.cond, !mymd !26

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !mymd !27
  %4 = load i32, ptr %nn.addr, align 4, !mymd !28
  %cmp2 = icmp slt i32 %3, %4, !mymd !29
  br i1 %cmp2, label %for.body, label %for.end, !mymd !30

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !mymd !31
  %idxprom = sext i32 %5 to i64, !mymd !32
  %arrayidx = getelementptr inbounds [19 x i8], ptr @pt_len, i64 0, i64 %idxprom, !mymd !33
  store i8 0, ptr %arrayidx, align 1, !mymd !34
  br label %for.inc, !mymd !35

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !mymd !36
  %inc = add nsw i32 %6, 1, !mymd !37
  store i32 %inc, ptr %i, align 4, !mymd !38
  br label %for.cond, !llvm.loop !39, !mymd !41

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !mymd !42
  br label %for.cond3, !mymd !43

for.cond3:                                        ; preds = %for.inc8, %for.end
  %7 = load i32, ptr %i, align 4, !mymd !44
  %cmp4 = icmp slt i32 %7, 256, !mymd !45
  br i1 %cmp4, label %for.body5, label %for.end10, !mymd !46

for.body5:                                        ; preds = %for.cond3
  %8 = load i32, ptr %c, align 4, !mymd !47
  %conv = trunc i32 %8 to i16, !mymd !48
  %9 = load i32, ptr %i, align 4, !mymd !49
  %idxprom6 = sext i32 %9 to i64, !mymd !50
  %arrayidx7 = getelementptr inbounds [256 x i16], ptr @pt_table, i64 0, i64 %idxprom6, !mymd !51
  store i16 %conv, ptr %arrayidx7, align 2, !mymd !52
  br label %for.inc8, !mymd !53

for.inc8:                                         ; preds = %for.body5
  %10 = load i32, ptr %i, align 4, !mymd !54
  %inc9 = add nsw i32 %10, 1, !mymd !55
  store i32 %inc9, ptr %i, align 4, !mymd !56
  br label %for.cond3, !llvm.loop !57, !mymd !58

for.end10:                                        ; preds = %for.cond3
  br label %if.end50, !mymd !59

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !mymd !60
  br label %while.cond, !mymd !61

while.cond:                                       ; preds = %if.end40, %if.else
  %11 = load i32, ptr %i, align 4, !mymd !62
  %12 = load i32, ptr %n, align 4, !mymd !63
  %cmp11 = icmp slt i32 %11, %12, !mymd !64
  br i1 %cmp11, label %while.body, label %while.end41, !mymd !65

while.body:                                       ; preds = %while.cond
  %13 = load i16, ptr @io_bitbuf, align 2, !mymd !66
  %conv13 = zext i16 %13 to i32, !mymd !67
  %shr = ashr i32 %conv13, 13, !mymd !68
  store i32 %shr, ptr %c, align 4, !mymd !69
  %14 = load i32, ptr %c, align 4, !mymd !70
  %cmp14 = icmp eq i32 %14, 7, !mymd !71
  br i1 %cmp14, label %if.then16, label %if.end, !mymd !72

if.then16:                                        ; preds = %while.body
  store i32 4096, ptr %mask, align 4, !mymd !73
  br label %while.cond17, !mymd !74

while.cond17:                                     ; preds = %while.body19, %if.then16
  %15 = load i32, ptr %mask, align 4, !mymd !75
  %16 = load i16, ptr @io_bitbuf, align 2, !mymd !76
  %conv18 = zext i16 %16 to i32, !mymd !77
  %and = and i32 %15, %conv18, !mymd !78
  %tobool = icmp ne i32 %and, 0, !mymd !79
  br i1 %tobool, label %while.body19, label %while.end, !mymd !80

while.body19:                                     ; preds = %while.cond17
  %17 = load i32, ptr %mask, align 4, !mymd !81
  %shr20 = lshr i32 %17, 1, !mymd !82
  store i32 %shr20, ptr %mask, align 4, !mymd !83
  %18 = load i32, ptr %c, align 4, !mymd !84
  %inc21 = add nsw i32 %18, 1, !mymd !85
  store i32 %inc21, ptr %c, align 4, !mymd !86
  br label %while.cond17, !llvm.loop !87, !mymd !88

while.end:                                        ; preds = %while.cond17
  br label %if.end, !mymd !89

if.end:                                           ; preds = %while.end, %while.body
  %19 = load i32, ptr %c, align 4, !mymd !90
  %cmp22 = icmp slt i32 %19, 7, !mymd !91
  br i1 %cmp22, label %cond.true, label %cond.false, !mymd !92

cond.true:                                        ; preds = %if.end
  br label %cond.end, !mymd !93

cond.false:                                       ; preds = %if.end
  %20 = load i32, ptr %c, align 4, !mymd !94
  %sub = sub nsw i32 %20, 3, !mymd !95
  br label %cond.end, !mymd !96

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %sub, %cond.false ], !mymd !97
  call void @fillbuf(i32 noundef %cond), !mymd !98
  %21 = load i32, ptr %c, align 4, !mymd !99
  %conv24 = trunc i32 %21 to i8, !mymd !100
  %22 = load i32, ptr %i, align 4, !mymd !101
  %inc25 = add nsw i32 %22, 1, !mymd !102
  store i32 %inc25, ptr %i, align 4, !mymd !103
  %idxprom26 = sext i32 %22 to i64, !mymd !104
  %arrayidx27 = getelementptr inbounds [19 x i8], ptr @pt_len, i64 0, i64 %idxprom26, !mymd !105
  store i8 %conv24, ptr %arrayidx27, align 1, !mymd !106
  %23 = load i32, ptr %i, align 4, !mymd !107
  %24 = load i32, ptr %i_special.addr, align 4, !mymd !108
  %cmp28 = icmp eq i32 %23, %24, !mymd !109
  br i1 %cmp28, label %if.then30, label %if.end40, !mymd !110

if.then30:                                        ; preds = %cond.end
  %call31 = call i32 @getbits(i32 noundef 2), !mymd !111
  store i32 %call31, ptr %c, align 4, !mymd !112
  br label %while.cond32, !mymd !113

while.cond32:                                     ; preds = %while.body35, %if.then30
  %25 = load i32, ptr %c, align 4, !mymd !114
  %dec = add nsw i32 %25, -1, !mymd !115
  store i32 %dec, ptr %c, align 4, !mymd !116
  %cmp33 = icmp sge i32 %dec, 0, !mymd !117
  br i1 %cmp33, label %while.body35, label %while.end39, !mymd !118

while.body35:                                     ; preds = %while.cond32
  %26 = load i32, ptr %i, align 4, !mymd !119
  %inc36 = add nsw i32 %26, 1, !mymd !120
  store i32 %inc36, ptr %i, align 4, !mymd !121
  %idxprom37 = sext i32 %26 to i64, !mymd !122
  %arrayidx38 = getelementptr inbounds [19 x i8], ptr @pt_len, i64 0, i64 %idxprom37, !mymd !123
  store i8 0, ptr %arrayidx38, align 1, !mymd !124
  br label %while.cond32, !llvm.loop !125, !mymd !126

while.end39:                                      ; preds = %while.cond32
  br label %if.end40, !mymd !127

if.end40:                                         ; preds = %while.end39, %cond.end
  br label %while.cond, !llvm.loop !128, !mymd !129

while.end41:                                      ; preds = %while.cond
  br label %while.cond42, !mymd !130

while.cond42:                                     ; preds = %while.body45, %while.end41
  %27 = load i32, ptr %i, align 4, !mymd !131
  %28 = load i32, ptr %nn.addr, align 4, !mymd !132
  %cmp43 = icmp slt i32 %27, %28, !mymd !133
  br i1 %cmp43, label %while.body45, label %while.end49, !mymd !134

while.body45:                                     ; preds = %while.cond42
  %29 = load i32, ptr %i, align 4, !mymd !135
  %inc46 = add nsw i32 %29, 1, !mymd !136
  store i32 %inc46, ptr %i, align 4, !mymd !137
  %idxprom47 = sext i32 %29 to i64, !mymd !138
  %arrayidx48 = getelementptr inbounds [19 x i8], ptr @pt_len, i64 0, i64 %idxprom47, !mymd !139
  store i8 0, ptr %arrayidx48, align 1, !mymd !140
  br label %while.cond42, !llvm.loop !141, !mymd !142

while.end49:                                      ; preds = %while.cond42
  %30 = load i32, ptr %nn.addr, align 4, !mymd !143
  call void @make_table(i32 noundef %30, ptr noundef @pt_len, i32 noundef 8, ptr noundef @pt_table), !mymd !144
  br label %if.end50, !mymd !145

if.end50:                                         ; preds = %while.end49, %for.end10
  ret void, !mymd !146
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
!6 = !{!"13444"}
!7 = !{!"13445"}
!8 = !{!"13446"}
!9 = !{!"13447"}
!10 = !{!"13448"}
!11 = !{!"13449"}
!12 = !{!"13450"}
!13 = !{!"13451"}
!14 = !{!"13452"}
!15 = !{!"13453"}
!16 = !{!"13454"}
!17 = !{!"13455"}
!18 = !{!"13456"}
!19 = !{!"13457"}
!20 = !{!"13458"}
!21 = !{!"13459"}
!22 = !{!"13460"}
!23 = !{!"13461"}
!24 = !{!"13462"}
!25 = !{!"13463"}
!26 = !{!"13464"}
!27 = !{!"13465"}
!28 = !{!"13466"}
!29 = !{!"13467"}
!30 = !{!"13468"}
!31 = !{!"13469"}
!32 = !{!"13470"}
!33 = !{!"13471"}
!34 = !{!"13472"}
!35 = !{!"13473"}
!36 = !{!"13474"}
!37 = !{!"13475"}
!38 = !{!"13476"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"13477"}
!42 = !{!"13478"}
!43 = !{!"13479"}
!44 = !{!"13480"}
!45 = !{!"13481"}
!46 = !{!"13482"}
!47 = !{!"13483"}
!48 = !{!"13484"}
!49 = !{!"13485"}
!50 = !{!"13486"}
!51 = !{!"13487"}
!52 = !{!"13488"}
!53 = !{!"13489"}
!54 = !{!"13490"}
!55 = !{!"13491"}
!56 = !{!"13492"}
!57 = distinct !{!57, !40}
!58 = !{!"13493"}
!59 = !{!"13494"}
!60 = !{!"13495"}
!61 = !{!"13496"}
!62 = !{!"13497"}
!63 = !{!"13498"}
!64 = !{!"13499"}
!65 = !{!"13500"}
!66 = !{!"13501"}
!67 = !{!"13502"}
!68 = !{!"13503"}
!69 = !{!"13504"}
!70 = !{!"13505"}
!71 = !{!"13506"}
!72 = !{!"13507"}
!73 = !{!"13508"}
!74 = !{!"13509"}
!75 = !{!"13510"}
!76 = !{!"13511"}
!77 = !{!"13512"}
!78 = !{!"13513"}
!79 = !{!"13514"}
!80 = !{!"13515"}
!81 = !{!"13516"}
!82 = !{!"13517"}
!83 = !{!"13518"}
!84 = !{!"13519"}
!85 = !{!"13520"}
!86 = !{!"13521"}
!87 = distinct !{!87, !40}
!88 = !{!"13522"}
!89 = !{!"13523"}
!90 = !{!"13524"}
!91 = !{!"13525"}
!92 = !{!"13526"}
!93 = !{!"13527"}
!94 = !{!"13528"}
!95 = !{!"13529"}
!96 = !{!"13530"}
!97 = !{!"13531"}
!98 = !{!"13532"}
!99 = !{!"13533"}
!100 = !{!"13534"}
!101 = !{!"13535"}
!102 = !{!"13536"}
!103 = !{!"13537"}
!104 = !{!"13538"}
!105 = !{!"13539"}
!106 = !{!"13540"}
!107 = !{!"13541"}
!108 = !{!"13542"}
!109 = !{!"13543"}
!110 = !{!"13544"}
!111 = !{!"13545"}
!112 = !{!"13546"}
!113 = !{!"13547"}
!114 = !{!"13548"}
!115 = !{!"13549"}
!116 = !{!"13550"}
!117 = !{!"13551"}
!118 = !{!"13552"}
!119 = !{!"13553"}
!120 = !{!"13554"}
!121 = !{!"13555"}
!122 = !{!"13556"}
!123 = !{!"13557"}
!124 = !{!"13558"}
!125 = distinct !{!125, !40}
!126 = !{!"13559"}
!127 = !{!"13560"}
!128 = distinct !{!128, !40}
!129 = !{!"13561"}
!130 = !{!"13562"}
!131 = !{!"13563"}
!132 = !{!"13564"}
!133 = !{!"13565"}
!134 = !{!"13566"}
!135 = !{!"13567"}
!136 = !{!"13568"}
!137 = !{!"13569"}
!138 = !{!"13570"}
!139 = !{!"13571"}
!140 = !{!"13572"}
!141 = distinct !{!141, !40}
!142 = !{!"13573"}
!143 = !{!"13574"}
!144 = !{!"13575"}
!145 = !{!"13576"}
!146 = !{!"13577"}
