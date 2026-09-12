; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cplens = external hidden global [31 x i16], align 16
@cplext = external hidden global [31 x i16], align 16
@cpdist = external hidden global [30 x i16], align 16
@cpdext = external hidden global [30 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @huft_build(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @huft_free(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_codes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inflate_fixed() #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %i = alloca i32, align 4, !mymd !7
  %tl = alloca ptr, align 8, !mymd !8
  %td = alloca ptr, align 8, !mymd !9
  %bl = alloca i32, align 4, !mymd !10
  %bd = alloca i32, align 4, !mymd !11
  %l = alloca [288 x i32], align 16, !mymd !12
  store i32 0, ptr %i, align 4, !mymd !13
  br label %for.cond, !mymd !14

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !mymd !15
  %cmp = icmp slt i32 %0, 144, !mymd !16
  br i1 %cmp, label %for.body, label %for.end, !mymd !17

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !mymd !18
  %idxprom = sext i32 %1 to i64, !mymd !19
  %arrayidx = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom, !mymd !20
  store i32 8, ptr %arrayidx, align 4, !mymd !21
  br label %for.inc, !mymd !22

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !mymd !23
  %inc = add nsw i32 %2, 1, !mymd !24
  store i32 %inc, ptr %i, align 4, !mymd !25
  br label %for.cond, !llvm.loop !26, !mymd !28

for.end:                                          ; preds = %for.cond
  br label %for.cond1, !mymd !29

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4, !mymd !30
  %cmp2 = icmp slt i32 %3, 256, !mymd !31
  br i1 %cmp2, label %for.body3, label %for.end8, !mymd !32

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !mymd !33
  %idxprom4 = sext i32 %4 to i64, !mymd !34
  %arrayidx5 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom4, !mymd !35
  store i32 9, ptr %arrayidx5, align 4, !mymd !36
  br label %for.inc6, !mymd !37

for.inc6:                                         ; preds = %for.body3
  %5 = load i32, ptr %i, align 4, !mymd !38
  %inc7 = add nsw i32 %5, 1, !mymd !39
  store i32 %inc7, ptr %i, align 4, !mymd !40
  br label %for.cond1, !llvm.loop !41, !mymd !42

for.end8:                                         ; preds = %for.cond1
  br label %for.cond9, !mymd !43

for.cond9:                                        ; preds = %for.inc14, %for.end8
  %6 = load i32, ptr %i, align 4, !mymd !44
  %cmp10 = icmp slt i32 %6, 280, !mymd !45
  br i1 %cmp10, label %for.body11, label %for.end16, !mymd !46

for.body11:                                       ; preds = %for.cond9
  %7 = load i32, ptr %i, align 4, !mymd !47
  %idxprom12 = sext i32 %7 to i64, !mymd !48
  %arrayidx13 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom12, !mymd !49
  store i32 7, ptr %arrayidx13, align 4, !mymd !50
  br label %for.inc14, !mymd !51

for.inc14:                                        ; preds = %for.body11
  %8 = load i32, ptr %i, align 4, !mymd !52
  %inc15 = add nsw i32 %8, 1, !mymd !53
  store i32 %inc15, ptr %i, align 4, !mymd !54
  br label %for.cond9, !llvm.loop !55, !mymd !56

for.end16:                                        ; preds = %for.cond9
  br label %for.cond17, !mymd !57

for.cond17:                                       ; preds = %for.inc22, %for.end16
  %9 = load i32, ptr %i, align 4, !mymd !58
  %cmp18 = icmp slt i32 %9, 288, !mymd !59
  br i1 %cmp18, label %for.body19, label %for.end24, !mymd !60

for.body19:                                       ; preds = %for.cond17
  %10 = load i32, ptr %i, align 4, !mymd !61
  %idxprom20 = sext i32 %10 to i64, !mymd !62
  %arrayidx21 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom20, !mymd !63
  store i32 8, ptr %arrayidx21, align 4, !mymd !64
  br label %for.inc22, !mymd !65

for.inc22:                                        ; preds = %for.body19
  %11 = load i32, ptr %i, align 4, !mymd !66
  %inc23 = add nsw i32 %11, 1, !mymd !67
  store i32 %inc23, ptr %i, align 4, !mymd !68
  br label %for.cond17, !llvm.loop !69, !mymd !70

for.end24:                                        ; preds = %for.cond17
  store i32 7, ptr %bl, align 4, !mymd !71
  %arraydecay = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 0, !mymd !72
  %call = call i32 @huft_build(ptr noundef %arraydecay, i32 noundef 288, i32 noundef 257, ptr noundef @cplens, ptr noundef @cplext, ptr noundef %tl, ptr noundef %bl), !mymd !73
  store i32 %call, ptr %i, align 4, !mymd !74
  %cmp25 = icmp ne i32 %call, 0, !mymd !75
  br i1 %cmp25, label %if.then, label %if.end, !mymd !76

if.then:                                          ; preds = %for.end24
  %12 = load i32, ptr %i, align 4, !mymd !77
  store i32 %12, ptr %retval, align 4, !mymd !78
  br label %return, !mymd !79

if.end:                                           ; preds = %for.end24
  store i32 0, ptr %i, align 4, !mymd !80
  br label %for.cond26, !mymd !81

for.cond26:                                       ; preds = %for.inc31, %if.end
  %13 = load i32, ptr %i, align 4, !mymd !82
  %cmp27 = icmp slt i32 %13, 30, !mymd !83
  br i1 %cmp27, label %for.body28, label %for.end33, !mymd !84

for.body28:                                       ; preds = %for.cond26
  %14 = load i32, ptr %i, align 4, !mymd !85
  %idxprom29 = sext i32 %14 to i64, !mymd !86
  %arrayidx30 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom29, !mymd !87
  store i32 5, ptr %arrayidx30, align 4, !mymd !88
  br label %for.inc31, !mymd !89

for.inc31:                                        ; preds = %for.body28
  %15 = load i32, ptr %i, align 4, !mymd !90
  %inc32 = add nsw i32 %15, 1, !mymd !91
  store i32 %inc32, ptr %i, align 4, !mymd !92
  br label %for.cond26, !llvm.loop !93, !mymd !94

for.end33:                                        ; preds = %for.cond26
  store i32 5, ptr %bd, align 4, !mymd !95
  %arraydecay34 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 0, !mymd !96
  %call35 = call i32 @huft_build(ptr noundef %arraydecay34, i32 noundef 30, i32 noundef 0, ptr noundef @cpdist, ptr noundef @cpdext, ptr noundef %td, ptr noundef %bd), !mymd !97
  store i32 %call35, ptr %i, align 4, !mymd !98
  %cmp36 = icmp sgt i32 %call35, 1, !mymd !99
  br i1 %cmp36, label %if.then37, label %if.end39, !mymd !100

if.then37:                                        ; preds = %for.end33
  %16 = load ptr, ptr %tl, align 8, !mymd !101
  %call38 = call i32 @huft_free(ptr noundef %16), !mymd !102
  %17 = load i32, ptr %i, align 4, !mymd !103
  store i32 %17, ptr %retval, align 4, !mymd !104
  br label %return, !mymd !105

if.end39:                                         ; preds = %for.end33
  %18 = load ptr, ptr %tl, align 8, !mymd !106
  %19 = load ptr, ptr %td, align 8, !mymd !107
  %20 = load i32, ptr %bl, align 4, !mymd !108
  %21 = load i32, ptr %bd, align 4, !mymd !109
  %call40 = call i32 @inflate_codes(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21), !mymd !110
  %tobool = icmp ne i32 %call40, 0, !mymd !111
  br i1 %tobool, label %if.then41, label %if.end42, !mymd !112

if.then41:                                        ; preds = %if.end39
  store i32 1, ptr %retval, align 4, !mymd !113
  br label %return, !mymd !114

if.end42:                                         ; preds = %if.end39
  %22 = load ptr, ptr %tl, align 8, !mymd !115
  %call43 = call i32 @huft_free(ptr noundef %22), !mymd !116
  %23 = load ptr, ptr %td, align 8, !mymd !117
  %call44 = call i32 @huft_free(ptr noundef %23), !mymd !118
  store i32 0, ptr %retval, align 4, !mymd !119
  br label %return, !mymd !120

return:                                           ; preds = %if.end42, %if.then41, %if.then37, %if.then
  %24 = load i32, ptr %retval, align 4, !mymd !121
  ret i32 %24, !mymd !122
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
!6 = !{!"6588"}
!7 = !{!"6589"}
!8 = !{!"6590"}
!9 = !{!"6591"}
!10 = !{!"6592"}
!11 = !{!"6593"}
!12 = !{!"6594"}
!13 = !{!"6595"}
!14 = !{!"6596"}
!15 = !{!"6597"}
!16 = !{!"6598"}
!17 = !{!"6599"}
!18 = !{!"6600"}
!19 = !{!"6601"}
!20 = !{!"6602"}
!21 = !{!"6603"}
!22 = !{!"6604"}
!23 = !{!"6605"}
!24 = !{!"6606"}
!25 = !{!"6607"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"6608"}
!29 = !{!"6609"}
!30 = !{!"6610"}
!31 = !{!"6611"}
!32 = !{!"6612"}
!33 = !{!"6613"}
!34 = !{!"6614"}
!35 = !{!"6615"}
!36 = !{!"6616"}
!37 = !{!"6617"}
!38 = !{!"6618"}
!39 = !{!"6619"}
!40 = !{!"6620"}
!41 = distinct !{!41, !27}
!42 = !{!"6621"}
!43 = !{!"6622"}
!44 = !{!"6623"}
!45 = !{!"6624"}
!46 = !{!"6625"}
!47 = !{!"6626"}
!48 = !{!"6627"}
!49 = !{!"6628"}
!50 = !{!"6629"}
!51 = !{!"6630"}
!52 = !{!"6631"}
!53 = !{!"6632"}
!54 = !{!"6633"}
!55 = distinct !{!55, !27}
!56 = !{!"6634"}
!57 = !{!"6635"}
!58 = !{!"6636"}
!59 = !{!"6637"}
!60 = !{!"6638"}
!61 = !{!"6639"}
!62 = !{!"6640"}
!63 = !{!"6641"}
!64 = !{!"6642"}
!65 = !{!"6643"}
!66 = !{!"6644"}
!67 = !{!"6645"}
!68 = !{!"6646"}
!69 = distinct !{!69, !27}
!70 = !{!"6647"}
!71 = !{!"6648"}
!72 = !{!"6649"}
!73 = !{!"6650"}
!74 = !{!"6651"}
!75 = !{!"6652"}
!76 = !{!"6653"}
!77 = !{!"6654"}
!78 = !{!"6655"}
!79 = !{!"6656"}
!80 = !{!"6657"}
!81 = !{!"6658"}
!82 = !{!"6659"}
!83 = !{!"6660"}
!84 = !{!"6661"}
!85 = !{!"6662"}
!86 = !{!"6663"}
!87 = !{!"6664"}
!88 = !{!"6665"}
!89 = !{!"6666"}
!90 = !{!"6667"}
!91 = !{!"6668"}
!92 = !{!"6669"}
!93 = distinct !{!93, !27}
!94 = !{!"6670"}
!95 = !{!"6671"}
!96 = !{!"6672"}
!97 = !{!"6673"}
!98 = !{!"6674"}
!99 = !{!"6675"}
!100 = !{!"6676"}
!101 = !{!"6677"}
!102 = !{!"6678"}
!103 = !{!"6679"}
!104 = !{!"6680"}
!105 = !{!"6681"}
!106 = !{!"6682"}
!107 = !{!"6683"}
!108 = !{!"6684"}
!109 = !{!"6685"}
!110 = !{!"6686"}
!111 = !{!"6687"}
!112 = !{!"6688"}
!113 = !{!"6689"}
!114 = !{!"6690"}
!115 = !{!"6691"}
!116 = !{!"6692"}
!117 = !{!"6693"}
!118 = !{!"6694"}
!119 = !{!"6695"}
!120 = !{!"6696"}
!121 = !{!"6697"}
!122 = !{!"6698"}
