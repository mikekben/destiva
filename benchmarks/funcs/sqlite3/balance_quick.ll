; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPutOvflPtr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @insertCell(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @balance_quick(ptr noundef %pParent, ptr noundef %pPage, ptr noundef %pSpace) #0 {
entry:
  %retval = alloca i32, align 4
  %pParent.addr = alloca ptr, align 8
  %pPage.addr = alloca ptr, align 8
  %pSpace.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pgnoNew = alloca i32, align 4
  %pOut = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  %szCell = alloca i16, align 2
  %pStop = alloca ptr, align 8
  %b = alloca %struct.CellArray, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pSpace, ptr %pSpace.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 14
  %3 = load i16, ptr %nCell, align 8
  %conv = zext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 70633)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pBt, align 8
  %call3 = call i32 @allocateBtreePage(ptr noundef %4, ptr noundef %pNew, ptr noundef %pgnoNew, i32 noundef 0, i8 noundef zeroext 0)
  store i32 %call3, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end76

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %pSpace.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 4
  store ptr %arrayidx, ptr %pOut, align 8
  %7 = load ptr, ptr %pPage.addr, align 8
  %apOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 17
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %apOvfl, i64 0, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  store ptr %8, ptr %pCell, align 8
  %9 = load ptr, ptr %pPage.addr, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 24
  %10 = load ptr, ptr %xCellSize, align 8
  %11 = load ptr, ptr %pPage.addr, align 8
  %12 = load ptr, ptr %pCell, align 8
  %call8 = call zeroext i16 %10(ptr noundef %11, ptr noundef %12)
  store i16 %call8, ptr %szCell, align 2
  %13 = load ptr, ptr %pNew, align 8
  call void @zeroPage(ptr noundef %13, i32 noundef 13)
  %nCell9 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  store i32 1, ptr %nCell9, align 8
  %14 = load ptr, ptr %pPage.addr, align 8
  %pRef = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 1
  store ptr %14, ptr %pRef, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  store ptr %pCell, ptr %apCell, align 8
  %szCell10 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  store ptr %szCell, ptr %szCell10, align 8
  %15 = load ptr, ptr %pPage.addr, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 20
  %16 = load ptr, ptr %aDataEnd, align 8
  %apEnd = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [6 x ptr], ptr %apEnd, i64 0, i64 0
  store ptr %16, ptr %arrayidx11, align 8
  %ixNx = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [6 x i32], ptr %ixNx, i64 0, i64 0
  store i32 2, ptr %arrayidx12, align 8
  %17 = load ptr, ptr %pNew, align 8
  %call13 = call i32 @rebuildPage(ptr noundef %b, i32 noundef 0, i32 noundef 1, ptr noundef %17)
  store i32 %call13, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then6
  %19 = load ptr, ptr %pNew, align 8
  call void @releasePage(ptr noundef %19)
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then6
  %21 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 16
  %22 = load i32, ptr %usableSize, align 4
  %23 = load ptr, ptr %pNew, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 12
  %24 = load i16, ptr %cellOffset, align 2
  %conv16 = zext i16 %24 to i32
  %sub = sub i32 %22, %conv16
  %sub17 = sub i32 %sub, 2
  %25 = load i16, ptr %szCell, align 2
  %conv18 = zext i16 %25 to i32
  %sub19 = sub i32 %sub17, %conv18
  %26 = load ptr, ptr %pNew, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 13
  store i32 %sub19, ptr %nFree, align 4
  %27 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 5
  %28 = load i8, ptr %autoVacuum, align 1
  %tobool20 = icmp ne i8 %28, 0
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end15
  %29 = load ptr, ptr %pBt, align 8
  %30 = load i32, ptr %pgnoNew, align 4
  %31 = load ptr, ptr %pParent.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %pgno, align 4
  call void @ptrmapPut(ptr noundef %29, i32 noundef %30, i8 noundef zeroext 5, i32 noundef %32, ptr noundef %rc)
  %33 = load i16, ptr %szCell, align 2
  %conv22 = zext i16 %33 to i32
  %34 = load ptr, ptr %pNew, align 8
  %minLocal = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 11
  %35 = load i16, ptr %minLocal, align 8
  %conv23 = zext i16 %35 to i32
  %cmp24 = icmp sgt i32 %conv22, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then21
  %36 = load ptr, ptr %pNew, align 8
  %37 = load ptr, ptr %pNew, align 8
  %38 = load ptr, ptr %pCell, align 8
  call void @ptrmapPutOvflPtr(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %rc)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then21
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end15
  %39 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 19
  %40 = load ptr, ptr %aData, align 8
  %41 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 15
  %42 = load i16, ptr %maskPage, align 2
  %conv29 = zext i16 %42 to i32
  %43 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 21
  %44 = load ptr, ptr %aCellIdx, align 8
  %45 = load ptr, ptr %pPage.addr, align 8
  %nCell30 = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 14
  %46 = load i16, ptr %nCell30, align 8
  %conv31 = zext i16 %46 to i32
  %sub32 = sub nsw i32 %conv31, 1
  %mul = mul nsw i32 2, %sub32
  %idxprom = sext i32 %mul to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %44, i64 %idxprom
  %arrayidx34 = getelementptr inbounds i8, ptr %arrayidx33, i64 0
  %47 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %47 to i32
  %shl = shl i32 %conv35, 8
  %48 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx36 = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 21
  %49 = load ptr, ptr %aCellIdx36, align 8
  %50 = load ptr, ptr %pPage.addr, align 8
  %nCell37 = getelementptr inbounds nuw %struct.MemPage, ptr %50, i32 0, i32 14
  %51 = load i16, ptr %nCell37, align 8
  %conv38 = zext i16 %51 to i32
  %sub39 = sub nsw i32 %conv38, 1
  %mul40 = mul nsw i32 2, %sub39
  %idxprom41 = sext i32 %mul40 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %49, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds i8, ptr %arrayidx42, i64 1
  %52 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %52 to i32
  %or = or i32 %shl, %conv44
  %and = and i32 %conv29, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %53 = load ptr, ptr %pCell, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %53, i64 9
  store ptr %arrayidx45, ptr %pStop, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end28
  %54 = load ptr, ptr %pCell, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %pCell, align 8
  %55 = load i8, ptr %54, align 1
  %conv46 = zext i8 %55 to i32
  %and47 = and i32 %conv46, 128
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %56 = load ptr, ptr %pCell, align 8
  %57 = load ptr, ptr %pStop, align 8
  %cmp49 = icmp ult ptr %56, %57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %cmp49, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %59 = load ptr, ptr %pCell, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %59, i64 9
  store ptr %arrayidx51, ptr %pStop, align 8
  br label %while.cond52

