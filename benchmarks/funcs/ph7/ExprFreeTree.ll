; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @ExprFreeTree(ptr noundef %pGen, ptr noundef %pNode) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %apArg = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pGen.addr, align 8
  %3 = load ptr, ptr %pNode.addr, align 8
  %pLeft1 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pLeft1, align 8
  call void @ExprFreeTree(ptr noundef %2, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pNode.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pRight, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pGen.addr, align 8
  %8 = load ptr, ptr %pNode.addr, align 8
  %pRight4 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pRight4, align 8
  call void @ExprFreeTree(ptr noundef %7, ptr noundef %9)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %pNode.addr, align 8
  %pCond = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %pCond, align 8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load ptr, ptr %pNode.addr, align 8
  %pCond8 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %pCond8, align 8
  call void @ExprFreeTree(ptr noundef %12, ptr noundef %14)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %15 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %15, i32 0, i32 7
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs, i32 0, i32 2
  %16 = load i32, ptr %nUsed, align 8
  %cmp = icmp ugt i32 %16, 0
  br i1 %cmp, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end9
  %17 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs11 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %17, i32 0, i32 7
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs11, i32 0, i32 1
  %18 = load ptr, ptr %pBase, align 8
  store ptr %18, ptr %apArg, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %19 = load i32, ptr %n, align 4
  %20 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs12 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %20, i32 0, i32 7
  %nUsed13 = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs12, i32 0, i32 2
  %21 = load i32, ptr %nUsed13, align 8
  %cmp14 = icmp ult i32 %19, %21
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pGen.addr, align 8
  %23 = load ptr, ptr %apArg, align 8
  %24 = load i32, ptr %n, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %23, i64 %idxprom
  %25 = load ptr, ptr %arrayidx, align 8
  call void @ExprFreeTree(ptr noundef %22, ptr noundef %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %n, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs15 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %27, i32 0, i32 7
  %call = call i32 @SySetRelease(ptr noundef %aNodeArgs15)
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.end9
  %28 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pNode.addr, align 8
  %call17 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %30)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
