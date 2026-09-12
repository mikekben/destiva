; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterJoinThread(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterFlushPMA(ptr noundef %pSorter) #0 {
entry:
  %retval = alloca i32, align 4
  %pSorter.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %pTask = alloca ptr, align 8
  %nWorker = alloca i32, align 4
  %iTest = alloca i32, align 4
  %aMem = alloca ptr, align 8
  %pCtx = alloca ptr, align 8
  store ptr %pSorter, ptr %pSorter.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pTask, align 8
  %0 = load ptr, ptr %pSorter.addr, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %0, i32 0, i32 15
  %1 = load i8, ptr %nTask, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %nWorker, align 4
  %2 = load ptr, ptr %pSorter.addr, align 8
  %bUsePMA = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 12
  store i8 1, ptr %bUsePMA, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %nWorker, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pSorter.addr, align 8
  %iPrev = getelementptr inbounds nuw %struct.VdbeSorter, ptr %5, i32 0, i32 14
  %6 = load i8, ptr %iPrev, align 2
  %conv2 = zext i8 %6 to i32
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %conv2, %7
  %add3 = add nsw i32 %add, 1
  %8 = load i32, ptr %nWorker, align 4
  %rem = srem i32 %add3, %8
  store i32 %rem, ptr %iTest, align 4
  %9 = load ptr, ptr %pSorter.addr, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 17
  %10 = load i32, ptr %iTest, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pTask, align 8
  %11 = load ptr, ptr %pTask, align 8
  %bDone = getelementptr inbounds nuw %struct.SortSubtask, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %bDone, align 8
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %pTask, align 8
  %call = call i32 @vdbeSorterJoinThread(ptr noundef %13)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %14, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %pTask, align 8
  %pThread = getelementptr inbounds nuw %struct.SortSubtask, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pThread, align 8
  %cmp6 = icmp eq ptr %16, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end9:                                          ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then8, %for.cond
  %18 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end52

if.then12:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %nWorker, align 4
  %cmp13 = icmp eq i32 %19, %20
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  %21 = load ptr, ptr %pSorter.addr, align 8
  %aTask16 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %21, i32 0, i32 17
  %22 = load i32, ptr %nWorker, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask16, i64 0, i64 %idxprom17
  %23 = load ptr, ptr %pSorter.addr, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %23, i32 0, i32 9
  %call19 = call i32 @vdbeSorterListToPMA(ptr noundef %arrayidx18, ptr noundef %list)
  store i32 %call19, ptr %rc, align 4
  br label %if.end51

if.else:                                          ; preds = %if.then12
  %24 = load ptr, ptr %pTask, align 8
  %list20 = getelementptr inbounds nuw %struct.SortSubtask, ptr %24, i32 0, i32 4
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list20, i32 0, i32 1
  %25 = load ptr, ptr %aMemory, align 8
  store ptr %25, ptr %aMem, align 8
  %26 = load ptr, ptr %pTask, align 8
  store ptr %26, ptr %pCtx, align 8
  %27 = load ptr, ptr %pTask, align 8
  %28 = load ptr, ptr %pSorter.addr, align 8
  %aTask21 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %28, i32 0, i32 17
  %arraydecay = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask21, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 104
  %conv22 = trunc i64 %sub.ptr.div to i8
  %29 = load ptr, ptr %pSorter.addr, align 8
  %iPrev23 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %29, i32 0, i32 14
  store i8 %conv22, ptr %iPrev23, align 2
  %30 = load ptr, ptr %pTask, align 8
  %list24 = getelementptr inbounds nuw %struct.SortSubtask, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %pSorter.addr, align 8
  %list25 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %31, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %list24, ptr align 8 %list25, i64 24, i1 false)
  %32 = load ptr, ptr %pSorter.addr, align 8
  %list26 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %32, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list26, i32 0, i32 0
  store ptr null, ptr %pList, align 8
  %33 = load ptr, ptr %pSorter.addr, align 8
  %list27 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %33, i32 0, i32 9
  %szPMA = getelementptr inbounds nuw %struct.SorterList, ptr %list27, i32 0, i32 2
  store i32 0, ptr %szPMA, align 8
  %34 = load ptr, ptr %aMem, align 8
  %tobool28 = icmp ne ptr %34, null
  br i1 %tobool28, label %if.then29, label %if.else33

if.then29:                                        ; preds = %if.else
  %35 = load ptr, ptr %aMem, align 8
  %36 = load ptr, ptr %pSorter.addr, align 8
  %list30 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %36, i32 0, i32 9
  %aMemory31 = getelementptr inbounds nuw %struct.SorterList, ptr %list30, i32 0, i32 1
  store ptr %35, ptr %aMemory31, align 8
  %37 = load ptr, ptr %aMem, align 8
  %call32 = call i32 @sqlite3MallocSize(ptr noundef %37)
  %38 = load ptr, ptr %pSorter.addr, align 8
  %nMemory = getelementptr inbounds nuw %struct.VdbeSorter, ptr %38, i32 0, i32 11
  store i32 %call32, ptr %nMemory, align 4
  br label %if.end49

if.else33:                                        ; preds = %if.else
  %39 = load ptr, ptr %pSorter.addr, align 8
  %list34 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %39, i32 0, i32 9
  %aMemory35 = getelementptr inbounds nuw %struct.SorterList, ptr %list34, i32 0, i32 1
  %40 = load ptr, ptr %aMemory35, align 8
  %tobool36 = icmp ne ptr %40, null
  br i1 %tobool36, label %if.then37, label %if.end48

if.then37:                                        ; preds = %if.else33
  %41 = load ptr, ptr %pSorter.addr, align 8
  %nMemory38 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %41, i32 0, i32 11
  %42 = load i32, ptr %nMemory38, align 4
  %conv39 = sext i32 %42 to i64
  %call40 = call ptr @sqlite3Malloc(i64 noundef %conv39)
  %43 = load ptr, ptr %pSorter.addr, align 8
  %list41 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %43, i32 0, i32 9
  %aMemory42 = getelementptr inbounds nuw %struct.SorterList, ptr %list41, i32 0, i32 1
  store ptr %call40, ptr %aMemory42, align 8
  %44 = load ptr, ptr %pSorter.addr, align 8
  %list43 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %44, i32 0, i32 9
  %aMemory44 = getelementptr inbounds nuw %struct.SorterList, ptr %list43, i32 0, i32 1
  %45 = load ptr, ptr %aMemory44, align 8
  %tobool45 = icmp ne ptr %45, null
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.then37
  store i32 7, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.then37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.else33
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then29
  %46 = load ptr, ptr %pTask, align 8
  %47 = load ptr, ptr %pCtx, align 8
  %call50 = call i32 @vdbeSorterCreateThread(ptr noundef %46, ptr noundef @vdbeSorterFlushThread, ptr noundef %47)
  store i32 %call50, ptr %rc, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.then15
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.end
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then46
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterListToPMA(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterCreateThread(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterFlushThread(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
