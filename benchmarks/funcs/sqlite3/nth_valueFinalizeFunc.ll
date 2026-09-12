; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NthValueCtx = type { i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_value_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @nth_valueFinalizeFunc(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %pValue = getelementptr inbounds nuw %struct.NthValueCtx, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pValue, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pCtx.addr, align 8
  %5 = load ptr, ptr %p, align 8
  %pValue2 = getelementptr inbounds nuw %struct.NthValueCtx, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pValue2, align 8
  call void @sqlite3_result_value(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %p, align 8
  %pValue3 = getelementptr inbounds nuw %struct.NthValueCtx, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pValue3, align 8
  call void @sqlite3_value_free(ptr noundef %8)
  %9 = load ptr, ptr %p, align 8
  %pValue4 = getelementptr inbounds nuw %struct.NthValueCtx, ptr %9, i32 0, i32 1
  store ptr null, ptr %pValue4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
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
