; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapMergeSort(ptr noundef %pMap, ptr noundef %xCmp, ptr noundef %pCmpData) #0 {
entry:
  %pMap.addr = alloca ptr, align 8
  %xCmp.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %a = alloca [32 x ptr], align 16
  %p = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %xCmp, ptr %xCmp.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  %arraydecay = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 0
  call void @SyZero(ptr noundef %arraydecay, i32 noundef 256)
  %0 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %pIn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %2 = load ptr, ptr %pIn, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %pIn, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %pPrev, align 8
  store ptr %5, ptr %pIn, align 8
  %6 = load ptr, ptr %p, align 8
  %pPrev1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %6, i32 0, i32 7
  store ptr null, ptr %pPrev1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %7, 31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom3
  store ptr %10, ptr %arrayidx4, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom5
  %13 = load ptr, ptr %arrayidx6, align 8
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %xCmp.addr, align 8
  %16 = load ptr, ptr %pCmpData.addr, align 8
  %call = call ptr @HashmapNodeMerge(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16)
  store ptr %call, ptr %p, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom7
  store ptr null, ptr %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %19 = load i32, ptr %i, align 4
  %cmp9 = icmp eq i32 %19, 31
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom11
  %21 = load ptr, ptr %arrayidx12, align 8
  %22 = load ptr, ptr %p, align 8
  %23 = load ptr, ptr %xCmp.addr, align 8
  %24 = load ptr, ptr %pCmpData.addr, align 8
  %call13 = call ptr @HashmapNodeMerge(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %25 = load i32, ptr %i, align 4
  %idxprom14 = zext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom14
  store ptr %call13, ptr %arrayidx15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %for.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %arrayidx17 = getelementptr inbounds [32 x ptr], ptr %a, i64 0, i64 0
  %26 = load ptr, ptr %arrayidx17, align 16
  store ptr %26, ptr %p, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc24, %while.end
  %27 = load i32, ptr %i, align 4
  %cmp19 = icmp ult i32 %27, 32
  br i1 %cmp19, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond18
  %28 = load ptr, ptr %p, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds nuw [32 x ptr], ptr %a, i64 0, i64 %idxprom21
  %30 = load ptr, ptr %arrayidx22, align 8
  %31 = load ptr, ptr %xCmp.addr, align 8
  %32 = load ptr, ptr %pCmpData.addr, align 8
  %call23 = call ptr @HashmapNodeMerge(ptr noundef %28, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store ptr %call23, ptr %p, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %33 = load i32, ptr %i, align 4
  %inc25 = add i32 %33, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end26:                                        ; preds = %for.cond18
  %34 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %34, i32 0, i32 6
  store ptr null, ptr %pNext, align 8
  %35 = load ptr, ptr %p, align 8
  %36 = load ptr, ptr %pMap.addr, align 8
  %pFirst27 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %36, i32 0, i32 2
  store ptr %35, ptr %pFirst27, align 8
  %37 = load ptr, ptr %pMap.addr, align 8
  %pFirst28 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pFirst28, align 8
  %39 = load ptr, ptr %pMap.addr, align 8
  %pCur = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %39, i32 0, i32 4
  store ptr %38, ptr %pCur, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapNodeMerge(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
