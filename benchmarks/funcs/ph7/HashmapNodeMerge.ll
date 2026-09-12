; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @HashmapNodeMerge(ptr noundef %pA, ptr noundef %pB, ptr noundef %xCmp, ptr noundef %pCmpData) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %xCmp.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %result = alloca %struct.ph7_hashmap_node, align 8
  %pTail = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %xCmp, ptr %xCmp.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %result, i32 0, i32 7
  store ptr null, ptr %pPrev, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %result, i32 0, i32 6
  store ptr null, ptr %pNext, align 8
  store ptr %result, ptr %pTail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pA.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %pB.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load ptr, ptr %xCmp.addr, align 8
  %4 = load ptr, ptr %pA.addr, align 8
  %5 = load ptr, ptr %pB.addr, align 8
  %6 = load ptr, ptr %pCmpData.addr, align 8
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %pA.addr, align 8
  %8 = load ptr, ptr %pTail, align 8
  %pPrev2 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 7
  store ptr %7, ptr %pPrev2, align 8
  %9 = load ptr, ptr %pTail, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %pNext3 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 6
  store ptr %9, ptr %pNext3, align 8
  %11 = load ptr, ptr %pA.addr, align 8
  store ptr %11, ptr %pTail, align 8
  %12 = load ptr, ptr %pA.addr, align 8
  %pPrev4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %pPrev4, align 8
  store ptr %13, ptr %pA.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %pB.addr, align 8
  %15 = load ptr, ptr %pTail, align 8
  %pPrev5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 7
  store ptr %14, ptr %pPrev5, align 8
  %16 = load ptr, ptr %pTail, align 8
  %17 = load ptr, ptr %pB.addr, align 8
  %pNext6 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %17, i32 0, i32 6
  store ptr %16, ptr %pNext6, align 8
  %18 = load ptr, ptr %pB.addr, align 8
  store ptr %18, ptr %pTail, align 8
  %19 = load ptr, ptr %pB.addr, align 8
  %pPrev7 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %pPrev7, align 8
  store ptr %20, ptr %pB.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %pA.addr, align 8
  %tobool8 = icmp ne ptr %21, null
  br i1 %tobool8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %while.end
  %22 = load ptr, ptr %pA.addr, align 8
  %23 = load ptr, ptr %pTail, align 8
  %pPrev10 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 7
  store ptr %22, ptr %pPrev10, align 8
  %24 = load ptr, ptr %pTail, align 8
  %25 = load ptr, ptr %pA.addr, align 8
  %pNext11 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %25, i32 0, i32 6
  store ptr %24, ptr %pNext11, align 8
  br label %if.end21

if.else12:                                        ; preds = %while.end
  %26 = load ptr, ptr %pB.addr, align 8
  %tobool13 = icmp ne ptr %26, null
  br i1 %tobool13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else12
  %27 = load ptr, ptr %pB.addr, align 8
  %28 = load ptr, ptr %pTail, align 8
  %pPrev15 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 7
  store ptr %27, ptr %pPrev15, align 8
  %29 = load ptr, ptr %pTail, align 8
  %30 = load ptr, ptr %pB.addr, align 8
  %pNext16 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 6
  store ptr %29, ptr %pNext16, align 8
  br label %if.end20

if.else17:                                        ; preds = %if.else12
  %31 = load ptr, ptr %pTail, align 8
  %pNext18 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 6
  store ptr null, ptr %pNext18, align 8
  %32 = load ptr, ptr %pTail, align 8
  %pPrev19 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %32, i32 0, i32 7
  store ptr null, ptr %pPrev19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then9
  %pPrev22 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %result, i32 0, i32 7
  %33 = load ptr, ptr %pPrev22, align 8
  ret ptr %33
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
