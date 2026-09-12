; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NtileCtx = type { i64, i64, i64 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @ntileValueFunc(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nSize = alloca i32, align 4
  %nLarge = alloca i64, align 8
  %iSmall = alloca i64, align 8
  %iRow11 = alloca i64, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 24)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %nParam = getelementptr inbounds nuw %struct.NtileCtx, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %nParam, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %p, align 8
  %nTotal = getelementptr inbounds nuw %struct.NtileCtx, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %nTotal, align 8
  %6 = load ptr, ptr %p, align 8
  %nParam1 = getelementptr inbounds nuw %struct.NtileCtx, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %nParam1, align 8
  %div = sdiv i64 %5, %7
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %nSize, align 4
  %8 = load i32, ptr %nSize, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %pCtx.addr, align 8
  %10 = load ptr, ptr %p, align 8
  %iRow = getelementptr inbounds nuw %struct.NtileCtx, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %iRow, align 8
  %add = add nsw i64 %11, 1
  call void @sqlite3_result_int64(ptr noundef %9, i64 noundef %add)
  br label %if.end26

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %p, align 8
  %nTotal5 = getelementptr inbounds nuw %struct.NtileCtx, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %nTotal5, align 8
  %14 = load ptr, ptr %p, align 8
  %nParam6 = getelementptr inbounds nuw %struct.NtileCtx, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %nParam6, align 8
  %16 = load i32, ptr %nSize, align 4
  %conv7 = sext i32 %16 to i64
  %mul = mul nsw i64 %15, %conv7
  %sub = sub nsw i64 %13, %mul
  store i64 %sub, ptr %nLarge, align 8
  %17 = load i64, ptr %nLarge, align 8
  %18 = load i32, ptr %nSize, align 4
  %add8 = add nsw i32 %18, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = mul nsw i64 %17, %conv9
  store i64 %mul10, ptr %iSmall, align 8
  %19 = load ptr, ptr %p, align 8
  %iRow12 = getelementptr inbounds nuw %struct.NtileCtx, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %iRow12, align 8
  store i64 %20, ptr %iRow11, align 8
  %21 = load i64, ptr %iRow11, align 8
  %22 = load i64, ptr %iSmall, align 8
  %cmp13 = icmp slt i64 %21, %22
  br i1 %cmp13, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load i64, ptr %iRow11, align 8
  %25 = load i32, ptr %nSize, align 4
  %add16 = add nsw i32 %25, 1
  %conv17 = sext i32 %add16 to i64
  %div18 = sdiv i64 %24, %conv17
  %add19 = add nsw i64 1, %div18
  call void @sqlite3_result_int64(ptr noundef %23, i64 noundef %add19)
  br label %if.end

if.else20:                                        ; preds = %if.else
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load i64, ptr %nLarge, align 8
  %add21 = add nsw i64 1, %27
  %28 = load i64, ptr %iRow11, align 8
  %29 = load i64, ptr %iSmall, align 8
  %sub22 = sub nsw i64 %28, %29
  %30 = load i32, ptr %nSize, align 4
  %conv23 = sext i32 %30 to i64
  %div24 = sdiv i64 %sub22, %conv23
  %add25 = add nsw i64 %add21, %div24
  call void @sqlite3_result_int64(ptr noundef %26, i64 noundef %add25)
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then15
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then4
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %entry
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
