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
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeNext(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeRestoreCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @moveToParent(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeNext(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %idx = alloca i32, align 4
  %pPage = alloca ptr, align 8
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
  %cmp17 = icmp eq i32 %conv16, 2
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end14
  %11 = load ptr, ptr %pCur.addr, align 8
  %eState20 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 0
  store i8 0, ptr %eState20, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %skipNext, align 4
  %cmp21 = icmp sgt i32 %13, 0
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
  %16 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 15
  %17 = load i16, ptr %ix, align 2
  %inc = add i16 %17, 1
  store i16 %inc, ptr %ix, align 2
  %conv28 = zext i16 %inc to i32
  store i32 %conv28, ptr %idx, align 4
  %18 = load ptr, ptr %pPage, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %18, i32 0, i32 0
  %19 = load i8, ptr %isInit, align 8
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @sqlite3CorruptError(i32 noundef 69096)
  store i32 %call30, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %20 = load i32, ptr %idx, align 4
  %21 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 14
  %22 = load i16, ptr %nCell, align 8
  %conv32 = zext i16 %22 to i32
  %cmp33 = icmp sge i32 %20, %conv32
  br i1 %cmp33, label %if.then35, label %if.end62

if.then35:                                        ; preds = %if.end31
  %23 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 5
  %24 = load i8, ptr %leaf, align 8
  %tobool36 = icmp ne i8 %24, 0
  br i1 %tobool36, label %if.end45, label %if.then37

if.then37:                                        ; preds = %if.then35
  %25 = load ptr, ptr %pCur.addr, align 8
  %26 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %aData, align 8
  %28 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 6
  %29 = load i8, ptr %hdrOffset, align 1
  %conv38 = zext i8 %29 to i32
  %add = add nsw i32 %conv38, 8
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %27, i64 %idxprom
  %call39 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  %call40 = call i32 @moveToChild(ptr noundef %25, i32 noundef %call39)
  store i32 %call40, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %tobool41 = icmp ne i32 %30, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then37
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then37
  %32 = load ptr, ptr %pCur.addr, align 8
  %call44 = call i32 @moveToLeftmost(ptr noundef %32)
  store i32 %call44, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then35
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end45
  %33 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %33, i32 0, i32 13
  %34 = load i8, ptr %iPage, align 4
  %conv46 = sext i8 %34 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %do.body
  %35 = load ptr, ptr %pCur.addr, align 8
  %eState50 = getelementptr inbounds nuw %struct.BtCursor, ptr %35, i32 0, i32 0
  store i8 1, ptr %eState50, align 8
  store i32 101, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %do.body
  %36 = load ptr, ptr %pCur.addr, align 8
  call void @moveToParent(ptr noundef %36)
  %37 = load ptr, ptr %pCur.addr, align 8
  %pPage52 = getelementptr inbounds nuw %struct.BtCursor, ptr %37, i32 0, i32 18
  %38 = load ptr, ptr %pPage52, align 8
  store ptr %38, ptr %pPage, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end51
  %39 = load ptr, ptr %pCur.addr, align 8
  %ix53 = getelementptr inbounds nuw %struct.BtCursor, ptr %39, i32 0, i32 15
  %40 = load i16, ptr %ix53, align 2
  %conv54 = zext i16 %40 to i32
  %41 = load ptr, ptr %pPage, align 8
  %nCell55 = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 14
  %42 = load i16, ptr %nCell55, align 8
  %conv56 = zext i16 %42 to i32
  %cmp57 = icmp sge i32 %conv54, %conv56
  br i1 %cmp57, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %43 = load ptr, ptr %pPage, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 2
  %44 = load i8, ptr %intKey, align 2
  %tobool59 = icmp ne i8 %44, 0
  br i1 %tobool59, label %if.then60, label %if.else

if.then60:                                        ; preds = %do.end
  %45 = load ptr, ptr %pCur.addr, align 8
  %call61 = call i32 @sqlite3BtreeNext(ptr noundef %45, i32 noundef 0)
  store i32 %call61, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end31
  %46 = load ptr, ptr %pPage, align 8
  %leaf63 = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 5
  %47 = load i8, ptr %leaf63, align 8
  %tobool64 = icmp ne i8 %47, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  br label %return

if.else66:                                        ; preds = %if.end62
  %48 = load ptr, ptr %pCur.addr, align 8
  %call67 = call i32 @moveToLeftmost(ptr noundef %48)
  store i32 %call67, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else66, %if.then65, %if.else, %if.then60, %if.then49, %if.end43, %if.then42, %if.then29, %if.then23, %if.then13, %if.then8
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToLeftmost(ptr noundef) #0

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
