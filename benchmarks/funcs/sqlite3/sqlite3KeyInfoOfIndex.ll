; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3KeyInfoUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3KeyInfoOfIndex(ptr noundef %pParse, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nCol = alloca i32, align 4
  %nKey = alloca i32, align 4
  %pKey = alloca ptr, align 8
  %zColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 14
  %1 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %nCol, align 4
  %2 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %2, i32 0, i32 13
  %3 = load i16, ptr %nKeyCol, align 2
  %conv1 = zext i16 %3 to i32
  store i32 %conv1, ptr %nKey, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pIdx.addr, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 16
  %bf.load = load i16, ptr %uniqNotNull, align 1
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %9 = load i32, ptr %nKey, align 4
  %10 = load i32, ptr %nCol, align 4
  %11 = load i32, ptr %nKey, align 4
  %sub = sub nsw i32 %10, %11
  %call = call ptr @sqlite3KeyInfoAlloc(ptr noundef %8, i32 noundef %9, i32 noundef %sub)
  store ptr %call, ptr %pKey, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %pParse.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %db4, align 8
  %14 = load i32, ptr %nCol, align 4
  %call5 = call ptr @sqlite3KeyInfoAlloc(ptr noundef %13, i32 noundef %14, i32 noundef 0)
  store ptr %call5, ptr %pKey, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %15 = load ptr, ptr %pKey, align 8
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %if.then8, label %if.end34

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %nCol, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %azColl, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %idxprom
  %21 = load ptr, ptr %arrayidx, align 8
  store ptr %21, ptr %zColl, align 8
  %22 = load ptr, ptr %zColl, align 8
  %cmp10 = icmp eq ptr %22, @sqlite3StrBINARY
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %zColl, align 8
  %call12 = call ptr @sqlite3LocateCollSeq(ptr noundef %23, ptr noundef %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call12, %cond.false ]
  %25 = load ptr, ptr %pKey, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom13
  store ptr %cond, ptr %arrayidx14, align 8
  %27 = load ptr, ptr %pIdx.addr, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %aSortOrder, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %28, i64 %idxprom15
  %30 = load i8, ptr %arrayidx16, align 1
  %31 = load ptr, ptr %pKey, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %aSortFlags, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %32, i64 %idxprom17
  store i8 %30, ptr %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %pParse.addr, align 8
  %nErr19 = getelementptr inbounds nuw %struct.Parse, ptr %35, i32 0, i32 16
  %36 = load i32, ptr %nErr19, align 8
  %tobool20 = icmp ne i32 %36, 0
  br i1 %tobool20, label %if.then21, label %if.end33

if.then21:                                        ; preds = %for.end
  %37 = load ptr, ptr %pIdx.addr, align 8
  %bNoQuery = getelementptr inbounds nuw %struct.Index, ptr %37, i32 0, i32 16
  %bf.load22 = load i16, ptr %bNoQuery, align 1
  %bf.lshr23 = lshr i16 %bf.load22, 8
  %bf.clear24 = and i16 %bf.lshr23, 1
  %bf.cast25 = zext i16 %bf.clear24 to i32
  %cmp26 = icmp eq i32 %bf.cast25, 0
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then21
  %38 = load ptr, ptr %pIdx.addr, align 8
  %bNoQuery29 = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 16
  %bf.load30 = load i16, ptr %bNoQuery29, align 1
  %bf.clear31 = and i16 %bf.load30, -257
  %bf.set = or i16 %bf.clear31, 256
  store i16 %bf.set, ptr %bNoQuery29, align 1
  %39 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 3
  store i32 513, ptr %rc, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then21
  %40 = load ptr, ptr %pKey, align 8
  call void @sqlite3KeyInfoUnref(ptr noundef %40)
  store ptr null, ptr %pKey, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end6
  %41 = load ptr, ptr %pKey, align 8
  store ptr %41, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end34, %if.then
  %42 = load ptr, ptr %retval, align 8
  ret ptr %42
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateCollSeq(ptr noundef, ptr noundef) #0

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
