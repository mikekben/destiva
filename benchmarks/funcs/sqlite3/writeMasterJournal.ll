; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

@sqlite3PendingByte = external hidden global i32, align 4
@aJournalMagic = external hidden constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @write32bits(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @journalHdrOffset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @writeMasterJournal(ptr noundef %pPager, ptr noundef %zMaster) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nMaster = alloca i32, align 4
  %iHdrOff = alloca i64, align 8
  %jrnlSize = alloca i64, align 8
  %cksum = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  store i32 0, ptr %cksum, align 4
  %0 = load ptr, ptr %zMaster.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 2
  %2 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 31
  %4 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMethods, align 8
  %cmp3 = icmp ne ptr %5, null
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 16
  store i8 1, ptr %setMaster, align 1
  store i32 0, ptr %nMaster, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %zMaster.addr, align 8
  %8 = load i32, ptr %nMaster, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %tobool5 = icmp ne i8 %9, 0
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %zMaster.addr, align 8
  %11 = load i32, ptr %nMaster, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %13 = load i32, ptr %cksum, align 4
  %add = add i32 %13, %conv8
  store i32 %add, ptr %cksum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %nMaster, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nMaster, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %pPager.addr, align 8
  %fullSync = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 5
  %16 = load i8, ptr %fullSync, align 4
  %tobool9 = icmp ne i8 %16, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %17 = load ptr, ptr %pPager.addr, align 8
  %call = call i64 @journalHdrOffset(ptr noundef %17)
  %18 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 33
  store i64 %call, ptr %journalOff, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %19 = load ptr, ptr %pPager.addr, align 8
  %journalOff12 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 33
  %20 = load i64, ptr %journalOff12, align 8
  store i64 %20, ptr %iHdrOff, align 8
  %21 = load ptr, ptr %pPager.addr, align 8
  %jfd13 = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 31
  %22 = load ptr, ptr %jfd13, align 8
  %23 = load i64, ptr %iHdrOff, align 8
  %24 = load i32, ptr @sqlite3PendingByte, align 4
  %25 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 47
  %26 = load i32, ptr %pageSize, align 4
  %div = sdiv i32 %24, %26
  %add14 = add nsw i32 %div, 1
  %call15 = call i32 @write32bits(ptr noundef %22, i64 noundef %23, i32 noundef %add14)
  store i32 %call15, ptr %rc, align 4
  %cmp16 = icmp ne i32 0, %call15
  br i1 %cmp16, label %if.then50, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end11
  %27 = load ptr, ptr %pPager.addr, align 8
  %jfd19 = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 31
  %28 = load ptr, ptr %jfd19, align 8
  %29 = load ptr, ptr %zMaster.addr, align 8
  %30 = load i32, ptr %nMaster, align 4
  %31 = load i64, ptr %iHdrOff, align 8
  %add20 = add nsw i64 %31, 4
  %call21 = call i32 @sqlite3OsWrite(ptr noundef %28, ptr noundef %29, i32 noundef %30, i64 noundef %add20)
  store i32 %call21, ptr %rc, align 4
  %cmp22 = icmp ne i32 0, %call21
  br i1 %cmp22, label %if.then50, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %32 = load ptr, ptr %pPager.addr, align 8
  %jfd25 = getelementptr inbounds nuw %struct.Pager, ptr %32, i32 0, i32 31
  %33 = load ptr, ptr %jfd25, align 8
  %34 = load i64, ptr %iHdrOff, align 8
  %add26 = add nsw i64 %34, 4
  %35 = load i32, ptr %nMaster, align 4
  %conv27 = sext i32 %35 to i64
  %add28 = add nsw i64 %add26, %conv27
  %36 = load i32, ptr %nMaster, align 4
  %call29 = call i32 @write32bits(ptr noundef %33, i64 noundef %add28, i32 noundef %36)
  store i32 %call29, ptr %rc, align 4
  %cmp30 = icmp ne i32 0, %call29
  br i1 %cmp30, label %if.then50, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %37 = load ptr, ptr %pPager.addr, align 8
  %jfd33 = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 31
  %38 = load ptr, ptr %jfd33, align 8
  %39 = load i64, ptr %iHdrOff, align 8
  %add34 = add nsw i64 %39, 4
  %40 = load i32, ptr %nMaster, align 4
  %conv35 = sext i32 %40 to i64
  %add36 = add nsw i64 %add34, %conv35
  %add37 = add nsw i64 %add36, 4
  %41 = load i32, ptr %cksum, align 4
  %call38 = call i32 @write32bits(ptr noundef %38, i64 noundef %add37, i32 noundef %41)
  store i32 %call38, ptr %rc, align 4
  %cmp39 = icmp ne i32 0, %call38
  br i1 %cmp39, label %if.then50, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false32
  %42 = load ptr, ptr %pPager.addr, align 8
  %jfd42 = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 31
  %43 = load ptr, ptr %jfd42, align 8
  %44 = load i64, ptr %iHdrOff, align 8
  %add43 = add nsw i64 %44, 4
  %45 = load i32, ptr %nMaster, align 4
  %conv44 = sext i32 %45 to i64
  %add45 = add nsw i64 %add43, %conv44
  %add46 = add nsw i64 %add45, 8
  %call47 = call i32 @sqlite3OsWrite(ptr noundef %43, ptr noundef @aJournalMagic, i32 noundef 8, i64 noundef %add46)
  store i32 %call47, ptr %rc, align 4
  %cmp48 = icmp ne i32 0, %call47
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %lor.lhs.false41, %lor.lhs.false32, %lor.lhs.false24, %lor.lhs.false18, %if.end11
  %46 = load i32, ptr %rc, align 4
  store i32 %46, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %lor.lhs.false41
  %47 = load i32, ptr %nMaster, align 4
  %add52 = add nsw i32 %47, 20
  %conv53 = sext i32 %add52 to i64
  %48 = load ptr, ptr %pPager.addr, align 8
  %journalOff54 = getelementptr inbounds nuw %struct.Pager, ptr %48, i32 0, i32 33
  %49 = load i64, ptr %journalOff54, align 8
  %add55 = add nsw i64 %49, %conv53
  store i64 %add55, ptr %journalOff54, align 8
  %50 = load ptr, ptr %pPager.addr, align 8
  %jfd56 = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 31
  %51 = load ptr, ptr %jfd56, align 8
  %call57 = call i32 @sqlite3OsFileSize(ptr noundef %51, ptr noundef %jrnlSize)
  store i32 %call57, ptr %rc, align 4
  %cmp58 = icmp eq i32 0, %call57
  br i1 %cmp58, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end51
  %52 = load i64, ptr %jrnlSize, align 8
  %53 = load ptr, ptr %pPager.addr, align 8
  %journalOff60 = getelementptr inbounds nuw %struct.Pager, ptr %53, i32 0, i32 33
  %54 = load i64, ptr %journalOff60, align 8
  %cmp61 = icmp sgt i64 %52, %54
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %land.lhs.true
  %55 = load ptr, ptr %pPager.addr, align 8
  %jfd64 = getelementptr inbounds nuw %struct.Pager, ptr %55, i32 0, i32 31
  %56 = load ptr, ptr %jfd64, align 8
  %57 = load ptr, ptr %pPager.addr, align 8
  %journalOff65 = getelementptr inbounds nuw %struct.Pager, ptr %57, i32 0, i32 33
  %58 = load i64, ptr %journalOff65, align 8
  %call66 = call i32 @sqlite3OsTruncate(ptr noundef %56, i64 noundef %58)
  store i32 %call66, ptr %rc, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true, %if.end51
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then50, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
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
