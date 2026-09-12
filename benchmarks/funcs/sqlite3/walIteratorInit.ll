; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalHashLoc = type { ptr, ptr, i32 }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.WalIterator = type { i32, i32, [1 x %struct.WalSegment] }
%struct.WalSegment = type { i32, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePage(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walHashGet(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walIteratorInit(ptr noundef %pWal, i32 noundef %nBackfill, ptr noundef %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %nBackfill.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nSegment = alloca i32, align 4
  %iLast = alloca i32, align 4
  %nByte = alloca i64, align 8
  %i = alloca i32, align 4
  %aTmp = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sLoc = alloca %struct.WalHashLoc, align 8
  %j = alloca i32, align 4
  %nEntry = alloca i32, align 4
  %aIndex = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %nBackfill, ptr %nBackfill.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %1 = load i32, ptr %mxFrame, align 8
  store i32 %1, ptr %iLast, align 4
  %2 = load i32, ptr %iLast, align 4
  %call = call i32 @walFramePage(i32 noundef %2)
  %add = add nsw i32 %call, 1
  store i32 %add, ptr %nSegment, align 4
  %3 = load i32, ptr %nSegment, align 4
  %sub = sub nsw i32 %3, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 32
  %add1 = add i64 40, %mul
  %4 = load i32, ptr %iLast, align 4
  %conv2 = zext i32 %4 to i64
  %mul3 = mul i64 %conv2, 2
  %add4 = add i64 %add1, %mul3
  store i64 %add4, ptr %nByte, align 8
  %5 = load i64, ptr %nByte, align 8
  %call5 = call ptr @sqlite3_malloc64(i64 noundef %5)
  store ptr %call5, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8
  %8 = load i64, ptr %nByte, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %8, i1 false)
  %9 = load i32, ptr %nSegment, align 4
  %10 = load ptr, ptr %p, align 8
  %nSegment6 = getelementptr inbounds nuw %struct.WalIterator, ptr %10, i32 0, i32 1
  store i32 %9, ptr %nSegment6, align 4
  %11 = load i32, ptr %iLast, align 4
  %cmp = icmp ugt i32 %11, 4096
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32, ptr %iLast, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4096, %cond.true ], [ %12, %cond.false ]
  %conv8 = zext i32 %cond to i64
  %mul9 = mul i64 2, %conv8
  %call10 = call ptr @sqlite3_malloc64(i64 noundef %mul9)
  store ptr %call10, ptr %aTmp, align 8
  %13 = load ptr, ptr %aTmp, align 8
  %tobool11 = icmp ne ptr %13, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %cond.end
  store i32 7, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %cond.end
  %14 = load i32, ptr %nBackfill.addr, align 4
  %add14 = add i32 %14, 1
  %call15 = call i32 @walFramePage(i32 noundef %add14)
  store i32 %call15, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %if.end13
  %15 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %nSegment, align 4
  %cmp18 = icmp slt i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ]
  br i1 %18, label %for.body, label %for.end67

for.body:                                         ; preds = %land.end
  %19 = load ptr, ptr %pWal.addr, align 8
  %20 = load i32, ptr %i, align 4
  %call20 = call i32 @walHashGet(ptr noundef %19, i32 noundef %20, ptr noundef %sLoc)
  store i32 %call20, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then23, label %if.end64

if.then23:                                        ; preds = %for.body
  %aPgno = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %22 = load ptr, ptr %aPgno, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %aPgno, align 8
  %23 = load i32, ptr %i, align 4
  %add24 = add nsw i32 %23, 1
  %24 = load i32, ptr %nSegment, align 4
  %cmp25 = icmp eq i32 %add24, %24
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then23
  %25 = load i32, ptr %iLast, align 4
  %iZero = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %26 = load i32, ptr %iZero, align 8
  %sub28 = sub i32 %25, %26
  store i32 %sub28, ptr %nEntry, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then23
  %aHash = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %27 = load ptr, ptr %aHash, align 8
  %aPgno29 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %28 = load ptr, ptr %aPgno29, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv30 = trunc i64 %sub.ptr.div to i32
  store i32 %conv30, ptr %nEntry, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %29 = load ptr, ptr %p, align 8
  %aSegment = getelementptr inbounds nuw %struct.WalIterator, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %p, align 8
  %nSegment32 = getelementptr inbounds nuw %struct.WalIterator, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nSegment32, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment, i64 0, i64 %idxprom
  %iZero33 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %32 = load i32, ptr %iZero33, align 8
  %idxprom34 = zext i32 %32 to i64
  %arrayidx35 = getelementptr inbounds nuw i16, ptr %arrayidx, i64 %idxprom34
  store ptr %arrayidx35, ptr %aIndex, align 8
  %iZero36 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %33 = load i32, ptr %iZero36, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %iZero36, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %if.end31
  %34 = load i32, ptr %j, align 4
  %35 = load i32, ptr %nEntry, align 4
  %cmp38 = icmp slt i32 %34, %35
  br i1 %cmp38, label %for.body40, label %for.end

for.body40:                                       ; preds = %for.cond37
  %36 = load i32, ptr %j, align 4
  %conv41 = trunc i32 %36 to i16
  %37 = load ptr, ptr %aIndex, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %37, i64 %idxprom42
  store i16 %conv41, ptr %arrayidx43, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body40
  %39 = load i32, ptr %j, align 4
  %inc44 = add nsw i32 %39, 1
  store i32 %inc44, ptr %j, align 4
  br label %for.cond37, !llvm.loop !6

for.end:                                          ; preds = %for.cond37
  %aPgno45 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %40 = load ptr, ptr %aPgno45, align 8
  %41 = load ptr, ptr %aTmp, align 8
  %42 = load ptr, ptr %aIndex, align 8
  call void @walMergesort(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %nEntry)
  %iZero46 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %43 = load i32, ptr %iZero46, align 8
  %44 = load ptr, ptr %p, align 8
  %aSegment47 = getelementptr inbounds nuw %struct.WalIterator, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment47, i64 0, i64 %idxprom48
  %iZero50 = getelementptr inbounds nuw %struct.WalSegment, ptr %arrayidx49, i32 0, i32 4
  store i32 %43, ptr %iZero50, align 4
  %46 = load i32, ptr %nEntry, align 4
  %47 = load ptr, ptr %p, align 8
  %aSegment51 = getelementptr inbounds nuw %struct.WalIterator, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment51, i64 0, i64 %idxprom52
  %nEntry54 = getelementptr inbounds nuw %struct.WalSegment, ptr %arrayidx53, i32 0, i32 3
  store i32 %46, ptr %nEntry54, align 8
  %49 = load ptr, ptr %aIndex, align 8
  %50 = load ptr, ptr %p, align 8
  %aSegment55 = getelementptr inbounds nuw %struct.WalIterator, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment55, i64 0, i64 %idxprom56
  %aIndex58 = getelementptr inbounds nuw %struct.WalSegment, ptr %arrayidx57, i32 0, i32 1
  store ptr %49, ptr %aIndex58, align 8
  %aPgno59 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %52 = load ptr, ptr %aPgno59, align 8
  %53 = load ptr, ptr %p, align 8
  %aSegment60 = getelementptr inbounds nuw %struct.WalIterator, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %54 to i64
  %arrayidx62 = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment60, i64 0, i64 %idxprom61
  %aPgno63 = getelementptr inbounds nuw %struct.WalSegment, ptr %arrayidx62, i32 0, i32 2
  store ptr %52, ptr %aPgno63, align 8
  br label %if.end64

if.end64:                                         ; preds = %for.end, %for.body
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %55 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %55, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end67:                                        ; preds = %land.end
  %56 = load ptr, ptr %aTmp, align 8
  call void @sqlite3_free(ptr noundef %56)
  %57 = load i32, ptr %rc, align 4
  %cmp68 = icmp ne i32 %57, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.end67
  %58 = load ptr, ptr %p, align 8
  call void @walIteratorFree(ptr noundef %58)
  store ptr null, ptr %p, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %for.end67
  %59 = load ptr, ptr %p, align 8
  %60 = load ptr, ptr %pp.addr, align 8
  store ptr %59, ptr %60, align 8
  %61 = load i32, ptr %rc, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden void @walIteratorFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walMergesort(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!8 = distinct !{!8, !7}
