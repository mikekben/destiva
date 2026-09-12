; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drfti1.ntryh = external hidden global [4 x i32], align 16
@drfti1.tpi = external hidden global float, align 4

; Function Attrs: nounwind
declare double @cos(double noundef) #0

; Function Attrs: nounwind
declare double @sin(double noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @drfti1(i32 noundef %n, ptr noundef %wa, ptr noundef %ifac) #1 {
entry:
  %n.addr = alloca i32, align 4
  %wa.addr = alloca ptr, align 8
  %ifac.addr = alloca ptr, align 8
  %arg = alloca float, align 4
  %argh = alloca float, align 4
  %argld = alloca float, align 4
  %fi = alloca float, align 4
  %ntry = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %ib = alloca i32, align 4
  %ld = alloca i32, align 4
  %ii = alloca i32, align 4
  %ip = alloca i32, align 4
  %is = alloca i32, align 4
  %nq = alloca i32, align 4
  %nr = alloca i32, align 4
  %ido = alloca i32, align 4
  %ipm = alloca i32, align 4
  %nfm1 = alloca i32, align 4
  %nl = alloca i32, align 4
  %nf = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %wa, ptr %wa.addr, align 8
  store ptr %ifac, ptr %ifac.addr, align 8
  store i32 0, ptr %ntry, align 4
  store i32 -1, ptr %j, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %nl, align 4
  store i32 0, ptr %nf, align 4
  br label %L101

L101:                                             ; preds = %if.then2, %entry
  %1 = load i32, ptr %j, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4
  %2 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %L101
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @drfti1.ntryh, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %ntry, align 4
  br label %if.end

if.else:                                          ; preds = %L101
  %5 = load i32, ptr %ntry, align 4
  %add = add nsw i32 %5, 2
  store i32 %add, ptr %ntry, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %L104

L104:                                             ; preds = %if.then25, %if.end
  %6 = load i32, ptr %nl, align 4
  %7 = load i32, ptr %ntry, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, ptr %nq, align 4
  %8 = load i32, ptr %nl, align 4
  %9 = load i32, ptr %ntry, align 4
  %10 = load i32, ptr %nq, align 4
  %mul = mul nsw i32 %9, %10
  %sub = sub nsw i32 %8, %mul
  store i32 %sub, ptr %nr, align 4
  %11 = load i32, ptr %nr, align 4
  %cmp1 = icmp ne i32 %11, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %L104
  br label %L101

if.end3:                                          ; preds = %L104
  %12 = load i32, ptr %nf, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, ptr %nf, align 4
  %13 = load i32, ptr %ntry, align 4
  %14 = load ptr, ptr %ifac.addr, align 8
  %15 = load i32, ptr %nf, align 4
  %add5 = add nsw i32 %15, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 %idxprom6
  store i32 %13, ptr %arrayidx7, align 4
  %16 = load i32, ptr %nq, align 4
  store i32 %16, ptr %nl, align 4
  %17 = load i32, ptr %ntry, align 4
  %cmp8 = icmp ne i32 %17, 2
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  br label %L107

if.end10:                                         ; preds = %if.end3
  %18 = load i32, ptr %nf, align 4
  %cmp11 = icmp eq i32 %18, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %L107

if.end13:                                         ; preds = %if.end10
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %nf, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %nf, align 4
  %22 = load i32, ptr %i, align 4
  %sub15 = sub nsw i32 %21, %22
  %add16 = add nsw i32 %sub15, 1
  store i32 %add16, ptr %ib, align 4
  %23 = load ptr, ptr %ifac.addr, align 8
  %24 = load i32, ptr %ib, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %23, i64 %idxprom17
  %25 = load i32, ptr %arrayidx18, align 4
  %26 = load ptr, ptr %ifac.addr, align 8
  %27 = load i32, ptr %ib, align 4
  %add19 = add nsw i32 %27, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %26, i64 %idxprom20
  store i32 %25, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %ifac.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 2, ptr %arrayidx23, align 4
  br label %L107

L107:                                             ; preds = %for.end, %if.then12, %if.then9
  %30 = load i32, ptr %nl, align 4
  %cmp24 = icmp ne i32 %30, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %L107
  br label %L104

if.end26:                                         ; preds = %L107
  %31 = load i32, ptr %n.addr, align 4
  %32 = load ptr, ptr %ifac.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %32, i64 0
  store i32 %31, ptr %arrayidx27, align 4
  %33 = load i32, ptr %nf, align 4
  %34 = load ptr, ptr %ifac.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %33, ptr %arrayidx28, align 4
  %35 = load float, ptr @drfti1.tpi, align 4
  %36 = load i32, ptr %n.addr, align 4
  %conv = sitofp i32 %36 to float
  %div29 = fdiv float %35, %conv
  store float %div29, ptr %argh, align 4
  store i32 0, ptr %is, align 4
  %37 = load i32, ptr %nf, align 4
  %sub30 = sub nsw i32 %37, 1
  store i32 %sub30, ptr %nfm1, align 4
  store i32 1, ptr %l1, align 4
  %38 = load i32, ptr %nfm1, align 4
  %cmp31 = icmp eq i32 %38, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  br label %for.end78

if.end34:                                         ; preds = %if.end26
  store i32 0, ptr %k1, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc76, %if.end34
  %39 = load i32, ptr %k1, align 4
  %40 = load i32, ptr %nfm1, align 4
  %cmp36 = icmp slt i32 %39, %40
  br i1 %cmp36, label %for.body38, label %for.end78

for.body38:                                       ; preds = %for.cond35
  %41 = load ptr, ptr %ifac.addr, align 8
  %42 = load i32, ptr %k1, align 4
  %add39 = add nsw i32 %42, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %41, i64 %idxprom40
  %43 = load i32, ptr %arrayidx41, align 4
  store i32 %43, ptr %ip, align 4
  store i32 0, ptr %ld, align 4
  %44 = load i32, ptr %l1, align 4
  %45 = load i32, ptr %ip, align 4
  %mul42 = mul nsw i32 %44, %45
  store i32 %mul42, ptr %l2, align 4
  %46 = load i32, ptr %n.addr, align 4
  %47 = load i32, ptr %l2, align 4
  %div43 = sdiv i32 %46, %47
  store i32 %div43, ptr %ido, align 4
  %48 = load i32, ptr %ip, align 4
  %sub44 = sub nsw i32 %48, 1
  store i32 %sub44, ptr %ipm, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc73, %for.body38
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %ipm, align 4
  %cmp46 = icmp slt i32 %49, %50
  br i1 %cmp46, label %for.body48, label %for.end75

for.body48:                                       ; preds = %for.cond45
  %51 = load i32, ptr %l1, align 4
  %52 = load i32, ptr %ld, align 4
  %add49 = add nsw i32 %52, %51
  store i32 %add49, ptr %ld, align 4
  %53 = load i32, ptr %is, align 4
  store i32 %53, ptr %i, align 4
  %54 = load i32, ptr %ld, align 4
  %conv50 = sitofp i32 %54 to float
  %55 = load float, ptr %argh, align 4
  %mul51 = fmul float %conv50, %55
  store float %mul51, ptr %argld, align 4
  store float 0.000000e+00, ptr %fi, align 4
  store i32 2, ptr %ii, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc69, %for.body48
  %56 = load i32, ptr %ii, align 4
  %57 = load i32, ptr %ido, align 4
  %cmp53 = icmp slt i32 %56, %57
  br i1 %cmp53, label %for.body55, label %for.end71

for.body55:                                       ; preds = %for.cond52
  %58 = load float, ptr %fi, align 4
  %add56 = fadd float %58, 1.000000e+00
  store float %add56, ptr %fi, align 4
  %59 = load float, ptr %fi, align 4
  %60 = load float, ptr %argld, align 4
  %mul57 = fmul float %59, %60
  store float %mul57, ptr %arg, align 4
  %61 = load float, ptr %arg, align 4
  %conv58 = fpext float %61 to double
  %call = call double @cos(double noundef %conv58) #2
  %conv59 = fptrunc double %call to float
  %62 = load ptr, ptr %wa.addr, align 8
  %63 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, ptr %i, align 4
  %idxprom61 = sext i32 %63 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %62, i64 %idxprom61
  store float %conv59, ptr %arrayidx62, align 4
  %64 = load float, ptr %arg, align 4
  %conv63 = fpext float %64 to double
  %call64 = call double @sin(double noundef %conv63) #2
  %conv65 = fptrunc double %call64 to float
  %65 = load ptr, ptr %wa.addr, align 8
  %66 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %66, 1
  store i32 %inc66, ptr %i, align 4
  %idxprom67 = sext i32 %66 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %65, i64 %idxprom67
  store float %conv65, ptr %arrayidx68, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body55
  %67 = load i32, ptr %ii, align 4
  %add70 = add nsw i32 %67, 2
  store i32 %add70, ptr %ii, align 4
  br label %for.cond52, !llvm.loop !8

for.end71:                                        ; preds = %for.cond52
  %68 = load i32, ptr %ido, align 4
  %69 = load i32, ptr %is, align 4
  %add72 = add nsw i32 %69, %68
  store i32 %add72, ptr %is, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %for.end71
  %70 = load i32, ptr %j, align 4
  %inc74 = add nsw i32 %70, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.cond45, !llvm.loop !9

for.end75:                                        ; preds = %for.cond45
  %71 = load i32, ptr %l2, align 4
  store i32 %71, ptr %l1, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.end75
  %72 = load i32, ptr %k1, align 4
  %inc77 = add nsw i32 %72, 1
  store i32 %inc77, ptr %k1, align 4
  br label %for.cond35, !llvm.loop !10

for.end78:                                        ; preds = %for.cond35, %if.then33
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
