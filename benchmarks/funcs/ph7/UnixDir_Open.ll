; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @UnixDir_Open(ptr noundef %zPath, ptr noundef %pResource, ptr noundef %ppHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %pResource.addr = alloca ptr, align 8
  %ppHandle.addr = alloca ptr, align 8
  %pDir = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pResource, ptr %pResource.addr, align 8
  store ptr %ppHandle, ptr %ppHandle.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call noalias ptr @opendir(ptr noundef %0)
  store ptr %call, ptr %pDir, align 8
  %1 = load ptr, ptr %pDir, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %pResource.addr, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pDir, align 8
  %3 = load ptr, ptr %ppHandle.addr, align 8
  store ptr %2, ptr %3, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare noalias ptr @opendir(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
