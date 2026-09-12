; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLastPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @backupOnePage(ptr noundef %p, i32 noundef %iSrcPg, ptr noundef %zSrcData, i32 noundef %bUpdate) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iSrcPg.addr = alloca i32, align 4
  %zSrcData.addr = alloca ptr, align 8
  %bUpdate.addr = alloca i32, align 4
  %pDestPager = alloca ptr, align 8
  %nSrcPgsz = alloca i32, align 4
  %nDestPgsz = alloca i32, align 4
  %nCopy = alloca i32, align 4
  %iEnd = alloca i64, align 8
  %rc = alloca i32, align 4
  %iOff = alloca i64, align 8
  %pDestPg = alloca ptr, align 8
  %iDest = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zDestData = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iSrcPg, ptr %iSrcPg.addr, align 4
  store ptr %zSrcData, ptr %zSrcData.addr, align 8
  store i32 %bUpdate, ptr %bUpdate.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pDest = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pDest, align 8
  %call = call ptr @sqlite3BtreePager(ptr noundef %1)
  store ptr %call, ptr %pDestPager, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %pSrc, align 8
  %call1 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %3)
  store i32 %call1, ptr %nSrcPgsz, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %pDest2 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pDest2, align 8
  %call3 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %5)
  store i32 %call3, ptr %nDestPgsz, align 4
  %6 = load i32, ptr %nSrcPgsz, align 4
  %7 = load i32, ptr %nDestPgsz, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, ptr %nSrcPgsz, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, ptr %nDestPgsz, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %nCopy, align 4
  %10 = load i32, ptr %iSrcPg.addr, align 4
  %conv = zext i32 %10 to i64
  %11 = load i32, ptr %nSrcPgsz, align 4
  %conv4 = sext i32 %11 to i64
  %mul = mul nsw i64 %conv, %conv4
  store i64 %mul, ptr %iEnd, align 8
  store i32 0, ptr %rc, align 4
  %12 = load i32, ptr %nSrcPgsz, align 4
  %13 = load i32, ptr %nDestPgsz, align 4
  %cmp5 = icmp ne i32 %12, %13
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %14 = load ptr, ptr %pDestPager, align 8
  %call7 = call i32 @sqlite3PagerIsMemdb(ptr noundef %14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 8, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %15 = load i64, ptr %iEnd, align 8
  %16 = load i32, ptr %nSrcPgsz, align 4
  %conv8 = sext i32 %16 to i64
  %sub = sub nsw i64 %15, %conv8
  store i64 %sub, ptr %iOff, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %17, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i64, ptr %iOff, align 8
  %19 = load i64, ptr %iEnd, align 8
  %cmp11 = icmp slt i64 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  store ptr null, ptr %pDestPg, align 8
  %21 = load i64, ptr %iOff, align 8
  %22 = load i32, ptr %nDestPgsz, align 4
  %conv13 = sext i32 %22 to i64
  %div = sdiv i64 %21, %conv13
  %conv14 = trunc i64 %div to i32
  %add = add i32 %conv14, 1
  store i32 %add, ptr %iDest, align 4
  %23 = load i32, ptr %iDest, align 4
  %24 = load i32, ptr @sqlite3PendingByte, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %pDest15 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %pDest15, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %pageSize, align 8
  %div16 = udiv i32 %24, %28
  %add17 = add i32 %div16, 1
  %cmp18 = icmp eq i32 %23, %add17
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.body
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %29 = load ptr, ptr %pDestPager, align 8
  %30 = load i32, ptr %iDest, align 4
  %call22 = call i32 @sqlite3PagerGet(ptr noundef %29, i32 noundef %30, ptr noundef %pDestPg, i32 noundef 0)
  store i32 %call22, ptr %rc, align 4
  %cmp23 = icmp eq i32 0, %call22
  br i1 %cmp23, label %land.lhs.true25, label %if.end48

land.lhs.true25:                                  ; preds = %if.end21
  %31 = load ptr, ptr %pDestPg, align 8
  %call26 = call i32 @sqlite3PagerWrite(ptr noundef %31)
  store i32 %call26, ptr %rc, align 4
  %cmp27 = icmp eq i32 0, %call26
  br i1 %cmp27, label %if.then29, label %if.end48

if.then29:                                        ; preds = %land.lhs.true25
  %32 = load ptr, ptr %zSrcData.addr, align 8
  %33 = load i64, ptr %iOff, align 8
  %34 = load i32, ptr %nSrcPgsz, align 4
  %conv30 = sext i32 %34 to i64
  %rem = srem i64 %33, %conv30
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 %rem
  store ptr %arrayidx, ptr %zIn, align 8
  %35 = load ptr, ptr %pDestPg, align 8
  %call31 = call ptr @sqlite3PagerGetData(ptr noundef %35)
  store ptr %call31, ptr %zDestData, align 8
  %36 = load ptr, ptr %zDestData, align 8
  %37 = load i64, ptr %iOff, align 8
  %38 = load i32, ptr %nDestPgsz, align 4
  %conv32 = sext i32 %38 to i64
  %rem33 = srem i64 %37, %conv32
  %arrayidx34 = getelementptr inbounds i8, ptr %36, i64 %rem33
  store ptr %arrayidx34, ptr %zOut, align 8
  %39 = load ptr, ptr %zOut, align 8
  %40 = load ptr, ptr %zIn, align 8
  %41 = load i32, ptr %nCopy, align 4
  %conv35 = sext i32 %41 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %40, i64 %conv35, i1 false)
  %42 = load ptr, ptr %pDestPg, align 8
  %call36 = call ptr @sqlite3PagerGetExtra(ptr noundef %42)
  %arrayidx37 = getelementptr inbounds i8, ptr %call36, i64 0
  store i8 0, ptr %arrayidx37, align 1
  %43 = load i64, ptr %iOff, align 8
  %cmp38 = icmp eq i64 %43, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.then29
  %44 = load i32, ptr %bUpdate.addr, align 4
  %cmp41 = icmp eq i32 %44, 0
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %land.lhs.true40
  %45 = load ptr, ptr %zOut, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %45, i64 28
  %46 = load ptr, ptr %p.addr, align 8
  %pSrc45 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %pSrc45, align 8
  %call46 = call i32 @sqlite3BtreeLastPage(ptr noundef %47)
  call void @sqlite3Put4byte(ptr noundef %arrayidx44, i32 noundef %call46)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.lhs.true40, %if.then29
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true25, %if.end21
  %48 = load ptr, ptr %pDestPg, align 8
  call void @sqlite3PagerUnref(ptr noundef %48)
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.then20
  %49 = load i32, ptr %nDestPgsz, align 4
  %conv49 = sext i32 %49 to i64
  %50 = load i64, ptr %iOff, align 8
  %add50 = add nsw i64 %50, %conv49
  store i64 %add50, ptr %iOff, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %51 = load i32, ptr %rc, align 4
  ret i32 %51
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetExtra(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerIsMemdb(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
