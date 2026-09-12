; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @MemOSRealloc(ptr noundef %pOld, i32 noundef %nBytes) #0 {
entry:
  %retval = alloca ptr, align 8
  %pOld.addr = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %pOldChunk = alloca ptr, align 8
  %pChunk = alloca ptr, align 8
  store ptr %pOld, ptr %pOld.addr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  %0 = load ptr, ptr %pOld.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -4
  store ptr %add.ptr, ptr %pOldChunk, align 8
  %1 = load ptr, ptr %pOldChunk, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %nBytes.addr, align 4
  %cmp = icmp uge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pOld.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pOldChunk, align 8
  %6 = load i32, ptr %nBytes.addr, align 4
  %conv = zext i32 %6 to i64
  %add = add i64 %conv, 4
  %conv1 = trunc i64 %add to i32
  %call = call ptr @SyOSHeapRealloc(ptr noundef %5, i32 noundef %conv1)
  store ptr %call, ptr %pChunk, align 8
  %7 = load ptr, ptr %pChunk, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %nBytes.addr, align 4
  %9 = load ptr, ptr %pChunk, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 0
  store i32 %8, ptr %arrayidx6, align 4
  %10 = load ptr, ptr %pChunk, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 1
  store ptr %arrayidx7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyOSHeapRealloc(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
