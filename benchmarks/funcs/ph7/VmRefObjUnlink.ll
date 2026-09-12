; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmRefObj = type { %struct.SySet, %struct.SySet, i32, i32, ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRefHash(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmRefObjUnlink(ptr noundef %pVm, ptr noundef %pRef) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pRef.addr = alloca ptr, align 8
  %apNode = alloca ptr, align 8
  %apEntry = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pRef, ptr %pRef.addr, align 8
  %0 = load ptr, ptr %pRef.addr, align 8
  %aArrEntries = getelementptr inbounds nuw %struct.VmRefObj, ptr %0, i32 0, i32 1
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aArrEntries, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %apNode, align 8
  %2 = load ptr, ptr %pRef.addr, align 8
  %aReference = getelementptr inbounds nuw %struct.VmRefObj, ptr %2, i32 0, i32 0
  %pBase1 = getelementptr inbounds nuw %struct.SySet, ptr %aReference, i32 0, i32 1
  %3 = load ptr, ptr %pBase1, align 8
  store ptr %3, ptr %apEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pRef.addr, align 8
  %aReference2 = getelementptr inbounds nuw %struct.VmRefObj, ptr %5, i32 0, i32 0
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aReference2, i32 0, i32 2
  %6 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %apEntry, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %apEntry, align 8
  %11 = load i32, ptr %n, align 4
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds nuw ptr, ptr %10, i64 %idxprom3
  %12 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @SyHashDeleteEntry2(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %n, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc17, %for.end
  %14 = load i32, ptr %n, align 4
  %15 = load ptr, ptr %pRef.addr, align 8
  %aArrEntries6 = getelementptr inbounds nuw %struct.VmRefObj, ptr %15, i32 0, i32 1
  %nUsed7 = getelementptr inbounds nuw %struct.SySet, ptr %aArrEntries6, i32 0, i32 2
  %16 = load i32, ptr %nUsed7, align 8
  %cmp8 = icmp ult i32 %14, %16
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond5
  %17 = load ptr, ptr %apNode, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %17, i64 %idxprom10
  %19 = load ptr, ptr %arrayidx11, align 8
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %for.body9
  %20 = load ptr, ptr %apNode, align 8
  %21 = load i32, ptr %n, align 4
  %idxprom14 = zext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds nuw ptr, ptr %20, i64 %idxprom14
  %22 = load ptr, ptr %arrayidx15, align 8
  call void @PH7_HashmapUnlinkNode(ptr noundef %22, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %for.body9
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %23 = load i32, ptr %n, align 4
  %inc18 = add i32 %23, 1
  store i32 %inc18, ptr %n, align 4
  br label %for.cond5, !llvm.loop !8

for.end19:                                        ; preds = %for.cond5
  %24 = load ptr, ptr %pRef.addr, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.VmRefObj, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %pPrevCollide, align 8
  %tobool20 = icmp ne ptr %25, null
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.end19
  %26 = load ptr, ptr %pRef.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.VmRefObj, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pNextCollide, align 8
  %28 = load ptr, ptr %pRef.addr, align 8
  %pPrevCollide22 = getelementptr inbounds nuw %struct.VmRefObj, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %pPrevCollide22, align 8
  %pNextCollide23 = getelementptr inbounds nuw %struct.VmRefObj, ptr %29, i32 0, i32 4
  store ptr %27, ptr %pNextCollide23, align 8
  br label %if.end28

if.else:                                          ; preds = %for.end19
  %30 = load ptr, ptr %pRef.addr, align 8
  %pNextCollide24 = getelementptr inbounds nuw %struct.VmRefObj, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %pNextCollide24, align 8
  %32 = load ptr, ptr %pVm.addr, align 8
  %apRefObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 46
  %33 = load ptr, ptr %apRefObj, align 8
  %34 = load ptr, ptr %pRef.addr, align 8
  %nIdx = getelementptr inbounds nuw %struct.VmRefObj, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %nIdx, align 8
  %call25 = call i32 @VmRefHash(i32 noundef %35)
  %36 = load ptr, ptr %pVm.addr, align 8
  %nRefSize = getelementptr inbounds nuw %struct.ph7_vm, ptr %36, i32 0, i32 48
  %37 = load i32, ptr %nRefSize, align 8
  %sub = sub i32 %37, 1
  %and = and i32 %call25, %sub
  %idxprom26 = zext i32 %and to i64
  %arrayidx27 = getelementptr inbounds nuw ptr, ptr %33, i64 %idxprom26
  store ptr %31, ptr %arrayidx27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %38 = load ptr, ptr %pRef.addr, align 8
  %pNextCollide29 = getelementptr inbounds nuw %struct.VmRefObj, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %pNextCollide29, align 8
  %tobool30 = icmp ne ptr %39, null
  br i1 %tobool30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  %40 = load ptr, ptr %pRef.addr, align 8
  %pPrevCollide32 = getelementptr inbounds nuw %struct.VmRefObj, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %pPrevCollide32, align 8
  %42 = load ptr, ptr %pRef.addr, align 8
  %pNextCollide33 = getelementptr inbounds nuw %struct.VmRefObj, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %pNextCollide33, align 8
  %pPrevCollide34 = getelementptr inbounds nuw %struct.VmRefObj, ptr %43, i32 0, i32 5
  store ptr %41, ptr %pPrevCollide34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end28
  %44 = load ptr, ptr %pVm.addr, align 8
  %pRefList = getelementptr inbounds nuw %struct.ph7_vm, ptr %44, i32 0, i32 47
  %45 = load ptr, ptr %pRefList, align 8
  %46 = load ptr, ptr %pRef.addr, align 8
  %cmp36 = icmp eq ptr %45, %46
  br i1 %cmp36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end35
  %47 = load ptr, ptr %pVm.addr, align 8
  %pRefList38 = getelementptr inbounds nuw %struct.ph7_vm, ptr %47, i32 0, i32 47
  %48 = load ptr, ptr %pRefList38, align 8
  %pNext = getelementptr inbounds nuw %struct.VmRefObj, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %pNext, align 8
  %50 = load ptr, ptr %pVm.addr, align 8
  %pRefList39 = getelementptr inbounds nuw %struct.ph7_vm, ptr %50, i32 0, i32 47
  store ptr %49, ptr %pRefList39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35
  %51 = load ptr, ptr %pRef.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.VmRefObj, ptr %51, i32 0, i32 7
  %52 = load ptr, ptr %pPrev, align 8
  %tobool41 = icmp ne ptr %52, null
  br i1 %tobool41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end40
  %53 = load ptr, ptr %pRef.addr, align 8
  %pNext43 = getelementptr inbounds nuw %struct.VmRefObj, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %pNext43, align 8
  %55 = load ptr, ptr %pRef.addr, align 8
  %pPrev44 = getelementptr inbounds nuw %struct.VmRefObj, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %pPrev44, align 8
  %pNext45 = getelementptr inbounds nuw %struct.VmRefObj, ptr %56, i32 0, i32 6
  store ptr %54, ptr %pNext45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  %57 = load ptr, ptr %pRef.addr, align 8
  %pNext47 = getelementptr inbounds nuw %struct.VmRefObj, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %pNext47, align 8
  %tobool48 = icmp ne ptr %58, null
  br i1 %tobool48, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end46
  %59 = load ptr, ptr %pRef.addr, align 8
  %pPrev50 = getelementptr inbounds nuw %struct.VmRefObj, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %pPrev50, align 8
  %61 = load ptr, ptr %pRef.addr, align 8
  %pNext51 = getelementptr inbounds nuw %struct.VmRefObj, ptr %61, i32 0, i32 6
  %62 = load ptr, ptr %pNext51, align 8
  %pPrev52 = getelementptr inbounds nuw %struct.VmRefObj, ptr %62, i32 0, i32 7
  store ptr %60, ptr %pPrev52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end46
  %63 = load ptr, ptr %pRef.addr, align 8
  %aReference54 = getelementptr inbounds nuw %struct.VmRefObj, ptr %63, i32 0, i32 0
  %call55 = call i32 @SySetRelease(ptr noundef %aReference54)
  %64 = load ptr, ptr %pRef.addr, align 8
  %aArrEntries56 = getelementptr inbounds nuw %struct.VmRefObj, ptr %64, i32 0, i32 1
  %call57 = call i32 @SySetRelease(ptr noundef %aArrEntries56)
  %65 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %pRef.addr, align 8
  %call58 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %66)
  %67 = load ptr, ptr %pVm.addr, align 8
  %nRefUsed = getelementptr inbounds nuw %struct.ph7_vm, ptr %67, i32 0, i32 49
  %68 = load i32, ptr %nRefUsed, align 4
  %dec = add i32 %68, -1
  store i32 %dec, ptr %nRefUsed, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashDeleteEntry2(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnlinkNode(ptr noundef, i32 noundef) #0

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
