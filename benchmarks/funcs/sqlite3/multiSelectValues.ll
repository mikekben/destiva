; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.733 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.734 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @selectInnerLoop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @multiSelectValues(ptr noundef %pParse, ptr noundef %p, ptr noundef %pDest) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %nRow = alloca i32, align 4
  %rc = alloca i32, align 4
  %bShowAll = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 1, ptr %nRow, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %pLimit, align 8
  %cmp = icmp eq ptr %1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %bShowAll, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pPrior, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %p.addr, align 8
  %pPrior3 = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pPrior3, align 8
  store ptr %5, ptr %p.addr, align 8
  %6 = load i32, ptr %bShowAll, align 4
  %7 = load i32, ptr %nRow, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %nRow, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load i32, ptr %nRow, align 4
  %10 = load i32, ptr %nRow, align 4
  %cmp4 = icmp eq i32 %10, 1
  %11 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, ptr @.str.3, ptr @.str.734
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %8, i8 noundef zeroext 0, ptr noundef @.str.733, i32 noundef %9, ptr noundef %cond)
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %do.end
  %12 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %15 = load ptr, ptr %pDest.addr, align 8
  call void @selectInnerLoop(ptr noundef %13, ptr noundef %14, i32 noundef -1, ptr noundef null, ptr noundef null, ptr noundef %15, i32 noundef 1, i32 noundef 1)
  %16 = load i32, ptr %bShowAll, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.body
  br label %while.end

if.end8:                                          ; preds = %while.body
  %17 = load i32, ptr %nRow, align 4
  %conv9 = trunc i32 %17 to i16
  %18 = load ptr, ptr %p.addr, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 2
  store i16 %conv9, ptr %nSelectRow, align 2
  %19 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 14
  %20 = load ptr, ptr %pNext, align 8
  store ptr %20, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then7, %while.cond
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
