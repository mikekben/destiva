; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerPlaybackSavepoint(ptr noundef %pPager, ptr noundef %pSavepoint) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pSavepoint.addr = alloca ptr, align 8
  %szJ = alloca i64, align 8
  %iHdrOff = alloca i64, align 8
  %rc = alloca i32, align 4
  %pDone = alloca ptr, align 8
  %ii = alloca i32, align 4
  %nJRec = alloca i32, align 4
  %dummy = alloca i32, align 4
  %ii63 = alloca i32, align 4
  %offset = alloca i64, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pSavepoint, ptr %pSavepoint.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pDone, align 8
  %0 = load ptr, ptr %pSavepoint.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pSavepoint.addr, align 8
  %nOrig = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nOrig, align 8
  %call = call ptr @sqlite3BitvecCreate(i32 noundef %2)
  store ptr %call, ptr %pDone, align 8
  %3 = load ptr, ptr %pDone, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %pSavepoint.addr, align 8
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %5 = load ptr, ptr %pSavepoint.addr, align 8
  %nOrig5 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %nOrig5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %7 = load ptr, ptr %pPager.addr, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 22
  %8 = load i32, ptr %dbOrigSize, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  %9 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 21
  store i32 %cond, ptr %dbSize, align 4
  %10 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 9
  %11 = load i8, ptr %tempFile, align 8
  %12 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 15
  store i8 %11, ptr %changeCountDone, align 2
  %13 = load ptr, ptr %pSavepoint.addr, align 8
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %14 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 59
  %15 = load ptr, ptr %pWal, align 8
  %cmp = icmp ne ptr %15, null
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %pPager.addr, align 8
  %call8 = call i32 @pagerRollbackWal(ptr noundef %16)
  store i32 %call8, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %cond.end
  %17 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 33
  %18 = load i64, ptr %journalOff, align 8
  store i64 %18, ptr %szJ, align 8
  %19 = load ptr, ptr %pSavepoint.addr, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %if.end9
  %20 = load ptr, ptr %pPager.addr, align 8
  %pWal12 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 59
  %21 = load ptr, ptr %pWal12, align 8
  %cmp13 = icmp ne ptr %21, null
  br i1 %cmp13, label %if.else, label %if.then14

if.then14:                                        ; preds = %land.lhs.true11
  %22 = load ptr, ptr %pSavepoint.addr, align 8
  %iHdrOffset = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %iHdrOffset, align 8
  %tobool15 = icmp ne i64 %23, 0
  br i1 %tobool15, label %cond.true16, label %cond.false18

cond.true16:                                      ; preds = %if.then14
  %24 = load ptr, ptr %pSavepoint.addr, align 8
  %iHdrOffset17 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %24, i32 0, i32 1
  %25 = load i64, ptr %iHdrOffset17, align 8
  br label %cond.end19

cond.false18:                                     ; preds = %if.then14
  %26 = load i64, ptr %szJ, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi i64 [ %25, %cond.true16 ], [ %26, %cond.false18 ]
  store i64 %cond20, ptr %iHdrOff, align 8
  %27 = load ptr, ptr %pSavepoint.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %27, i32 0, i32 0
  %28 = load i64, ptr %iOffset, align 8
  %29 = load ptr, ptr %pPager.addr, align 8
  %journalOff21 = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 33
  store i64 %28, ptr %journalOff21, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end19
  %30 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %30, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %31 = load ptr, ptr %pPager.addr, align 8
  %journalOff23 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 33
  %32 = load i64, ptr %journalOff23, align 8
  %33 = load i64, ptr %iHdrOff, align 8
  %cmp24 = icmp slt i64 %32, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load ptr, ptr %pPager.addr, align 8
  %36 = load ptr, ptr %pPager.addr, align 8
  %journalOff25 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 33
  %37 = load ptr, ptr %pDone, align 8
  %call26 = call i32 @pager_playback_one_page(ptr noundef %35, ptr noundef %journalOff25, ptr noundef %37, i32 noundef 1, i32 noundef 1)
  store i32 %call26, ptr %rc, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true11, %if.end9
  %38 = load ptr, ptr %pPager.addr, align 8
  %journalOff27 = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 33
  store i64 0, ptr %journalOff27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %while.end
  br label %while.cond29

while.cond29:                                     ; preds = %for.end, %if.end28
  %39 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %39, 0
  br i1 %cmp30, label %land.rhs31, label %land.end34

