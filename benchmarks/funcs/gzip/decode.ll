; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@done = external hidden global i32, align 4
@j = external hidden global i32, align 4
@decode.i = external hidden global i32, align 4

; Function Attrs: noinline nounwind uwtable
define hidden i32 @decode(i32 noundef %count, ptr noundef %buffer) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %count.addr = alloca i32, align 4, !mymd !7
  %buffer.addr = alloca ptr, align 8, !mymd !8
  %r = alloca i32, align 4, !mymd !9
  %c = alloca i32, align 4, !mymd !10
  store i32 %count, ptr %count.addr, align 4, !mymd !11
  store ptr %buffer, ptr %buffer.addr, align 8, !mymd !12
  store i32 0, ptr %r, align 4, !mymd !13
  br label %while.cond, !mymd !14

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @j, align 4, !mymd !15
  %dec = add nsw i32 %0, -1, !mymd !16
  store i32 %dec, ptr @j, align 4, !mymd !17
  %cmp = icmp sge i32 %dec, 0, !mymd !18
  br i1 %cmp, label %while.body, label %while.end, !mymd !19

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %buffer.addr, align 8, !mymd !20
  %2 = load i32, ptr @decode.i, align 4, !mymd !21
  %idxprom = zext i32 %2 to i64, !mymd !22
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom, !mymd !23
  %3 = load i8, ptr %arrayidx, align 1, !mymd !24
  %4 = load ptr, ptr %buffer.addr, align 8, !mymd !25
  %5 = load i32, ptr %r, align 4, !mymd !26
  %idxprom1 = zext i32 %5 to i64, !mymd !27
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom1, !mymd !28
  store i8 %3, ptr %arrayidx2, align 1, !mymd !29
  %6 = load i32, ptr @decode.i, align 4, !mymd !30
  %add = add i32 %6, 1, !mymd !31
  %and = and i32 %add, 8191, !mymd !32
  store i32 %and, ptr @decode.i, align 4, !mymd !33
  %7 = load i32, ptr %r, align 4, !mymd !34
  %inc = add i32 %7, 1, !mymd !35
  store i32 %inc, ptr %r, align 4, !mymd !36
  %8 = load i32, ptr %count.addr, align 4, !mymd !37
  %cmp3 = icmp eq i32 %inc, %8, !mymd !38
  br i1 %cmp3, label %if.then, label %if.end, !mymd !39

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %r, align 4, !mymd !40
  store i32 %9, ptr %retval, align 4, !mymd !41
  br label %return, !mymd !42

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !43, !mymd !45

while.end:                                        ; preds = %while.cond
  br label %for.cond, !mymd !46

for.cond:                                         ; preds = %if.end37, %while.end
  %call = call i32 @decode_c(), !mymd !47
  store i32 %call, ptr %c, align 4, !mymd !48
  %10 = load i32, ptr %c, align 4, !mymd !49
  %cmp4 = icmp eq i32 %10, 510, !mymd !50
  br i1 %cmp4, label %if.then5, label %if.end6, !mymd !51

if.then5:                                         ; preds = %for.cond
  store i32 1, ptr @done, align 4, !mymd !52
  %11 = load i32, ptr %r, align 4, !mymd !53
  store i32 %11, ptr %retval, align 4, !mymd !54
  br label %return, !mymd !55

if.end6:                                          ; preds = %for.cond
  %12 = load i32, ptr %c, align 4, !mymd !56
  %cmp7 = icmp ule i32 %12, 255, !mymd !57
  br i1 %cmp7, label %if.then8, label %if.else, !mymd !58

