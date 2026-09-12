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
declare hidden i32 @sqlite3AddInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sumStep(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
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
  br i1 %tobool, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %type, align 4
  %cmp = icmp ne i32 %5, 5
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p, align 8
  %cnt = getelementptr inbounds nuw %struct.SumCtx, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %cnt, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %cnt, align 8
  %8 = load i32, ptr %type, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i64 @sqlite3_value_int64(ptr noundef %10)
  store i64 %call5, ptr %v, align 8
  %11 = load i64, ptr %v, align 8
  %conv = sitofp i64 %11 to double
  %12 = load ptr, ptr %p, align 8
  %rSum = getelementptr inbounds nuw %struct.SumCtx, ptr %12, i32 0, i32 0
  %13 = load double, ptr %rSum, align 8
  %add = fadd double %13, %conv
  store double %add, ptr %rSum, align 8
  %14 = load ptr, ptr %p, align 8
  %approx = getelementptr inbounds nuw %struct.SumCtx, ptr %14, i32 0, i32 4
  %15 = load i8, ptr %approx, align 1
  %conv6 = zext i8 %15 to i32
  %16 = load ptr, ptr %p, align 8
  %overflow = getelementptr inbounds nuw %struct.SumCtx, ptr %16, i32 0, i32 3
  %17 = load i8, ptr %overflow, align 8
  %conv7 = zext i8 %17 to i32
  %or = or i32 %conv6, %conv7
  %cmp8 = icmp eq i32 %or, 0
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %if.then3
  %18 = load ptr, ptr %p, align 8
  %iSum = getelementptr inbounds nuw %struct.SumCtx, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %v, align 8
  %call11 = call i32 @sqlite3AddInt64(ptr noundef %iSum, i64 noundef %19)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true10
  %20 = load ptr, ptr %p, align 8
  %overflow14 = getelementptr inbounds nuw %struct.SumCtx, ptr %20, i32 0, i32 3
  store i8 1, ptr %overflow14, align 8
  %21 = load ptr, ptr %p, align 8
  %approx15 = getelementptr inbounds nuw %struct.SumCtx, ptr %21, i32 0, i32 4
  store i8 1, ptr %approx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true10, %if.then3
  br label %if.end21

if.else:                                          ; preds = %if.then
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx16, align 8
  %call17 = call double @sqlite3_value_double(ptr noundef %23)
  %24 = load ptr, ptr %p, align 8
  %rSum18 = getelementptr inbounds nuw %struct.SumCtx, ptr %24, i32 0, i32 0
  %25 = load double, ptr %rSum18, align 8
  %add19 = fadd double %25, %call17
  store double %add19, ptr %rSum18, align 8
  %26 = load ptr, ptr %p, align 8
  %approx20 = getelementptr inbounds nuw %struct.SumCtx, ptr %26, i32 0, i32 4
  store i8 1, ptr %approx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %entry
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
