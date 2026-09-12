; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @pageFindSlot(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pageInsertArray(ptr noundef %pPg, ptr noundef %pBegin, ptr noundef %ppData, ptr noundef %pCellptr, i32 noundef %iFirst, i32 noundef %nCell, ptr noundef %pCArray) #1 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pBegin.addr = alloca ptr, align 8
  %ppData.addr = alloca ptr, align 8
  %pCellptr.addr = alloca ptr, align 8
  %iFirst.addr = alloca i32, align 4
  %nCell.addr = alloca i32, align 4
  %pCArray.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %aData = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %iEnd = alloca i32, align 4
  %k = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  %sz = alloca i32, align 4
  %rc = alloca i32, align 4
  %pSlot = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store ptr %pBegin, ptr %pBegin.addr, align 8
  store ptr %ppData, ptr %ppData.addr, align 8
  store ptr %pCellptr, ptr %pCellptr.addr, align 8
  store i32 %iFirst, ptr %iFirst.addr, align 4
  store i32 %nCell, ptr %nCell.addr, align 4
  store ptr %pCArray, ptr %pCArray.addr, align 8
  %0 = load i32, ptr %iFirst.addr, align 4
  store i32 %0, ptr %i, align 4
  %1 = load ptr, ptr %pPg.addr, align 8
  %aData1 = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %aData1, align 8
  store ptr %2, ptr %aData, align 8
  %3 = load ptr, ptr %ppData.addr, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %pData, align 8
  %5 = load i32, ptr %iFirst.addr, align 4
  %6 = load i32, ptr %nCell.addr, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, ptr %iEnd, align 4
  %7 = load i32, ptr %iEnd, align 4
  %8 = load i32, ptr %iFirst.addr, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %pCArray.addr, align 8
  %ixNx = getelementptr inbounds nuw %struct.CellArray, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %k, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %ixNx, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %11, %12
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %k, align 4
  %cmp3 = icmp slt i32 %13, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %16 = load ptr, ptr %pCArray.addr, align 8
  %apEnd = getelementptr inbounds nuw %struct.CellArray, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %k, align 4
  %idxprom4 = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds [6 x ptr], ptr %apEnd, i64 0, i64 %idxprom4
  %18 = load ptr, ptr %arrayidx5, align 8
  store ptr %18, ptr %pEnd, align 8
  br label %while.body

while.body:                                       ; preds = %if.end70, %for.end
  %19 = load ptr, ptr %pCArray.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %szCell, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %20, i64 %idxprom6
  %22 = load i16, ptr %arrayidx7, align 2
  %conv = zext i16 %22 to i32
  store i32 %conv, ptr %sz, align 4
  %23 = load ptr, ptr %aData, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %23, i64 1
  %24 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %24 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %25 = load ptr, ptr %aData, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %25, i64 2
  %26 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %26 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %27 = load ptr, ptr %pPg.addr, align 8
  %28 = load i32, ptr %sz, align 4
  %call = call ptr @pageFindSlot(ptr noundef %27, i32 noundef %28, ptr noundef %rc)
  store ptr %call, ptr %pSlot, align 8
  %cmp16 = icmp eq ptr %call, null
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %29 = load ptr, ptr %pData, align 8
  %30 = load ptr, ptr %pBegin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = load i32, ptr %sz, align 4
  %conv19 = sext i32 %31 to i64
  %cmp20 = icmp slt i64 %sub.ptr.sub, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then18
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then18
  %32 = load i32, ptr %sz, align 4
  %33 = load ptr, ptr %pData, align 8
  %idx.ext = sext i32 %32 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.neg
  store ptr %add.ptr, ptr %pData, align 8
  %34 = load ptr, ptr %pData, align 8
  store ptr %34, ptr %pSlot, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %lor.lhs.false
  %35 = load ptr, ptr %pCArray.addr, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %apCell, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %36, i64 %idxprom25
  %38 = load ptr, ptr %arrayidx26, align 8
  %39 = load i32, ptr %sz, align 4
  %idx.ext27 = sext i32 %39 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %38, i64 %idx.ext27
  %40 = ptrtoint ptr %add.ptr28 to i64
  %41 = load ptr, ptr %pEnd, align 8
  %42 = ptrtoint ptr %41 to i64
  %cmp29 = icmp ugt i64 %40, %42
  br i1 %cmp29, label %land.lhs.true31, label %if.end39

land.lhs.true31:                                  ; preds = %if.end24
  %43 = load ptr, ptr %pCArray.addr, align 8
  %apCell32 = getelementptr inbounds nuw %struct.CellArray, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %apCell32, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %44, i64 %idxprom33
  %46 = load ptr, ptr %arrayidx34, align 8
  %47 = ptrtoint ptr %46 to i64
  %48 = load ptr, ptr %pEnd, align 8
  %49 = ptrtoint ptr %48 to i64
  %cmp35 = icmp ult i64 %47, %49
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true31
  %call38 = call i32 @sqlite3CorruptError(i32 noundef 70412)
  store i32 1, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %land.lhs.true31, %if.end24
  %50 = load ptr, ptr %pSlot, align 8
  %51 = load ptr, ptr %pCArray.addr, align 8
  %apCell40 = getelementptr inbounds nuw %struct.CellArray, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %apCell40, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %52, i64 %idxprom41
  %54 = load ptr, ptr %arrayidx42, align 8
  %55 = load i32, ptr %sz, align 4
  %conv43 = sext i32 %55 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %50, ptr align 1 %54, i64 %conv43, i1 false)
  %56 = load ptr, ptr %pSlot, align 8
  %57 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast44 = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast45 = ptrtoint ptr %57 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %shr = ashr i64 %sub.ptr.sub46, 8
  %conv47 = trunc i64 %shr to i8
  %58 = load ptr, ptr %pCellptr.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %58, i64 0
  store i8 %conv47, ptr %arrayidx48, align 1
  %59 = load ptr, ptr %pSlot, align 8
  %60 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast49 = ptrtoint ptr %59 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %60 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %conv52 = trunc i64 %sub.ptr.sub51 to i8
  %61 = load ptr, ptr %pCellptr.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %conv52, ptr %arrayidx53, align 1
  %62 = load ptr, ptr %pCellptr.addr, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %62, i64 2
  store ptr %add.ptr54, ptr %pCellptr.addr, align 8
  %63 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %63, 1
  store i32 %inc55, ptr %i, align 4
  %64 = load i32, ptr %i, align 4
  %65 = load i32, ptr %iEnd, align 4
  %cmp56 = icmp sge i32 %64, %65
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end39
  br label %while.end

