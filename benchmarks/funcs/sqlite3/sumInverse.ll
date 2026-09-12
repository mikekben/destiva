; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SumCtx = type { double, i64, i64, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_value_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_numeric_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sumInverse(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %type = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 32)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @sqlite3_value_numeric_type(ptr noundef %3)
  store i32 %call1, ptr %type, align 4
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %type, align 4
  %cmp = icmp ne i32 %5, 5
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p, align 8
  %cnt = getelementptr inbounds nuw %struct.SumCtx, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %cnt, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, ptr %cnt, align 8
  %8 = load i32, ptr %type, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %9 = load ptr, ptr %p, align 8
  %approx = getelementptr inbounds nuw %struct.SumCtx, ptr %9, i32 0, i32 4
  %10 = load i8, ptr %approx, align 1
  %conv = zext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true3
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i64 @sqlite3_value_int64(ptr noundef %12)
  store i64 %call8, ptr %v, align 8
  %13 = load i64, ptr %v, align 8
  %conv9 = sitofp i64 %13 to double
  %14 = load ptr, ptr %p, align 8
  %rSum = getelementptr inbounds nuw %struct.SumCtx, ptr %14, i32 0, i32 0
  %15 = load double, ptr %rSum, align 8
  %sub = fsub double %15, %conv9
  store double %sub, ptr %rSum, align 8
  %16 = load i64, ptr %v, align 8
  %17 = load ptr, ptr %p, align 8
  %iSum = getelementptr inbounds nuw %struct.SumCtx, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %iSum, align 8
  %sub10 = sub nsw i64 %18, %16
  store i64 %sub10, ptr %iSum, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %19 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx11, align 8
  %call12 = call double @sqlite3_value_double(ptr noundef %20)
  %21 = load ptr, ptr %p, align 8
  %rSum13 = getelementptr inbounds nuw %struct.SumCtx, ptr %21, i32 0, i32 0
  %22 = load double, ptr %rSum13, align 8
  %sub14 = fsub double %22, %call12
  store double %sub14, ptr %rSum13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true, %entry
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
