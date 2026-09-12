; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtreePayload = type { ptr, i64, ptr, ptr, i16, i32, i32 }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerPageRefcount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeOverwriteCell(ptr noundef %pCur, ptr noundef %pX) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %iOffset = alloca i32, align 4
  %nTotal = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %ovflPgno = alloca i32, align 4
  %ovflPageSize = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  %0 = load ptr, ptr %pX.addr, align 8
  %nData = getelementptr inbounds nuw %struct.BtreePayload, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nData, align 4
  %2 = load ptr, ptr %pX.addr, align 8
  %nZero = getelementptr inbounds nuw %struct.BtreePayload, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nZero, align 8
  %add = add nsw i32 %1, %3
  store i32 %add, ptr %nTotal, align 4
  %4 = load ptr, ptr %pCur.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pPage1, align 8
  store ptr %5, ptr %pPage, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 10
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 1
  %7 = load ptr, ptr %pPayload, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %info2 = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 10
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info2, i32 0, i32 3
  %9 = load i16, ptr %nLocal, align 4
  %conv = zext i16 %9 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load ptr, ptr %pPage, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %aDataEnd, align 8
  %cmp = icmp ugt ptr %add.ptr, %11
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load ptr, ptr %pCur.addr, align 8
  %info4 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 10
  %pPayload5 = getelementptr inbounds nuw %struct.CellInfo, ptr %info4, i32 0, i32 1
  %13 = load ptr, ptr %pPayload5, align 8
  %14 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %aData, align 8
  %16 = load ptr, ptr %pPage, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 12
  %17 = load i16, ptr %cellOffset, align 2
  %conv6 = zext i16 %17 to i32
  %idx.ext7 = sext i32 %conv6 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %15, i64 %idx.ext7
  %cmp9 = icmp ult ptr %13, %add.ptr8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 71884)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %18 = load ptr, ptr %pPage, align 8
  %19 = load ptr, ptr %pCur.addr, align 8
  %info11 = getelementptr inbounds nuw %struct.BtCursor, ptr %19, i32 0, i32 10
  %pPayload12 = getelementptr inbounds nuw %struct.CellInfo, ptr %info11, i32 0, i32 1
  %20 = load ptr, ptr %pPayload12, align 8
  %21 = load ptr, ptr %pX.addr, align 8
  %22 = load ptr, ptr %pCur.addr, align 8
  %info13 = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 10
  %nLocal14 = getelementptr inbounds nuw %struct.CellInfo, ptr %info13, i32 0, i32 3
  %23 = load i16, ptr %nLocal14, align 4
  %conv15 = zext i16 %23 to i32
  %call16 = call i32 @btreeOverwriteContent(ptr noundef %18, ptr noundef %20, ptr noundef %21, i32 noundef 0, i32 noundef %conv15)
  store i32 %call16, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  %26 = load ptr, ptr %pCur.addr, align 8
  %info19 = getelementptr inbounds nuw %struct.BtCursor, ptr %26, i32 0, i32 10
  %nLocal20 = getelementptr inbounds nuw %struct.CellInfo, ptr %info19, i32 0, i32 3
  %27 = load i16, ptr %nLocal20, align 4
  %conv21 = zext i16 %27 to i32
  %28 = load i32, ptr %nTotal, align 4
  %cmp22 = icmp eq i32 %conv21, %28
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end18
  %29 = load ptr, ptr %pCur.addr, align 8
  %info26 = getelementptr inbounds nuw %struct.BtCursor, ptr %29, i32 0, i32 10
  %nLocal27 = getelementptr inbounds nuw %struct.CellInfo, ptr %info26, i32 0, i32 3
  %30 = load i16, ptr %nLocal27, align 4
  %conv28 = zext i16 %30 to i32
  store i32 %conv28, ptr %iOffset, align 4
  %31 = load ptr, ptr %pCur.addr, align 8
  %info29 = getelementptr inbounds nuw %struct.BtCursor, ptr %31, i32 0, i32 10
  %pPayload30 = getelementptr inbounds nuw %struct.CellInfo, ptr %info29, i32 0, i32 1
  %32 = load ptr, ptr %pPayload30, align 8
  %33 = load i32, ptr %iOffset, align 4
  %idx.ext31 = sext i32 %33 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %32, i64 %idx.ext31
  %call33 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr32)
  store i32 %call33, ptr %ovflPgno, align 4
  %34 = load ptr, ptr %pPage, align 8
  %pBt34 = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 18
  %35 = load ptr, ptr %pBt34, align 8
  store ptr %35, ptr %pBt, align 8
  %36 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %36, i32 0, i32 16
  %37 = load i32, ptr %usableSize, align 4
  %sub = sub i32 %37, 4
  store i32 %sub, ptr %ovflPageSize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end25
  %38 = load ptr, ptr %pBt, align 8
  %39 = load i32, ptr %ovflPgno, align 4
  %call35 = call i32 @btreeGetPage(ptr noundef %38, i32 noundef %39, ptr noundef %pPage, i32 noundef 0)
  store i32 %call35, ptr %rc, align 4
  %40 = load i32, ptr %rc, align 4
  %tobool36 = icmp ne i32 %40, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body
  %41 = load i32, ptr %rc, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %do.body
  %42 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %42, i32 0, i32 23
  %43 = load ptr, ptr %pDbPage, align 8
  %call39 = call i32 @sqlite3PagerPageRefcount(ptr noundef %43)
  %cmp40 = icmp ne i32 %call39, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end38
  %call43 = call i32 @sqlite3CorruptError(i32 noundef 71903)
  store i32 %call43, ptr %rc, align 4
  br label %if.end56