while.cond52:                                     ; preds = %while.body62, %while.end
  %60 = load ptr, ptr %pCell, align 8
  %incdec.ptr53 = getelementptr inbounds nuw i8, ptr %60, i32 1
  store ptr %incdec.ptr53, ptr %pCell, align 8
  %61 = load i8, ptr %60, align 1
  %62 = load ptr, ptr %pOut, align 8
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr54, ptr %pOut, align 8
  store i8 %61, ptr %62, align 1
  %conv55 = zext i8 %61 to i32
  %and56 = and i32 %conv55, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %land.rhs58, label %land.end61

land.rhs58:                                       ; preds = %while.cond52
  %63 = load ptr, ptr %pCell, align 8
  %64 = load ptr, ptr %pStop, align 8
  %cmp59 = icmp ult ptr %63, %64
  br label %land.end61

land.end61:                                       ; preds = %land.rhs58, %while.cond52
  %65 = phi i1 [ false, %while.cond52 ], [ %cmp59, %land.rhs58 ]
  br i1 %65, label %while.body62, label %while.end63

while.body62:                                     ; preds = %land.end61
  br label %while.cond52, !llvm.loop !8

while.end63:                                      ; preds = %land.end61
  %66 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %66, 0
  br i1 %cmp64, label %if.then66, label %if.end71

if.then66:                                        ; preds = %while.end63
  %67 = load ptr, ptr %pParent.addr, align 8
  %68 = load ptr, ptr %pParent.addr, align 8
  %nCell67 = getelementptr inbounds nuw %struct.MemPage, ptr %68, i32 0, i32 14
  %69 = load i16, ptr %nCell67, align 8
  %conv68 = zext i16 %69 to i32
  %70 = load ptr, ptr %pSpace.addr, align 8
  %71 = load ptr, ptr %pOut, align 8
  %72 = load ptr, ptr %pSpace.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %71 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv69 = trunc i64 %sub.ptr.sub to i32
  %73 = load ptr, ptr %pPage.addr, align 8
  %pgno70 = getelementptr inbounds nuw %struct.MemPage, ptr %73, i32 0, i32 4
  %74 = load i32, ptr %pgno70, align 4
  call void @insertCell(ptr noundef %67, i32 noundef %conv68, ptr noundef %70, i32 noundef %conv69, ptr noundef null, i32 noundef %74, ptr noundef %rc)
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %while.end63
  %75 = load ptr, ptr %pParent.addr, align 8
  %aData72 = getelementptr inbounds nuw %struct.MemPage, ptr %75, i32 0, i32 19
  %76 = load ptr, ptr %aData72, align 8
  %77 = load ptr, ptr %pParent.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %77, i32 0, i32 6
  %78 = load i8, ptr %hdrOffset, align 1
  %conv73 = zext i8 %78 to i32
  %add = add nsw i32 %conv73, 8
  %idxprom74 = sext i32 %add to i64
  %arrayidx75 = getelementptr inbounds i8, ptr %76, i64 %idxprom74
  %79 = load i32, ptr %pgnoNew, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx75, i32 noundef %79)
  %80 = load ptr, ptr %pNew, align 8
  call void @releasePage(ptr noundef %80)
  br label %if.end76

if.end76:                                         ; preds = %if.end71, %if.end
  %81 = load i32, ptr %rc, align 4
  store i32 %81, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then14, %if.then
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nounwind uwtable
declare hidden i32 @rebuildPage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
