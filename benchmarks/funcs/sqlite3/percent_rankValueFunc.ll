; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CallCount = type { i64, i64, i64 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @percent_rankValueFunc(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %r = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 24)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %nStep = getelementptr inbounds nuw %struct.CallCount, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %nStep, align 8
  %4 = load ptr, ptr %p, align 8
  %nValue = getelementptr inbounds nuw %struct.CallCount, ptr %4, i32 0, i32 0
  store i64 %3, ptr %nValue, align 8
  %5 = load ptr, ptr %p, align 8
  %nTotal = getelementptr inbounds nuw %struct.CallCount, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %nTotal, align 8
  %cmp = icmp sgt i64 %6, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %p, align 8
  %nValue2 = getelementptr inbounds nuw %struct.CallCount, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %nValue2, align 8
  %conv = sitofp i64 %8 to double
  %9 = load ptr, ptr %p, align 8
  %nTotal3 = getelementptr inbounds nuw %struct.CallCount, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %nTotal3, align 8
  %sub = sub nsw i64 %10, 1
  %conv4 = sitofp i64 %sub to double
  %div = fdiv double %conv, %conv4
  store double %div, ptr %r, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load double, ptr %r, align 8
  call void @sqlite3_result_double(ptr noundef %11, double noundef %12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_double(ptr noundef %13, double noundef 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
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
