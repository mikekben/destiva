; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaReaderClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderSeek(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReadVarint(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReaderNext(ptr noundef %pReadr) #0 {
entry:
  %retval = alloca i32, align 4
  %pReadr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nRec = alloca i64, align 8
  %pIncr = alloca ptr, align 8
  %bEof = alloca i32, align 4
  store ptr %pReadr, ptr %pReadr.addr, align 8
  store i32 0, ptr %rc, align 4
  store i64 0, ptr %nRec, align 8
  %0 = load ptr, ptr %pReadr.addr, align 8
  %iReadOff = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %iReadOff, align 8
  %2 = load ptr, ptr %pReadr.addr, align 8
  %iEof = getelementptr inbounds nuw %struct.PmaReader, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %iEof, align 8
  %cmp = icmp sge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pReadr.addr, align 8
  %pIncr1 = getelementptr inbounds nuw %struct.PmaReader, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %pIncr1, align 8
  store ptr %5, ptr %pIncr, align 8
  store i32 1, ptr %bEof, align 4
  %6 = load ptr, ptr %pIncr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %pIncr, align 8
  %call = call i32 @vdbeIncrSwap(ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %9 = load ptr, ptr %pIncr, align 8
  %bEof4 = getelementptr inbounds nuw %struct.IncrMerger, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %bEof4, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pIncr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pTask, align 8
  %13 = load ptr, ptr %pReadr.addr, align 8
  %14 = load ptr, ptr %pIncr, align 8
  %aFile = getelementptr inbounds nuw %struct.IncrMerger, ptr %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile, i64 0, i64 0
  %15 = load ptr, ptr %pIncr, align 8
  %iStartOff = getelementptr inbounds nuw %struct.IncrMerger, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %iStartOff, align 8
  %call7 = call i32 @vdbePmaReaderSeek(ptr noundef %12, ptr noundef %13, ptr noundef %arrayidx, i64 noundef %16)
  store i32 %call7, ptr %rc, align 4
  store i32 0, ptr %bEof, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %17 = load i32, ptr %bEof, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %18 = load ptr, ptr %pReadr.addr, align 8
  call void @vdbePmaReaderClear(ptr noundef %18)
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %20 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %21 = load ptr, ptr %pReadr.addr, align 8
  %call15 = call i32 @vdbePmaReadVarint(ptr noundef %21, ptr noundef %nRec)
  store i32 %call15, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %22 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %22, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  %23 = load i64, ptr %nRec, align 8
  %conv = trunc i64 %23 to i32
  %24 = load ptr, ptr %pReadr.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.PmaReader, ptr %24, i32 0, i32 3
  store i32 %conv, ptr %nKey, align 4
  %25 = load ptr, ptr %pReadr.addr, align 8
  %26 = load i64, ptr %nRec, align 8
  %conv19 = trunc i64 %26 to i32
  %27 = load ptr, ptr %pReadr.addr, align 8
  %aKey = getelementptr inbounds nuw %struct.PmaReader, ptr %27, i32 0, i32 6
  %call20 = call i32 @vdbePmaReadBlob(ptr noundef %25, i32 noundef %conv19, ptr noundef %aKey)
  store i32 %call20, ptr %rc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then10
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReadBlob(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrSwap(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
