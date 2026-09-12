; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @btreeParseCellPtr(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pInfo) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  %nPayload = alloca i32, align 4
  %iKey = alloca i64, align 8
  %pEnd = alloca ptr, align 8
  %pEnd14 = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pCell.addr, align 8
  store ptr %0, ptr %pIter, align 8
  %1 = load ptr, ptr %pIter, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %nPayload, align 4
  %3 = load i32, ptr %nPayload, align 4
  %cmp = icmp uge i32 %3, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pIter, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %arrayidx, ptr %pEnd, align 8
  %5 = load i32, ptr %nPayload, align 4
  %and = and i32 %5, 127
  store i32 %and, ptr %nPayload, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %6 = load i32, ptr %nPayload, align 4
  %shl = shl i32 %6, 7
  %7 = load ptr, ptr %pIter, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %pIter, align 8
  %8 = load i8, ptr %incdec.ptr, align 1
  %conv2 = zext i8 %8 to i32
  %and3 = and i32 %conv2, 127
  %or = or i32 %shl, %and3
  store i32 %or, ptr %nPayload, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load ptr, ptr %pIter, align 8
  %10 = load i8, ptr %9, align 1
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp sge i32 %conv4, 128
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %11 = load ptr, ptr %pIter, align 8
  %12 = load ptr, ptr %pEnd, align 8
  %cmp7 = icmp ult ptr %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %13 = phi i1 [ false, %do.cond ], [ %cmp7, %land.rhs ]
  br i1 %13, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %14 = load ptr, ptr %pIter, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %pIter, align 8
  %15 = load ptr, ptr %pIter, align 8
  %16 = load i8, ptr %15, align 1
  %conv10 = zext i8 %16 to i64
  store i64 %conv10, ptr %iKey, align 8
  %17 = load i64, ptr %iKey, align 8
  %cmp11 = icmp uge i64 %17, 128
  br i1 %cmp11, label %if.then13, label %if.end36

if.then13:                                        ; preds = %if.end
  %18 = load ptr, ptr %pIter, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 7
  store ptr %arrayidx15, ptr %pEnd14, align 8
  %19 = load i64, ptr %iKey, align 8
  %and16 = and i64 %19, 127
  store i64 %and16, ptr %iKey, align 8
  br label %while.body

while.body:                                       ; preds = %if.end35, %if.then13
  %20 = load i64, ptr %iKey, align 8
  %shl17 = shl i64 %20, 7
  %21 = load ptr, ptr %pIter, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr18, ptr %pIter, align 8
  %22 = load i8, ptr %incdec.ptr18, align 1
  %conv19 = zext i8 %22 to i32
  %and20 = and i32 %conv19, 127
  %conv21 = sext i32 %and20 to i64
  %or22 = or i64 %shl17, %conv21
  store i64 %or22, ptr %iKey, align 8
  %23 = load ptr, ptr %pIter, align 8
  %24 = load i8, ptr %23, align 1
  %conv23 = zext i8 %24 to i32
  %cmp24 = icmp slt i32 %conv23, 128
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.body
  br label %while.end

if.end27:                                         ; preds = %while.body
  %25 = load ptr, ptr %pIter, align 8
  %26 = load ptr, ptr %pEnd14, align 8
  %cmp28 = icmp uge ptr %25, %26
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end27
  %27 = load i64, ptr %iKey, align 8
  %shl31 = shl i64 %27, 8
  %28 = load ptr, ptr %pIter, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr32, ptr %pIter, align 8
  %29 = load i8, ptr %incdec.ptr32, align 1
  %conv33 = zext i8 %29 to i64
  %or34 = or i64 %shl31, %conv33
  store i64 %or34, ptr %iKey, align 8
  br label %while.end

if.end35:                                         ; preds = %if.end27
  br label %while.body

while.end:                                        ; preds = %if.then30, %if.then26
  br label %if.end36

if.end36:                                         ; preds = %while.end, %if.end
  %30 = load ptr, ptr %pIter, align 8
  %incdec.ptr37 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr37, ptr %pIter, align 8
  %31 = load i64, ptr %iKey, align 8
  %32 = load ptr, ptr %pInfo.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %32, i32 0, i32 0
  store i64 %31, ptr %nKey, align 8
  %33 = load i32, ptr %nPayload, align 4
  %34 = load ptr, ptr %pInfo.addr, align 8
  %nPayload38 = getelementptr inbounds nuw %struct.CellInfo, ptr %34, i32 0, i32 2
  store i32 %33, ptr %nPayload38, align 8
  %35 = load ptr, ptr %pIter, align 8
  %36 = load ptr, ptr %pInfo.addr, align 8
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %36, i32 0, i32 1
  store ptr %35, ptr %pPayload, align 8
  %37 = load i32, ptr %nPayload, align 4
  %38 = load ptr, ptr %pPage.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 10
  %39 = load i16, ptr %maxLocal, align 2
  %conv39 = zext i16 %39 to i32
  %cmp40 = icmp ule i32 %37, %conv39
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end36
  %40 = load i32, ptr %nPayload, align 4
  %41 = load ptr, ptr %pIter, align 8
  %42 = load ptr, ptr %pCell.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv43 = trunc i64 %sub.ptr.sub to i16
  %conv44 = zext i16 %conv43 to i32
  %add = add i32 %40, %conv44
  %conv45 = trunc i32 %add to i16
  %43 = load ptr, ptr %pInfo.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %43, i32 0, i32 4
  store i16 %conv45, ptr %nSize, align 2
  %44 = load ptr, ptr %pInfo.addr, align 8
  %nSize46 = getelementptr inbounds nuw %struct.CellInfo, ptr %44, i32 0, i32 4
  %45 = load i16, ptr %nSize46, align 2
  %conv47 = zext i16 %45 to i32
  %cmp48 = icmp slt i32 %conv47, 4
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then42
  %46 = load ptr, ptr %pInfo.addr, align 8
  %nSize51 = getelementptr inbounds nuw %struct.CellInfo, ptr %46, i32 0, i32 4
  store i16 4, ptr %nSize51, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then42
  %47 = load i32, ptr %nPayload, align 4
  %conv53 = trunc i32 %47 to i16
  %48 = load ptr, ptr %pInfo.addr, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %48, i32 0, i32 3
  store i16 %conv53, ptr %nLocal, align 4
  br label %if.end54

if.else:                                          ; preds = %if.end36
  %49 = load ptr, ptr %pPage.addr, align 8
  %50 = load ptr, ptr %pCell.addr, align 8
  %51 = load ptr, ptr %pInfo.addr, align 8
  call void @btreeParseCellAdjustSizeForOverflow(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end52
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @btreeParseCellAdjustSizeForOverflow(ptr noundef, ptr noundef, ptr noundef) #0

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
