; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_lpc_predict(ptr noundef %coeff, ptr noundef %prime, i32 noundef %m, ptr noundef %data, i64 noundef %n) #0 {
entry:
  %coeff.addr = alloca ptr, align 8
  %prime.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %o = alloca i64, align 8
  %p = alloca i64, align 8
  %y = alloca float, align 4
  %work = alloca ptr, align 8
  store ptr %coeff, ptr %coeff.addr, align 8
  store ptr %prime, ptr %prime.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i32, ptr %m.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %n.addr, align 8
  %add = add nsw i64 %conv, %1
  %mul = mul i64 4, %add
  %2 = alloca i8, i64 %mul, align 16
  store ptr %2, ptr %work, align 8
  %3 = load ptr, ptr %prime.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, ptr %i, align 8
  %5 = load i32, ptr %m.addr, align 4
  %conv1 = sext i32 %5 to i64
  %cmp = icmp slt i64 %4, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %work, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %6, i64 %7
  store float 0.000000e+00, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %if.else
  %9 = load i64, ptr %i, align 8
  %10 = load i32, ptr %m.addr, align 4
  %conv4 = sext i32 %10 to i64
  %cmp5 = icmp slt i64 %9, %conv4
  br i1 %cmp5, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %prime.addr, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %11, i64 %12
  %13 = load float, ptr %arrayidx8, align 4
  %14 = load ptr, ptr %work, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds float, ptr %14, i64 %15
  store float %13, ptr %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %16 = load i64, ptr %i, align 8
  %inc11 = add nsw i64 %16, 1
  store i64 %inc11, ptr %i, align 8
  br label %for.cond3, !llvm.loop !8

for.end12:                                        ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end12, %for.end
  store i64 0, ptr %i, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc32, %if.end
  %17 = load i64, ptr %i, align 8
  %18 = load i64, ptr %n.addr, align 8
  %cmp14 = icmp slt i64 %17, %18
  br i1 %cmp14, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond13
  store float 0.000000e+00, ptr %y, align 4
  %19 = load i64, ptr %i, align 8
  store i64 %19, ptr %o, align 8
  %20 = load i32, ptr %m.addr, align 4
  %conv17 = sext i32 %20 to i64
  store i64 %conv17, ptr %p, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.body16
  %21 = load i64, ptr %j, align 8
  %22 = load i32, ptr %m.addr, align 4
  %conv19 = sext i32 %22 to i64
  %cmp20 = icmp slt i64 %21, %conv19
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond18
  %23 = load ptr, ptr %work, align 8
  %24 = load i64, ptr %o, align 8
  %inc23 = add nsw i64 %24, 1
  store i64 %inc23, ptr %o, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %23, i64 %24
  %25 = load float, ptr %arrayidx24, align 4
  %26 = load ptr, ptr %coeff.addr, align 8
  %27 = load i64, ptr %p, align 8
  %dec = add nsw i64 %27, -1
  store i64 %dec, ptr %p, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %26, i64 %dec
  %28 = load float, ptr %arrayidx25, align 4
  %29 = load float, ptr %y, align 4
  %neg = fneg float %25
  %30 = call float @llvm.fmuladd.f32(float %neg, float %28, float %29)
  store float %30, ptr %y, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %31 = load i64, ptr %j, align 8
  %inc28 = add nsw i64 %31, 1
  store i64 %inc28, ptr %j, align 8
  br label %for.cond18, !llvm.loop !9

for.end29:                                        ; preds = %for.cond18
  %32 = load float, ptr %y, align 4
  %33 = load ptr, ptr %work, align 8
  %34 = load i64, ptr %o, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %33, i64 %34
  store float %32, ptr %arrayidx30, align 4
  %35 = load ptr, ptr %data.addr, align 8
  %36 = load i64, ptr %i, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %35, i64 %36
  store float %32, ptr %arrayidx31, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.end29
  %37 = load i64, ptr %i, align 8
  %inc33 = add nsw i64 %37, 1
  store i64 %inc33, ptr %i, align 8
  br label %for.cond13, !llvm.loop !10

for.end34:                                        ; preds = %for.cond13
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
