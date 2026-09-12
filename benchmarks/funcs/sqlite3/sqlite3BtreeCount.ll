; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCount(ptr noundef %pCur, ptr noundef %pnEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pnEntry.addr = alloca ptr, align 8
  %nEntry = alloca i64, align 8
  %rc = alloca i32, align 4
  %iIdx = alloca i32, align 4
  %pPage = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pnEntry, ptr %pnEntry.addr, align 8
  store i64 0, ptr %nEntry, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @moveToRoot(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pnEntry.addr, align 8
  store i64 0, ptr %2, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end50, %if.end
  %3 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pCur.addr, align 8
  %pPage2 = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pPage2, align 8
  store ptr %5, ptr %pPage, align 8
  %6 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 5
  %7 = load i8, ptr %leaf, align 8
  %conv = zext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load ptr, ptr %pPage, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %intKey, align 2
  %tobool3 = icmp ne i8 %9, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %while.body
  %10 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 14
  %11 = load i16, ptr %nCell, align 8
  %conv5 = zext i16 %11 to i64
  %12 = load i64, ptr %nEntry, align 8
  %add = add nsw i64 %12, %conv5
  store i64 %add, ptr %nEntry, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %13 = load ptr, ptr %pPage, align 8
  %leaf7 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 5
  %14 = load i8, ptr %leaf7, align 8
  %tobool8 = icmp ne i8 %14, 0
  br i1 %tobool8, label %if.then9, label %if.end24

if.then9:                                         ; preds = %if.end6
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then9
  %15 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 13
  %16 = load i8, ptr %iPage, align 4
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.body
  %17 = load i64, ptr %nEntry, align 8
  %18 = load ptr, ptr %pnEntry.addr, align 8
  store i64 %17, ptr %18, align 8
  %19 = load ptr, ptr %pCur.addr, align 8
  %call14 = call i32 @moveToRoot(ptr noundef %19)
  store i32 %call14, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %do.body
  %20 = load ptr, ptr %pCur.addr, align 8
  call void @moveToParent(ptr noundef %20)
  br label %do.cond

do.cond:                                          ; preds = %if.end15
  %21 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %21, i32 0, i32 15
  %22 = load i16, ptr %ix, align 2
  %conv16 = zext i16 %22 to i32
  %23 = load ptr, ptr %pCur.addr, align 8
  %pPage17 = getelementptr inbounds nuw %struct.BtCursor, ptr %23, i32 0, i32 18
  %24 = load ptr, ptr %pPage17, align 8
  %nCell18 = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 14
  %25 = load i16, ptr %nCell18, align 8
  %conv19 = zext i16 %25 to i32
  %cmp20 = icmp sge i32 %conv16, %conv19
  br i1 %cmp20, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %pCur.addr, align 8
  %ix22 = getelementptr inbounds nuw %struct.BtCursor, ptr %26, i32 0, i32 15
  %27 = load i16, ptr %ix22, align 2
  %inc = add i16 %27, 1
  store i16 %inc, ptr %ix22, align 2
  %28 = load ptr, ptr %pCur.addr, align 8
  %pPage23 = getelementptr inbounds nuw %struct.BtCursor, ptr %28, i32 0, i32 18
  %29 = load ptr, ptr %pPage23, align 8
  store ptr %29, ptr %pPage, align 8
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end6
  %30 = load ptr, ptr %pCur.addr, align 8
  %ix25 = getelementptr inbounds nuw %struct.BtCursor, ptr %30, i32 0, i32 15
  %31 = load i16, ptr %ix25, align 2
  %conv26 = zext i16 %31 to i32
  store i32 %conv26, ptr %iIdx, align 4
  %32 = load i32, ptr %iIdx, align 4
  %33 = load ptr, ptr %pPage, align 8
  %nCell27 = getelementptr inbounds nuw %struct.MemPage, ptr %33, i32 0, i32 14
  %34 = load i16, ptr %nCell27, align 8
  %conv28 = zext i16 %34 to i32
  %cmp29 = icmp eq i32 %32, %conv28
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end24
  %35 = load ptr, ptr %pCur.addr, align 8
  %36 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %36, i32 0, i32 19
  %37 = load ptr, ptr %aData, align 8
  %38 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 6
  %39 = load i8, ptr %hdrOffset, align 1
  %conv32 = zext i8 %39 to i32
  %add33 = add nsw i32 %conv32, 8
  %idxprom = sext i32 %add33 to i64
  %arrayidx = getelementptr inbounds i8, ptr %37, i64 %idxprom
  %call34 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  %call35 = call i32 @moveToChild(ptr noundef %35, i32 noundef %call34)
  store i32 %call35, ptr %rc, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end24
  %40 = load ptr, ptr %pCur.addr, align 8
  %41 = load ptr, ptr %pPage, align 8
  %aData36 = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 19
  %42 = load ptr, ptr %aData36, align 8
  %43 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 15
  %44 = load i16, ptr %maskPage, align 2
  %conv37 = zext i16 %44 to i32
  %45 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 21
  %46 = load ptr, ptr %aCellIdx, align 8
  %47 = load i32, ptr %iIdx, align 4
  %mul = mul nsw i32 2, %47
  %idxprom38 = sext i32 %mul to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %46, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds i8, ptr %arrayidx39, i64 0
  %48 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %48 to i32
  %shl = shl i32 %conv41, 8
  %49 = load ptr, ptr %pPage, align 8
  %aCellIdx42 = getelementptr inbounds nuw %struct.MemPage, ptr %49, i32 0, i32 21
  %50 = load ptr, ptr %aCellIdx42, align 8
  %51 = load i32, ptr %iIdx, align 4
  %mul43 = mul nsw i32 2, %51
  %idxprom44 = sext i32 %mul43 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %50, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds i8, ptr %arrayidx45, i64 1
  %52 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %52 to i32
  %or = or i32 %shl, %conv47
  %and = and i32 %conv37, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 %idx.ext
  %call48 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr)
  %call49 = call i32 @moveToChild(ptr noundef %40, i32 noundef %call48)
  store i32 %call49, ptr %rc, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then31
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %53 = load i32, ptr %rc, align 4
  store i32 %53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRoot(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @moveToParent(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

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
