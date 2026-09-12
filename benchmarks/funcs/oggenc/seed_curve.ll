; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @seed_curve(ptr noundef %seed, ptr noundef %curves, float noundef %amp, i32 noundef %oc, i32 noundef %n, i32 noundef %linesper, float noundef %dBoffset) #1 {
entry:
  %seed.addr = alloca ptr, align 8
  %curves.addr = alloca ptr, align 8
  %amp.addr = alloca float, align 4
  %oc.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %linesper.addr = alloca i32, align 4
  %dBoffset.addr = alloca float, align 4
  %i = alloca i32, align 4
  %post1 = alloca i32, align 4
  %seedptr = alloca i32, align 4
  %posts = alloca ptr, align 8
  %curve = alloca ptr, align 8
  %choice = alloca i32, align 4
  %lin = alloca float, align 4
  store ptr %seed, ptr %seed.addr, align 8
  store ptr %curves, ptr %curves.addr, align 8
  store float %amp, ptr %amp.addr, align 4
  store i32 %oc, ptr %oc.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %linesper, ptr %linesper.addr, align 4
  store float %dBoffset, ptr %dBoffset.addr, align 4
  %0 = load float, ptr %amp.addr, align 4
  %1 = load float, ptr %dBoffset.addr, align 4
  %add = fadd float %0, %1
  %conv = fpext float %add to double
  %sub = fsub double %conv, 3.000000e+01
  %mul = fmul double %sub, 0x3FB99999A0000000
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, ptr %choice, align 4
  %2 = load i32, ptr %choice, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %choice, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %choice, align 4
  %4 = load i32, ptr %choice, align 4
  %cmp3 = icmp sgt i32 %4, 7
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  %5 = load i32, ptr %choice, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ 7, %cond.true5 ], [ %5, %cond.false6 ]
  store i32 %cond8, ptr %choice, align 4
  %6 = load ptr, ptr %curves.addr, align 8
  %7 = load i32, ptr %choice, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %posts, align 8
  %9 = load ptr, ptr %posts, align 8
  %add.ptr = getelementptr inbounds float, ptr %9, i64 2
  store ptr %add.ptr, ptr %curve, align 8
  %10 = load ptr, ptr %posts, align 8
  %arrayidx9 = getelementptr inbounds float, ptr %10, i64 1
  %11 = load float, ptr %arrayidx9, align 4
  %conv10 = fptosi float %11 to i32
  store i32 %conv10, ptr %post1, align 4
  %12 = load i32, ptr %oc.addr, align 4
  %conv11 = sitofp i32 %12 to float
  %13 = load ptr, ptr %posts, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %13, i64 0
  %14 = load float, ptr %arrayidx12, align 4
  %sub13 = fsub float %14, 1.600000e+01
  %15 = load i32, ptr %linesper.addr, align 4
  %conv14 = sitofp i32 %15 to float
  %16 = call float @llvm.fmuladd.f32(float %sub13, float %conv14, float %conv11)
  %17 = load i32, ptr %linesper.addr, align 4
  %shr = ashr i32 %17, 1
  %conv16 = sitofp i32 %shr to float
  %sub17 = fsub float %16, %conv16
  %conv18 = fptosi float %sub17 to i32
  store i32 %conv18, ptr %seedptr, align 4
  %18 = load ptr, ptr %posts, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %18, i64 0
  %19 = load float, ptr %arrayidx19, align 4
  %conv20 = fptosi float %19 to i32
  store i32 %conv20, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end7
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %post1, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %seedptr, align 4
  %cmp23 = icmp sgt i32 %22, 0
  br i1 %cmp23, label %if.then, label %if.end35

if.then:                                          ; preds = %for.body
  %23 = load float, ptr %amp.addr, align 4
  %24 = load ptr, ptr %curve, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %24, i64 %idxprom25
  %26 = load float, ptr %arrayidx26, align 4
  %add27 = fadd float %23, %26
  store float %add27, ptr %lin, align 4
  %27 = load ptr, ptr %seed.addr, align 8
  %28 = load i32, ptr %seedptr, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %27, i64 %idxprom28
  %29 = load float, ptr %arrayidx29, align 4
  %30 = load float, ptr %lin, align 4
  %cmp30 = fcmp olt float %29, %30
  br i1 %cmp30, label %if.then32, label %if.end

if.then32:                                        ; preds = %if.then
  %31 = load float, ptr %lin, align 4
  %32 = load ptr, ptr %seed.addr, align 8
  %33 = load i32, ptr %seedptr, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %32, i64 %idxprom33
  store float %31, ptr %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then32, %if.then
  br label %if.end35

if.end35:                                         ; preds = %if.end, %for.body
  %34 = load i32, ptr %linesper.addr, align 4
  %35 = load i32, ptr %seedptr, align 4
  %add36 = add nsw i32 %35, %34
  store i32 %add36, ptr %seedptr, align 4
  %36 = load i32, ptr %seedptr, align 4
  %37 = load i32, ptr %n.addr, align 4
  %cmp37 = icmp sge i32 %36, %37
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %for.end

if.end40:                                         ; preds = %if.end35
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then39, %for.cond
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
