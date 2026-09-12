; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @pagerStress(ptr noundef %p, ptr noundef %pPg) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pPager, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %pPager, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 25
  %2 = load i32, ptr %errCode, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pPager, align 8
  %doNotSpill = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 17
  %4 = load i8, ptr %doNotSpill, align 8
  %conv = zext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %pPager, align 8
  %doNotSpill2 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 17
  %6 = load i8, ptr %doNotSpill2, align 8
  %conv3 = zext i8 %6 to i32
  %and = and i32 %conv3, 3
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 7
  %8 = load i16, ptr %flags, align 4
  %conv5 = zext i16 %8 to i32
  %and6 = and i32 %conv5, 8
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load ptr, ptr %pPager, align 8
  %aStat = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x i32], ptr %aStat, i64 0, i64 3
  %10 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %arrayidx, align 4
  %11 = load ptr, ptr %pPg.addr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 4
  store ptr null, ptr %pDirty, align 8
  %12 = load ptr, ptr %pPager, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 59
  %13 = load ptr, ptr %pWal, align 8
  %cmp11 = icmp ne ptr %13, null
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %14 = load ptr, ptr %pPg.addr, align 8
  %call = call i32 @subjournalPageIfRequired(ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %16 = load ptr, ptr %pPager, align 8
  %17 = load ptr, ptr %pPg.addr, align 8
  %call17 = call i32 @pagerWalFrames(ptr noundef %16, ptr noundef %17, i32 noundef 0, i32 noundef 0)
  store i32 %call17, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13
  br label %if.end35

if.else:                                          ; preds = %if.end10
  %18 = load ptr, ptr %pPg.addr, align 8
  %flags19 = getelementptr inbounds nuw %struct.PgHdr, ptr %18, i32 0, i32 7
  %19 = load i16, ptr %flags19, align 4
  %conv20 = zext i16 %19 to i32
  %and21 = and i32 %conv20, 8
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else
  %20 = load ptr, ptr %pPager, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 13
  %21 = load i8, ptr %eState, align 4
  %conv24 = zext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 3
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %lor.lhs.false23, %if.else
  %22 = load ptr, ptr %pPager, align 8
  %call28 = call i32 @syncJournal(ptr noundef %22, i32 noundef 1)
  store i32 %call28, ptr %rc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %lor.lhs.false23
  %23 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %23, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %24 = load ptr, ptr %pPager, align 8
  %25 = load ptr, ptr %pPg.addr, align 8
  %call33 = call i32 @pager_write_pagelist(ptr noundef %24, ptr noundef %25)
  store i32 %call33, ptr %rc, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end18
  %26 = load i32, ptr %rc, align 4
  %cmp36 = icmp eq i32 %26, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  %27 = load ptr, ptr %pPg.addr, align 8
  call void @sqlite3PcacheMakeClean(ptr noundef %27)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35
  %28 = load ptr, ptr %pPager, align 8
  %29 = load i32, ptr %rc, align 4
  %call40 = call i32 @pager_error(ptr noundef %28, i32 noundef %29)
  store i32 %call40, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then9, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @subjournalPageIfRequired(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerWalFrames(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @syncJournal(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_write_pagelist(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMakeClean(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_error(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
