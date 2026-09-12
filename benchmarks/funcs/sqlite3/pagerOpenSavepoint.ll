; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerOpenSavepoint(ptr noundef %pPager, i32 noundef %nSavepoint) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %nSavepoint.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %nCurrent = alloca i32, align 4
  %ii = alloca i32, align 4
  %aNew = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %nSavepoint, ptr %nSavepoint.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 37
  %1 = load i32, ptr %nSavepoint1, align 8
  store i32 %1, ptr %nCurrent, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 36
  %3 = load ptr, ptr %aSavepoint, align 8
  %4 = load i32, ptr %nSavepoint.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 48, %conv
  %call = call ptr @sqlite3Realloc(ptr noundef %3, i64 noundef %mul)
  store ptr %call, ptr %aNew, align 8
  %5 = load ptr, ptr %aNew, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %aNew, align 8
  %7 = load i32, ptr %nCurrent, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.PagerSavepoint, ptr %6, i64 %idxprom
  %8 = load i32, ptr %nSavepoint.addr, align 4
  %9 = load i32, ptr %nCurrent, align 4
  %sub = sub nsw i32 %8, %9
  %conv2 = sext i32 %sub to i64
  %mul3 = mul i64 %conv2, 48
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx, i8 0, i64 %mul3, i1 false)
  %10 = load ptr, ptr %aNew, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint4 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 36
  store ptr %10, ptr %aSavepoint4, align 8
  %12 = load i32, ptr %nCurrent, align 4
  store i32 %12, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %ii, align 4
  %14 = load i32, ptr %nSavepoint.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 21
  %16 = load i32, ptr %dbSize, align 4
  %17 = load ptr, ptr %aNew, align 8
  %18 = load i32, ptr %ii, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.PagerSavepoint, ptr %17, i64 %idxprom6
  %nOrig = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx7, i32 0, i32 3
  store i32 %16, ptr %nOrig, align 8
  %19 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 31
  %20 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pMethods, align 8
  %cmp8 = icmp ne ptr %21, null
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %22 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 33
  %23 = load i64, ptr %journalOff, align 8
  %cmp10 = icmp sgt i64 %23, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %pPager.addr, align 8
  %journalOff13 = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 33
  %25 = load i64, ptr %journalOff13, align 8
  %26 = load ptr, ptr %aNew, align 8
  %27 = load i32, ptr %ii, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds %struct.PagerSavepoint, ptr %26, i64 %idxprom14
  %iOffset = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx15, i32 0, i32 0
  store i64 %25, ptr %iOffset, align 8
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %for.body
  %28 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 46
  %29 = load i32, ptr %sectorSize, align 8
  %conv16 = zext i32 %29 to i64
  %30 = load ptr, ptr %aNew, align 8
  %31 = load i32, ptr %ii, align 4
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds %struct.PagerSavepoint, ptr %30, i64 %idxprom17
  %iOffset19 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx18, i32 0, i32 0
  store i64 %conv16, ptr %iOffset19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %32 = load ptr, ptr %pPager.addr, align 8
  %nSubRec = getelementptr inbounds nuw %struct.Pager, ptr %32, i32 0, i32 28
  %33 = load i32, ptr %nSubRec, align 8
  %34 = load ptr, ptr %aNew, align 8
  %35 = load i32, ptr %ii, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds %struct.PagerSavepoint, ptr %34, i64 %idxprom21
  %iSubRec = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx22, i32 0, i32 4
  store i32 %33, ptr %iSubRec, align 4
  %36 = load ptr, ptr %pPager.addr, align 8
  %dbSize23 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 21
  %37 = load i32, ptr %dbSize23, align 4
  %call24 = call ptr @sqlite3BitvecCreate(i32 noundef %37)
  %38 = load ptr, ptr %aNew, align 8
  %39 = load i32, ptr %ii, align 4
  %idxprom25 = sext i32 %39 to i64
  %arrayidx26 = getelementptr inbounds %struct.PagerSavepoint, ptr %38, i64 %idxprom25
  %pInSavepoint = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx26, i32 0, i32 2
  store ptr %call24, ptr %pInSavepoint, align 8
  %40 = load ptr, ptr %aNew, align 8
  %41 = load i32, ptr %ii, align 4
  %idxprom27 = sext i32 %41 to i64
  %arrayidx28 = getelementptr inbounds %struct.PagerSavepoint, ptr %40, i64 %idxprom27
  %pInSavepoint29 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx28, i32 0, i32 2
  %42 = load ptr, ptr %pInSavepoint29, align 8
  %tobool30 = icmp ne ptr %42, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end20
  store i32 7, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end20
  %43 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %43, i32 0, i32 59
  %44 = load ptr, ptr %pWal, align 8
  %cmp33 = icmp ne ptr %44, null
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end32
  %45 = load ptr, ptr %pPager.addr, align 8
  %pWal36 = getelementptr inbounds nuw %struct.Pager, ptr %45, i32 0, i32 59
  %46 = load ptr, ptr %pWal36, align 8
  %47 = load ptr, ptr %aNew, align 8
  %48 = load i32, ptr %ii, align 4
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds %struct.PagerSavepoint, ptr %47, i64 %idxprom37
  %aWalData = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx38, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], ptr %aWalData, i64 0, i64 0
  call void @sqlite3WalSavepoint(ptr noundef %46, ptr noundef %arraydecay)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32
  %49 = load i32, ptr %ii, align 4
  %add = add nsw i32 %49, 1
  %50 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint40 = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 37
  store i32 %add, ptr %nSavepoint40, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %51 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %52 = load i32, ptr %rc, align 4
  store i32 %52, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then31, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WalSavepoint(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
