; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @pagerWalFrames(ptr noundef %pPager, ptr noundef %pList, i32 noundef %nTruncate, i32 noundef %isCommit) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %nTruncate.addr = alloca i32, align 4
  %isCommit.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %nList = alloca i32, align 4
  %p = alloca ptr, align 8
  %ppNext = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %nTruncate, ptr %nTruncate.addr, align 4
  store i32 %isCommit, ptr %isCommit.addr, align 4
  %0 = load i32, ptr %isCommit.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr %pList.addr, ptr %ppNext, align 8
  store i32 0, ptr %nList, align 4
  %1 = load ptr, ptr %pList.addr, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %p, align 8
  %3 = load ptr, ptr %ppNext, align 8
  store ptr %2, ptr %3, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %pgno, align 8
  %6 = load i32, ptr %nTruncate.addr, align 4
  %cmp1 = icmp ule i32 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %7 = load ptr, ptr %p, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 4
  store ptr %pDirty, ptr %ppNext, align 8
  %8 = load i32, ptr %nList, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %nList, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %p, align 8
  %pDirty3 = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pDirty3, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.else:                                          ; preds = %entry
  store i32 1, ptr %nList, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %for.end
  %11 = load i32, ptr %nList, align 4
  %12 = load ptr, ptr %pPager.addr, align 8
  %aStat = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x i32], ptr %aStat, i64 0, i64 2
  %13 = load i32, ptr %arrayidx, align 8
  %add = add nsw i32 %13, %11
  store i32 %add, ptr %arrayidx, align 8
  %14 = load ptr, ptr %pList.addr, align 8
  %pgno5 = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %pgno5, align 8
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %16 = load ptr, ptr %pList.addr, align 8
  call void @pager_write_changecounter(ptr noundef %16)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %17 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 59
  %18 = load ptr, ptr %pWal, align 8
  %19 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 47
  %20 = load i32, ptr %pageSize, align 4
  %21 = load ptr, ptr %pList.addr, align 8
  %22 = load i32, ptr %nTruncate.addr, align 4
  %23 = load i32, ptr %isCommit.addr, align 4
  %24 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 8
  %25 = load i8, ptr %walSyncFlags, align 1
  %conv = zext i8 %25 to i32
  %call = call i32 @sqlite3WalFrames(ptr noundef %18, i32 noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %conv)
  store i32 %call, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %26, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end8
  %27 = load ptr, ptr %pPager.addr, align 8
  %pBackup = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 35
  %28 = load ptr, ptr %pBackup, align 8
  %tobool11 = icmp ne ptr %28, null
  br i1 %tobool11, label %if.then12, label %if.end21

if.then12:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %pList.addr, align 8
  store ptr %29, ptr %p, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %if.then12
  %30 = load ptr, ptr %p, align 8
  %tobool14 = icmp ne ptr %30, null
  br i1 %tobool14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %pPager.addr, align 8
  %pBackup16 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 35
  %32 = load ptr, ptr %pBackup16, align 8
  %33 = load ptr, ptr %p, align 8
  %pgno17 = getelementptr inbounds nuw %struct.PgHdr, ptr %33, i32 0, i32 6
  %34 = load i32, ptr %pgno17, align 8
  %35 = load ptr, ptr %p, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %pData, align 8
  call void @sqlite3BackupUpdate(ptr noundef %32, i32 noundef %34, ptr noundef %36)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %37 = load ptr, ptr %p, align 8
  %pDirty19 = getelementptr inbounds nuw %struct.PgHdr, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %pDirty19, align 8
  store ptr %38, ptr %p, align 8
  br label %for.cond13, !llvm.loop !8

for.end20:                                        ; preds = %for.cond13
  br label %if.end21

if.end21:                                         ; preds = %for.end20, %land.lhs.true, %if.end8
  %39 = load i32, ptr %rc, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden void @pager_write_changecounter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalFrames(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BackupUpdate(ptr noundef, i32 noundef, ptr noundef) #0

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
