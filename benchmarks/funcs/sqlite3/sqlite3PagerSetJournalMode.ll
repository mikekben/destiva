; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerLockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_unlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerUnlockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSharedLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerSetJournalMode(ptr noundef %pPager, i32 noundef %eMode) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %eOld = alloca i8, align 1
  %rc = alloca i32, align 4
  %state = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %journalMode, align 1
  store i8 %1, ptr %eOld, align 1
  %2 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %memDb, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %eMode.addr, align 4
  %cmp = icmp ne i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %eMode.addr, align 4
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %land.lhs.true
  %6 = load i8, ptr %eOld, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %eMode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %7 = load i32, ptr %eMode.addr, align 4
  %8 = load i8, ptr %eOld, align 1
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp ne i32 %7, %conv4
  br i1 %cmp5, label %if.then7, label %if.end65

if.then7:                                         ; preds = %if.end3
  %9 = load i32, ptr %eMode.addr, align 4
  %conv8 = trunc i32 %9 to i8
  %10 = load ptr, ptr %pPager.addr, align 8
  %journalMode9 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 2
  store i8 %conv8, ptr %journalMode9, align 1
  %11 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 1
  %12 = load i8, ptr %exclusiveMode, align 8
  %tobool10 = icmp ne i8 %12, 0
  br i1 %tobool10, label %if.else58, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.then7
  %13 = load i8, ptr %eOld, align 1
  %conv12 = zext i8 %13 to i32
  %and = and i32 %conv12, 5
  %cmp13 = icmp eq i32 %and, 1
  br i1 %cmp13, label %land.lhs.true15, label %if.else58

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %14 = load i32, ptr %eMode.addr, align 4
  %and16 = and i32 %14, 1
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %if.then19, label %if.else58

if.then19:                                        ; preds = %land.lhs.true15
  %15 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 31
  %16 = load ptr, ptr %jfd, align 8
  call void @sqlite3OsClose(ptr noundef %16)
  %17 = load ptr, ptr %pPager.addr, align 8
  %eLock = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 14
  %18 = load i8, ptr %eLock, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp sge i32 %conv20, 2
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  %19 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pVfs, align 8
  %21 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 51
  %22 = load ptr, ptr %zJournal, align 8
  %call = call i32 @sqlite3OsDelete(ptr noundef %20, ptr noundef %22, i32 noundef 0)
  br label %if.end57

if.else:                                          ; preds = %if.then19
  store i32 0, ptr %rc, align 4
  %23 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 13
  %24 = load i8, ptr %eState, align 4
  %conv24 = zext i8 %24 to i32
  store i32 %conv24, ptr %state, align 4
  %25 = load i32, ptr %state, align 4
  %cmp25 = icmp eq i32 %25, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  %26 = load ptr, ptr %pPager.addr, align 8
  %call28 = call i32 @sqlite3PagerSharedLock(ptr noundef %26)
  store i32 %call28, ptr %rc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.else
  %27 = load ptr, ptr %pPager.addr, align 8
  %eState30 = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 13
  %28 = load i8, ptr %eState30, align 4
  %conv31 = zext i8 %28 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  %29 = load ptr, ptr %pPager.addr, align 8
  %call35 = call i32 @pagerLockDb(ptr noundef %29, i32 noundef 2)
  store i32 %call35, ptr %rc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29
  %30 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end36
  %31 = load ptr, ptr %pPager.addr, align 8
  %pVfs40 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pVfs40, align 8
  %33 = load ptr, ptr %pPager.addr, align 8
  %zJournal41 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 51
  %34 = load ptr, ptr %zJournal41, align 8
  %call42 = call i32 @sqlite3OsDelete(ptr noundef %32, ptr noundef %34, i32 noundef 0)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36
  %35 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %35, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.else51

land.lhs.true46:                                  ; preds = %if.end43
  %36 = load i32, ptr %state, align 4
  %cmp47 = icmp eq i32 %36, 1
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %land.lhs.true46
  %37 = load ptr, ptr %pPager.addr, align 8
  %call50 = call i32 @pagerUnlockDb(ptr noundef %37, i32 noundef 1)
  br label %if.end56

if.else51:                                        ; preds = %land.lhs.true46, %if.end43
  %38 = load i32, ptr %state, align 4
  %cmp52 = icmp eq i32 %38, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else51
  %39 = load ptr, ptr %pPager.addr, align 8
  call void @pager_unlock(ptr noundef %39)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else51
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then23
  br label %if.end64

if.else58:                                        ; preds = %land.lhs.true15, %land.lhs.true11, %if.then7
  %40 = load i32, ptr %eMode.addr, align 4
  %cmp59 = icmp eq i32 %40, 2
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.else58
  %41 = load ptr, ptr %pPager.addr, align 8
  %jfd62 = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 31
  %42 = load ptr, ptr %jfd62, align 8
  call void @sqlite3OsClose(ptr noundef %42)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.else58
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end3
  %43 = load ptr, ptr %pPager.addr, align 8
  %journalMode66 = getelementptr inbounds nuw %struct.Pager, ptr %43, i32 0, i32 2
  %44 = load i8, ptr %journalMode66, align 1
  %conv67 = zext i8 %44 to i32
  ret i32 %conv67
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
