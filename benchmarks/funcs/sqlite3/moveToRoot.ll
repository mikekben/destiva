; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePageNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeClearCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @moveToRoot(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pRoot = alloca ptr, align 8
  %rc = alloca i32, align 4
  %subpage = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %iPage, align 4
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %iPage2 = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %iPage2, align 4
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pPage, align 8
  call void @releasePageNotNull(ptr noundef %5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then3
  %6 = load ptr, ptr %pCur.addr, align 8
  %iPage4 = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 13
  %7 = load i8, ptr %iPage4, align 4
  %dec = add i8 %7, -1
  store i8 %dec, ptr %iPage4, align 4
  %tobool5 = icmp ne i8 %dec, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 19
  %9 = load ptr, ptr %pCur.addr, align 8
  %iPage6 = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 13
  %10 = load i8, ptr %iPage6, align 4
  %idxprom = sext i8 %10 to i64
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  call void @releasePageNotNull(ptr noundef %11)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %pCur.addr, align 8
  %apPage7 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [19 x ptr], ptr %apPage7, i64 0, i64 0
  %13 = load ptr, ptr %arrayidx8, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %pPage9 = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 18
  store ptr %13, ptr %pPage9, align 8
  br label %skip_init

if.end:                                           ; preds = %if.then
  br label %if.end37

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 12
  %16 = load i32, ptr %pgnoRoot, align 8
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %17 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 0
  store i8 1, ptr %eState, align 8
  store i32 16, ptr %retval, align 4
  br label %return

if.else13:                                        ; preds = %if.else
  %18 = load ptr, ptr %pCur.addr, align 8
  %eState14 = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 0
  %19 = load i8, ptr %eState14, align 8
  %conv15 = zext i8 %19 to i32
  %cmp16 = icmp sge i32 %conv15, 3
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.else13
  %20 = load ptr, ptr %pCur.addr, align 8
  %eState19 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 0
  %21 = load i8, ptr %eState19, align 8
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 4
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  %22 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %skipNext, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then18
  %24 = load ptr, ptr %pCur.addr, align 8
  call void @sqlite3BtreeClearCursor(ptr noundef %24)
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.else13
  %25 = load ptr, ptr %pCur.addr, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtCursor, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pBtree, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pBt, align 8
  %28 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot26 = getelementptr inbounds nuw %struct.BtCursor, ptr %28, i32 0, i32 12
  %29 = load i32, ptr %pgnoRoot26, align 8
  %30 = load ptr, ptr %pCur.addr, align 8
  %pPage27 = getelementptr inbounds nuw %struct.BtCursor, ptr %30, i32 0, i32 18
  %31 = load ptr, ptr %pCur.addr, align 8
  %curPagerFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %31, i32 0, i32 2
  %32 = load i8, ptr %curPagerFlags, align 2
  %conv28 = zext i8 %32 to i32
  %call = call i32 @getAndInitPage(ptr noundef %27, i32 noundef %29, ptr noundef %pPage27, ptr noundef null, i32 noundef %conv28)
  store i32 %call, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %33, 0
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end25
  %34 = load ptr, ptr %pCur.addr, align 8
  %eState32 = getelementptr inbounds nuw %struct.BtCursor, ptr %34, i32 0, i32 0
  store i8 1, ptr %eState32, align 8
  %35 = load i32, ptr %rc, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %36 = load ptr, ptr %pCur.addr, align 8
  %iPage34 = getelementptr inbounds nuw %struct.BtCursor, ptr %36, i32 0, i32 13
  store i8 0, ptr %iPage34, align 4
  %37 = load ptr, ptr %pCur.addr, align 8
  %pPage35 = getelementptr inbounds nuw %struct.BtCursor, ptr %37, i32 0, i32 18
  %38 = load ptr, ptr %pPage35, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 2
  %39 = load i8, ptr %intKey, align 2
  %40 = load ptr, ptr %pCur.addr, align 8
  %curIntKey = getelementptr inbounds nuw %struct.BtCursor, ptr %40, i32 0, i32 14
  store i8 %39, ptr %curIntKey, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end
  %41 = load ptr, ptr %pCur.addr, align 8
  %pPage38 = getelementptr inbounds nuw %struct.BtCursor, ptr %41, i32 0, i32 18
  %42 = load ptr, ptr %pPage38, align 8
  store ptr %42, ptr %pRoot, align 8
  %43 = load ptr, ptr %pRoot, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 0
  %44 = load i8, ptr %isInit, align 8
  %conv39 = zext i8 %44 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %45 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.BtCursor, ptr %45, i32 0, i32 17
  %46 = load ptr, ptr %pKeyInfo, align 8
  %cmp42 = icmp eq ptr %46, null
  %conv43 = zext i1 %cmp42 to i32
  %47 = load ptr, ptr %pRoot, align 8
  %intKey44 = getelementptr inbounds nuw %struct.MemPage, ptr %47, i32 0, i32 2
  %48 = load i8, ptr %intKey44, align 2
  %conv45 = zext i8 %48 to i32
  %cmp46 = icmp ne i32 %conv43, %conv45
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %lor.lhs.false, %if.end37
  %call49 = call i32 @sqlite3CorruptError(i32 noundef 68590)
  store i32 %call49, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false
  br label %skip_init

skip_init:                                        ; preds = %if.end50, %while.end
  %49 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %49, i32 0, i32 15
  store i16 0, ptr %ix, align 2
  %50 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %50, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %51 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %51, i32 0, i32 1
  %52 = load i8, ptr %curFlags, align 1
  %conv51 = zext i8 %52 to i32
  %and = and i32 %conv51, -15
  %conv52 = trunc i32 %and to i8
  store i8 %conv52, ptr %curFlags, align 1
  %53 = load ptr, ptr %pCur.addr, align 8
  %pPage53 = getelementptr inbounds nuw %struct.BtCursor, ptr %53, i32 0, i32 18
  %54 = load ptr, ptr %pPage53, align 8
  store ptr %54, ptr %pRoot, align 8
  %55 = load ptr, ptr %pRoot, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %55, i32 0, i32 14
  %56 = load i16, ptr %nCell, align 8
  %conv54 = zext i16 %56 to i32
  %cmp55 = icmp sgt i32 %conv54, 0
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %skip_init
  %57 = load ptr, ptr %pCur.addr, align 8
  %eState58 = getelementptr inbounds nuw %struct.BtCursor, ptr %57, i32 0, i32 0
  store i8 0, ptr %eState58, align 8
  br label %if.end76

if.else59:                                        ; preds = %skip_init
  %58 = load ptr, ptr %pRoot, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %58, i32 0, i32 5
  %59 = load i8, ptr %leaf, align 8
  %tobool60 = icmp ne i8 %59, 0
  br i1 %tobool60, label %if.else73, label %if.then61

if.then61:                                        ; preds = %if.else59
  %60 = load ptr, ptr %pRoot, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %pgno, align 4
  %cmp62 = icmp ne i32 %61, 1
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.then61
  %call65 = call i32 @sqlite3CorruptError(i32 noundef 68603)
  store i32 %call65, ptr %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.then61
  %62 = load ptr, ptr %pRoot, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %62, i32 0, i32 19
  %63 = load ptr, ptr %aData, align 8
  %64 = load ptr, ptr %pRoot, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %64, i32 0, i32 6
  %65 = load i8, ptr %hdrOffset, align 1
  %conv67 = zext i8 %65 to i32
  %add = add nsw i32 %conv67, 8
  %idxprom68 = sext i32 %add to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %63, i64 %idxprom68
  %call70 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx69)
  store i32 %call70, ptr %subpage, align 4
  %66 = load ptr, ptr %pCur.addr, align 8
  %eState71 = getelementptr inbounds nuw %struct.BtCursor, ptr %66, i32 0, i32 0
  store i8 0, ptr %eState71, align 8
  %67 = load ptr, ptr %pCur.addr, align 8
  %68 = load i32, ptr %subpage, align 4
  %call72 = call i32 @moveToChild(ptr noundef %67, i32 noundef %68)
  store i32 %call72, ptr %rc, align 4
  br label %if.end75

if.else73:                                        ; preds = %if.else59
  %69 = load ptr, ptr %pCur.addr, align 8
  %eState74 = getelementptr inbounds nuw %struct.BtCursor, ptr %69, i32 0, i32 0
  store i8 1, ptr %eState74, align 8
  store i32 16, ptr %rc, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.end66
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then57
  %70 = load i32, ptr %rc, align 4
  store i32 %70, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then64, %if.then48, %if.then31, %if.then23, %if.then12
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getAndInitPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
