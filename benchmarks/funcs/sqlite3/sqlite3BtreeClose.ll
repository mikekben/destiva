; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeRollback(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerClose(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeTempSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeClose(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pCursor, align 8
  store ptr %4, ptr %pCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load ptr, ptr %pCur, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pCur, align 8
  store ptr %6, ptr %pTmp, align 8
  %7 = load ptr, ptr %pCur, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %pNext, align 8
  store ptr %8, ptr %pCur, align 8
  %9 = load ptr, ptr %pTmp, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pBtree, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load ptr, ptr %pTmp, align 8
  %call = call i32 @sqlite3BtreeCloseCursor(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %p.addr, align 8
  %call2 = call i32 @sqlite3BtreeRollback(ptr noundef %13, i32 noundef 0, i32 noundef 0)
  %14 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %14)
  %15 = load ptr, ptr %p.addr, align 8
  %sharable = getelementptr inbounds nuw %struct.Btree, ptr %15, i32 0, i32 3
  %16 = load i8, ptr %sharable, align 1
  %tobool3 = icmp ne i8 %16, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %while.end
  %17 = load ptr, ptr %pBt, align 8
  %call4 = call i32 @removeFromSharingList(ptr noundef %17)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %lor.lhs.false, %while.end
  %18 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pPager, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Btree, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %db, align 8
  %call7 = call i32 @sqlite3PagerClose(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %pBt, align 8
  %xFreeSchema = getelementptr inbounds nuw %struct.BtShared, ptr %22, i32 0, i32 20
  %23 = load ptr, ptr %xFreeSchema, align 8
  %tobool8 = icmp ne ptr %23, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.then6
  %24 = load ptr, ptr %pBt, align 8
  %pSchema = getelementptr inbounds nuw %struct.BtShared, ptr %24, i32 0, i32 19
  %25 = load ptr, ptr %pSchema, align 8
  %tobool9 = icmp ne ptr %25, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %pBt, align 8
  %xFreeSchema11 = getelementptr inbounds nuw %struct.BtShared, ptr %26, i32 0, i32 20
  %27 = load ptr, ptr %xFreeSchema11, align 8
  %28 = load ptr, ptr %pBt, align 8
  %pSchema12 = getelementptr inbounds nuw %struct.BtShared, ptr %28, i32 0, i32 19
  %29 = load ptr, ptr %pSchema12, align 8
  call void %27(ptr noundef %29)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true, %if.then6
  %30 = load ptr, ptr %pBt, align 8
  %pSchema14 = getelementptr inbounds nuw %struct.BtShared, ptr %30, i32 0, i32 19
  %31 = load ptr, ptr %pSchema14, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %31)
  %32 = load ptr, ptr %pBt, align 8
  call void @freeTempSpace(ptr noundef %32)
  %33 = load ptr, ptr %pBt, align 8
  call void @sqlite3_free(ptr noundef %33)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %lor.lhs.false
  %34 = load ptr, ptr %p.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.Btree, ptr %34, i32 0, i32 10
  %35 = load ptr, ptr %pPrev, align 8
  %tobool16 = icmp ne ptr %35, null
  br i1 %tobool16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  %36 = load ptr, ptr %p.addr, align 8
  %pNext18 = getelementptr inbounds nuw %struct.Btree, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %pNext18, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %pPrev19 = getelementptr inbounds nuw %struct.Btree, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %pPrev19, align 8
  %pNext20 = getelementptr inbounds nuw %struct.Btree, ptr %39, i32 0, i32 9
  store ptr %37, ptr %pNext20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15
  %40 = load ptr, ptr %p.addr, align 8
  %pNext22 = getelementptr inbounds nuw %struct.Btree, ptr %40, i32 0, i32 9
  %41 = load ptr, ptr %pNext22, align 8
  %tobool23 = icmp ne ptr %41, null
  br i1 %tobool23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end21
  %42 = load ptr, ptr %p.addr, align 8
  %pPrev25 = getelementptr inbounds nuw %struct.Btree, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %pPrev25, align 8
  %44 = load ptr, ptr %p.addr, align 8
  %pNext26 = getelementptr inbounds nuw %struct.Btree, ptr %44, i32 0, i32 9
  %45 = load ptr, ptr %pNext26, align 8
  %pPrev27 = getelementptr inbounds nuw %struct.Btree, ptr %45, i32 0, i32 10
  store ptr %43, ptr %pPrev27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21
  %46 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %46)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCloseCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @removeFromSharingList(ptr noundef) #0

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
