; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @writeJournalHdr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @databaseIsUnmoved(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_open_journal(ptr noundef %pPager) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %flags = alloca i32, align 4
  %nSpill = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs1, align 8
  store ptr %1, ptr %pVfs, align 8
  %2 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %errCode, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  %errCode2 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 25
  %5 = load i32, ptr %errCode2, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 59
  %7 = load ptr, ptr %pWal, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, 2
  br i1 %cmp3, label %if.then5, label %if.end40

if.then5:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 21
  %11 = load i32, ptr %dbSize, align 4
  %call = call ptr @sqlite3BitvecCreate(i32 noundef %11)
  %12 = load ptr, ptr %pPager.addr, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 29
  store ptr %call, ptr %pInJournal, align 8
  %13 = load ptr, ptr %pPager.addr, align 8
  %pInJournal6 = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 29
  %14 = load ptr, ptr %pInJournal6, align 8
  %cmp7 = icmp eq ptr %14, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  store i32 7, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then5
  %15 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 31
  %16 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pMethods, align 8
  %cmp11 = icmp ne ptr %17, null
  br i1 %cmp11, label %if.end34, label %if.then13

if.then13:                                        ; preds = %if.end10
  %18 = load ptr, ptr %pPager.addr, align 8
  %journalMode14 = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 2
  %19 = load i8, ptr %journalMode14, align 1
  %conv15 = zext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 4
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  %20 = load ptr, ptr %pPager.addr, align 8
  %jfd19 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 31
  %21 = load ptr, ptr %jfd19, align 8
  call void @sqlite3MemJournalOpen(ptr noundef %21)
  br label %if.end33

if.else:                                          ; preds = %if.then13
  store i32 6, ptr %flags, align 4
  %22 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 9
  %23 = load i8, ptr %tempFile, align 8
  %tobool20 = icmp ne i8 %23, 0
  br i1 %tobool20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 4104
  store i32 %or, ptr %flags, align 4
  %25 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 11), align 4
  store i32 %25, ptr %nSpill, align 4
  br label %if.end25

if.else22:                                        ; preds = %if.else
  %26 = load i32, ptr %flags, align 4
  %or23 = or i32 %26, 2048
  store i32 %or23, ptr %flags, align 4
  %27 = load ptr, ptr %pPager.addr, align 8
  %call24 = call i32 @jrnlBufferSize(ptr noundef %27)
  store i32 %call24, ptr %nSpill, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then21
  %28 = load ptr, ptr %pPager.addr, align 8
  %call26 = call i32 @databaseIsUnmoved(ptr noundef %28)
  store i32 %call26, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  %30 = load ptr, ptr %pVfs, align 8
  %31 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 51
  %32 = load ptr, ptr %zJournal, align 8
  %33 = load ptr, ptr %pPager.addr, align 8
  %jfd30 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 31
  %34 = load ptr, ptr %jfd30, align 8
  %35 = load i32, ptr %flags, align 4
  %36 = load i32, ptr %nSpill, align 4
  %call31 = call i32 @sqlite3JournalOpen(ptr noundef %30, ptr noundef %32, ptr noundef %34, i32 noundef %35, i32 noundef %36)
  store i32 %call31, ptr %rc, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then18
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end10
  %37 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %37, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %38 = load ptr, ptr %pPager.addr, align 8
  %nRec = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 26
  store i32 0, ptr %nRec, align 8
  %39 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 33
  store i64 0, ptr %journalOff, align 8
  %40 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 16
  store i8 0, ptr %setMaster, align 1
  %41 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 34
  store i64 0, ptr %journalHdr, align 8
  %42 = load ptr, ptr %pPager.addr, align 8
  %call38 = call i32 @writeJournalHdr(ptr noundef %42)
  store i32 %call38, ptr %rc, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %land.lhs.true, %if.end
  %43 = load i32, ptr %rc, align 4
  %cmp41 = icmp ne i32 %43, 0
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end40
  %44 = load ptr, ptr %pPager.addr, align 8
  %pInJournal44 = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 29
  %45 = load ptr, ptr %pInJournal44, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %45)
  %46 = load ptr, ptr %pPager.addr, align 8
  %pInJournal45 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 29
  store ptr null, ptr %pInJournal45, align 8
  br label %if.end47

if.else46:                                        ; preds = %if.end40
  %47 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %47, i32 0, i32 13
  store i8 3, ptr %eState, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then43
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then9, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MemJournalOpen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @jrnlBufferSize(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
