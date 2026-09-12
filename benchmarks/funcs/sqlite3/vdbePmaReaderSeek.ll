; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReaderSeek(ptr noundef %pTask, ptr noundef %pReadr, ptr noundef %pFile, i64 noundef %iOff) #0 {
entry:
  %retval = alloca i32, align 4
  %pTask.addr = alloca ptr, align 8
  %pReadr.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %iOff.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %pgsz = alloca i32, align 4
  %iBuf = alloca i32, align 4
  %nRead = alloca i32, align 4
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pReadr, ptr %pReadr.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iOff, ptr %iOff.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @sqlite3FaultSim(i32 noundef 201)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 266, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pReadr.addr, align 8
  %aMap = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %aMap, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %pReadr.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pFd, align 8
  %4 = load ptr, ptr %pReadr.addr, align 8
  %aMap3 = getelementptr inbounds nuw %struct.PmaReader, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %aMap3, align 8
  %call4 = call i32 @sqlite3OsUnfetch(ptr noundef %3, i64 noundef 0, ptr noundef %5)
  %6 = load ptr, ptr %pReadr.addr, align 8
  %aMap5 = getelementptr inbounds nuw %struct.PmaReader, ptr %6, i32 0, i32 9
  store ptr null, ptr %aMap5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %7 = load i64, ptr %iOff.addr, align 8
  %8 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff = getelementptr inbounds nuw %struct.PmaReader, ptr %8, i32 0, i32 0
  store i64 %7, ptr %iReadOff, align 8
  %9 = load ptr, ptr %pFile.addr, align 8
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %iEof, align 8
  %11 = load ptr, ptr %pReadr.addr, align 8
  %iEof7 = getelementptr inbounds nuw %struct.PmaReader, ptr %11, i32 0, i32 1
  store i64 %10, ptr %iEof7, align 8
  %12 = load ptr, ptr %pFile.addr, align 8
  %pFd8 = getelementptr inbounds nuw %struct.SorterFile, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pFd8, align 8
  %14 = load ptr, ptr %pReadr.addr, align 8
  %pFd9 = getelementptr inbounds nuw %struct.PmaReader, ptr %14, i32 0, i32 4
  store ptr %13, ptr %pFd9, align 8
  %15 = load ptr, ptr %pTask.addr, align 8
  %16 = load ptr, ptr %pFile.addr, align 8
  %17 = load ptr, ptr %pReadr.addr, align 8
  %aMap10 = getelementptr inbounds nuw %struct.PmaReader, ptr %17, i32 0, i32 9
  %call11 = call i32 @vdbeSorterMapFile(ptr noundef %15, ptr noundef %16, ptr noundef %aMap10)
  store i32 %call11, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end6
  %19 = load ptr, ptr %pReadr.addr, align 8
  %aMap12 = getelementptr inbounds nuw %struct.PmaReader, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %aMap12, align 8
  %cmp13 = icmp eq ptr %20, null
  br i1 %cmp13, label %if.then14, label %if.end51

if.then14:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pSorter, align 8
  %pgsz15 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %pgsz15, align 4
  store i32 %23, ptr %pgsz, align 4
  %24 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff16 = getelementptr inbounds nuw %struct.PmaReader, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %iReadOff16, align 8
  %26 = load i32, ptr %pgsz, align 4
  %conv = sext i32 %26 to i64
  %rem = srem i64 %25, %conv
  %conv17 = trunc i64 %rem to i32
  store i32 %conv17, ptr %iBuf, align 4
  %27 = load ptr, ptr %pReadr.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %aBuffer, align 8
  %cmp18 = icmp eq ptr %28, null
  br i1 %cmp18, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.then14
  %29 = load i32, ptr %pgsz, align 4
  %conv21 = sext i32 %29 to i64
  %call22 = call ptr @sqlite3Malloc(i64 noundef %conv21)
  %30 = load ptr, ptr %pReadr.addr, align 8
  %aBuffer23 = getelementptr inbounds nuw %struct.PmaReader, ptr %30, i32 0, i32 7
  store ptr %call22, ptr %aBuffer23, align 8
  %31 = load ptr, ptr %pReadr.addr, align 8
  %aBuffer24 = getelementptr inbounds nuw %struct.PmaReader, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %aBuffer24, align 8
  %cmp25 = icmp eq ptr %32, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then20
  store i32 7, ptr %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then20
  %33 = load i32, ptr %pgsz, align 4
  %34 = load ptr, ptr %pReadr.addr, align 8
  %nBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %34, i32 0, i32 8
  store i32 %33, ptr %nBuffer, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then14
  %35 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %35, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end50

land.lhs.true32:                                  ; preds = %if.end29
  %36 = load i32, ptr %iBuf, align 4
  %tobool33 = icmp ne i32 %36, 0
  br i1 %tobool33, label %if.then34, label %if.end50

if.then34:                                        ; preds = %land.lhs.true32
  %37 = load i32, ptr %pgsz, align 4
  %38 = load i32, ptr %iBuf, align 4
  %sub = sub nsw i32 %37, %38
  store i32 %sub, ptr %nRead, align 4
  %39 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff35 = getelementptr inbounds nuw %struct.PmaReader, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %iReadOff35, align 8
  %41 = load i32, ptr %nRead, align 4
  %conv36 = sext i32 %41 to i64
  %add = add nsw i64 %40, %conv36
  %42 = load ptr, ptr %pReadr.addr, align 8
  %iEof37 = getelementptr inbounds nuw %struct.PmaReader, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %iEof37, align 8
  %cmp38 = icmp sgt i64 %add, %43
  br i1 %cmp38, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.then34
  %44 = load ptr, ptr %pReadr.addr, align 8
  %iEof41 = getelementptr inbounds nuw %struct.PmaReader, ptr %44, i32 0, i32 1
  %45 = load i64, ptr %iEof41, align 8
  %46 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff42 = getelementptr inbounds nuw %struct.PmaReader, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %iReadOff42, align 8
  %sub43 = sub nsw i64 %45, %47
  %conv44 = trunc i64 %sub43 to i32
  store i32 %conv44, ptr %nRead, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.then34
  %48 = load ptr, ptr %pReadr.addr, align 8
  %pFd46 = getelementptr inbounds nuw %struct.PmaReader, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %pFd46, align 8
  %50 = load ptr, ptr %pReadr.addr, align 8
  %aBuffer47 = getelementptr inbounds nuw %struct.PmaReader, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %aBuffer47, align 8
  %52 = load i32, ptr %iBuf, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds i8, ptr %51, i64 %idxprom
  %53 = load i32, ptr %nRead, align 4
  %54 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff48 = getelementptr inbounds nuw %struct.PmaReader, ptr %54, i32 0, i32 0
  %55 = load i64, ptr %iReadOff48, align 8
  %call49 = call i32 @sqlite3OsRead(ptr noundef %49, ptr noundef %arrayidx, i32 noundef %53, i64 noundef %55)
  store i32 %call49, ptr %rc, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %land.lhs.true32, %if.end29
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true, %if.end6
  %56 = load i32, ptr %rc, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterMapFile(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
