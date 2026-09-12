; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjRemove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmUnsetMemObj(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_HashmapUnlinkNode(ptr noundef %pNode, i32 noundef %bRestore) #0 {
entry:
  %pNode.addr = alloca ptr, align 8
  %bRestore.addr = alloca i32, align 4
  %pMap = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %bRestore, ptr %bRestore.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %pMap1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMap1, align 8
  store ptr %1, ptr %pMap, align 8
  %2 = load ptr, ptr %pMap, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm2, align 8
  store ptr %3, ptr %pVm, align 8
  %4 = load ptr, ptr %pNode.addr, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %pPrevCollide, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pNode.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %pNextCollide, align 8
  %8 = load ptr, ptr %pMap, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %apBucket, align 8
  %10 = load ptr, ptr %pNode.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nHash, align 4
  %12 = load ptr, ptr %pMap, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %nSize, align 8
  %sub = sub i32 %13, 1
  %and = and i32 %11, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %9, i64 %idxprom
  store ptr %7, ptr %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %pNode.addr, align 8
  %pNextCollide3 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %pNextCollide3, align 8
  %16 = load ptr, ptr %pNode.addr, align 8
  %pPrevCollide4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %pPrevCollide4, align 8
  %pNextCollide5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %17, i32 0, i32 8
  store ptr %15, ptr %pNextCollide5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %pNode.addr, align 8
  %pNextCollide6 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %pNextCollide6, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %20 = load ptr, ptr %pNode.addr, align 8
  %pPrevCollide8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pPrevCollide8, align 8
  %22 = load ptr, ptr %pNode.addr, align 8
  %pNextCollide9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %pNextCollide9, align 8
  %pPrevCollide10 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 9
  store ptr %21, ptr %pPrevCollide10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %24 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %pFirst, align 8
  %26 = load ptr, ptr %pNode.addr, align 8
  %cmp12 = icmp eq ptr %25, %26
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %27 = load ptr, ptr %pNode.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %pPrev, align 8
  %29 = load ptr, ptr %pMap, align 8
  %pFirst14 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %29, i32 0, i32 2
  store ptr %28, ptr %pFirst14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %30 = load ptr, ptr %pMap, align 8
  %pCur = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %pCur, align 8
  %32 = load ptr, ptr %pNode.addr, align 8
  %cmp16 = icmp eq ptr %31, %32
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  %33 = load ptr, ptr %pMap, align 8
  %pCur18 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %pCur18, align 8
  %pPrev19 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %pPrev19, align 8
  %36 = load ptr, ptr %pMap, align 8
  %pCur20 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %36, i32 0, i32 4
  store ptr %35, ptr %pCur20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15
  %37 = load ptr, ptr %pMap, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %pLast, align 8
  %39 = load ptr, ptr %pNode.addr, align 8
  %cmp22 = icmp eq ptr %38, %39
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  %40 = load ptr, ptr %pMap, align 8
  %pLast24 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %pLast24, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %pNext, align 8
  %43 = load ptr, ptr %pMap, align 8
  %pLast25 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %43, i32 0, i32 3
  store ptr %42, ptr %pLast25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21
  %44 = load ptr, ptr %pNode.addr, align 8
  %pPrev27 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %pPrev27, align 8
  %tobool28 = icmp ne ptr %45, null
  br i1 %tobool28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end26
  %46 = load ptr, ptr %pNode.addr, align 8
  %pNext30 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %pNext30, align 8
  %48 = load ptr, ptr %pNode.addr, align 8
  %pPrev31 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %pPrev31, align 8
  %pNext32 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %49, i32 0, i32 6
  store ptr %47, ptr %pNext32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26
  %50 = load ptr, ptr %pNode.addr, align 8
  %pNext34 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %pNext34, align 8
  %tobool35 = icmp ne ptr %51, null
  br i1 %tobool35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end33
  %52 = load ptr, ptr %pNode.addr, align 8
  %pPrev37 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %pPrev37, align 8
  %54 = load ptr, ptr %pNode.addr, align 8
  %pNext38 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %54, i32 0, i32 6
  %55 = load ptr, ptr %pNext38, align 8
  %pPrev39 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %55, i32 0, i32 7
  store ptr %53, ptr %pPrev39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33
  %56 = load i32, ptr %bRestore.addr, align 4
  %tobool41 = icmp ne i32 %56, 0
  br i1 %tobool41, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end40
  %57 = load ptr, ptr %pVm, align 8
  %58 = load ptr, ptr %pNode.addr, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %nValIdx, align 8
  %60 = load ptr, ptr %pNode.addr, align 8
  %call = call i32 @PH7_VmRefObjRemove(ptr noundef %57, i32 noundef %59, ptr noundef null, ptr noundef %60)
  %61 = load ptr, ptr %pNode.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %61, i32 0, i32 3
  %62 = load i32, ptr %iFlags, align 8
  %and43 = and i32 %62, 1
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.then42
  %63 = load ptr, ptr %pVm, align 8
  %64 = load ptr, ptr %pNode.addr, align 8
  %nValIdx46 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %nValIdx46, align 8
  %call47 = call i32 @PH7_VmUnsetMemObj(ptr noundef %63, i32 noundef %65, i32 noundef 0)
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then42
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end40
  %66 = load ptr, ptr %pNode.addr, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %iType, align 8
  %cmp50 = icmp eq i32 %67, 2
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  %68 = load ptr, ptr %pNode.addr, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %68, i32 0, i32 2
  %call52 = call i32 @SyBlobRelease(ptr noundef %xKey)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49
  %69 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %pNode.addr, align 8
  %call54 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %70)
  %71 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %71, i32 0, i32 6
  %72 = load i32, ptr %nEntry, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %nEntry, align 4
  %73 = load ptr, ptr %pMap, align 8
  %nEntry55 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %nEntry55, align 4
  %cmp56 = icmp ult i32 %74, 1
  br i1 %cmp56, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end53
  %75 = load ptr, ptr %pMap, align 8
  %76 = load ptr, ptr %pVm, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %76, i32 0, i32 51
  %77 = load ptr, ptr %pGlobal, align 8
  %cmp57 = icmp ne ptr %75, %77
  br i1 %cmp57, label %if.then58, label %if.end67

if.then58:                                        ; preds = %land.lhs.true
  %78 = load ptr, ptr %pVm, align 8
  %sAllocator59 = getelementptr inbounds nuw %struct.ph7_vm, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %pMap, align 8
  %apBucket60 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %apBucket60, align 8
  %call61 = call i32 @SyMemBackendFree(ptr noundef %sAllocator59, ptr noundef %80)
  %81 = load ptr, ptr %pMap, align 8
  %apBucket62 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %81, i32 0, i32 1
  store ptr null, ptr %apBucket62, align 8
  %82 = load ptr, ptr %pMap, align 8
  %nSize63 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %82, i32 0, i32 5
  store i32 0, ptr %nSize63, align 8
  %83 = load ptr, ptr %pMap, align 8
  %pCur64 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %83, i32 0, i32 4
  store ptr null, ptr %pCur64, align 8
  %84 = load ptr, ptr %pMap, align 8
  %pLast65 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %84, i32 0, i32 3
  store ptr null, ptr %pLast65, align 8
  %85 = load ptr, ptr %pMap, align 8
  %pFirst66 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %85, i32 0, i32 2
  store ptr null, ptr %pFirst66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %land.lhs.true, %if.end53
  ret void
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
