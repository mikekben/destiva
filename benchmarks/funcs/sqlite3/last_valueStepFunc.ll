; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LastValueCtx = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_dup(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_value_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @last_valueStepFunc(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 16)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %pVal = getelementptr inbounds nuw %struct.LastValueCtx, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pVal, align 8
  call void @sqlite3_value_free(ptr noundef %4)
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_dup(ptr noundef %6)
  %7 = load ptr, ptr %p, align 8
  %pVal2 = getelementptr inbounds nuw %struct.LastValueCtx, ptr %7, i32 0, i32 0
  store ptr %call1, ptr %pVal2, align 8
  %8 = load ptr, ptr %p, align 8
  %pVal3 = getelementptr inbounds nuw %struct.LastValueCtx, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVal3, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %p, align 8
  %nVal = getelementptr inbounds nuw %struct.LastValueCtx, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nVal, align 8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %nVal, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
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
