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
define hidden i32 @openSubJournal(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %flags = alloca i32, align 4
  %nStmtSpill = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 32
  %1 = load ptr, ptr %sjfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  store i32 8222, ptr %flags, align 4
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 11), align 4
  store i32 %3, ptr %nStmtSpill, align 4
  %4 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 4
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %pPager.addr, align 8
  %subjInMemory = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 18
  %7 = load i8, ptr %subjInMemory, align 1
  %conv3 = zext i8 %7 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -1, ptr %nStmtSpill, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  %8 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVfs, align 8
  %10 = load ptr, ptr %pPager.addr, align 8
  %sjfd5 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 32
  %11 = load ptr, ptr %sjfd5, align 8
  %12 = load i32, ptr %nStmtSpill, align 4
  %call = call i32 @sqlite3JournalOpen(ptr noundef %9, ptr noundef null, ptr noundef %11, i32 noundef 8222, i32 noundef %12)
  store i32 %call, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