land.rhs31:                                       ; preds = %while.cond29
  %40 = load ptr, ptr %pPager.addr, align 8
  %journalOff32 = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 33
  %41 = load i64, ptr %journalOff32, align 8
  %42 = load i64, ptr %szJ, align 8
  %cmp33 = icmp slt i64 %41, %42
  br label %land.end34

land.end34:                                       ; preds = %land.rhs31, %while.cond29
  %43 = phi i1 [ false, %while.cond29 ], [ %cmp33, %land.rhs31 ]
  br i1 %43, label %while.body35, label %while.end60

while.body35:                                     ; preds = %land.end34
  store i32 0, ptr %nJRec, align 4
  %44 = load ptr, ptr %pPager.addr, align 8
  %45 = load i64, ptr %szJ, align 8
  %call36 = call i32 @readJournalHdr(ptr noundef %44, i32 noundef 0, i64 noundef %45, ptr noundef %nJRec, ptr noundef %dummy)
  store i32 %call36, ptr %rc, align 4
  %46 = load i32, ptr %nJRec, align 4
  %cmp37 = icmp eq i32 %46, 0
  br i1 %cmp37, label %land.lhs.true38, label %if.end47

land.lhs.true38:                                  ; preds = %while.body35
  %47 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %47, i32 0, i32 34
  %48 = load i64, ptr %journalHdr, align 8
  %49 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 46
  %50 = load i32, ptr %sectorSize, align 8
  %conv = zext i32 %50 to i64
  %add = add nsw i64 %48, %conv
  %51 = load ptr, ptr %pPager.addr, align 8
  %journalOff39 = getelementptr inbounds nuw %struct.Pager, ptr %51, i32 0, i32 33
  %52 = load i64, ptr %journalOff39, align 8
  %cmp40 = icmp eq i64 %add, %52
  br i1 %cmp40, label %if.then42, label %if.end47

if.then42:                                        ; preds = %land.lhs.true38
  %53 = load i64, ptr %szJ, align 8
  %54 = load ptr, ptr %pPager.addr, align 8
  %journalOff43 = getelementptr inbounds nuw %struct.Pager, ptr %54, i32 0, i32 33
  %55 = load i64, ptr %journalOff43, align 8
  %sub = sub nsw i64 %53, %55
  %56 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 47
  %57 = load i32, ptr %pageSize, align 4
  %add44 = add nsw i32 %57, 8
  %conv45 = sext i32 %add44 to i64
  %div = sdiv i64 %sub, %conv45
  %conv46 = trunc i64 %div to i32
  store i32 %conv46, ptr %nJRec, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true38, %while.body35
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end47
  %58 = load i32, ptr %rc, align 4
  %cmp48 = icmp eq i32 %58, 0
  br i1 %cmp48, label %land.lhs.true50, label %land.end57

land.lhs.true50:                                  ; preds = %for.cond
  %59 = load i32, ptr %ii, align 4
  %60 = load i32, ptr %nJRec, align 4
  %cmp51 = icmp ult i32 %59, %60
  br i1 %cmp51, label %land.rhs53, label %land.end57

land.rhs53:                                       ; preds = %land.lhs.true50
  %61 = load ptr, ptr %pPager.addr, align 8
  %journalOff54 = getelementptr inbounds nuw %struct.Pager, ptr %61, i32 0, i32 33
  %62 = load i64, ptr %journalOff54, align 8
  %63 = load i64, ptr %szJ, align 8
  %cmp55 = icmp slt i64 %62, %63
  br label %land.end57

land.end57:                                       ; preds = %land.rhs53, %land.lhs.true50, %for.cond
  %64 = phi i1 [ false, %land.lhs.true50 ], [ false, %for.cond ], [ %cmp55, %land.rhs53 ]
  br i1 %64, label %for.body, label %for.end

for.body:                                         ; preds = %land.end57
  %65 = load ptr, ptr %pPager.addr, align 8
  %66 = load ptr, ptr %pPager.addr, align 8
  %journalOff58 = getelementptr inbounds nuw %struct.Pager, ptr %66, i32 0, i32 33
  %67 = load ptr, ptr %pDone, align 8
  %call59 = call i32 @pager_playback_one_page(ptr noundef %65, ptr noundef %journalOff58, ptr noundef %67, i32 noundef 1, i32 noundef 1)
  store i32 %call59, ptr %rc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, ptr %ii, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end57
  br label %while.cond29, !llvm.loop !9

