; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ExprMakeTree(ptr noundef %pGen, ptr noundef %pExprNode, ptr noundef %ppRoot) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pExprNode.addr = alloca ptr, align 8
  %ppRoot.addr = alloca ptr, align 8
  %apNode = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pExprNode, ptr %pExprNode.addr, align 8
  store ptr %ppRoot, ptr %ppRoot.addr, align 8
  %0 = load ptr, ptr %pExprNode.addr, align 8
  %call = call i32 @SySetReset(ptr noundef %0)
  store ptr null, ptr %pNode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %1, i32 0, i32 12
  %2 = load ptr, ptr %pIn, align 8
  %3 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pGen.addr, align 8
  %call1 = call i32 @ExprExtractNode(ptr noundef %5, ptr noundef %pNode)
  store i32 %call1, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %pExprNode.addr, align 8
  %call3 = call i32 @SySetPut(ptr noundef %8, ptr noundef %pNode)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %pExprNode.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %nUsed, align 8
  %cmp4 = icmp ult i32 %10, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  %11 = load ptr, ptr %ppRoot.addr, align 8
  store ptr null, ptr %11, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %while.end
  %12 = load ptr, ptr %pExprNode.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pBase, align 8
  store ptr %13, ptr %apNode, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load ptr, ptr %apNode, align 8
  %16 = load ptr, ptr %pExprNode.addr, align 8
  %nUsed7 = getelementptr inbounds nuw %struct.SySet, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %nUsed7, align 8
  %call8 = call i32 @ExprVerifyNodes(ptr noundef %14, ptr noundef %15, i32 noundef %17)
  store i32 %call8, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  %19 = load ptr, ptr %ppRoot.addr, align 8
  store ptr null, ptr %19, align 8
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %21 = load ptr, ptr %pGen.addr, align 8
  %22 = load ptr, ptr %apNode, align 8
  %23 = load ptr, ptr %pExprNode.addr, align 8
  %nUsed12 = getelementptr inbounds nuw %struct.SySet, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %nUsed12, align 8
  %call13 = call i32 @ExprMakeTree(ptr noundef %21, ptr noundef %22, i32 noundef %24)
  store i32 %call13, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %25, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %26 = load ptr, ptr %ppRoot.addr, align 8
  store ptr null, ptr %26, align 8
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %28 = load ptr, ptr %apNode, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 0
  %29 = load ptr, ptr %arrayidx, align 8
  %30 = load ptr, ptr %ppRoot.addr, align 8
  store ptr %29, ptr %30, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then10, %if.then5, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprExtractNode(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprVerifyNodes(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprMakeTree(ptr noundef, ptr noundef, i32 noundef) #0

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
