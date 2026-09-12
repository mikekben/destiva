; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @open(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @UnixFile_Open(ptr noundef %zPath, i32 noundef %iOpenMode, ptr noundef %pResource, ptr noundef %ppHandle) #1 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %iOpenMode.addr = alloca i32, align 4
  %pResource.addr = alloca ptr, align 8
  %ppHandle.addr = alloca ptr, align 8
  %iOpen = alloca i32, align 4
  %fd = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %iOpenMode, ptr %iOpenMode.addr, align 4
  store ptr %pResource, ptr %pResource.addr, align 8
  store ptr %ppHandle, ptr %ppHandle.addr, align 8
  store i32 0, ptr %iOpen, align 4
  %0 = load i32, ptr %iOpenMode.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 64, ptr %iOpen, align 4
  %1 = load i32, ptr %iOpenMode.addr, align 4
  %and1 = and i32 %1, 16
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = load i32, ptr %iOpen, align 4
  %or = or i32 %2, 512
  store i32 %or, ptr %iOpen, align 4
  store ptr null, ptr %pResource.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end13

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %iOpenMode.addr, align 4
  %and4 = and i32 %3, 64
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 192, ptr %iOpen, align 4
  br label %if.end12

if.else7:                                         ; preds = %if.else
  %4 = load i32, ptr %iOpenMode.addr, align 4
  %and8 = and i32 %4, 16
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else7
  store i32 514, ptr %iOpen, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %5 = load i32, ptr %iOpenMode.addr, align 4
  %and14 = and i32 %5, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.end13
  %6 = load i32, ptr %iOpen, align 4
  %and17 = and i32 %6, -1
  store i32 %and17, ptr %iOpen, align 4
  %7 = load i32, ptr %iOpen, align 4
  %or18 = or i32 %7, 2
  store i32 %or18, ptr %iOpen, align 4
  br label %if.end26

if.else19:                                        ; preds = %if.end13
  %8 = load i32, ptr %iOpenMode.addr, align 4
  %and20 = and i32 %8, 2
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.else19
  %9 = load i32, ptr %iOpen, align 4
  %and23 = and i32 %9, -1
  store i32 %and23, ptr %iOpen, align 4
  %10 = load i32, ptr %iOpen, align 4
  %or24 = or i32 %10, 1
  store i32 %or24, ptr %iOpen, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then16
  %11 = load i32, ptr %iOpenMode.addr, align 4
  %and27 = and i32 %11, 32
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %12 = load i32, ptr %iOpen, align 4
  %or30 = or i32 %12, 1024
  store i32 %or30, ptr %iOpen, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %13 = load ptr, ptr %zPath.addr, align 8
  %14 = load i32, ptr %iOpen, align 4
  %call = call i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef %14, i32 noundef 416)
  store i32 %call, ptr %fd, align 4
  %15 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end31
  store i32 -1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end31
  %16 = load i32, ptr %fd, align 4
  %conv = sext i32 %16 to i64
  %17 = inttoptr i64 %conv to ptr
  %18 = load ptr, ptr %ppHandle.addr, align 8
  store ptr %17, ptr %18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then32
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
