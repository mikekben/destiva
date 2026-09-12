; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OsOpenMalloc(ptr noundef %pVfs, ptr noundef %zFile, ptr noundef %ppFile, i32 noundef %flags, ptr noundef %pOutFlags) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zFile.addr = alloca ptr, align 8
  %ppFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pOutFlags.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pFile = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zFile, ptr %zFile.addr, align 8
  store ptr %ppFile, ptr %ppFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pOutFlags, ptr %pOutFlags.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %szOsFile = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %szOsFile, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @sqlite3MallocZero(i64 noundef %conv)
  store ptr %call, ptr %pFile, align 8
  %2 = load ptr, ptr %pFile, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVfs.addr, align 8
  %4 = load ptr, ptr %zFile.addr, align 8
  %5 = load ptr, ptr %pFile, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %7 = load ptr, ptr %pOutFlags.addr, align 8
  %call1 = call i32 @sqlite3OsOpen(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  store i32 %call1, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %pFile, align 8
  call void @sqlite3_free(ptr noundef %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %pFile, align 8
  %11 = load ptr, ptr %ppFile.addr, align 8
  store ptr %10, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end5

if.else4:                                         ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
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