if.then8:                                         ; preds = %if.end6
  %13 = load i32, ptr %c, align 4, !mymd !59
  %conv = trunc i32 %13 to i8, !mymd !60
  %14 = load ptr, ptr %buffer.addr, align 8, !mymd !61
  %15 = load i32, ptr %r, align 4, !mymd !62
  %idxprom9 = zext i32 %15 to i64, !mymd !63
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %14, i64 %idxprom9, !mymd !64
  store i8 %conv, ptr %arrayidx10, align 1, !mymd !65
  %16 = load i32, ptr %r, align 4, !mymd !66
  %inc11 = add i32 %16, 1, !mymd !67
  store i32 %inc11, ptr %r, align 4, !mymd !68
  %17 = load i32, ptr %count.addr, align 4, !mymd !69
  %cmp12 = icmp eq i32 %inc11, %17, !mymd !70
  br i1 %cmp12, label %if.then14, label %if.end15, !mymd !71

if.then14:                                        ; preds = %if.then8
  %18 = load i32, ptr %r, align 4, !mymd !72
  store i32 %18, ptr %retval, align 4, !mymd !73
  br label %return, !mymd !74

if.end15:                                         ; preds = %if.then8
  br label %if.end37, !mymd !75

if.else:                                          ; preds = %if.end6
  %19 = load i32, ptr %c, align 4, !mymd !76
  %sub = sub i32 %19, 253, !mymd !77
  store i32 %sub, ptr @j, align 4, !mymd !78
  %20 = load i32, ptr %r, align 4, !mymd !79
  %call16 = call i32 @decode_p(), !mymd !80
  %sub17 = sub i32 %20, %call16, !mymd !81
  %sub18 = sub i32 %sub17, 1, !mymd !82
  %and19 = and i32 %sub18, 8191, !mymd !83
  store i32 %and19, ptr @decode.i, align 4, !mymd !84
  br label %while.cond20, !mymd !85

while.cond20:                                     ; preds = %if.end35, %if.else
  %21 = load i32, ptr @j, align 4, !mymd !86
  %dec21 = add nsw i32 %21, -1, !mymd !87
  store i32 %dec21, ptr @j, align 4, !mymd !88
  %cmp22 = icmp sge i32 %dec21, 0, !mymd !89
  br i1 %cmp22, label %while.body24, label %while.end36, !mymd !90

while.body24:                                     ; preds = %while.cond20
  %22 = load ptr, ptr %buffer.addr, align 8, !mymd !91
  %23 = load i32, ptr @decode.i, align 4, !mymd !92
  %idxprom25 = zext i32 %23 to i64, !mymd !93
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %22, i64 %idxprom25, !mymd !94
  %24 = load i8, ptr %arrayidx26, align 1, !mymd !95
  %25 = load ptr, ptr %buffer.addr, align 8, !mymd !96
  %26 = load i32, ptr %r, align 4, !mymd !97
  %idxprom27 = zext i32 %26 to i64, !mymd !98
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom27, !mymd !99
  store i8 %24, ptr %arrayidx28, align 1, !mymd !100
  %27 = load i32, ptr @decode.i, align 4, !mymd !101
  %add29 = add i32 %27, 1, !mymd !102
  %and30 = and i32 %add29, 8191, !mymd !103
  store i32 %and30, ptr @decode.i, align 4, !mymd !104
  %28 = load i32, ptr %r, align 4, !mymd !105
  %inc31 = add i32 %28, 1, !mymd !106
  store i32 %inc31, ptr %r, align 4, !mymd !107
  %29 = load i32, ptr %count.addr, align 4, !mymd !108
  %cmp32 = icmp eq i32 %inc31, %29, !mymd !109
  br i1 %cmp32, label %if.then34, label %if.end35, !mymd !110

if.then34:                                        ; preds = %while.body24
  %30 = load i32, ptr %r, align 4, !mymd !111
  store i32 %30, ptr %retval, align 4, !mymd !112
  br label %return, !mymd !113

if.end35:                                         ; preds = %while.body24
  br label %while.cond20, !llvm.loop !114, !mymd !115

while.end36:                                      ; preds = %while.cond20
  br label %if.end37, !mymd !116

if.end37:                                         ; preds = %while.end36, %if.end15
  br label %for.cond, !mymd !117

