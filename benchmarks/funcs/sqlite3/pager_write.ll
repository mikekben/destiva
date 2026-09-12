; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @subjournalPageIfRequired(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTestNotNull(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMakeDirty(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_write(ptr noundef %pPg) #0 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pPager, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %eState, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPager, align 8
  %call = call i32 @pager_open_journal(ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %pPg.addr, align 8
  call void @sqlite3PcacheMakeDirty(ptr noundef %7)
  %8 = load ptr, ptr %pPager, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 29
  %9 = load ptr, ptr %pInJournal, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end6
  %10 = load ptr, ptr %pPager, align 8
  %pInJournal9 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 29
  %11 = load ptr, ptr %pInJournal9, align 8
  %12 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %pgno, align 8
  %call10 = call i32 @sqlite3BitvecTestNotNull(ptr noundef %11, i32 noundef %13)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end32

if.then13:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %pPg.addr, align 8
  %pgno14 = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %pgno14, align 8
  %16 = load ptr, ptr %pPager, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 22
  %17 = load i32, ptr %dbOrigSize, align 8
  %cmp15 = icmp ule i32 %15, %17
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %18 = load ptr, ptr %pPg.addr, align 8
  %call18 = call i32 @pagerAddPageToRollbackJournal(ptr noundef %18)
  store i32 %call18, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp19 = icmp ne i32 %19, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then17
  br label %if.end31

if.else:                                          ; preds = %if.then13
  %21 = load ptr, ptr %pPager, align 8
  %eState23 = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 13
  %22 = load i8, ptr %eState23, align 4
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 4
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.else
  %23 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %23, i32 0, i32 7
  %24 = load i16, ptr %flags, align 4
  %conv28 = zext i16 %24 to i32
  %or = or i32 %conv28, 8
  %conv29 = trunc i32 %or to i16
  store i16 %conv29, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %if.end6
  %25 = load ptr, ptr %pPg.addr, align 8
  %flags33 = getelementptr inbounds nuw %struct.PgHdr, ptr %25, i32 0, i32 7
  %26 = load i16, ptr %flags33, align 4
  %conv34 = zext i16 %26 to i32
  %or35 = or i32 %conv34, 4
  %conv36 = trunc i32 %or35 to i16
  store i16 %conv36, ptr %flags33, align 4
  %27 = load ptr, ptr %pPager, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 37
  %28 = load i32, ptr %nSavepoint, align 8
  %cmp37 = icmp sgt i32 %28, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end32
  %29 = load ptr, ptr %pPg.addr, align 8
  %call40 = call i32 @subjournalPageIfRequired(ptr noundef %29)
  store i32 %call40, ptr %rc, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end32
  %30 = load ptr, ptr %pPager, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 21
  %31 = load i32, ptr %dbSize, align 4
  %32 = load ptr, ptr %pPg.addr, align 8
  %pgno42 = getelementptr inbounds nuw %struct.PgHdr, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %pgno42, align 8
  %cmp43 = icmp ult i32 %31, %33
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  %34 = load ptr, ptr %pPg.addr, align 8
  %pgno46 = getelementptr inbounds nuw %struct.PgHdr, ptr %34, i32 0, i32 6
  %35 = load i32, ptr %pgno46, align 8
  %36 = load ptr, ptr %pPager, align 8
  %dbSize47 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 21
  store i32 %35, ptr %dbSize47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end41
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then21, %if.then5
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_open_journal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerAddPageToRollbackJournal(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
