; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PageFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PageMalloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @balance(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nMin = alloca i32, align 4
  %aBalanceQuickSpace = alloca [13 x i8], align 1
  %pFree = alloca ptr, align 8
  %iPage = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  %iIdx = alloca i32, align 4
  %pSpace = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %usableSize, align 4
  %mul = mul i32 %2, 2
  %div = udiv i32 %mul, 3
  store i32 %div, ptr %nMin, align 4
  store ptr null, ptr %pFree, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %pCur.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %pPage1, align 8
  store ptr %4, ptr %pPage, align 8
  %5 = load ptr, ptr %pPage, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 13
  %6 = load i32, ptr %nFree, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %pPage, align 8
  %call = call i32 @btreeComputeFreeSpace(ptr noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.end

if.end:                                           ; preds = %land.lhs.true, %do.body
  %8 = load ptr, ptr %pPage, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 9
  %9 = load i8, ptr %nOverflow, align 4
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %if.end
  %10 = load ptr, ptr %pPage, align 8
  %nFree5 = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %nFree5, align 4
  %12 = load i32, ptr %nMin, align 4
  %cmp6 = icmp sle i32 %11, %12
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true4
  br label %do.end

if.else:                                          ; preds = %land.lhs.true4, %if.end
  %13 = load ptr, ptr %pCur.addr, align 8
  %iPage9 = getelementptr inbounds nuw %struct.BtCursor, ptr %13, i32 0, i32 13
  %14 = load i8, ptr %iPage9, align 4
  %conv10 = sext i8 %14 to i32
  store i32 %conv10, ptr %iPage, align 4
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.else31

if.then13:                                        ; preds = %if.else
  %15 = load ptr, ptr %pPage, align 8
  %nOverflow14 = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 9
  %16 = load i8, ptr %nOverflow14, align 4
  %tobool15 = icmp ne i8 %16, 0
  br i1 %tobool15, label %if.then16, label %if.else29

if.then16:                                        ; preds = %if.then13
  %17 = load ptr, ptr %pPage, align 8
  %18 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 19
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 1
  %call17 = call i32 @balance_deeper(ptr noundef %17, ptr noundef %arrayidx)
  store i32 %call17, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.then16
  %20 = load ptr, ptr %pCur.addr, align 8
  %iPage21 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 13
  store i8 1, ptr %iPage21, align 4
  %21 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %21, i32 0, i32 15
  store i16 0, ptr %ix, align 2
  %22 = load ptr, ptr %pCur.addr, align 8
  %aiIdx = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 16
  %arrayidx22 = getelementptr inbounds [19 x i16], ptr %aiIdx, i64 0, i64 0
  store i16 0, ptr %arrayidx22, align 8
  %23 = load ptr, ptr %pPage, align 8
  %24 = load ptr, ptr %pCur.addr, align 8
  %apPage23 = getelementptr inbounds nuw %struct.BtCursor, ptr %24, i32 0, i32 19
  %arrayidx24 = getelementptr inbounds [19 x ptr], ptr %apPage23, i64 0, i64 0
  store ptr %23, ptr %arrayidx24, align 8
  %25 = load ptr, ptr %pCur.addr, align 8
  %apPage25 = getelementptr inbounds nuw %struct.BtCursor, ptr %25, i32 0, i32 19
  %arrayidx26 = getelementptr inbounds [19 x ptr], ptr %apPage25, i64 0, i64 1
  %26 = load ptr, ptr %arrayidx26, align 8
  %27 = load ptr, ptr %pCur.addr, align 8
  %pPage27 = getelementptr inbounds nuw %struct.BtCursor, ptr %27, i32 0, i32 18
  store ptr %26, ptr %pPage27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then16
  br label %if.end30

if.else29:                                        ; preds = %if.then13
  br label %do.end

if.end30:                                         ; preds = %if.end28
  br label %if.end94

if.else31:                                        ; preds = %if.else
  %28 = load ptr, ptr %pCur.addr, align 8
  %apPage32 = getelementptr inbounds nuw %struct.BtCursor, ptr %28, i32 0, i32 19
  %29 = load i32, ptr %iPage, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx33 = getelementptr inbounds [19 x ptr], ptr %apPage32, i64 0, i64 %idxprom
  %30 = load ptr, ptr %arrayidx33, align 8
  store ptr %30, ptr %pParent, align 8
  %31 = load ptr, ptr %pCur.addr, align 8
  %aiIdx34 = getelementptr inbounds nuw %struct.BtCursor, ptr %31, i32 0, i32 16
  %32 = load i32, ptr %iPage, align 4
  %sub35 = sub nsw i32 %32, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [19 x i16], ptr %aiIdx34, i64 0, i64 %idxprom36
  %33 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %33 to i32
  store i32 %conv38, ptr %iIdx, align 4
  %34 = load ptr, ptr %pParent, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 23
  %35 = load ptr, ptr %pDbPage, align 8
  %call39 = call i32 @sqlite3PagerWrite(ptr noundef %35)
  store i32 %call39, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp40 = icmp eq i32 %36, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end48

land.lhs.true42:                                  ; preds = %if.else31
  %37 = load ptr, ptr %pParent, align 8
  %nFree43 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 13
  %38 = load i32, ptr %nFree43, align 4
  %cmp44 = icmp slt i32 %38, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %land.lhs.true42
  %39 = load ptr, ptr %pParent, align 8
  %call47 = call i32 @btreeComputeFreeSpace(ptr noundef %39)
  store i32 %call47, ptr %rc, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %land.lhs.true42, %if.else31
  %40 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %40, 0
  br i1 %cmp49, label %if.then51, label %if.end86

if.then51:                                        ; preds = %if.end48
  %41 = load ptr, ptr %pPage, align 8
  %intKeyLeaf = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 3
  %42 = load i8, ptr %intKeyLeaf, align 1
  %conv52 = zext i8 %42 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %land.lhs.true54, label %if.else75

land.lhs.true54:                                  ; preds = %if.then51
  %43 = load ptr, ptr %pPage, align 8
  %nOverflow55 = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 9
  %44 = load i8, ptr %nOverflow55, align 4
  %conv56 = zext i8 %44 to i32
  %cmp57 = icmp eq i32 %conv56, 1
  br i1 %cmp57, label %land.lhs.true59, label %if.else75

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %45 = load ptr, ptr %pPage, align 8
  %aiOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 16
  %arrayidx60 = getelementptr inbounds [4 x i16], ptr %aiOvfl, i64 0, i64 0
  %46 = load i16, ptr %arrayidx60, align 4
  %conv61 = zext i16 %46 to i32
  %47 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %47, i32 0, i32 14
  %48 = load i16, ptr %nCell, align 8
  %conv62 = zext i16 %48 to i32
  %cmp63 = icmp eq i32 %conv61, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %if.else75

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %49 = load ptr, ptr %pParent, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %49, i32 0, i32 4
  %50 = load i32, ptr %pgno, align 4
  %cmp66 = icmp ne i32 %50, 1
  br i1 %cmp66, label %land.lhs.true68, label %if.else75

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %51 = load ptr, ptr %pParent, align 8
  %nCell69 = getelementptr inbounds nuw %struct.MemPage, ptr %51, i32 0, i32 14
  %52 = load i16, ptr %nCell69, align 8
  %conv70 = zext i16 %52 to i32
  %53 = load i32, ptr %iIdx, align 4
  %cmp71 = icmp eq i32 %conv70, %53
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %land.lhs.true68
  %54 = load ptr, ptr %pParent, align 8
  %55 = load ptr, ptr %pPage, align 8
  %arraydecay = getelementptr inbounds [13 x i8], ptr %aBalanceQuickSpace, i64 0, i64 0
  %call74 = call i32 @balance_quick(ptr noundef %54, ptr noundef %55, ptr noundef %arraydecay)
  store i32 %call74, ptr %rc, align 4
  br label %if.end85

if.else75:                                        ; preds = %land.lhs.true68, %land.lhs.true65, %land.lhs.true59, %land.lhs.true54, %if.then51
  %56 = load ptr, ptr %pCur.addr, align 8
  %pBt76 = getelementptr inbounds nuw %struct.BtCursor, ptr %56, i32 0, i32 8
  %57 = load ptr, ptr %pBt76, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %57, i32 0, i32 15
  %58 = load i32, ptr %pageSize, align 8
  %call77 = call ptr @sqlite3PageMalloc(i32 noundef %58)
  store ptr %call77, ptr %pSpace, align 8
  %59 = load ptr, ptr %pParent, align 8
  %60 = load i32, ptr %iIdx, align 4
  %61 = load ptr, ptr %pSpace, align 8
  %62 = load i32, ptr %iPage, align 4
  %cmp78 = icmp eq i32 %62, 1
  %conv79 = zext i1 %cmp78 to i32
  %63 = load ptr, ptr %pCur.addr, align 8
  %hints = getelementptr inbounds nuw %struct.BtCursor, ptr %63, i32 0, i32 3
  %64 = load i8, ptr %hints, align 1
  %conv80 = zext i8 %64 to i32
  %and = and i32 %conv80, 1
  %call81 = call i32 @balance_nonroot(ptr noundef %59, i32 noundef %60, ptr noundef %61, i32 noundef %conv79, i32 noundef %and)
  store i32 %call81, ptr %rc, align 4
  %65 = load ptr, ptr %pFree, align 8
  %tobool82 = icmp ne ptr %65, null
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else75
  %66 = load ptr, ptr %pFree, align 8
  call void @sqlite3PageFree(ptr noundef %66)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.else75
  %67 = load ptr, ptr %pSpace, align 8
  store ptr %67, ptr %pFree, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then73
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end48
  %68 = load ptr, ptr %pPage, align 8
  %nOverflow87 = getelementptr inbounds nuw %struct.MemPage, ptr %68, i32 0, i32 9
  store i8 0, ptr %nOverflow87, align 4
  %69 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %69)
  %70 = load ptr, ptr %pCur.addr, align 8
  %iPage88 = getelementptr inbounds nuw %struct.BtCursor, ptr %70, i32 0, i32 13
  %71 = load i8, ptr %iPage88, align 4
  %dec = add i8 %71, -1
  store i8 %dec, ptr %iPage88, align 4
  %72 = load ptr, ptr %pCur.addr, align 8
  %apPage89 = getelementptr inbounds nuw %struct.BtCursor, ptr %72, i32 0, i32 19
  %73 = load ptr, ptr %pCur.addr, align 8
  %iPage90 = getelementptr inbounds nuw %struct.BtCursor, ptr %73, i32 0, i32 13
  %74 = load i8, ptr %iPage90, align 4
  %idxprom91 = sext i8 %74 to i64
  %arrayidx92 = getelementptr inbounds [19 x ptr], ptr %apPage89, i64 0, i64 %idxprom91
  %75 = load ptr, ptr %arrayidx92, align 8
  %76 = load ptr, ptr %pCur.addr, align 8
  %pPage93 = getelementptr inbounds nuw %struct.BtCursor, ptr %76, i32 0, i32 18
  store ptr %75, ptr %pPage93, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end86, %if.end30
  br label %if.end95

if.end95:                                         ; preds = %if.end94
  br label %do.cond

do.cond:                                          ; preds = %if.end95
  %77 = load i32, ptr %rc, align 4
  %cmp96 = icmp eq i32 %77, 0
  br i1 %cmp96, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond, %if.else29, %if.then8, %if.then
  %78 = load ptr, ptr %pFree, align 8
  %tobool98 = icmp ne ptr %78, null
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %do.end
  %79 = load ptr, ptr %pFree, align 8
  call void @sqlite3PageFree(ptr noundef %79)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %do.end
  %80 = load i32, ptr %rc, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
declare hidden i32 @balance_deeper(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @balance_quick(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @balance_nonroot(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
