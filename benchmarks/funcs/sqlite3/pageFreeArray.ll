; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }

; Function Attrs: nounwind uwtable
declare hidden i32 @freeSpace(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pageFreeArray(ptr noundef %pPg, i32 noundef %iFirst, i32 noundef %nCell, ptr noundef %pCArray) #0 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %iFirst.addr = alloca i32, align 4
  %nCell.addr = alloca i32, align 4
  %pCArray.addr = alloca ptr, align 8
  %aData = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pStart = alloca ptr, align 8
  %nRet = alloca i32, align 4
  %i = alloca i32, align 4
  %iEnd = alloca i32, align 4
  %pFree = alloca ptr, align 8
  %szFree = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %sz = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %iFirst, ptr %iFirst.addr, align 4
  store i32 %nCell, ptr %nCell.addr, align 4
  store ptr %pCArray, ptr %pCArray.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %aData1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aData1, align 8
  store ptr %1, ptr %aData, align 8
  %2 = load ptr, ptr %aData, align 8
  %3 = load ptr, ptr %pPg.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %usableSize, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pEnd, align 8
  %6 = load ptr, ptr %aData, align 8
  %7 = load ptr, ptr %pPg.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 6
  %8 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %8 to i32
  %add = add nsw i32 %conv, 8
  %9 = load ptr, ptr %pPg.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 7
  %10 = load i8, ptr %childPtrSize, align 2
  %conv2 = zext i8 %10 to i32
  %add3 = add nsw i32 %add, %conv2
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %idxprom4
  store ptr %arrayidx5, ptr %pStart, align 8
  store i32 0, ptr %nRet, align 4
  %11 = load i32, ptr %iFirst.addr, align 4
  %12 = load i32, ptr %nCell.addr, align 4
  %add6 = add nsw i32 %11, %12
  store i32 %add6, ptr %iEnd, align 4
  store ptr null, ptr %pFree, align 8
  store i32 0, ptr %szFree, align 4
  %13 = load i32, ptr %iFirst.addr, align 4
  store i32 %13, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %iEnd, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pCArray.addr, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %apCell, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %17, i64 %idxprom8
  %19 = load ptr, ptr %arrayidx9, align 8
  store ptr %19, ptr %pCell, align 8
  %20 = load ptr, ptr %pCell, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = load ptr, ptr %pStart, align 8
  %23 = ptrtoint ptr %22 to i64
  %cmp10 = icmp uge i64 %21, %23
  br i1 %cmp10, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %for.body
  %24 = load ptr, ptr %pCell, align 8
  %25 = ptrtoint ptr %24 to i64
  %26 = load ptr, ptr %pEnd, align 8
  %27 = ptrtoint ptr %26 to i64
  %cmp12 = icmp ult i64 %25, %27
  br i1 %cmp12, label %if.then, label %if.end31

if.then:                                          ; preds = %land.lhs.true
  %28 = load ptr, ptr %pCArray.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %szCell, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %29, i64 %idxprom14
  %31 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %31 to i32
  store i32 %conv16, ptr %sz, align 4
  %32 = load ptr, ptr %pFree, align 8
  %33 = load ptr, ptr %pCell, align 8
  %34 = load i32, ptr %sz, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  %cmp17 = icmp ne ptr %32, %add.ptr
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  %35 = load ptr, ptr %pFree, align 8
  %tobool = icmp ne ptr %35, null
  br i1 %tobool, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then19
  %36 = load ptr, ptr %pPg.addr, align 8
  %37 = load ptr, ptr %pFree, align 8
  %38 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i16
  %39 = load i32, ptr %szFree, align 4
  %conv22 = trunc i32 %39 to i16
  %call = call i32 @freeSpace(ptr noundef %36, i16 noundef zeroext %conv21, i16 noundef zeroext %conv22)
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then19
  %40 = load ptr, ptr %pCell, align 8
  store ptr %40, ptr %pFree, align 8
  %41 = load i32, ptr %sz, align 4
  store i32 %41, ptr %szFree, align 4
  %42 = load ptr, ptr %pFree, align 8
  %43 = load i32, ptr %sz, align 4
  %idx.ext23 = sext i32 %43 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %42, i64 %idx.ext23
  %44 = load ptr, ptr %pEnd, align 8
  %cmp25 = icmp ugt ptr %add.ptr24, %44
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  br label %if.end30

if.else:                                          ; preds = %if.then
  %45 = load ptr, ptr %pCell, align 8
  store ptr %45, ptr %pFree, align 8
  %46 = load i32, ptr %sz, align 4
  %47 = load i32, ptr %szFree, align 4
  %add29 = add nsw i32 %47, %46
  store i32 %add29, ptr %szFree, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %48 = load i32, ptr %nRet, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %nRet, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %49 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %pFree, align 8
  %tobool33 = icmp ne ptr %50, null
  br i1 %tobool33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %for.end
  %51 = load ptr, ptr %pPg.addr, align 8
  %52 = load ptr, ptr %pFree, align 8
  %53 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast35 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast36 = ptrtoint ptr %53 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %conv38 = trunc i64 %sub.ptr.sub37 to i16
  %54 = load i32, ptr %szFree, align 4
  %conv39 = trunc i32 %54 to i16
  %call40 = call i32 @freeSpace(ptr noundef %51, i16 noundef zeroext %conv38, i16 noundef zeroext %conv39)
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %for.end
  %55 = load i32, ptr %nRet, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then27
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
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
