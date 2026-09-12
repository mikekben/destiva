; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden float @sum(ptr noundef %scale, i32 noundef %count, ptr noundef %source, ptr noundef %trigger, ptr noundef %reset, i32 noundef %srcstep) #1 {
entry:
  %scale.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %source.addr = alloca ptr, align 8
  %trigger.addr = alloca ptr, align 8
  %reset.addr = alloca ptr, align 8
  %srcstep.addr = alloca i32, align 4
  %total = alloca float, align 4
  store ptr %scale, ptr %scale.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store ptr %source, ptr %source.addr, align 8
  store ptr %trigger, ptr %trigger.addr, align 8
  store ptr %reset, ptr %reset.addr, align 8
  store i32 %srcstep, ptr %srcstep.addr, align 4
  store float 0.000000e+00, ptr %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %count.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %count.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %source.addr, align 8
  %2 = load float, ptr %1, align 4
  %3 = load ptr, ptr %scale.addr, align 8
  %4 = load float, ptr %3, align 4
  %5 = load float, ptr %total, align 4
  %6 = call float @llvm.fmuladd.f32(float %2, float %4, float %5)
  store float %6, ptr %total, align 4
  %7 = load ptr, ptr %source.addr, align 8
  %8 = load ptr, ptr %trigger.addr, align 8
  %cmp = icmp eq ptr %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %reset.addr, align 8
  store ptr %9, ptr %source.addr, align 8
  store i32 1, ptr %srcstep.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, ptr %srcstep.addr, align 4
  %11 = load ptr, ptr %source.addr, align 8
  %idx.ext = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %11, i64 %idx.neg
  store ptr %add.ptr, ptr %source.addr, align 8
  %12 = load ptr, ptr %scale.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw float, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %scale.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load float, ptr %total, align 4
  ret float %13
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
