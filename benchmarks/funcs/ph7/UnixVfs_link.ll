; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @UnixVfs_link(ptr noundef %zSrc, ptr noundef %zTarget, i32 noundef %is_sym) #0 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %zTarget.addr = alloca ptr, align 8
  %is_sym.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store ptr %zTarget, ptr %zTarget.addr, align 8
  store i32 %is_sym, ptr %is_sym.addr, align 4
  %0 = load i32, ptr %is_sym.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zSrc.addr, align 8
  %2 = load ptr, ptr %zTarget.addr, align 8
  %call = call i32 @symlink(ptr noundef %1, ptr noundef %2) #2
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %zSrc.addr, align 8
  %4 = load ptr, ptr %zTarget.addr, align 8
  %call1 = call i32 @link(ptr noundef %3, ptr noundef %4) #2
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %5, 0
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 -1
  ret i32 %cond
}

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