while.end60:                                      ; preds = %land.end34
  %69 = load ptr, ptr %pSavepoint.addr, align 8
  %tobool61 = icmp ne ptr %69, null
  br i1 %tobool61, label %if.then62, label %if.end88

if.then62:                                        ; preds = %while.end60
  %70 = load ptr, ptr %pSavepoint.addr, align 8
  %iSubRec = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %70, i32 0, i32 4
  %71 = load i32, ptr %iSubRec, align 4
  %conv64 = zext i32 %71 to i64
  %72 = load ptr, ptr %pPager.addr, align 8
  %pageSize65 = getelementptr inbounds nuw %struct.Pager, ptr %72, i32 0, i32 47
  %73 = load i32, ptr %pageSize65, align 4
  %add66 = add nsw i32 4, %73
  %conv67 = sext i32 %add66 to i64
  %mul = mul nsw i64 %conv64, %conv67
  store i64 %mul, ptr %offset, align 8
  %74 = load ptr, ptr %pPager.addr, align 8
  %pWal68 = getelementptr inbounds nuw %struct.Pager, ptr %74, i32 0, i32 59
  %75 = load ptr, ptr %pWal68, align 8
  %cmp69 = icmp ne ptr %75, null
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.then62
  %76 = load ptr, ptr %pPager.addr, align 8
  %pWal72 = getelementptr inbounds nuw %struct.Pager, ptr %76, i32 0, i32 59
  %77 = load ptr, ptr %pWal72, align 8
  %78 = load ptr, ptr %pSavepoint.addr, align 8
  %aWalData = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %78, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], ptr %aWalData, i64 0, i64 0
  %call73 = call i32 @sqlite3WalSavepointUndo(ptr noundef %77, ptr noundef %arraydecay)
  store i32 %call73, ptr %rc, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then62
  %79 = load ptr, ptr %pSavepoint.addr, align 8
  %iSubRec75 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %79, i32 0, i32 4
  %80 = load i32, ptr %iSubRec75, align 4
  store i32 %80, ptr %ii63, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc85, %if.end74
  %81 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %81, 0
  br i1 %cmp77, label %land.rhs79, label %land.end82

land.rhs79:                                       ; preds = %for.cond76
  %82 = load i32, ptr %ii63, align 4
  %83 = load ptr, ptr %pPager.addr, align 8
  %nSubRec = getelementptr inbounds nuw %struct.Pager, ptr %83, i32 0, i32 28
  %84 = load i32, ptr %nSubRec, align 8
  %cmp80 = icmp ult i32 %82, %84
  br label %land.end82

land.end82:                                       ; preds = %land.rhs79, %for.cond76
  %85 = phi i1 [ false, %for.cond76 ], [ %cmp80, %land.rhs79 ]
  br i1 %85, label %for.body83, label %for.end87

for.body83:                                       ; preds = %land.end82
  %86 = load ptr, ptr %pPager.addr, align 8
  %87 = load ptr, ptr %pDone, align 8
  %call84 = call i32 @pager_playback_one_page(ptr noundef %86, ptr noundef %offset, ptr noundef %87, i32 noundef 0, i32 noundef 1)
  store i32 %call84, ptr %rc, align 4
  br label %for.inc85

for.inc85:                                        ; preds = %for.body83
  %88 = load i32, ptr %ii63, align 4
  %inc86 = add i32 %88, 1
  store i32 %inc86, ptr %ii63, align 4
  br label %for.cond76, !llvm.loop !10

for.end87:                                        ; preds = %land.end82
  br label %if.end88

if.end88:                                         ; preds = %for.end87, %while.end60
  %89 = load ptr, ptr %pDone, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %89)
  %90 = load i32, ptr %rc, align 4
  %cmp89 = icmp eq i32 %90, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  %91 = load i64, ptr %szJ, align 8
  %92 = load ptr, ptr %pPager.addr, align 8
  %journalOff92 = getelementptr inbounds nuw %struct.Pager, ptr %92, i32 0, i32 33
  store i64 %91, ptr %journalOff92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  %93 = load i32, ptr %rc, align 4
  store i32 %93, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end93, %if.then7, %if.then2
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerRollbackWal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_playback_one_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @readJournalHdr(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalSavepointUndo(ptr noundef, ptr noundef) #0

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
