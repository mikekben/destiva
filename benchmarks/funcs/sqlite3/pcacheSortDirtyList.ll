; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcacheSortDirtyList(ptr noundef %pIn) #1 {
entry:
  %pIn.addr = alloca ptr, align 8
  %a = alloca [32 x ptr], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  %arraydecay = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 256, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load ptr, ptr %pIn.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pIn.addr, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pDirty, align 8
  store ptr %3, ptr %pIn.addr, align 8
  %4 = load ptr, ptr %p, align 8
  %pDirty1 = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 4
  store ptr null, ptr %pDirty1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %5, 31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %p, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom3
  store ptr %8, ptr %arrayidx4, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom5
  %11 = load ptr, ptr %arrayidx6, align 8
  %12 = load ptr, ptr %p, align 8
  %call = call ptr @pcacheMergeDirtyList(ptr noundef %11, ptr noundef %12)
  store ptr %call, ptr %p, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom7
  store ptr null, ptr %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load i32, ptr %i, align 4
  %cmp9 = icmp eq i32 %15, 31
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom11
  %17 = load ptr, ptr %arrayidx12, align 8
  %18 = load ptr, ptr %p, align 8
  %call13 = call ptr @pcacheMergeDirtyList(ptr noundef %17, ptr noundef %18)
  %19 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom14
  store ptr %call13, ptr %arrayidx15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %for.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %arrayidx17 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 0
  %20 = load ptr, ptr %arrayidx17, align 16
  store ptr %20, ptr %p, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %while.end
  %21 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %21, 32
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %22 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom21
  %23 = load ptr, ptr %arrayidx22, align 8
  %cmp23 = icmp eq ptr %23, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body20
  br label %for.inc32

if.end25:                                         ; preds = %for.body20
  %24 = load ptr, ptr %p, align 8
  %tobool26 = icmp ne ptr %24, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end25
  %25 = load ptr, ptr %p, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom27
  %27 = load ptr, ptr %arrayidx28, align 8
  %call29 = call ptr @pcacheMergeDirtyList(ptr noundef %25, ptr noundef %27)
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  %28 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 %idxprom30
  %29 = load ptr, ptr %arrayidx31, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call29, %cond.true ], [ %29, %cond.false ]
  store ptr %cond, ptr %p, align 8
  br label %for.inc32

for.inc32:                                        ; preds = %cond.end, %if.then24
  %30 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %30, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end34:                                        ; preds = %for.cond18
  %31 = load ptr, ptr %p, align 8
  ret ptr %31
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pcacheMergeDirtyList(ptr noundef, ptr noundef) #1

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
