; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@peek_bits = external hidden global i32, align 4
@leaves = external hidden global [26 x i32], align 16
@max_len = external hidden global i32, align 4
@parents = external hidden global [26 x i32], align 16
@lit_base = external hidden global [26 x i32], align 16
@outbuf = external dso_local global [18432 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @build_tree() #0 {
entry:
  %nodes = alloca i32, align 4, !mymd !6
  %len = alloca i32, align 4, !mymd !7
  %prefixp = alloca ptr, align 8, !mymd !8
  %prefixes = alloca i32, align 4, !mymd !9
  store i32 0, ptr %nodes, align 4, !mymd !10
  %0 = load i32, ptr @max_len, align 4, !mymd !11
  store i32 %0, ptr %len, align 4, !mymd !12
  br label %for.cond, !mymd !13

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %len, align 4, !mymd !14
  %cmp = icmp sge i32 %1, 1, !mymd !15
  br i1 %cmp, label %for.body, label %for.end, !mymd !16

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %nodes, align 4, !mymd !17
  %shr = ashr i32 %2, 1, !mymd !18
  store i32 %shr, ptr %nodes, align 4, !mymd !19
  %3 = load i32, ptr %nodes, align 4, !mymd !20
  %4 = load i32, ptr %len, align 4, !mymd !21
  %idxprom = sext i32 %4 to i64, !mymd !22
  %arrayidx = getelementptr inbounds [26 x i32], ptr @parents, i64 0, i64 %idxprom, !mymd !23
  store i32 %3, ptr %arrayidx, align 4, !mymd !24
  %5 = load i32, ptr %nodes, align 4, !mymd !25
  %6 = load i32, ptr %len, align 4, !mymd !26
  %idxprom1 = sext i32 %6 to i64, !mymd !27
  %arrayidx2 = getelementptr inbounds [26 x i32], ptr @lit_base, i64 0, i64 %idxprom1, !mymd !28
  %7 = load i32, ptr %arrayidx2, align 4, !mymd !29
  %sub = sub nsw i32 %7, %5, !mymd !30
  store i32 %sub, ptr %arrayidx2, align 4, !mymd !31
  %8 = load i32, ptr %len, align 4, !mymd !32
  %idxprom3 = sext i32 %8 to i64, !mymd !33
  %arrayidx4 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom3, !mymd !34
  %9 = load i32, ptr %arrayidx4, align 4, !mymd !35
  %10 = load i32, ptr %nodes, align 4, !mymd !36
  %add = add nsw i32 %10, %9, !mymd !37
  store i32 %add, ptr %nodes, align 4, !mymd !38
  br label %for.inc, !mymd !39

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %len, align 4, !mymd !40
  %dec = add nsw i32 %11, -1, !mymd !41
  store i32 %dec, ptr %len, align 4, !mymd !42
  br label %for.cond, !llvm.loop !43, !mymd !45

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr @max_len, align 4, !mymd !46
  %cmp5 = icmp sle i32 %12, 12, !mymd !47
  br i1 %cmp5, label %cond.true, label %cond.false, !mymd !48

cond.true:                                        ; preds = %for.end
  %13 = load i32, ptr @max_len, align 4, !mymd !49
  br label %cond.end, !mymd !50

cond.false:                                       ; preds = %for.end
  br label %cond.end, !mymd !51

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 12, %cond.false ], !mymd !52
  store i32 %cond, ptr @peek_bits, align 4, !mymd !53
  %14 = load i32, ptr @peek_bits, align 4, !mymd !54
  %shl = shl i32 1, %14, !mymd !55
  %idxprom6 = sext i32 %shl to i64, !mymd !56
  %arrayidx7 = getelementptr inbounds [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom6, !mymd !57
  store ptr %arrayidx7, ptr %prefixp, align 8, !mymd !58
  store i32 1, ptr %len, align 4, !mymd !59
  br label %for.cond8, !mymd !60

for.cond8:                                        ; preds = %for.inc16, %cond.end
  %15 = load i32, ptr %len, align 4, !mymd !61
  %16 = load i32, ptr @peek_bits, align 4, !mymd !62
  %cmp9 = icmp sle i32 %15, %16, !mymd !63
  br i1 %cmp9, label %for.body10, label %for.end17, !mymd !64

for.body10:                                       ; preds = %for.cond8
  %17 = load i32, ptr %len, align 4, !mymd !65
  %idxprom11 = sext i32 %17 to i64, !mymd !66
  %arrayidx12 = getelementptr inbounds [26 x i32], ptr @leaves, i64 0, i64 %idxprom11, !mymd !67
  %18 = load i32, ptr %arrayidx12, align 4, !mymd !68
  %19 = load i32, ptr @peek_bits, align 4, !mymd !69
  %20 = load i32, ptr %len, align 4, !mymd !70
  %sub13 = sub nsw i32 %19, %20, !mymd !71
  %shl14 = shl i32 %18, %sub13, !mymd !72
  store i32 %shl14, ptr %prefixes, align 4, !mymd !73
  br label %while.cond, !mymd !74

while.cond:                                       ; preds = %while.body, %for.body10
  %21 = load i32, ptr %prefixes, align 4, !mymd !75
  %dec15 = add nsw i32 %21, -1, !mymd !76
  store i32 %dec15, ptr %prefixes, align 4, !mymd !77
  %tobool = icmp ne i32 %21, 0, !mymd !78
  br i1 %tobool, label %while.body, label %while.end, !mymd !79

while.body:                                       ; preds = %while.cond
  %22 = load i32, ptr %len, align 4, !mymd !80
  %conv = trunc i32 %22 to i8, !mymd !81
  %23 = load ptr, ptr %prefixp, align 8, !mymd !82
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 -1, !mymd !83
  store ptr %incdec.ptr, ptr %prefixp, align 8, !mymd !84
  store i8 %conv, ptr %incdec.ptr, align 1, !mymd !85
  br label %while.cond, !llvm.loop !86, !mymd !87

while.end:                                        ; preds = %while.cond
  br label %for.inc16, !mymd !88

for.inc16:                                        ; preds = %while.end
  %24 = load i32, ptr %len, align 4, !mymd !89
  %inc = add nsw i32 %24, 1, !mymd !90
  store i32 %inc, ptr %len, align 4, !mymd !91
  br label %for.cond8, !llvm.loop !92, !mymd !93

for.end17:                                        ; preds = %for.cond8
  br label %while.cond18, !mymd !94

while.cond18:                                     ; preds = %while.body21, %for.end17
  %25 = load ptr, ptr %prefixp, align 8, !mymd !95
  %cmp19 = icmp ugt ptr %25, @outbuf, !mymd !96
  br i1 %cmp19, label %while.body21, label %while.end23, !mymd !97

while.body21:                                     ; preds = %while.cond18
  %26 = load ptr, ptr %prefixp, align 8, !mymd !98
  %incdec.ptr22 = getelementptr inbounds i8, ptr %26, i32 -1, !mymd !99
  store ptr %incdec.ptr22, ptr %prefixp, align 8, !mymd !100
  store i8 0, ptr %incdec.ptr22, align 1, !mymd !101
  br label %while.cond18, !llvm.loop !102, !mymd !103

while.end23:                                      ; preds = %while.cond18
  ret void, !mymd !104
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
!6 = !{!"9543"}
!7 = !{!"9544"}
!8 = !{!"9545"}
!9 = !{!"9546"}
!10 = !{!"9547"}
!11 = !{!"9548"}
!12 = !{!"9549"}
!13 = !{!"9550"}
!14 = !{!"9551"}
!15 = !{!"9552"}
!16 = !{!"9553"}
!17 = !{!"9554"}
!18 = !{!"9555"}
!19 = !{!"9556"}
!20 = !{!"9557"}
!21 = !{!"9558"}
!22 = !{!"9559"}
!23 = !{!"9560"}
!24 = !{!"9561"}
!25 = !{!"9562"}
!26 = !{!"9563"}
!27 = !{!"9564"}
!28 = !{!"9565"}
!29 = !{!"9566"}
!30 = !{!"9567"}
!31 = !{!"9568"}
!32 = !{!"9569"}
!33 = !{!"9570"}
!34 = !{!"9571"}
!35 = !{!"9572"}
!36 = !{!"9573"}
!37 = !{!"9574"}
!38 = !{!"9575"}
!39 = !{!"9576"}
!40 = !{!"9577"}
!41 = !{!"9578"}
!42 = !{!"9579"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"9580"}
!46 = !{!"9581"}
!47 = !{!"9582"}
!48 = !{!"9583"}
!49 = !{!"9584"}
!50 = !{!"9585"}
!51 = !{!"9586"}
!52 = !{!"9587"}
!53 = !{!"9588"}
!54 = !{!"9589"}
!55 = !{!"9590"}
!56 = !{!"9591"}
!57 = !{!"9592"}
!58 = !{!"9593"}
!59 = !{!"9594"}
!60 = !{!"9595"}
!61 = !{!"9596"}
!62 = !{!"9597"}
!63 = !{!"9598"}
!64 = !{!"9599"}
!65 = !{!"9600"}
!66 = !{!"9601"}
!67 = !{!"9602"}
!68 = !{!"9603"}
!69 = !{!"9604"}
!70 = !{!"9605"}
!71 = !{!"9606"}
!72 = !{!"9607"}
!73 = !{!"9608"}
!74 = !{!"9609"}
!75 = !{!"9610"}
!76 = !{!"9611"}
!77 = !{!"9612"}
!78 = !{!"9613"}
!79 = !{!"9614"}
!80 = !{!"9615"}
!81 = !{!"9616"}
!82 = !{!"9617"}
!83 = !{!"9618"}
!84 = !{!"9619"}
!85 = !{!"9620"}
!86 = distinct !{!86, !44}
!87 = !{!"9621"}
!88 = !{!"9622"}
!89 = !{!"9623"}
!90 = !{!"9624"}
!91 = !{!"9625"}
!92 = distinct !{!92, !44}
!93 = !{!"9626"}
!94 = !{!"9627"}
!95 = !{!"9628"}
!96 = !{!"9629"}
!97 = !{!"9630"}
!98 = !{!"9631"}
!99 = !{!"9632"}
!100 = !{!"9633"}
!101 = !{!"9634"}
!102 = distinct !{!102, !44}
!103 = !{!"9635"}
!104 = !{!"9636"}
