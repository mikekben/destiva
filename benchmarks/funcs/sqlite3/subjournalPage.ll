; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @subjournalPage(ptr noundef %pPg) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %offset = alloca i64, align 8
  %pData2 = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPager, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 2
  %3 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPager, align 8
  %call = call i32 @openSubJournal(ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end17

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %pPg.addr, align 8
  %pData6 = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pData6, align 8
  store ptr %7, ptr %pData, align 8
  %8 = load ptr, ptr %pPager, align 8
  %nSubRec = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 28
  %9 = load i32, ptr %nSubRec, align 8
  %conv7 = zext i32 %9 to i64
  %10 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 47
  %11 = load i32, ptr %pageSize, align 4
  %add = add nsw i32 4, %11
  %conv8 = sext i32 %add to i64
  %mul = mul nsw i64 %conv7, %conv8
  store i64 %mul, ptr %offset, align 8
  %12 = load ptr, ptr %pData, align 8
  store ptr %12, ptr %pData2, align 8
  %13 = load ptr, ptr %pPager, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 32
  %14 = load ptr, ptr %sjfd, align 8
  %15 = load i64, ptr %offset, align 8
  %16 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %pgno, align 8
  %call9 = call i32 @write32bits(ptr noundef %14, i64 noundef %15, i32 noundef %17)
  store i32 %call9, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then5
  %19 = load ptr, ptr %pPager, align 8
  %sjfd13 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 32
  %20 = load ptr, ptr %sjfd13, align 8
  %21 = load ptr, ptr %pData2, align 8
  %22 = load ptr, ptr %pPager, align 8
  %pageSize14 = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 47
  %23 = load i32, ptr %pageSize14, align 4
  %24 = load i64, ptr %offset, align 8
  %add15 = add nsw i64 %24, 4
  %call16 = call i32 @sqlite3OsWrite(ptr noundef %20, ptr noundef %21, i32 noundef %23, i64 noundef %add15)
  store i32 %call16, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then5
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  %25 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %25, 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %pPager, align 8
  %nSubRec22 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 28
  %27 = load i32, ptr %nSubRec22, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %nSubRec22, align 8
  %28 = load ptr, ptr %pPager, align 8
  %29 = load ptr, ptr %pPg.addr, align 8
  %pgno23 = getelementptr inbounds nuw %struct.PgHdr, ptr %29, i32 0, i32 6
  %30 = load i32, ptr %pgno23, align 8
  %call24 = call i32 @addToSavepointBitvecs(ptr noundef %28, i32 noundef %30)
  store i32 %call24, ptr %rc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @openSubJournal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @write32bits(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @addToSavepointBitvecs(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
