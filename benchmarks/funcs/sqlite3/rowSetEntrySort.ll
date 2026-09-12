; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden ptr @rowSetEntrySort(ptr noundef %pIn) #1 {
entry:
  %pIn.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNext = alloca ptr, align 8
  %aBucket = alloca [40 x ptr], align 16
  store ptr %pIn, ptr %pIn.addr, align 8
  %arraydecay = getelementptr inbounds [40 x ptr], ptr %aBucket, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 320, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load ptr, ptr %pIn.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pIn.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pRight, align 8
  store ptr %2, ptr %pNext, align 8
  %3 = load ptr, ptr %pIn.addr, align 8
  %pRight1 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %3, i32 0, i32 1
  store ptr null, ptr %pRight1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom3
  %7 = load ptr, ptr %arrayidx4, align 8
  %8 = load ptr, ptr %pIn.addr, align 8
  %call = call ptr @rowSetEntryMerge(ptr noundef %7, ptr noundef %8)
  store ptr %call, ptr %pIn.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom5
  store ptr null, ptr %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %pIn.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom7
  store ptr %11, ptr %arrayidx8, align 8
  %13 = load ptr, ptr %pNext, align 8
  store ptr %13, ptr %pIn.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %arrayidx9 = getelementptr inbounds [40 x ptr], ptr %aBucket, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx9, align 16
  store ptr %14, ptr %pIn.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %while.end
  %15 = load i32, ptr %i, align 4
  %conv = zext i32 %15 to i64
  %cmp = icmp ult i64 %conv, 40
  br i1 %cmp, label %for.body12, label %for.end25

for.body12:                                       ; preds = %for.cond10
  %16 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom13
  %17 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %17, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  br label %for.inc23

if.end:                                           ; preds = %for.body12
  %18 = load ptr, ptr %pIn.addr, align 8
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load ptr, ptr %pIn.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom18
  %21 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @rowSetEntryMerge(ptr noundef %19, ptr noundef %21)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds nuw [40 x ptr], ptr %aBucket, i64 0, i64 %idxprom21
  %23 = load ptr, ptr %arrayidx22, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call20, %cond.true ], [ %23, %cond.false ]
  store ptr %cond, ptr %pIn.addr, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %cond.end, %if.then
  %24 = load i32, ptr %i, align 4
  %inc24 = add i32 %24, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond10, !llvm.loop !9

for.end25:                                        ; preds = %for.cond10
  %25 = load ptr, ptr %pIn.addr, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntryMerge(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
