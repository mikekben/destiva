; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unlockBtreeIfUnused(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCloseCursor(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pBtree = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pPrev = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %pBtree1 = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pBtree1, align 8
  store ptr %1, ptr %pBtree, align 8
  %2 = load ptr, ptr %pBtree, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCur.addr, align 8
  %pBt2 = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %pBt2, align 8
  store ptr %4, ptr %pBt, align 8
  %5 = load ptr, ptr %pBtree, align 8
  call void @sqlite3BtreeEnter(ptr noundef %5)
  %6 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pCursor, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %cmp = icmp eq ptr %7, %8
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %pCur.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %pNext, align 8
  %11 = load ptr, ptr %pBt, align 8
  %pCursor4 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 2
  store ptr %10, ptr %pCursor4, align 8
  br label %if.end13

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %pBt, align 8
  %pCursor5 = getelementptr inbounds nuw %struct.BtShared, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pCursor5, align 8
  store ptr %13, ptr %pPrev, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %14 = load ptr, ptr %pPrev, align 8
  %pNext6 = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %pNext6, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %cmp7 = icmp eq ptr %15, %16
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %do.body
  %17 = load ptr, ptr %pCur.addr, align 8
  %pNext9 = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %pNext9, align 8
  %19 = load ptr, ptr %pPrev, align 8
  %pNext10 = getelementptr inbounds nuw %struct.BtCursor, ptr %19, i32 0, i32 9
  store ptr %18, ptr %pNext10, align 8
  br label %do.end

if.end:                                           ; preds = %do.body
  %20 = load ptr, ptr %pPrev, align 8
  %pNext11 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pNext11, align 8
  store ptr %21, ptr %pPrev, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %22 = load ptr, ptr %pPrev, align 8
  %tobool12 = icmp ne ptr %22, null
  br i1 %tobool12, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then3
  %23 = load ptr, ptr %pCur.addr, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %23)
  %24 = load ptr, ptr %pBt, align 8
  call void @unlockBtreeIfUnused(ptr noundef %24)
  %25 = load ptr, ptr %pCur.addr, align 8
  %aOverflow = getelementptr inbounds nuw %struct.BtCursor, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %aOverflow, align 8
  call void @sqlite3_free(ptr noundef %26)
  %27 = load ptr, ptr %pCur.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.BtCursor, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %pKey, align 8
  call void @sqlite3_free(ptr noundef %28)
  %29 = load ptr, ptr %pBtree, align 8
  call void @sqlite3BtreeLeave(ptr noundef %29)
  %30 = load ptr, ptr %pCur.addr, align 8
  %pBtree14 = getelementptr inbounds nuw %struct.BtCursor, ptr %30, i32 0, i32 5
  store ptr null, ptr %pBtree14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry
  ret i32 0
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