return:                                           ; preds = %if.then34, %if.then14, %if.then5, %if.then
  %31 = load i32, ptr %retval, align 4, !mymd !118
  ret i32 %31, !mymd !119
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @decode_c() #0

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @decode_p() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"8508"}
!7 = !{!"8509"}
!8 = !{!"8510"}
!9 = !{!"8511"}
!10 = !{!"8512"}
!11 = !{!"8513"}
!12 = !{!"8514"}
!13 = !{!"8515"}
!14 = !{!"8516"}
!15 = !{!"8517"}
!16 = !{!"8518"}
!17 = !{!"8519"}
!18 = !{!"8520"}
!19 = !{!"8521"}
!20 = !{!"8522"}
!21 = !{!"8523"}
!22 = !{!"8524"}
!23 = !{!"8525"}
!24 = !{!"8526"}
!25 = !{!"8527"}
!26 = !{!"8528"}
!27 = !{!"8529"}
!28 = !{!"8530"}
!29 = !{!"8531"}
!30 = !{!"8532"}
!31 = !{!"8533"}
!32 = !{!"8534"}
!33 = !{!"8535"}
!34 = !{!"8536"}
!35 = !{!"8537"}
!36 = !{!"8538"}
!37 = !{!"8539"}
!38 = !{!"8540"}
!39 = !{!"8541"}
!40 = !{!"8542"}
!41 = !{!"8543"}
!42 = !{!"8544"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"8545"}
!46 = !{!"8546"}
!47 = !{!"8547"}
!48 = !{!"8548"}
!49 = !{!"8549"}
!50 = !{!"8550"}
!51 = !{!"8551"}
!52 = !{!"8552"}
!53 = !{!"8553"}
!54 = !{!"8554"}
!55 = !{!"8555"}
!56 = !{!"8556"}
!57 = !{!"8557"}
!58 = !{!"8558"}
!59 = !{!"8559"}
!60 = !{!"8560"}
!61 = !{!"8561"}
!62 = !{!"8562"}
!63 = !{!"8563"}
!64 = !{!"8564"}
!65 = !{!"8565"}
!66 = !{!"8566"}
!67 = !{!"8567"}
!68 = !{!"8568"}
!69 = !{!"8569"}
!70 = !{!"8570"}
!71 = !{!"8571"}
!72 = !{!"8572"}
!73 = !{!"8573"}
!74 = !{!"8574"}
!75 = !{!"8575"}
!76 = !{!"8576"}
!77 = !{!"8577"}
!78 = !{!"8578"}
!79 = !{!"8579"}
!80 = !{!"8580"}
!81 = !{!"8581"}
!82 = !{!"8582"}
!83 = !{!"8583"}
!84 = !{!"8584"}
!85 = !{!"8585"}
!86 = !{!"8586"}
!87 = !{!"8587"}
!88 = !{!"8588"}
!89 = !{!"8589"}
!90 = !{!"8590"}
!91 = !{!"8591"}
!92 = !{!"8592"}
!93 = !{!"8593"}
!94 = !{!"8594"}
!95 = !{!"8595"}
!96 = !{!"8596"}
!97 = !{!"8597"}
!98 = !{!"8598"}
!99 = !{!"8599"}
!100 = !{!"8600"}
!101 = !{!"8601"}
!102 = !{!"8602"}
!103 = !{!"8603"}
!104 = !{!"8604"}
!105 = !{!"8605"}
!106 = !{!"8606"}
!107 = !{!"8607"}
!108 = !{!"8608"}
!109 = !{!"8609"}
!110 = !{!"8610"}
!111 = !{!"8611"}
!112 = !{!"8612"}
!113 = !{!"8613"}
!114 = distinct !{!114, !44}
!115 = !{!"8614"}
!116 = !{!"8615"}
!117 = !{!"8616"}
!118 = !{!"8617"}
!119 = !{!"8618"}