if.end59:                                         ; preds = %if.end39
  %66 = load ptr, ptr %pCArray.addr, align 8
  %ixNx60 = getelementptr inbounds nuw %struct.CellArray, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %k, align 4
  %idxprom61 = sext i32 %67 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], ptr %ixNx60, i64 0, i64 %idxprom61
  %68 = load i32, ptr %arrayidx62, align 4
  %69 = load i32, ptr %i, align 4
  %cmp63 = icmp sle i32 %68, %69
  br i1 %cmp63, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end59
  %70 = load i32, ptr %k, align 4
  %inc66 = add nsw i32 %70, 1
  store i32 %inc66, ptr %k, align 4
  %71 = load ptr, ptr %pCArray.addr, align 8
  %apEnd67 = getelementptr inbounds nuw %struct.CellArray, ptr %71, i32 0, i32 4
  %72 = load i32, ptr %k, align 4
  %idxprom68 = sext i32 %72 to i64
  %arrayidx69 = getelementptr inbounds [6 x ptr], ptr %apEnd67, i64 0, i64 %idxprom68
  %73 = load ptr, ptr %arrayidx69, align 8
  store ptr %73, ptr %pEnd, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end59
  br label %while.body

while.end:                                        ; preds = %if.then58
  %74 = load ptr, ptr %pData, align 8
  %75 = load ptr, ptr %ppData.addr, align 8
  store ptr %74, ptr %75, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then37, %if.then22, %if.then
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
