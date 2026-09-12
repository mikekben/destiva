; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_compare(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_in_array(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pNeedle = alloca ptr, align 8
  %bStrict = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %pNeedle, align 8
  store i32 0, ptr %bStrict, align 4
  %4 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp sgt i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_to_bool(ptr noundef %6)
  store i32 %call4, ptr %bStrict, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_is_array(ptr noundef %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end5
  %9 = load ptr, ptr %pNeedle, align 8
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx9, align 8
  %12 = load i32, ptr %bStrict, align 4
  %call10 = call i32 @ph7_value_compare(ptr noundef %9, ptr noundef %11, i32 noundef %12)
  store i32 %call10, ptr %rc, align 4
  %13 = load ptr, ptr %pCtx.addr, align 8
  %14 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %14, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef %conv)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end5
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx14, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %x, align 8
  %18 = load ptr, ptr %pNeedle, align 8
  %19 = load i32, ptr %bStrict, align 4
  %call15 = call i32 @HashmapFindValue(ptr noundef %17, ptr noundef %18, ptr noundef null, i32 noundef %19)
  store i32 %call15, ptr %rc, align 4
  %20 = load ptr, ptr %pCtx.addr, align 8
  %21 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %21, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef %conv17)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then8, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapFindValue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
