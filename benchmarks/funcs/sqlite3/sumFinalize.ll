; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SumCtx = type { double, i64, i64, i8, i8 }

@.str.996 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sumFinalize(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %cnt = getelementptr inbounds nuw %struct.SumCtx, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %cnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %p, align 8
  %overflow = getelementptr inbounds nuw %struct.SumCtx, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %overflow, align 8
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %6, ptr noundef @.str.996, i32 noundef -1)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %p, align 8
  %approx = getelementptr inbounds nuw %struct.SumCtx, ptr %7, i32 0, i32 4
  %8 = load i8, ptr %approx, align 1
  %tobool3 = icmp ne i8 %8, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %context.addr, align 8
  %10 = load ptr, ptr %p, align 8
  %rSum = getelementptr inbounds nuw %struct.SumCtx, ptr %10, i32 0, i32 0
  %11 = load double, ptr %rSum, align 8
  call void @sqlite3_result_double(ptr noundef %9, double noundef %11)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %12 = load ptr, ptr %context.addr, align 8
  %13 = load ptr, ptr %p, align 8
  %iSum = getelementptr inbounds nuw %struct.SumCtx, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %iSum, align 8
  call void @sqlite3_result_int64(ptr noundef %12, i64 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %land.lhs.true, %entry
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
