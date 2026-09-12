; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprIsModifiableValue(ptr noundef %pNode, i8 noundef zeroext %bFunc) #0 {
entry:
  %retval = alloca i32, align 4
  %pNode.addr = alloca ptr, align 8
  %bFunc.addr = alloca i8, align 1
  %iExprOp = alloca i32, align 4
  store ptr %pNode, ptr %pNode.addr, align 8
  store i8 %bFunc, ptr %bFunc.addr, align 1
  %0 = load ptr, ptr %pNode.addr, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pOp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pNode.addr, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %xCode, align 8
  %cmp1 = icmp eq ptr %3, @PH7_CompileVariable
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pNode.addr, align 8
  %pOp2 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pOp2, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %iOp, align 8
  store i32 %7, ptr %iExprOp, align 4
  %8 = load i32, ptr %iExprOp, align 4
  %cmp3 = icmp eq i32 %8, 3
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %iExprOp, align 4
  %cmp4 = icmp eq i32 %9, 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %iExprOp, align 4
  %cmp7 = icmp eq i32 %10, 5
  br i1 %cmp7, label %if.then8, label %if.end32

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %pNode.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pLeft, align 8
  %pOp9 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pOp9, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %14 = load ptr, ptr %pNode.addr, align 8
  %pLeft11 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %pLeft11, align 8
  %pOp12 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pOp12, align 8
  %iOp13 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %iOp13, align 8
  %cmp14 = icmp ne i32 %17, 5
  br i1 %cmp14, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.then10
  %18 = load ptr, ptr %pNode.addr, align 8
  %pLeft15 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pLeft15, align 8
  %pOp16 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pOp16, align 8
  %iOp17 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %iOp17, align 8
  %cmp18 = icmp ne i32 %21, 3
  br i1 %cmp18, label %land.lhs.true19, label %if.end25

land.lhs.true19:                                  ; preds = %land.lhs.true
  %22 = load ptr, ptr %pNode.addr, align 8
  %pLeft20 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pLeft20, align 8
  %pOp21 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pOp21, align 8
  %iOp22 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %iOp22, align 8
  %cmp23 = icmp ne i32 %25, 4
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true19
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true19, %land.lhs.true, %if.then10
  br label %if.end31

if.else:                                          ; preds = %if.then8
  %26 = load ptr, ptr %pNode.addr, align 8
  %pLeft26 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pLeft26, align 8
  %xCode27 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %xCode27, align 8
  %cmp28 = icmp ne ptr %28, @PH7_CompileVariable
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end25
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end6
  %29 = load i8, ptr %bFunc.addr, align 1
  %conv = zext i8 %29 to i32
  %tobool33 = icmp ne i32 %conv, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %if.end32
  %30 = load i32, ptr %iExprOp, align 4
  %cmp35 = icmp eq i32 %30, 6
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true34
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %land.lhs.true34, %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.end31, %if.then29, %if.then24, %if.then5, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
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
