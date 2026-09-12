; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @_ov_splice(ptr noundef %pcm, ptr noundef %lappcm, i32 noundef %n1, i32 noundef %n2, i32 noundef %ch1, i32 noundef %ch2, ptr noundef %w1, ptr noundef %w2) #0 {
entry:
  %pcm.addr = alloca ptr, align 8
  %lappcm.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %ch1.addr = alloca i32, align 4
  %ch2.addr = alloca i32, align 4
  %w1.addr = alloca ptr, align 8
  %w2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca ptr, align 8
  %n = alloca i32, align 4
  %s = alloca ptr, align 8
  %d = alloca ptr, align 8
  %wd = alloca float, align 4
  %ws = alloca float, align 4
  %d28 = alloca ptr, align 8
  %wd35 = alloca float, align 4
  store ptr %pcm, ptr %pcm.addr, align 8
  store ptr %lappcm, ptr %lappcm.addr, align 8
  store i32 %n1, ptr %n1.addr, align 4
  store i32 %n2, ptr %n2.addr, align 4
  store i32 %ch1, ptr %ch1.addr, align 4
  store i32 %ch2, ptr %ch2.addr, align 4
  store ptr %w1, ptr %w1.addr, align 8
  store ptr %w2, ptr %w2.addr, align 8
  %0 = load ptr, ptr %w1.addr, align 8
  store ptr %0, ptr %w, align 8
  %1 = load i32, ptr %n1.addr, align 4
  store i32 %1, ptr %n, align 4
  %2 = load i32, ptr %n1.addr, align 4
  %3 = load i32, ptr %n2.addr, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %n2.addr, align 4
  store i32 %4, ptr %n, align 4
  %5 = load ptr, ptr %w2.addr, align 8
  store ptr %5, ptr %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %if.end
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %ch1.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %ch2.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %10, label %for.body, label %for.end23

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %lappcm.addr, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  store ptr %13, ptr %s, align 8
  %14 = load ptr, ptr %pcm.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %14, i64 %idxprom3
  %16 = load ptr, ptr %arrayidx4, align 8
  store ptr %16, ptr %d, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %n, align 4
  %cmp6 = icmp slt i32 %17, %18
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %19 = load ptr, ptr %w, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %19, i64 %idxprom8
  %21 = load float, ptr %arrayidx9, align 4
  %22 = load ptr, ptr %w, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %22, i64 %idxprom10
  %24 = load float, ptr %arrayidx11, align 4
  %mul = fmul float %21, %24
  store float %mul, ptr %wd, align 4
  %25 = load float, ptr %wd, align 4
  %conv = fpext float %25 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv12 = fptrunc double %sub to float
  store float %conv12, ptr %ws, align 4
  %26 = load ptr, ptr %d, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %26, i64 %idxprom13
  %28 = load float, ptr %arrayidx14, align 4
  %29 = load float, ptr %wd, align 4
  %30 = load ptr, ptr %s, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %31 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %30, i64 %idxprom16
  %32 = load float, ptr %arrayidx17, align 4
  %33 = load float, ptr %ws, align 4
  %mul18 = fmul float %32, %33
  %34 = call float @llvm.fmuladd.f32(float %28, float %29, float %mul18)
  %35 = load ptr, ptr %d, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %36 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %35, i64 %idxprom19
  store float %34, ptr %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond5, !llvm.loop !6

for.end:                                          ; preds = %for.cond5
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %38 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %38, 1
  store i32 %inc22, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end23:                                        ; preds = %land.end
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc49, %for.end23
  %39 = load i32, ptr %j, align 4
  %40 = load i32, ptr %ch2.addr, align 4
  %cmp25 = icmp slt i32 %39, %40
  br i1 %cmp25, label %for.body27, label %for.end51

for.body27:                                       ; preds = %for.cond24
  %41 = load ptr, ptr %pcm.addr, align 8
  %42 = load i32, ptr %j, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %41, i64 %idxprom29
  %43 = load ptr, ptr %arrayidx30, align 8
  store ptr %43, ptr %d28, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc46, %for.body27
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %n, align 4
  %cmp32 = icmp slt i32 %44, %45
  br i1 %cmp32, label %for.body34, label %for.end48

for.body34:                                       ; preds = %for.cond31
  %46 = load ptr, ptr %w, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %46, i64 %idxprom36
  %48 = load float, ptr %arrayidx37, align 4
  %49 = load ptr, ptr %w, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %50 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %49, i64 %idxprom38
  %51 = load float, ptr %arrayidx39, align 4
  %mul40 = fmul float %48, %51
  store float %mul40, ptr %wd35, align 4
  %52 = load ptr, ptr %d28, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds float, ptr %52, i64 %idxprom41
  %54 = load float, ptr %arrayidx42, align 4
  %55 = load float, ptr %wd35, align 4
  %mul43 = fmul float %54, %55
  %56 = load ptr, ptr %d28, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %57 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %56, i64 %idxprom44
  store float %mul43, ptr %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body34
  %58 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %58, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond31, !llvm.loop !9

for.end48:                                        ; preds = %for.cond31
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %59 = load i32, ptr %j, align 4
  %inc50 = add nsw i32 %59, 1
  store i32 %inc50, ptr %j, align 4
  br label %for.cond24, !llvm.loop !10

for.end51:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
