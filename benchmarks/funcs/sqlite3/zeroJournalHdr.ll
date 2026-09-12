; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

@zeroJournalHdr.zeroHdr = external hidden constant [28 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @zeroJournalHdr(ptr noundef %pPager, i32 noundef %doTruncate) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %doTruncate.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %iLimit = alloca i64, align 8
  %sz = alloca i64, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %doTruncate, ptr %doTruncate.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 33
  %1 = load i64, ptr %journalOff, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %journalSizeLimit = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 49
  %3 = load i64, ptr %journalSizeLimit, align 8
  store i64 %3, ptr %iLimit, align 8
  %4 = load i32, ptr %doTruncate.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i64, ptr %iLimit, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 31
  %7 = load ptr, ptr %jfd, align 8
  %call = call i32 @sqlite3OsTruncate(ptr noundef %7, i64 noundef 0)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pPager.addr, align 8
  %jfd3 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 31
  %9 = load ptr, ptr %jfd3, align 8
  %call4 = call i32 @sqlite3OsWrite(ptr noundef %9, ptr noundef @zeroJournalHdr.zeroHdr, i32 noundef 28, i64 noundef 0)
  store i32 %call4, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %10 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 4
  %12 = load i8, ptr %noSync, align 1
  %tobool6 = icmp ne i8 %12, 0
  br i1 %tobool6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %pPager.addr, align 8
  %jfd8 = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 31
  %14 = load ptr, ptr %jfd8, align 8
  %15 = load ptr, ptr %pPager.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 7
  %16 = load i8, ptr %syncFlags, align 2
  %conv = zext i8 %16 to i32
  %or = or i32 16, %conv
  %call9 = call i32 @sqlite3OsSync(ptr noundef %14, i32 noundef %or)
  store i32 %call9, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %if.end
  %17 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %land.lhs.true13, label %if.end28

land.lhs.true13:                                  ; preds = %if.end10
  %18 = load i64, ptr %iLimit, align 8
  %cmp14 = icmp sgt i64 %18, 0
  br i1 %cmp14, label %if.then16, label %if.end28

if.then16:                                        ; preds = %land.lhs.true13
  %19 = load ptr, ptr %pPager.addr, align 8
  %jfd17 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 31
  %20 = load ptr, ptr %jfd17, align 8
  %call18 = call i32 @sqlite3OsFileSize(ptr noundef %20, ptr noundef %sz)
  store i32 %call18, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %21, 0
  br i1 %cmp19, label %land.lhs.true21, label %if.end27

land.lhs.true21:                                  ; preds = %if.then16
  %22 = load i64, ptr %sz, align 8
  %23 = load i64, ptr %iLimit, align 8
  %cmp22 = icmp sgt i64 %22, %23
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %land.lhs.true21
  %24 = load ptr, ptr %pPager.addr, align 8
  %jfd25 = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 31
  %25 = load ptr, ptr %jfd25, align 8
  %26 = load i64, ptr %iLimit, align 8
  %call26 = call i32 @sqlite3OsTruncate(ptr noundef %25, i64 noundef %26)
  store i32 %call26, ptr %rc, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true21, %if.then16
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true13, %if.end10
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry
  %27 = load i32, ptr %rc, align 4
  ret i32 %27
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
