; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }

@aJournalMagic = external hidden constant [8 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @journalHdrOffset(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @writeJournalHdr(ptr noundef %pPager) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zHeader = alloca ptr, align 8
  %nHeader = alloca i32, align 4
  %nWrite = alloca i32, align 4
  %ii = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 57
  %1 = load ptr, ptr %pTmpSpace, align 8
  store ptr %1, ptr %zHeader, align 8
  %2 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 47
  %3 = load i32, ptr %pageSize, align 4
  store i32 %3, ptr %nHeader, align 4
  %4 = load i32, ptr %nHeader, align 4
  %5 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 46
  %6 = load i32, ptr %sectorSize, align 8
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pPager.addr, align 8
  %sectorSize1 = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 46
  %8 = load i32, ptr %sectorSize1, align 8
  store i32 %8, ptr %nHeader, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %ii, align 4
  %10 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 37
  %11 = load i32, ptr %nSavepoint, align 8
  %cmp2 = icmp slt i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 36
  %13 = load ptr, ptr %aSavepoint, align 8
  %14 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.PagerSavepoint, ptr %13, i64 %idxprom
  %iHdrOffset = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx, i32 0, i32 1
  %15 = load i64, ptr %iHdrOffset, align 8
  %cmp3 = icmp eq i64 %15, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %for.body
  %16 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 33
  %17 = load i64, ptr %journalOff, align 8
  %18 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint5 = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 36
  %19 = load ptr, ptr %aSavepoint5, align 8
  %20 = load i32, ptr %ii, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds %struct.PagerSavepoint, ptr %19, i64 %idxprom6
  %iHdrOffset8 = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx7, i32 0, i32 1
  store i64 %17, ptr %iHdrOffset8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %21 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %pPager.addr, align 8
  %call = call i64 @journalHdrOffset(ptr noundef %22)
  %23 = load ptr, ptr %pPager.addr, align 8
  %journalOff10 = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 33
  store i64 %call, ptr %journalOff10, align 8
  %24 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 34
  store i64 %call, ptr %journalHdr, align 8
  %25 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 4
  %26 = load i8, ptr %noSync, align 1
  %conv = zext i8 %26 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %27 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 2
  %28 = load i8, ptr %journalMode, align 1
  %conv11 = zext i8 %28 to i32
  %cmp12 = icmp eq i32 %conv11, 4
  br i1 %cmp12, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %29 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 30
  %30 = load ptr, ptr %fd, align 8
  %call15 = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %30)
  %and = and i32 %call15, 512
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %for.end
  %31 = load ptr, ptr %zHeader, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 @aJournalMagic, i64 8, i1 false)
  %32 = load ptr, ptr %zHeader, align 8
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %32, i64 8
  call void @sqlite3Put4byte(ptr noundef %arrayidx18, i32 noundef -1)
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false14
  %33 = load ptr, ptr %zHeader, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %33, i8 0, i64 12, i1 false)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %34 = load ptr, ptr %pPager.addr, align 8
  %cksumInit = getelementptr inbounds nuw %struct.Pager, ptr %34, i32 0, i32 27
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %cksumInit)
  %35 = load ptr, ptr %zHeader, align 8
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %36 = load ptr, ptr %pPager.addr, align 8
  %cksumInit21 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 27
  %37 = load i32, ptr %cksumInit21, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx20, i32 noundef %37)
  %38 = load ptr, ptr %zHeader, align 8
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %39 = load ptr, ptr %pPager.addr, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 22
  %40 = load i32, ptr %dbOrigSize, align 8
  call void @sqlite3Put4byte(ptr noundef %arrayidx22, i32 noundef %40)
  %41 = load ptr, ptr %zHeader, align 8
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %41, i64 20
  %42 = load ptr, ptr %pPager.addr, align 8
  %sectorSize24 = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 46
  %43 = load i32, ptr %sectorSize24, align 8
  call void @sqlite3Put4byte(ptr noundef %arrayidx23, i32 noundef %43)
  %44 = load ptr, ptr %zHeader, align 8
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %44, i64 24
  %45 = load ptr, ptr %pPager.addr, align 8
  %pageSize26 = getelementptr inbounds nuw %struct.Pager, ptr %45, i32 0, i32 47
  %46 = load i32, ptr %pageSize26, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx25, i32 noundef %46)
  %47 = load ptr, ptr %zHeader, align 8
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %47, i64 28
  %48 = load i32, ptr %nHeader, align 4
  %conv28 = zext i32 %48 to i64
  %sub = sub i64 %conv28, 28
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx27, i8 0, i64 %sub, i1 false)
  store i32 0, ptr %nWrite, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc40, %if.end19
  %49 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %49, 0
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond29
  %50 = load i32, ptr %nWrite, align 4
  %51 = load ptr, ptr %pPager.addr, align 8
  %sectorSize32 = getelementptr inbounds nuw %struct.Pager, ptr %51, i32 0, i32 46
  %52 = load i32, ptr %sectorSize32, align 8
  %cmp33 = icmp ult i32 %50, %52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond29
  %53 = phi i1 [ false, %for.cond29 ], [ %cmp33, %land.rhs ]
  br i1 %53, label %for.body35, label %for.end42

for.body35:                                       ; preds = %land.end
  %54 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %54, i32 0, i32 31
  %55 = load ptr, ptr %jfd, align 8
  %56 = load ptr, ptr %zHeader, align 8
  %57 = load i32, ptr %nHeader, align 4
  %58 = load ptr, ptr %pPager.addr, align 8
  %journalOff36 = getelementptr inbounds nuw %struct.Pager, ptr %58, i32 0, i32 33
  %59 = load i64, ptr %journalOff36, align 8
  %call37 = call i32 @sqlite3OsWrite(ptr noundef %55, ptr noundef %56, i32 noundef %57, i64 noundef %59)
  store i32 %call37, ptr %rc, align 4
  %60 = load i32, ptr %nHeader, align 4
  %conv38 = zext i32 %60 to i64
  %61 = load ptr, ptr %pPager.addr, align 8
  %journalOff39 = getelementptr inbounds nuw %struct.Pager, ptr %61, i32 0, i32 33
  %62 = load i64, ptr %journalOff39, align 8
  %add = add nsw i64 %62, %conv38
  store i64 %add, ptr %journalOff39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %63 = load i32, ptr %nHeader, align 4
  %64 = load i32, ptr %nWrite, align 4
  %add41 = add i32 %64, %63
  store i32 %add41, ptr %nWrite, align 4
  br label %for.cond29, !llvm.loop !8

for.end42:                                        ; preds = %land.end
  %65 = load i32, ptr %rc, align 4
  ret i32 %65
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
