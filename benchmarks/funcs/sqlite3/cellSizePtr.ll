; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @cellSizePtr(ptr noundef %pPage, ptr noundef %pCell) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %nSize = alloca i32, align 4
  %minLocal = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
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
  store i32 %conv1, ptr %nSize, align 4
  %5 = load i32, ptr %nSize, align 4
  %cmp = icmp uge i32 %5, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pIter, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %arrayidx, ptr %pEnd, align 8
  %7 = load i32, ptr %nSize, align 4
  %and = and i32 %7, 127
  store i32 %and, ptr %nSize, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %8 = load i32, ptr %nSize, align 4
  %shl = shl i32 %8, 7
  %9 = load ptr, ptr %pIter, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pIter, align 8
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv3 = zext i8 %10 to i32
  %and4 = and i32 %conv3, 127
  %or = or i32 %shl, %and4
  store i32 %or, ptr %nSize, align 4
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
  %17 = load ptr, ptr %pPage.addr, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 2
  %18 = load i8, ptr %intKey, align 2
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.end
  %19 = load ptr, ptr %pIter, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 9
  store ptr %arrayidx12, ptr %pEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then11
  %20 = load ptr, ptr %pIter, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr13, ptr %pIter, align 8
  %21 = load i8, ptr %20, align 1
  %conv14 = zext i8 %21 to i32
  %and15 = and i32 %conv14, 128
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.rhs17, label %land.end20

land.rhs17:                                       ; preds = %while.cond
  %22 = load ptr, ptr %pIter, align 8
  %23 = load ptr, ptr %pEnd, align 8
  %cmp18 = icmp ult ptr %22, %23
  br label %land.end20

land.end20:                                       ; preds = %land.rhs17, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs17 ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end20
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end20
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.end
  %25 = load i32, ptr %nSize, align 4
  %26 = load ptr, ptr %pPage.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 10
  %27 = load i16, ptr %maxLocal, align 2
  %conv22 = zext i16 %27 to i32
  %cmp23 = icmp ule i32 %25, %conv22
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %28 = load ptr, ptr %pIter, align 8
  %29 = load ptr, ptr %pCell.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %30 = load i32, ptr %nSize, align 4
  %add = add i32 %30, %conv26
  store i32 %add, ptr %nSize, align 4
  %31 = load i32, ptr %nSize, align 4
  %cmp27 = icmp ult i32 %31, 4
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i32 4, ptr %nSize, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25
  br label %if.end48

if.else:                                          ; preds = %if.end21
  %32 = load ptr, ptr %pPage.addr, align 8
  %minLocal31 = getelementptr inbounds nuw %struct.MemPage, ptr %32, i32 0, i32 11
  %33 = load i16, ptr %minLocal31, align 8
  %conv32 = zext i16 %33 to i32
  store i32 %conv32, ptr %minLocal, align 4
  %34 = load i32, ptr %minLocal, align 4
  %35 = load i32, ptr %nSize, align 4
  %36 = load i32, ptr %minLocal, align 4
  %sub = sub i32 %35, %36
  %37 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 18
  %38 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %38, i32 0, i32 16
  %39 = load i32, ptr %usableSize, align 4
  %sub33 = sub i32 %39, 4
  %rem = urem i32 %sub, %sub33
  %add34 = add i32 %34, %rem
  store i32 %add34, ptr %nSize, align 4
  %40 = load i32, ptr %nSize, align 4
  %41 = load ptr, ptr %pPage.addr, align 8
  %maxLocal35 = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 10
  %42 = load i16, ptr %maxLocal35, align 2
  %conv36 = zext i16 %42 to i32
  %cmp37 = icmp ugt i32 %40, %conv36
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.else
  %43 = load i32, ptr %minLocal, align 4
  store i32 %43, ptr %nSize, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.else
  %44 = load ptr, ptr %pIter, align 8
  %45 = load ptr, ptr %pCell.addr, align 8
  %sub.ptr.lhs.cast41 = ptrtoint ptr %44 to i64
  %sub.ptr.rhs.cast42 = ptrtoint ptr %45 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %conv44 = trunc i64 %sub.ptr.sub43 to i16
  %conv45 = zext i16 %conv44 to i32
  %add46 = add nsw i32 4, %conv45
  %46 = load i32, ptr %nSize, align 4
  %add47 = add i32 %46, %add46
  store i32 %add47, ptr %nSize, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end40, %if.end30
  %47 = load i32, ptr %nSize, align 4
  %conv49 = trunc i32 %47 to i16
  ret i16 %conv49
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
!8 = distinct !{!8, !7}
