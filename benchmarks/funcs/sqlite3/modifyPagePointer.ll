; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @modifyPagePointer(ptr noundef %pPage, i32 noundef %iFrom, i32 noundef %iTo, i8 noundef zeroext %eType) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %iFrom.addr = alloca i32, align 4
  %iTo.addr = alloca i32, align 4
  %eType.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %nCell = alloca i32, align 4
  %rc = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %info = alloca %struct.CellInfo, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %iFrom, ptr %iFrom.addr, align 4
  store i32 %iTo, ptr %iTo.addr, align 4
  store i8 %eType, ptr %eType.addr, align 1
  %0 = load i8, ptr %eType.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %aData, align 8
  %call = call i32 @sqlite3Get4byte(ptr noundef %2)
  %3 = load i32, ptr %iFrom.addr, align 4
  %cmp2 = icmp ne i32 %call, %3
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @sqlite3CorruptError(i32 noundef 66981)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %pPage.addr, align 8
  %aData6 = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %aData6, align 8
  %6 = load i32, ptr %iTo.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %5, i32 noundef %6)
  br label %if.end91

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pPage.addr, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %isInit, align 8
  %conv7 = zext i8 %8 to i32
  %tobool = icmp ne i32 %conv7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %9 = load ptr, ptr %pPage.addr, align 8
  %call8 = call i32 @btreeInitPage(ptr noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call8, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %cond.end
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %cond.end
  %12 = load ptr, ptr %pPage.addr, align 8
  %nCell12 = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 14
  %13 = load i16, ptr %nCell12, align 8
  %conv13 = zext i16 %13 to i32
  store i32 %conv13, ptr %nCell, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %nCell, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pPage.addr, align 8
  %aData16 = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %aData16, align 8
  %18 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %18, i32 0, i32 15
  %19 = load i16, ptr %maskPage, align 2
  %conv17 = zext i16 %19 to i32
  %20 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 21
  %21 = load ptr, ptr %aCellIdx, align 8
  %22 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %22
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %arrayidx18 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %23 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %shl = shl i32 %conv19, 8
  %24 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx20 = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 21
  %25 = load ptr, ptr %aCellIdx20, align 8
  %26 = load i32, ptr %i, align 4
  %mul21 = mul nsw i32 2, %26
  %idxprom22 = sext i32 %mul21 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %25, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds i8, ptr %arrayidx23, i64 1
  %27 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %27 to i32
  %or = or i32 %shl, %conv25
  %and = and i32 %conv17, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %28 = load i8, ptr %eType.addr, align 1
  %conv26 = zext i8 %28 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %if.then29, label %if.else61

if.then29:                                        ; preds = %for.body
  %29 = load ptr, ptr %pPage.addr, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %29, i32 0, i32 25
  %30 = load ptr, ptr %xParseCell, align 8
  %31 = load ptr, ptr %pPage.addr, align 8
  %32 = load ptr, ptr %pCell, align 8
  call void %30(ptr noundef %31, ptr noundef %32, ptr noundef %info)
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %33 = load i16, ptr %nLocal, align 4
  %conv30 = zext i16 %33 to i32
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 2
  %34 = load i32, ptr %nPayload, align 8
  %cmp31 = icmp ult i32 %conv30, %34
  br i1 %cmp31, label %if.then33, label %if.end60

if.then33:                                        ; preds = %if.then29
  %35 = load ptr, ptr %pCell, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %36 = load i16, ptr %nSize, align 2
  %conv34 = zext i16 %36 to i32
  %idx.ext35 = sext i32 %conv34 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %35, i64 %idx.ext35
  %37 = load ptr, ptr %pPage.addr, align 8
  %aData37 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %aData37, align 8
  %39 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 18
  %40 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %40, i32 0, i32 16
  %41 = load i32, ptr %usableSize, align 4
  %idx.ext38 = zext i32 %41 to i64
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %38, i64 %idx.ext38
  %cmp40 = icmp ugt ptr %add.ptr36, %add.ptr39
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then33
  %call43 = call i32 @sqlite3CorruptError(i32 noundef 67000)
  store i32 %call43, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then33
  %42 = load i32, ptr %iFrom.addr, align 4
  %43 = load ptr, ptr %pCell, align 8
  %nSize45 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %44 = load i16, ptr %nSize45, align 2
  %conv46 = zext i16 %44 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %43, i64 %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr48, i64 -4
  %call50 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr49)
  %cmp51 = icmp eq i32 %42, %call50
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end44
  %45 = load ptr, ptr %pCell, align 8
  %nSize54 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %46 = load i16, ptr %nSize54, align 2
  %conv55 = zext i16 %46 to i32
  %idx.ext56 = sext i32 %conv55 to i64
  %add.ptr57 = getelementptr inbounds i8, ptr %45, i64 %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %add.ptr57, i64 -4
  %47 = load i32, ptr %iTo.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %add.ptr58, i32 noundef %47)
  br label %for.end

if.end59:                                         ; preds = %if.end44
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then29
  br label %if.end67

if.else61:                                        ; preds = %for.body
  %48 = load ptr, ptr %pCell, align 8
  %call62 = call i32 @sqlite3Get4byte(ptr noundef %48)
  %49 = load i32, ptr %iFrom.addr, align 4
  %cmp63 = icmp eq i32 %call62, %49
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.else61
  %50 = load ptr, ptr %pCell, align 8
  %51 = load i32, ptr %iTo.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %50, i32 noundef %51)
  br label %for.end

if.end66:                                         ; preds = %if.else61
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end60
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %52 = load i32, ptr %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then65, %if.then53, %for.cond
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %nCell, align 4
  %cmp68 = icmp eq i32 %53, %54
  br i1 %cmp68, label %if.then70, label %if.end90

if.then70:                                        ; preds = %for.end
  %55 = load i8, ptr %eType.addr, align 1
  %conv71 = zext i8 %55 to i32
  %cmp72 = icmp ne i32 %conv71, 5
  br i1 %cmp72, label %if.then81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then70
  %56 = load ptr, ptr %pPage.addr, align 8
  %aData74 = getelementptr inbounds nuw %struct.MemPage, ptr %56, i32 0, i32 19
  %57 = load ptr, ptr %aData74, align 8
  %58 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %58, i32 0, i32 6
  %59 = load i8, ptr %hdrOffset, align 1
  %conv75 = zext i8 %59 to i32
  %add = add nsw i32 %conv75, 8
  %idxprom76 = sext i32 %add to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %57, i64 %idxprom76
  %call78 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx77)
  %60 = load i32, ptr %iFrom.addr, align 4
  %cmp79 = icmp ne i32 %call78, %60
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %lor.lhs.false, %if.then70
  %call82 = call i32 @sqlite3CorruptError(i32 noundef 67018)
  store i32 %call82, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %lor.lhs.false
  %61 = load ptr, ptr %pPage.addr, align 8
  %aData84 = getelementptr inbounds nuw %struct.MemPage, ptr %61, i32 0, i32 19
  %62 = load ptr, ptr %aData84, align 8
  %63 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset85 = getelementptr inbounds nuw %struct.MemPage, ptr %63, i32 0, i32 6
  %64 = load i8, ptr %hdrOffset85, align 1
  %conv86 = zext i8 %64 to i32
  %add87 = add nsw i32 %conv86, 8
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %62, i64 %idxprom88
  %65 = load i32, ptr %iTo.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx89, i32 noundef %65)
  br label %if.end90

if.end90:                                         ; preds = %if.end83, %for.end
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end91, %if.then81, %if.then42, %if.then10, %if.then4
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
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
