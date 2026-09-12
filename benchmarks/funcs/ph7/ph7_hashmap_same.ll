; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_same(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_array(ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx6, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %x, align 8
  store ptr %8, ptr %p1, align 8
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx7, align 8
  %x8 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %x8, align 8
  store ptr %11, ptr %p2, align 8
  %12 = load ptr, ptr %p1, align 8
  %13 = load ptr, ptr %p2, align 8
  %cmp9 = icmp eq ptr %12, %13
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, ptr %rc, align 4
  %14 = load ptr, ptr %pCtx.addr, align 8
  %15 = load i32, ptr %rc, align 4
  %call10 = call i32 @ph7_result_bool(ptr noundef %14, i32 noundef %15)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
