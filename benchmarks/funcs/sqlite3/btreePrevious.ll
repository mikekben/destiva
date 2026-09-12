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
declare hidden i32 @sqlite3BtreePrevious(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeRestoreCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @moveToParent(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRightmost(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreePrevious(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %eState2 = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %eState2, align 8
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp sge i32 %conv3, 3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @btreeRestoreCursorPosition(ptr noundef %4)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %cond.end
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load ptr, ptr %pCur.addr, align 8
  %eState9 = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %eState9, align 8
  %conv10 = zext i8 %8 to i32
  %cmp11 = icmp eq i32 1, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 101, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %9 = load ptr, ptr %pCur.addr, align 8
  %eState15 = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %eState15, align 8
  %conv16 = zext i8 %10 to i32
  %cmp17 = icmp eq i32 2, %conv16
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end14
  %11 = load ptr, ptr %pCur.addr, align 8
  %eState20 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 0
  store i8 0, ptr %eState20, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %skipNext, align 4
  %cmp21 = icmp slt i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  %14 = load ptr, ptr %pCur.addr, align 8
  %pPage27 = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %pPage27, align 8
  store ptr %15, ptr %pPage, align 8
  %16 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 5
  %17 = load i8, ptr %leaf, align 8
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  %18 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 15
  %19 = load i16, ptr %ix, align 2
  %conv29 = zext i16 %19 to i32
  store i32 %conv29, ptr %idx, align 4
  %20 = load ptr, ptr %pCur.addr, align 8
  %21 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 19
  %22 = load ptr, ptr %aData, align 8
  %23 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 15
  %24 = load i16, ptr %maskPage, align 2
  %conv30 = zext i16 %24 to i32
  %25 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 21
  %26 = load ptr, ptr %aCellIdx, align 8
  %27 = load i32, ptr %idx, align 4
  %mul = mul nsw i32 2, %27
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom
  %arrayidx31 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %28 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %28 to i32
  %shl = shl i32 %conv32, 8
  %29 = load ptr, ptr %pPage, align 8
  %aCellIdx33 = getelementptr inbounds nuw %struct.MemPage, ptr %29, i32 0, i32 21
  %30 = load ptr, ptr %aCellIdx33, align 8
  %31 = load i32, ptr %idx, align 4
  %mul34 = mul nsw i32 2, %31
  %idxprom35 = sext i32 %mul34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %30, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds i8, ptr %arrayidx36, i64 1
  %32 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %32 to i32
  %or = or i32 %shl, %conv38
  %and = and i32 %conv30, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  %call39 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr)
  %call40 = call i32 @moveToChild(ptr noundef %20, i32 noundef %call39)
  store i32 %call40, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %tobool41 = icmp ne i32 %33, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then28
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then28
  %35 = load ptr, ptr %pCur.addr, align 8
  %call44 = call i32 @moveToRightmost(ptr noundef %35)
  store i32 %call44, ptr %rc, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end26
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %if.else
  %36 = load ptr, ptr %pCur.addr, align 8
  %ix45 = getelementptr inbounds nuw %struct.BtCursor, ptr %36, i32 0, i32 15
  %37 = load i16, ptr %ix45, align 2
  %conv46 = zext i16 %37 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %38, i32 0, i32 13
  %39 = load i8, ptr %iPage, align 4
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %while.body
  %40 = load ptr, ptr %pCur.addr, align 8
  %eState53 = getelementptr inbounds nuw %struct.BtCursor, ptr %40, i32 0, i32 0
  store i8 1, ptr %eState53, align 8
  store i32 101, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %while.body
  %41 = load ptr, ptr %pCur.addr, align 8
  call void @moveToParent(ptr noundef %41)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %42 = load ptr, ptr %pCur.addr, align 8
  %ix55 = getelementptr inbounds nuw %struct.BtCursor, ptr %42, i32 0, i32 15
  %43 = load i16, ptr %ix55, align 2
  %dec = add i16 %43, -1
  store i16 %dec, ptr %ix55, align 2
  %44 = load ptr, ptr %pCur.addr, align 8
  %pPage56 = getelementptr inbounds nuw %struct.BtCursor, ptr %44, i32 0, i32 18
  %45 = load ptr, ptr %pPage56, align 8
  store ptr %45, ptr %pPage, align 8
  %46 = load ptr, ptr %pPage, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 2
  %47 = load i8, ptr %intKey, align 2
  %conv57 = zext i8 %47 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %while.end
  %48 = load ptr, ptr %pPage, align 8
  %leaf59 = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 5
  %49 = load i8, ptr %leaf59, align 8
  %tobool60 = icmp ne i8 %49, 0
  br i1 %tobool60, label %if.else63, label %if.then61

if.then61:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %pCur.addr, align 8
  %call62 = call i32 @sqlite3BtreePrevious(ptr noundef %50, i32 noundef 0)
  store i32 %call62, ptr %rc, align 4
  br label %if.end64

if.else63:                                        ; preds = %land.lhs.true, %while.end
  store i32 0, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then61
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end43
  %51 = load i32, ptr %rc, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then52, %if.then42, %if.then23, %if.then13, %if.then8
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
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
