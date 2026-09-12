; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SorterFile = type { ptr, i64 }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterJoinThread(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeIncrSwap(ptr noundef %pIncr) #1 {
entry:
  %pIncr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %f0 = alloca %struct.SorterFile, align 8
  store ptr %pIncr, ptr %pIncr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pIncr.addr, align 8
  %bUseThread = getelementptr inbounds nuw %struct.IncrMerger, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %bUseThread, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pIncr.addr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pTask, align 8
  %call = call i32 @vdbeSorterJoinThread(ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %pIncr.addr, align 8
  %aFile = getelementptr inbounds nuw %struct.IncrMerger, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %f0, ptr align 8 %arrayidx, i64 16, i1 false)
  %6 = load ptr, ptr %pIncr.addr, align 8
  %aFile2 = getelementptr inbounds nuw %struct.IncrMerger, ptr %6, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile2, i64 0, i64 0
  %7 = load ptr, ptr %pIncr.addr, align 8
  %aFile4 = getelementptr inbounds nuw %struct.IncrMerger, ptr %7, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile4, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx3, ptr align 8 %arrayidx5, i64 16, i1 false)
  %8 = load ptr, ptr %pIncr.addr, align 8
  %aFile6 = getelementptr inbounds nuw %struct.IncrMerger, ptr %8, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile6, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx7, ptr align 8 %f0, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %9 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %pIncr.addr, align 8
  %aFile10 = getelementptr inbounds nuw %struct.IncrMerger, ptr %10, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile10, i64 0, i64 0
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx11, i32 0, i32 1
  %11 = load i64, ptr %iEof, align 8
  %12 = load ptr, ptr %pIncr.addr, align 8
  %iStartOff = getelementptr inbounds nuw %struct.IncrMerger, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %iStartOff, align 8
  %cmp12 = icmp eq i64 %11, %13
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  %14 = load ptr, ptr %pIncr.addr, align 8
  %bEof = getelementptr inbounds nuw %struct.IncrMerger, ptr %14, i32 0, i32 4
  store i32 1, ptr %bEof, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then9
  %15 = load ptr, ptr %pIncr.addr, align 8
  %call14 = call i32 @vdbeIncrBgPopulate(ptr noundef %15)
  store i32 %call14, ptr %rc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %if.end31

if.else17:                                        ; preds = %entry
  %16 = load ptr, ptr %pIncr.addr, align 8
  %call18 = call i32 @vdbeIncrPopulate(ptr noundef %16)
  store i32 %call18, ptr %rc, align 4
  %17 = load ptr, ptr %pIncr.addr, align 8
  %aFile19 = getelementptr inbounds nuw %struct.IncrMerger, ptr %17, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile19, i64 0, i64 0
  %18 = load ptr, ptr %pIncr.addr, align 8
  %aFile21 = getelementptr inbounds nuw %struct.IncrMerger, ptr %18, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile21, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx20, ptr align 8 %arrayidx22, i64 16, i1 false)
  %19 = load ptr, ptr %pIncr.addr, align 8
  %aFile23 = getelementptr inbounds nuw %struct.IncrMerger, ptr %19, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile23, i64 0, i64 0
  %iEof25 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx24, i32 0, i32 1
  %20 = load i64, ptr %iEof25, align 8
  %21 = load ptr, ptr %pIncr.addr, align 8
  %iStartOff26 = getelementptr inbounds nuw %struct.IncrMerger, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %iStartOff26, align 8
  %cmp27 = icmp eq i64 %20, %22
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.else17
  %23 = load ptr, ptr %pIncr.addr, align 8
  %bEof29 = getelementptr inbounds nuw %struct.IncrMerger, ptr %23, i32 0, i32 4
  store i32 1, ptr %bEof29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else17
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end16
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrBgPopulate(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrPopulate(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
