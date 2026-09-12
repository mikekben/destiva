; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden void @btreeParseCellPtrIndex(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pInfo) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  %nPayload = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pCell.addr, align 8
  %1 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 7
  %2 = load i8, ptr %childPtrSize, align 2
  %conv = zext i8 %2 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %pIter, align 8
  %3 = load ptr, ptr %pIter, align 8
  %4 = load i8, ptr %3, align 1
  %conv1 = zext i8 %4 to i32
  store i32 %conv1, ptr %nPayload, align 4
  %5 = load i32, ptr %nPayload, align 4
  %cmp = icmp uge i32 %5, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pIter, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %arrayidx, ptr %pEnd, align 8
  %7 = load i32, ptr %nPayload, align 4
  %and = and i32 %7, 127
  store i32 %and, ptr %nPayload, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %8 = load i32, ptr %nPayload, align 4
  %shl = shl i32 %8, 7
  %9 = load ptr, ptr %pIter, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pIter, align 8
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv3 = zext i8 %10 to i32
  %and4 = and i32 %conv3, 127
  %or = or i32 %shl, %and4
  store i32 %or, ptr %nPayload, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load ptr, ptr %pIter, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp sge i32 %conv5, 128
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %13 = load ptr, ptr %pIter, align 8
  %14 = load ptr, ptr %pEnd, align 8
  %cmp8 = icmp ult ptr %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %15 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs ]
  br i1 %15, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %16 = load ptr, ptr %pIter, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pIter, align 8
  %17 = load i32, ptr %nPayload, align 4
  %conv11 = zext i32 %17 to i64
  %18 = load ptr, ptr %pInfo.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %18, i32 0, i32 0
  store i64 %conv11, ptr %nKey, align 8
  %19 = load i32, ptr %nPayload, align 4
  %20 = load ptr, ptr %pInfo.addr, align 8
  %nPayload12 = getelementptr inbounds nuw %struct.CellInfo, ptr %20, i32 0, i32 2
  store i32 %19, ptr %nPayload12, align 8
  %21 = load ptr, ptr %pIter, align 8
  %22 = load ptr, ptr %pInfo.addr, align 8
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %22, i32 0, i32 1
  store ptr %21, ptr %pPayload, align 8
  %23 = load i32, ptr %nPayload, align 4
  %24 = load ptr, ptr %pPage.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 10
  %25 = load i16, ptr %maxLocal, align 2
  %conv13 = zext i16 %25 to i32
  %cmp14 = icmp ule i32 %23, %conv13
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %26 = load i32, ptr %nPayload, align 4
  %27 = load ptr, ptr %pIter, align 8
  %28 = load ptr, ptr %pCell.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv17 = trunc i64 %sub.ptr.sub to i16
  %conv18 = zext i16 %conv17 to i32
  %add = add i32 %26, %conv18
  %conv19 = trunc i32 %add to i16
  %29 = load ptr, ptr %pInfo.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %29, i32 0, i32 4
  store i16 %conv19, ptr %nSize, align 2
  %30 = load ptr, ptr %pInfo.addr, align 8
  %nSize20 = getelementptr inbounds nuw %struct.CellInfo, ptr %30, i32 0, i32 4
  %31 = load i16, ptr %nSize20, align 2
  %conv21 = zext i16 %31 to i32
  %cmp22 = icmp slt i32 %conv21, 4
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then16
  %32 = load ptr, ptr %pInfo.addr, align 8
  %nSize25 = getelementptr inbounds nuw %struct.CellInfo, ptr %32, i32 0, i32 4
  store i16 4, ptr %nSize25, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then16
  %33 = load i32, ptr %nPayload, align 4
  %conv27 = trunc i32 %33 to i16
  %34 = load ptr, ptr %pInfo.addr, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %34, i32 0, i32 3
  store i16 %conv27, ptr %nLocal, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %35 = load ptr, ptr %pPage.addr, align 8
  %36 = load ptr, ptr %pCell.addr, align 8
  %37 = load ptr, ptr %pInfo.addr, align 8
  call void @btreeParseCellAdjustSizeForOverflow(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end26
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
