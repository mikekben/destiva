; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapGrowBucket(ptr noundef %pMap) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %apOld = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %apNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %nBucket = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  %0 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %nEntry, align 4
  %2 = load ptr, ptr %pMap.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nSize, align 8
  %mul = mul i32 %3, 3
  %cmp = icmp uge i32 %1, %mul
  br i1 %cmp, label %if.then, label %if.end48

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pMap.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %apBucket, align 8
  store ptr %5, ptr %apOld, align 8
  %6 = load ptr, ptr %pMap.addr, align 8
  %nSize1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %nSize1, align 8
  %shl = shl i32 %7, 1
  store i32 %shl, ptr %nNew, align 4
  %8 = load i32, ptr %nNew, align 4
  %cmp2 = icmp ult i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 16, ptr %nNew, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nNew, align 4
  %conv = zext i32 %11 to i64
  %mul4 = mul i64 %conv, 8
  %conv5 = trunc i64 %mul4 to i32
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef %conv5)
  store ptr %call, ptr %apNew, align 8
  %12 = load ptr, ptr %apNew, align 8
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %pMap.addr, align 8
  %nSize9 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %nSize9, align 8
  %cmp10 = icmp ult i32 %14, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %15 = load ptr, ptr %apNew, align 8
  %16 = load i32, ptr %nNew, align 4
  %conv15 = zext i32 %16 to i64
  %mul16 = mul i64 %conv15, 8
  %conv17 = trunc i64 %mul16 to i32
  call void @SyZero(ptr noundef %15, i32 noundef %conv17)
  %17 = load ptr, ptr %apNew, align 8
  %18 = load ptr, ptr %pMap.addr, align 8
  %apBucket18 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 1
  store ptr %17, ptr %apBucket18, align 8
  %19 = load i32, ptr %nNew, align 4
  %20 = load ptr, ptr %pMap.addr, align 8
  %nSize19 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %20, i32 0, i32 5
  store i32 %19, ptr %nSize19, align 8
  %21 = load ptr, ptr %apOld, align 8
  %cmp20 = icmp eq ptr %21, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end14
  %22 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pFirst, align 8
  store ptr %23, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end41, %if.end23
  %24 = load i32, ptr %n, align 4
  %25 = load ptr, ptr %pMap.addr, align 8
  %nEntry24 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %nEntry24, align 4
  %cmp25 = icmp uge i32 %24, %26
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.cond
  br label %for.end

if.end28:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pEntry, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %27, i32 0, i32 9
  store ptr null, ptr %pPrevCollide, align 8
  %28 = load ptr, ptr %pEntry, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 8
  store ptr null, ptr %pNextCollide, align 8
  %29 = load ptr, ptr %pEntry, align 8
  %nHash = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %nHash, align 4
  %31 = load i32, ptr %nNew, align 4
  %sub = sub i32 %31, 1
  %and = and i32 %30, %sub
  store i32 %and, ptr %nBucket, align 4
  %32 = load ptr, ptr %pMap.addr, align 8
  %apBucket29 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %apBucket29, align 8
  %34 = load i32, ptr %nBucket, align 4
  %idxprom = zext i32 %34 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %33, i64 %idxprom
  %35 = load ptr, ptr %arrayidx, align 8
  %cmp30 = icmp ne ptr %35, null
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end28
  %36 = load ptr, ptr %pMap.addr, align 8
  %apBucket33 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %apBucket33, align 8
  %38 = load i32, ptr %nBucket, align 4
  %idxprom34 = zext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds nuw ptr, ptr %37, i64 %idxprom34
  %39 = load ptr, ptr %arrayidx35, align 8
  %40 = load ptr, ptr %pEntry, align 8
  %pNextCollide36 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %40, i32 0, i32 8
  store ptr %39, ptr %pNextCollide36, align 8
  %41 = load ptr, ptr %pEntry, align 8
  %42 = load ptr, ptr %pMap.addr, align 8
  %apBucket37 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %apBucket37, align 8
  %44 = load i32, ptr %nBucket, align 4
  %idxprom38 = zext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds nuw ptr, ptr %43, i64 %idxprom38
  %45 = load ptr, ptr %arrayidx39, align 8
  %pPrevCollide40 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %45, i32 0, i32 9
  store ptr %41, ptr %pPrevCollide40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.end28
  %46 = load ptr, ptr %pEntry, align 8
  %47 = load ptr, ptr %pMap.addr, align 8
  %apBucket42 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %apBucket42, align 8
  %49 = load i32, ptr %nBucket, align 4
  %idxprom43 = zext i32 %49 to i64
  %arrayidx44 = getelementptr inbounds nuw ptr, ptr %48, i64 %idxprom43
  store ptr %46, ptr %arrayidx44, align 8
  %50 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %pPrev, align 8
  store ptr %51, ptr %pEntry, align 8
  %52 = load i32, ptr %n, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then27
  %53 = load ptr, ptr %pMap.addr, align 8
  %pVm45 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pVm45, align 8
  %sAllocator46 = getelementptr inbounds nuw %struct.ph7_vm, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %apOld, align 8
  %call47 = call i32 @SyMemBackendFree(ptr noundef %sAllocator46, ptr noundef %55)
  br label %if.end48

if.end48:                                         ; preds = %for.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then22, %if.end13, %if.then12
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
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
