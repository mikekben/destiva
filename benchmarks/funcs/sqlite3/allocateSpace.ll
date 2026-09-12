; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @allocateSpace(ptr noundef %pPage, i32 noundef %nByte, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %hdr = alloca i32, align 4
  %data = alloca ptr, align 8
  %top = alloca i32, align 4
  %rc = alloca i32, align 4
  %gap = alloca i32, align 4
  %pSpace = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %hdr, align 4
  %2 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aData, align 8
  store ptr %3, ptr %data, align 8
  store i32 0, ptr %rc, align 4
  %4 = load ptr, ptr %pPage.addr, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 12
  %5 = load i16, ptr %cellOffset, align 2
  %conv1 = zext i16 %5 to i32
  %6 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 14
  %7 = load i16, ptr %nCell, align 8
  %conv2 = zext i16 %7 to i32
  %mul = mul nsw i32 2, %conv2
  %add = add nsw i32 %conv1, %mul
  store i32 %add, ptr %gap, align 4
  %8 = load ptr, ptr %data, align 8
  %9 = load i32, ptr %hdr, align 4
  %add3 = add nsw i32 %9, 5
  %idxprom = sext i32 %add3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %arrayidx4 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %10 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %10 to i32
  %shl = shl i32 %conv5, 8
  %11 = load ptr, ptr %data, align 8
  %12 = load i32, ptr %hdr, align 4
  %add6 = add nsw i32 %12, 5
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx8, i64 1
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %or = or i32 %shl, %conv10
  store i32 %or, ptr %top, align 4
  %14 = load i32, ptr %gap, align 4
  %15 = load i32, ptr %top, align 4
  %cmp = icmp sgt i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %16 = load i32, ptr %top, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %usableSize, align 4
  %cmp14 = icmp eq i32 %19, 65536
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true
  store i32 65536, ptr %top, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %call = call i32 @sqlite3CorruptError(i32 noundef 65036)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then16
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry
  %20 = load ptr, ptr %data, align 8
  %21 = load i32, ptr %hdr, align 4
  %add18 = add nsw i32 %21, 2
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 %idxprom19
  %22 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %22 to i32
  %tobool = icmp ne i32 %conv21, 0
  br i1 %tobool, label %land.lhs.true27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %23 = load ptr, ptr %data, align 8
  %24 = load i32, ptr %hdr, align 4
  %add22 = add nsw i32 %24, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %23, i64 %idxprom23
  %25 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.end46

land.lhs.true27:                                  ; preds = %lor.lhs.false, %if.end17
  %26 = load i32, ptr %gap, align 4
  %add28 = add nsw i32 %26, 2
  %27 = load i32, ptr %top, align 4
  %cmp29 = icmp sle i32 %add28, %27
  br i1 %cmp29, label %if.then31, label %if.end46

if.then31:                                        ; preds = %land.lhs.true27
  %28 = load ptr, ptr %pPage.addr, align 8
  %29 = load i32, ptr %nByte.addr, align 4
  %call32 = call ptr @pageFindSlot(ptr noundef %28, i32 noundef %29, ptr noundef %rc)
  store ptr %call32, ptr %pSpace, align 8
  %30 = load ptr, ptr %pSpace, align 8
  %tobool33 = icmp ne ptr %30, null
  br i1 %tobool33, label %if.then34, label %if.else41

if.then34:                                        ; preds = %if.then31
  %31 = load ptr, ptr %pSpace, align 8
  %32 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv35 = trunc i64 %sub.ptr.sub to i32
  %33 = load ptr, ptr %pIdx.addr, align 8
  store i32 %conv35, ptr %33, align 4
  %34 = load i32, ptr %gap, align 4
  %cmp36 = icmp sle i32 %conv35, %34
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.then34
  %call39 = call i32 @sqlite3CorruptError(i32 noundef 65052)
  store i32 %call39, ptr %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.then34
  store i32 0, ptr %retval, align 4
  br label %return

if.else41:                                        ; preds = %if.then31
  %35 = load i32, ptr %rc, align 4
  %tobool42 = icmp ne i32 %35, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.else41
  %36 = load i32, ptr %rc, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.else41
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true27, %lor.lhs.false
  %37 = load i32, ptr %gap, align 4
  %add47 = add nsw i32 %37, 2
  %38 = load i32, ptr %nByte.addr, align 4
  %add48 = add nsw i32 %add47, %38
  %39 = load i32, ptr %top, align 4
  %cmp49 = icmp sgt i32 %add48, %39
  br i1 %cmp49, label %if.then51, label %if.end76

if.then51:                                        ; preds = %if.end46
  %40 = load ptr, ptr %pPage.addr, align 8
  %41 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 13
  %42 = load i32, ptr %nFree, align 4
  %43 = load i32, ptr %nByte.addr, align 4
  %add52 = add nsw i32 2, %43
  %sub = sub nsw i32 %42, %add52
  %cmp53 = icmp slt i32 4, %sub
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then51
  br label %cond.end

cond.false:                                       ; preds = %if.then51
  %44 = load ptr, ptr %pPage.addr, align 8
  %nFree55 = getelementptr inbounds nuw %struct.MemPage, ptr %44, i32 0, i32 13
  %45 = load i32, ptr %nFree55, align 4
  %46 = load i32, ptr %nByte.addr, align 4
  %add56 = add nsw i32 2, %46
  %sub57 = sub nsw i32 %45, %add56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %sub57, %cond.false ]
  %call58 = call i32 @defragmentPage(ptr noundef %40, i32 noundef %cond)
  store i32 %call58, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %cond.end
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %cond.end
  %49 = load ptr, ptr %data, align 8
  %50 = load i32, ptr %hdr, align 4
  %add62 = add nsw i32 %50, 5
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %49, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds i8, ptr %arrayidx64, i64 0
  %51 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %51 to i32
  %shl67 = shl i32 %conv66, 8
  %52 = load ptr, ptr %data, align 8
  %53 = load i32, ptr %hdr, align 4
  %add68 = add nsw i32 %53, 5
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds i8, ptr %arrayidx70, i64 1
  %54 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %54 to i32
  %or73 = or i32 %shl67, %conv72
  %sub74 = sub nsw i32 %or73, 1
  %and = and i32 %sub74, 65535
  %add75 = add nsw i32 %and, 1
  store i32 %add75, ptr %top, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end61, %if.end46
  %55 = load i32, ptr %nByte.addr, align 4
  %56 = load i32, ptr %top, align 4
  %sub77 = sub nsw i32 %56, %55
  store i32 %sub77, ptr %top, align 4
  %57 = load i32, ptr %top, align 4
  %shr = ashr i32 %57, 8
  %conv78 = trunc i32 %shr to i8
  %58 = load ptr, ptr %data, align 8
  %59 = load i32, ptr %hdr, align 4
  %add79 = add nsw i32 %59, 5
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %58, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds i8, ptr %arrayidx81, i64 0
  store i8 %conv78, ptr %arrayidx82, align 1
  %60 = load i32, ptr %top, align 4
  %conv83 = trunc i32 %60 to i8
  %61 = load ptr, ptr %data, align 8
  %62 = load i32, ptr %hdr, align 4
  %add84 = add nsw i32 %62, 5
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %61, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx86, i64 1
  store i8 %conv83, ptr %arrayidx87, align 1
  %63 = load i32, ptr %top, align 4
  %64 = load ptr, ptr %pIdx.addr, align 8
  store i32 %63, ptr %64, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then60, %if.then43, %if.else40, %if.then38, %if.else
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pageFindSlot(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @defragmentPage(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
