; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @MemOSAlloc(i32 noundef %nBytes) #0 {
entry:
  %retval = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %pChunk = alloca ptr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  %0 = load i32, ptr %nBytes.addr, align 4
  %conv = zext i32 %0 to i64
  %add = add i64 %conv, 4
  %conv1 = trunc i64 %add to i32
  %call = call ptr @SyOSHeapAlloc(i32 noundef %conv1)
  store ptr %call, ptr %pChunk, align 8
  %1 = load ptr, ptr %pChunk, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nBytes.addr, align 4
  %3 = load ptr, ptr %pChunk, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  store i32 %2, ptr %arrayidx, align 4
  %4 = load ptr, ptr %pChunk, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 1
  store ptr %arrayidx3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyOSHeapAlloc(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
