; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReaderInit(ptr noundef %pTask, ptr noundef %pFile, i64 noundef %iStart, ptr noundef %pReadr, ptr noundef %pnByte) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %iStart.addr = alloca i64, align 8
  %pReadr.addr = alloca ptr, align 8
  %pnByte.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nByte = alloca i64, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iStart, ptr %iStart.addr, align 8
  store ptr %pReadr, ptr %pReadr.addr, align 8
  store ptr %pnByte, ptr %pnByte.addr, align 8
  %0 = load ptr, ptr %pTask.addr, align 8
  %1 = load ptr, ptr %pReadr.addr, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %3 = load i64, ptr %iStart.addr, align 8
  %call = call i32 @vdbePmaReaderSeek(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %nByte, align 8
  %5 = load ptr, ptr %pReadr.addr, align 8
  %call1 = call i32 @vdbePmaReadVarint(ptr noundef %5, ptr noundef %nByte)
  store i32 %call1, ptr %rc, align 4
  %6 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff = getelementptr inbounds nuw %struct.PmaReader, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %iReadOff, align 8
  %8 = load i64, ptr %nByte, align 8
  %add = add i64 %7, %8
  %9 = load ptr, ptr %pReadr.addr, align 8
  %iEof = getelementptr inbounds nuw %struct.PmaReader, ptr %9, i32 0, i32 1
  store i64 %add, ptr %iEof, align 8
  %10 = load i64, ptr %nByte, align 8
  %11 = load ptr, ptr %pnByte.addr, align 8
  %12 = load i64, ptr %11, align 8
  %add2 = add i64 %12, %10
  store i64 %add2, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %pReadr.addr, align 8
  %call5 = call i32 @vdbePmaReaderNext(ptr noundef %14)
  store i32 %call5, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderSeek(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReadVarint(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderNext(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
