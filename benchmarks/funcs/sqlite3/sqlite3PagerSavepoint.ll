; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerSavepoint(ptr noundef %pPager, i32 noundef %op, i32 noundef %iSavepoint) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %iSavepoint.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %ii = alloca i32, align 4
  %nNew = alloca i32, align 4
  %pSavepoint = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %iSavepoint, ptr %iSavepoint.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %errCode, align 4
  store i32 %1, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %iSavepoint.addr, align 4
  %4 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 37
  %5 = load i32, ptr %nSavepoint, align 8
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end29

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %iSavepoint.addr, align 4
  %7 = load i32, ptr %op.addr, align 4
  %cmp2 = icmp eq i32 %7, 1
  %8 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 1
  %add = add nsw i32 %6, %cond
  store i32 %add, ptr %nNew, align 4
  %9 = load i32, ptr %nNew, align 4
  store i32 %9, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %ii, align 4
  %11 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint3 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 37
  %12 = load i32, ptr %nSavepoint3, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 36
  %14 = load ptr, ptr %aSavepoint, align 8
  %15 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.PagerSavepoint, ptr %14, i64 %idxprom
  %pInSavepoint = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx, i32 0, i32 2
  %16 = load ptr, ptr %pInSavepoint, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %nNew, align 4
  %19 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint5 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 37
  store i32 %18, ptr %nSavepoint5, align 8
  %20 = load i32, ptr %op.addr, align 4
  %cmp6 = icmp eq i32 %20, 1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.end
  %21 = load i32, ptr %nNew, align 4
  %cmp8 = icmp eq i32 %21, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.then7
  %22 = load ptr, ptr %pPager.addr, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 32
  %23 = load ptr, ptr %sjfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pMethods, align 8
  %cmp10 = icmp ne ptr %24, null
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %land.lhs.true9
  %25 = load ptr, ptr %pPager.addr, align 8
  %sjfd12 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 32
  %26 = load ptr, ptr %sjfd12, align 8
  %call = call i32 @sqlite3JournalIsInMemory(ptr noundef %26)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then11
  %27 = load ptr, ptr %pPager.addr, align 8
  %sjfd14 = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 32
  %28 = load ptr, ptr %sjfd14, align 8
  %call15 = call i32 @sqlite3OsTruncate(ptr noundef %28, i64 noundef 0)
  store i32 %call15, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then11
  %29 = load ptr, ptr %pPager.addr, align 8
  %nSubRec = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 28
  store i32 0, ptr %nSubRec, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %land.lhs.true9, %if.then7
  br label %if.end28

if.else:                                          ; preds = %for.end
  %30 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 59
  %31 = load ptr, ptr %pWal, align 8
  %cmp17 = icmp ne ptr %31, null
  br i1 %cmp17, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %32, i32 0, i32 31
  %33 = load ptr, ptr %jfd, align 8
  %pMethods18 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pMethods18, align 8
  %cmp19 = icmp ne ptr %34, null
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %lor.lhs.false, %if.else
  %35 = load i32, ptr %nNew, align 4
  %cmp21 = icmp eq i32 %35, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  %36 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint22 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 36
  %37 = load ptr, ptr %aSavepoint22, align 8
  %38 = load i32, ptr %nNew, align 4
  %sub = sub nsw i32 %38, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds %struct.PagerSavepoint, ptr %37, i64 %idxprom23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi ptr [ null, %cond.true ], [ %arrayidx24, %cond.false ]
  store ptr %cond25, ptr %pSavepoint, align 8
  %39 = load ptr, ptr %pPager.addr, align 8
  %40 = load ptr, ptr %pSavepoint, align 8
  %call26 = call i32 @pagerPlaybackSavepoint(ptr noundef %39, ptr noundef %40)
  store i32 %call26, ptr %rc, align 4
  br label %if.end27

if.end27:                                         ; preds = %cond.end, %lor.lhs.false
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end16
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %land.lhs.true, %entry
  %41 = load i32, ptr %rc, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalIsInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerPlaybackSavepoint(ptr noundef, ptr noundef) #0

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
