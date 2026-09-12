; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.VmRefObj = type { %struct.SySet, %struct.SySet, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRefHash(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmRefObjInsert(ptr noundef %pVm, ptr noundef %pRef) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pRef.addr = alloca ptr, align 8
  %nBucket = alloca i32, align 4
  %apNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pRef, ptr %pRef.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %nRefUsed = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 49
  %1 = load i32, ptr %nRefUsed, align 4
  %mul = mul i32 %1, 3
  %2 = load ptr, ptr %pVm.addr, align 8
  %nRefSize = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 48
  %3 = load i32, ptr %nRefSize, align 8
  %cmp = icmp uge i32 %mul, %3
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pVm.addr, align 8
  %nRefSize1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 48
  %5 = load i32, ptr %nRefSize1, align 8
  %shl = shl i32 %5, 1
  store i32 %shl, ptr %nNew, align 4
  %6 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nNew, align 4
  %conv = zext i32 %7 to i64
  %mul2 = mul i64 8, %conv
  %conv3 = trunc i64 %mul2 to i32
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef %conv3)
  store ptr %call, ptr %apNew, align 8
  %8 = load ptr, ptr %apNew, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then4, label %if.end26

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %pVm.addr, align 8
  %pRefList = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 47
  %10 = load ptr, ptr %pRefList, align 8
  store ptr %10, ptr %pEntry, align 8
  %11 = load ptr, ptr %apNew, align 8
  %12 = load i32, ptr %nNew, align 4
  %conv5 = zext i32 %12 to i64
  %mul6 = mul i64 %conv5, 8
  %conv7 = trunc i64 %mul6 to i32
  call void @SyZero(ptr noundef %11, i32 noundef %conv7)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %13 = load i32, ptr %n, align 4
  %14 = load ptr, ptr %pVm.addr, align 8
  %nRefUsed8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 49
  %15 = load i32, ptr %nRefUsed8, align 4
  %cmp9 = icmp ult i32 %13, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pEntry, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.VmRefObj, ptr %16, i32 0, i32 5
  store ptr null, ptr %pPrevCollide, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.VmRefObj, ptr %17, i32 0, i32 4
  store ptr null, ptr %pNextCollide, align 8
  %18 = load ptr, ptr %pEntry, align 8
  %nIdx = getelementptr inbounds nuw %struct.VmRefObj, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nIdx, align 8
  %call11 = call i32 @VmRefHash(i32 noundef %19)
  %20 = load i32, ptr %nNew, align 4
  %sub = sub i32 %20, 1
  %and = and i32 %call11, %sub
  store i32 %and, ptr %nBucket, align 4
  %21 = load ptr, ptr %apNew, align 8
  %22 = load i32, ptr %nBucket, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = load ptr, ptr %pEntry, align 8
  %pNextCollide12 = getelementptr inbounds nuw %struct.VmRefObj, ptr %24, i32 0, i32 4
  store ptr %23, ptr %pNextCollide12, align 8
  %25 = load ptr, ptr %apNew, align 8
  %26 = load i32, ptr %nBucket, align 4
  %idxprom13 = zext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds nuw ptr, ptr %25, i64 %idxprom13
  %27 = load ptr, ptr %arrayidx14, align 8
  %tobool15 = icmp ne ptr %27, null
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body
  %28 = load ptr, ptr %pEntry, align 8
  %29 = load ptr, ptr %apNew, align 8
  %30 = load i32, ptr %nBucket, align 4
  %idxprom17 = zext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds nuw ptr, ptr %29, i64 %idxprom17
  %31 = load ptr, ptr %arrayidx18, align 8
  %pPrevCollide19 = getelementptr inbounds nuw %struct.VmRefObj, ptr %31, i32 0, i32 5
  store ptr %28, ptr %pPrevCollide19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then16, %for.body
  %32 = load ptr, ptr %pEntry, align 8
  %33 = load ptr, ptr %apNew, align 8
  %34 = load i32, ptr %nBucket, align 4
  %idxprom20 = zext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds nuw ptr, ptr %33, i64 %idxprom20
  store ptr %32, ptr %arrayidx21, align 8
  %35 = load ptr, ptr %pEntry, align 8
  %pNext = getelementptr inbounds nuw %struct.VmRefObj, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %pNext, align 8
  store ptr %36, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, ptr %n, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %pVm.addr, align 8
  %sAllocator22 = getelementptr inbounds nuw %struct.ph7_vm, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pVm.addr, align 8
  %apRefObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %39, i32 0, i32 46
  %40 = load ptr, ptr %apRefObj, align 8
  %call23 = call i32 @SyMemBackendFree(ptr noundef %sAllocator22, ptr noundef %40)
  %41 = load ptr, ptr %apNew, align 8
  %42 = load ptr, ptr %pVm.addr, align 8
  %apRefObj24 = getelementptr inbounds nuw %struct.ph7_vm, ptr %42, i32 0, i32 46
  store ptr %41, ptr %apRefObj24, align 8
  %43 = load i32, ptr %nNew, align 4
  %44 = load ptr, ptr %pVm.addr, align 8
  %nRefSize25 = getelementptr inbounds nuw %struct.ph7_vm, ptr %44, i32 0, i32 48
  store i32 %43, ptr %nRefSize25, align 8
  br label %if.end26

if.end26:                                         ; preds = %for.end, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %entry
  %45 = load ptr, ptr %pRef.addr, align 8
  %nIdx28 = getelementptr inbounds nuw %struct.VmRefObj, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %nIdx28, align 8
  %call29 = call i32 @VmRefHash(i32 noundef %46)
  %47 = load ptr, ptr %pVm.addr, align 8
  %nRefSize30 = getelementptr inbounds nuw %struct.ph7_vm, ptr %47, i32 0, i32 48
  %48 = load i32, ptr %nRefSize30, align 8
  %sub31 = sub i32 %48, 1
  %and32 = and i32 %call29, %sub31
  store i32 %and32, ptr %nBucket, align 4
  %49 = load ptr, ptr %pVm.addr, align 8
  %apRefObj33 = getelementptr inbounds nuw %struct.ph7_vm, ptr %49, i32 0, i32 46
  %50 = load ptr, ptr %apRefObj33, align 8
  %51 = load i32, ptr %nBucket, align 4
  %idxprom34 = zext i32 %51 to i64
  %arrayidx35 = getelementptr inbounds nuw ptr, ptr %50, i64 %idxprom34
  %52 = load ptr, ptr %arrayidx35, align 8
  %53 = load ptr, ptr %pRef.addr, align 8
  %pNextCollide36 = getelementptr inbounds nuw %struct.VmRefObj, ptr %53, i32 0, i32 4
  store ptr %52, ptr %pNextCollide36, align 8
  %54 = load ptr, ptr %pVm.addr, align 8
  %apRefObj37 = getelementptr inbounds nuw %struct.ph7_vm, ptr %54, i32 0, i32 46
  %55 = load ptr, ptr %apRefObj37, align 8
  %56 = load i32, ptr %nBucket, align 4
  %idxprom38 = zext i32 %56 to i64
  %arrayidx39 = getelementptr inbounds nuw ptr, ptr %55, i64 %idxprom38
  %57 = load ptr, ptr %arrayidx39, align 8
  %tobool40 = icmp ne ptr %57, null
  br i1 %tobool40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end27
  %58 = load ptr, ptr %pRef.addr, align 8
  %59 = load ptr, ptr %pVm.addr, align 8
  %apRefObj42 = getelementptr inbounds nuw %struct.ph7_vm, ptr %59, i32 0, i32 46
  %60 = load ptr, ptr %apRefObj42, align 8
  %61 = load i32, ptr %nBucket, align 4
  %idxprom43 = zext i32 %61 to i64
  %arrayidx44 = getelementptr inbounds nuw ptr, ptr %60, i64 %idxprom43
  %62 = load ptr, ptr %arrayidx44, align 8
  %pPrevCollide45 = getelementptr inbounds nuw %struct.VmRefObj, ptr %62, i32 0, i32 5
  store ptr %58, ptr %pPrevCollide45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end27
  %63 = load ptr, ptr %pRef.addr, align 8
  %64 = load ptr, ptr %pVm.addr, align 8
  %apRefObj47 = getelementptr inbounds nuw %struct.ph7_vm, ptr %64, i32 0, i32 46
  %65 = load ptr, ptr %apRefObj47, align 8
  %66 = load i32, ptr %nBucket, align 4
  %idxprom48 = zext i32 %66 to i64
  %arrayidx49 = getelementptr inbounds nuw ptr, ptr %65, i64 %idxprom48
  store ptr %63, ptr %arrayidx49, align 8
  %67 = load ptr, ptr %pVm.addr, align 8
  %pRefList50 = getelementptr inbounds nuw %struct.ph7_vm, ptr %67, i32 0, i32 47
  %68 = load ptr, ptr %pRefList50, align 8
  %cmp51 = icmp eq ptr %68, null
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end46
  %69 = load ptr, ptr %pRef.addr, align 8
  %70 = load ptr, ptr %pVm.addr, align 8
  %pRefList54 = getelementptr inbounds nuw %struct.ph7_vm, ptr %70, i32 0, i32 47
  store ptr %69, ptr %pRefList54, align 8
  br label %if.end59

if.else:                                          ; preds = %if.end46
  %71 = load ptr, ptr %pVm.addr, align 8
  %pRefList55 = getelementptr inbounds nuw %struct.ph7_vm, ptr %71, i32 0, i32 47
  %72 = load ptr, ptr %pRefList55, align 8
  %73 = load ptr, ptr %pRef.addr, align 8
  %pNext56 = getelementptr inbounds nuw %struct.VmRefObj, ptr %73, i32 0, i32 6
  store ptr %72, ptr %pNext56, align 8
  %74 = load ptr, ptr %pRef.addr, align 8
  %75 = load ptr, ptr %pVm.addr, align 8
  %pRefList57 = getelementptr inbounds nuw %struct.ph7_vm, ptr %75, i32 0, i32 47
  %76 = load ptr, ptr %pRefList57, align 8
  %pPrev = getelementptr inbounds nuw %struct.VmRefObj, ptr %76, i32 0, i32 7
  store ptr %74, ptr %pPrev, align 8
  %77 = load ptr, ptr %pRef.addr, align 8
  %78 = load ptr, ptr %pVm.addr, align 8
  %pRefList58 = getelementptr inbounds nuw %struct.ph7_vm, ptr %78, i32 0, i32 47
  store ptr %77, ptr %pRefList58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then53
  %79 = load ptr, ptr %pVm.addr, align 8
  %nRefUsed60 = getelementptr inbounds nuw %struct.ph7_vm, ptr %79, i32 0, i32 49
  %80 = load i32, ptr %nRefUsed60, align 4
  %inc61 = add i32 %80, 1
  store i32 %inc61, ptr %nRefUsed60, align 4
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
