; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterCreateThread(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReaderIncrInit(ptr noundef %pReadr, i32 noundef %eMode) #0 {
entry:
  %pReadr.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %pIncr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pCtx = alloca ptr, align 8
  store ptr %pReadr, ptr %pReadr.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  %0 = load ptr, ptr %pReadr.addr, align 8
  %pIncr1 = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %pIncr1, align 8
  store ptr %1, ptr %pIncr, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pIncr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pIncr, align 8
  %bUseThread = getelementptr inbounds nuw %struct.IncrMerger, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %bUseThread, align 8
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %pReadr.addr, align 8
  store ptr %5, ptr %pCtx, align 8
  %6 = load ptr, ptr %pIncr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pTask, align 8
  %8 = load ptr, ptr %pCtx, align 8
  %call = call i32 @vdbeSorterCreateThread(ptr noundef %7, ptr noundef @vdbePmaReaderBgIncrInit, ptr noundef %8)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pReadr.addr, align 8
  %10 = load i32, ptr %eMode.addr, align 4
  %call4 = call i32 @vdbePmaReaderIncrMergeInit(ptr noundef %9, i32 noundef %10)
  store i32 %call4, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderIncrMergeInit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbePmaReaderBgIncrInit(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
