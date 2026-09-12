; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerRollback(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @autoVacuumCommit(ptr noundef %pBt) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %nFin = alloca i32, align 4
  %nFree = alloca i32, align 4
  %iFree = alloca i32, align 4
  %nOrig = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pBt.addr, align 8
  call void @invalidateAllOverflowCache(ptr noundef %2)
  %3 = load ptr, ptr %pBt.addr, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 6
  %4 = load i8, ptr %incrVacuum, align 2
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end40, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBt.addr, align 8
  %call = call i32 @btreePagecount(ptr noundef %5)
  store i32 %call, ptr %nOrig, align 4
  %6 = load ptr, ptr %pBt.addr, align 8
  %7 = load i32, ptr %nOrig, align 4
  %call2 = call i32 @ptrmapPageno(ptr noundef %6, i32 noundef %7)
  %8 = load i32, ptr %nOrig, align 4
  %cmp = icmp eq i32 %call2, %8
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load i32, ptr %nOrig, align 4
  %10 = load i32, ptr @sqlite3PendingByte, align 4
  %11 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 15
  %12 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %10, %12
  %add = add i32 %div, 1
  %cmp3 = icmp eq i32 %9, %add
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %call5 = call i32 @sqlite3CorruptError(i32 noundef 67314)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pBt.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 36
  %call6 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call6, ptr %nFree, align 4
  %16 = load ptr, ptr %pBt.addr, align 8
  %17 = load i32, ptr %nOrig, align 4
  %18 = load i32, ptr %nFree, align 4
  %call7 = call i32 @finalDbSize(ptr noundef %16, i32 noundef %17, i32 noundef %18)
  store i32 %call7, ptr %nFin, align 4
  %19 = load i32, ptr %nFin, align 4
  %20 = load i32, ptr %nOrig, align 4
  %cmp8 = icmp ugt i32 %19, %20
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @sqlite3CorruptError(i32 noundef 67319)
  store i32 %call10, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %21 = load i32, ptr %nFin, align 4
  %22 = load i32, ptr %nOrig, align 4
  %cmp12 = icmp ult i32 %21, %22
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %23 = load ptr, ptr %pBt.addr, align 8
  %call14 = call i32 @saveAllCursors(ptr noundef %23, i32 noundef 0, ptr noundef null)
  store i32 %call14, ptr %rc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %24 = load i32, ptr %nOrig, align 4
  store i32 %24, ptr %iFree, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %25 = load i32, ptr %iFree, align 4
  %26 = load i32, ptr %nFin, align 4
  %cmp16 = icmp ugt i32 %25, %26
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %29 = load ptr, ptr %pBt.addr, align 8
  %30 = load i32, ptr %nFin, align 4
  %31 = load i32, ptr %iFree, align 4
  %call18 = call i32 @incrVacuumStep(ptr noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef 1)
  store i32 %call18, ptr %rc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %iFree, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %iFree, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %33 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %33, 101
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %for.end
  %34 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %34, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false20, %for.end
  %35 = load i32, ptr %nFree, align 4
  %cmp22 = icmp ugt i32 %35, 0
  br i1 %cmp22, label %if.then23, label %if.end35

if.then23:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %pBt.addr, align 8
  %pPage124 = getelementptr inbounds nuw %struct.BtShared, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pPage124, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 23
  %38 = load ptr, ptr %pDbPage, align 8
  %call25 = call i32 @sqlite3PagerWrite(ptr noundef %38)
  store i32 %call25, ptr %rc, align 4
  %39 = load ptr, ptr %pBt.addr, align 8
  %pPage126 = getelementptr inbounds nuw %struct.BtShared, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %pPage126, align 8
  %aData27 = getelementptr inbounds nuw %struct.MemPage, ptr %40, i32 0, i32 19
  %41 = load ptr, ptr %aData27, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %41, i64 32
  call void @sqlite3Put4byte(ptr noundef %arrayidx28, i32 noundef 0)
  %42 = load ptr, ptr %pBt.addr, align 8
  %pPage129 = getelementptr inbounds nuw %struct.BtShared, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %pPage129, align 8
  %aData30 = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 19
  %44 = load ptr, ptr %aData30, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %44, i64 36
  call void @sqlite3Put4byte(ptr noundef %arrayidx31, i32 noundef 0)
  %45 = load ptr, ptr %pBt.addr, align 8
  %pPage132 = getelementptr inbounds nuw %struct.BtShared, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %pPage132, align 8
  %aData33 = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 19
  %47 = load ptr, ptr %aData33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %47, i64 28
  %48 = load i32, ptr %nFin, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx34, i32 noundef %48)
  %49 = load ptr, ptr %pBt.addr, align 8
  %bDoTruncate = getelementptr inbounds nuw %struct.BtShared, ptr %49, i32 0, i32 7
  store i8 1, ptr %bDoTruncate, align 1
  %50 = load i32, ptr %nFin, align 4
  %51 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %51, i32 0, i32 18
  store i32 %50, ptr %nPage, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then23, %land.lhs.true, %lor.lhs.false20
  %52 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %52, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %53 = load ptr, ptr %pPager, align 8
  %call38 = call i32 @sqlite3PagerRollback(ptr noundef %53)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %entry
  %54 = load i32, ptr %rc, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then9, %if.then4
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden void @invalidateAllOverflowCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @finalDbSize(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @incrVacuumStep(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
