; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @backupTruncateFile(ptr noundef %pFile, i64 noundef %iSize) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %iSize.addr = alloca i64, align 8
  %iCurrent = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iSize, ptr %iSize.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 @sqlite3OsFileSize(ptr noundef %0, ptr noundef %iCurrent)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %iCurrent, align 8
  %3 = load i64, ptr %iSize.addr, align 8
  %cmp1 = icmp sgt i64 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i64, ptr %iSize.addr, align 8
  %call2 = call i32 @sqlite3OsTruncate(ptr noundef %4, i64 noundef %5)
  store i32 %call2, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
