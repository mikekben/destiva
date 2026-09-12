; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_object_walk(ptr noundef %pObject, ptr noundef %xWalk, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pObject.addr = alloca ptr, align 8
  %xWalk.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pObject, ptr %pObject.addr, align 8
  store ptr %xWalk, ptr %xWalk.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %xWalk.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pObject.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iFlags, align 8
  %and = and i32 %2, 128
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pObject.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %x, align 8
  %5 = load ptr, ptr %xWalk.addr, align 8
  %6 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 @PH7_ClassInstanceWalk(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %7, 0
  %8 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 -10, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstanceWalk(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
