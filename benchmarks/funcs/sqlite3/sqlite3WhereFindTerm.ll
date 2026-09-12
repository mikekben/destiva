; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereScan = type { ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, [11 x i32], [11 x i16] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WhereFindTerm(ptr noundef %pWC, i32 noundef %iCur, i32 noundef %iColumn, i64 noundef %notReady, i32 noundef %op, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %iColumn.addr = alloca i32, align 4
  %notReady.addr = alloca i64, align 8
  %op.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %pResult = alloca ptr, align 8
  %p = alloca ptr, align 8
  %scan = alloca %struct.WhereScan, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store i32 %iColumn, ptr %iColumn.addr, align 4
  store i64 %notReady, ptr %notReady.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store ptr null, ptr %pResult, align 8
  %0 = load ptr, ptr %pWC.addr, align 8
  %1 = load i32, ptr %iCur.addr, align 4
  %2 = load i32, ptr %iColumn.addr, align 4
  %3 = load i32, ptr %op.addr, align 4
  %4 = load ptr, ptr %pIdx.addr, align 8
  %call = call ptr @whereScanInit(ptr noundef %scan, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  store ptr %call, ptr %p, align 8
  %5 = load i32, ptr %op.addr, align 4
  %and = and i32 %5, 130
  store i32 %and, ptr %op.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %7, i32 0, i32 11
  %8 = load i64, ptr %prereqRight, align 8
  %9 = load i64, ptr %notReady.addr, align 8
  %and1 = and i64 %8, %9
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %p, align 8
  %prereqRight2 = getelementptr inbounds nuw %struct.WhereTerm, ptr %10, i32 0, i32 11
  %11 = load i64, ptr %prereqRight2, align 8
  %cmp3 = icmp eq i64 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load ptr, ptr %p, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 4
  %13 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %13 to i32
  %14 = load i32, ptr %op.addr, align 4
  %and4 = and i32 %conv, %14
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %p, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %16 = load ptr, ptr %pResult, align 8
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %p, align 8
  store ptr %17, ptr %pResult, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %while.body
  %call13 = call ptr @whereScanNext(ptr noundef %scan)
  store ptr %call13, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %pResult, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanInit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanNext(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
