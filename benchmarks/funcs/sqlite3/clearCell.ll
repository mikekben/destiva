; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
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
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getOverflowPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @clearCell(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %ovflPgno = alloca i32, align 4
  %rc = alloca i32, align 4
  %nOvfl = alloca i32, align 4
  %ovflPageSize = alloca i32, align 4
  %iNext = alloca i32, align 4
  %pOvfl = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 25
  %1 = load ptr, ptr %xParseCell, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %3 = load ptr, ptr %pCell.addr, align 8
  %4 = load ptr, ptr %pInfo.addr, align 8
  call void %1(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %pInfo.addr, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %5, i32 0, i32 3
  %6 = load i16, ptr %nLocal, align 4
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %pInfo.addr, align 8
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nPayload, align 8
  %cmp = icmp eq i32 %conv, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pCell.addr, align 8
  %10 = load ptr, ptr %pInfo.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %10, i32 0, i32 4
  %11 = load i16, ptr %nSize, align 2
  %conv2 = zext i16 %11 to i32
  %idx.ext = sext i32 %conv2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load ptr, ptr %pPage.addr, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 20
  %13 = load ptr, ptr %aDataEnd, align 8
  %cmp3 = icmp ugt ptr %add.ptr, %13
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %call = call i32 @sqlite3CorruptError(i32 noundef 69741)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %pCell.addr, align 8
  %15 = load ptr, ptr %pInfo.addr, align 8
  %nSize7 = getelementptr inbounds nuw %struct.CellInfo, ptr %15, i32 0, i32 4
  %16 = load i16, ptr %nSize7, align 2
  %conv8 = zext i16 %16 to i32
  %idx.ext9 = sext i32 %conv8 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %14, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr10, i64 -4
  %call12 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr11)
  store i32 %call12, ptr %ovflPgno, align 4
  %17 = load ptr, ptr %pPage.addr, align 8
  %pBt13 = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %pBt13, align 8
  store ptr %18, ptr %pBt, align 8
  %19 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %usableSize, align 4
  %sub = sub i32 %20, 4
  store i32 %sub, ptr %ovflPageSize, align 4
  %21 = load ptr, ptr %pInfo.addr, align 8
  %nPayload14 = getelementptr inbounds nuw %struct.CellInfo, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %nPayload14, align 8
  %23 = load ptr, ptr %pInfo.addr, align 8
  %nLocal15 = getelementptr inbounds nuw %struct.CellInfo, ptr %23, i32 0, i32 3
  %24 = load i16, ptr %nLocal15, align 4
  %conv16 = zext i16 %24 to i32
  %sub17 = sub i32 %22, %conv16
  %25 = load i32, ptr %ovflPageSize, align 4
  %add = add i32 %sub17, %25
  %sub18 = sub i32 %add, 1
  %26 = load i32, ptr %ovflPageSize, align 4
  %div = udiv i32 %sub18, %26
  store i32 %div, ptr %nOvfl, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.end6
  %27 = load i32, ptr %nOvfl, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %nOvfl, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %iNext, align 4
  store ptr null, ptr %pOvfl, align 8
  %28 = load i32, ptr %ovflPgno, align 4
  %cmp19 = icmp ult i32 %28, 2
  br i1 %cmp19, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %29 = load i32, ptr %ovflPgno, align 4
  %30 = load ptr, ptr %pBt, align 8
  %call21 = call i32 @btreePagecount(ptr noundef %30)
  %cmp22 = icmp ugt i32 %29, %call21
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false, %while.body
  %call25 = call i32 @sqlite3CorruptError(i32 noundef 69758)
  store i32 %call25, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false
  %31 = load i32, ptr %nOvfl, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end26
  %32 = load ptr, ptr %pBt, align 8
  %33 = load i32, ptr %ovflPgno, align 4
  %call29 = call i32 @getOverflowPage(ptr noundef %32, i32 noundef %33, ptr noundef %pOvfl, ptr noundef %iNext)
  store i32 %call29, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %tobool30 = icmp ne i32 %34, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  %35 = load i32, ptr %rc, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end26
  %36 = load ptr, ptr %pOvfl, align 8
  %tobool34 = icmp ne ptr %36, null
  br i1 %tobool34, label %land.lhs.true, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end33
  %37 = load ptr, ptr %pBt, align 8
  %38 = load i32, ptr %ovflPgno, align 4
  %call36 = call ptr @btreePageLookup(ptr noundef %37, i32 noundef %38)
  store ptr %call36, ptr %pOvfl, align 8
  %cmp37 = icmp ne ptr %call36, null
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false35, %if.end33
  %39 = load ptr, ptr %pOvfl, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 23
  %40 = load ptr, ptr %pDbPage, align 8
  %call39 = call i32 @sqlite3PagerPageRefcount(ptr noundef %40)
  %cmp40 = icmp ne i32 %call39, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true
  %call43 = call i32 @sqlite3CorruptError(i32 noundef 69778)
  store i32 %call43, ptr %rc, align 4
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false35
  %41 = load ptr, ptr %pBt, align 8
  %42 = load ptr, ptr %pOvfl, align 8
  %43 = load i32, ptr %ovflPgno, align 4
  %call44 = call i32 @freePage2(ptr noundef %41, ptr noundef %42, i32 noundef %43)
  store i32 %call44, ptr %rc, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  %44 = load ptr, ptr %pOvfl, align 8
  %tobool46 = icmp ne ptr %44, null
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %45 = load ptr, ptr %pOvfl, align 8
  %pDbPage48 = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 23
  %46 = load ptr, ptr %pDbPage48, align 8
  call void @sqlite3PagerUnref(ptr noundef %46)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %47 = load i32, ptr %rc, align 4
  %tobool50 = icmp ne i32 %47, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end49
  %49 = load i32, ptr %iNext, align 4
  store i32 %49, ptr %ovflPgno, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then51, %if.then31, %if.then24, %if.then5, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden ptr @btreePageLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @freePage2(ptr noundef, ptr noundef, i32 noundef) #0

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
