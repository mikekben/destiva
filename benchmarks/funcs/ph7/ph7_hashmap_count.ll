; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_count(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %bRecursive = alloca i32, align 4
  %iCount = alloca i64, align 8
  %res = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %bRecursive, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_int(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_is_array(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_is_null(ptr noundef %5)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %res, align 4
  %6 = load ptr, ptr %pCtx.addr, align 8
  %7 = load i32, ptr %res, align 4
  %call6 = call i32 @ph7_result_int(ptr noundef %6, i32 noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp sgt i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @ph7_value_to_int(ptr noundef %10)
  %cmp12 = icmp eq i32 %call11, 1
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, ptr %bRecursive, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx14, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %x, align 8
  %14 = load i32, ptr %bRecursive, align 4
  %call15 = call i64 @HashmapCount(ptr noundef %13, i32 noundef %14, i32 noundef 0)
  store i64 %call15, ptr %iCount, align 8
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load i64, ptr %iCount, align 8
  %call16 = call i32 @ph7_result_int64(ptr noundef %15, i64 noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then2, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i64 @HashmapCount(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
