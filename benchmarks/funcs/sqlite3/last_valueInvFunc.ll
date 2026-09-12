; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LastValueCtx = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_value_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @last_valueInvFunc(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %1 = load ptr, ptr %apArg.addr, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %2, i32 noundef 16)
  store ptr %call, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %nVal = getelementptr inbounds nuw %struct.LastValueCtx, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nVal, align 8
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %nVal, align 8
  %6 = load ptr, ptr %p, align 8
  %nVal1 = getelementptr inbounds nuw %struct.LastValueCtx, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nVal1, align 8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %p, align 8
  %pVal = getelementptr inbounds nuw %struct.LastValueCtx, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVal, align 8
  call void @sqlite3_value_free(ptr noundef %9)
  %10 = load ptr, ptr %p, align 8
  %pVal3 = getelementptr inbounds nuw %struct.LastValueCtx, ptr %10, i32 0, i32 0
  store ptr null, ptr %pVal3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
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