if.else:                                          ; preds = %if.end38
  %44 = load i32, ptr %iOffset, align 4
  %45 = load i32, ptr %ovflPageSize, align 4
  %add44 = add i32 %44, %45
  %46 = load i32, ptr %nTotal, align 4
  %cmp45 = icmp ult i32 %add44, %46
  br i1 %cmp45, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.else
  %47 = load ptr, ptr %pPage, align 8
  %aData48 = getelementptr inbounds nuw %struct.MemPage, ptr %47, i32 0, i32 19
  %48 = load ptr, ptr %aData48, align 8
  %call49 = call i32 @sqlite3Get4byte(ptr noundef %48)
  store i32 %call49, ptr %ovflPgno, align 4
  br label %if.end52

if.else50:                                        ; preds = %if.else
  %49 = load i32, ptr %nTotal, align 4
  %50 = load i32, ptr %iOffset, align 4
  %sub51 = sub nsw i32 %49, %50
  store i32 %sub51, ptr %ovflPageSize, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then47
  %51 = load ptr, ptr %pPage, align 8
  %52 = load ptr, ptr %pPage, align 8
  %aData53 = getelementptr inbounds nuw %struct.MemPage, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %aData53, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %53, i64 4
  %54 = load ptr, ptr %pX.addr, align 8
  %55 = load i32, ptr %iOffset, align 4
  %56 = load i32, ptr %ovflPageSize, align 4
  %call55 = call i32 @btreeOverwriteContent(ptr noundef %51, ptr noundef %add.ptr54, ptr noundef %54, i32 noundef %55, i32 noundef %56)
  store i32 %call55, ptr %rc, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.then42
  %57 = load ptr, ptr %pPage, align 8
  %pDbPage57 = getelementptr inbounds nuw %struct.MemPage, ptr %57, i32 0, i32 23
  %58 = load ptr, ptr %pDbPage57, align 8
  call void @sqlite3PagerUnref(ptr noundef %58)
  %59 = load i32, ptr %rc, align 4
  %tobool58 = icmp ne i32 %59, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  %60 = load i32, ptr %rc, align 4
  store i32 %60, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %61 = load i32, ptr %ovflPageSize, align 4
  %62 = load i32, ptr %iOffset, align 4
  %add61 = add i32 %62, %61
  store i32 %add61, ptr %iOffset, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end60
  %63 = load i32, ptr %iOffset, align 4
  %64 = load i32, ptr %nTotal, align 4
  %cmp62 = icmp slt i32 %63, %64
  br i1 %cmp62, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then59, %if.then37, %if.then24, %if.then17, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeOverwriteContent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
