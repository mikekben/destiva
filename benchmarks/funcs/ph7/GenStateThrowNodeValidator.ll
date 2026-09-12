; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

@.str.312 = external hidden unnamed_addr constant [45 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateThrowNodeValidator(ptr noundef %pGen, ptr noundef %pRoot) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pRoot.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pRoot.addr, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pOp, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRoot.addr, align 8
  %pOp1 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pOp1, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %iOp, align 8
  %cmp = icmp ne i32 %4, 5
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %pRoot.addr, align 8
  %pOp2 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pOp2, align 8
  %iOp3 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %iOp3, align 8
  %cmp4 = icmp ne i32 %7, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end18

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pRoot.addr, align 8
  %pOp6 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pOp6, align 8
  %iOp7 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iOp7, align 8
  %cmp8 = icmp ne i32 %10, 3
  br i1 %cmp8, label %land.lhs.true9, label %if.end18

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %11 = load ptr, ptr %pRoot.addr, align 8
  %pOp10 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pOp10, align 8
  %iOp11 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %iOp11, align 8
  %cmp12 = icmp ne i32 %13, 4
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %land.lhs.true9
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load ptr, ptr %pRoot.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pStart, align 8
  %tobool14 = icmp ne ptr %16, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  %17 = load ptr, ptr %pRoot.addr, align 8
  %pStart15 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %pStart15, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nLine, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %cond.false ]
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef %cond, ptr noundef @.str.312)
  store i32 %call, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp16 = icmp ne i32 %20, -10
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %cond.end
  store i32 -9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %cond.end
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %if.then
  br label %if.end34

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %pRoot.addr, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %xCode, align 8
  %cmp19 = icmp ne ptr %22, @PH7_CompileVariable
  br i1 %cmp19, label %if.then20, label %if.end33

if.then20:                                        ; preds = %if.else
  %23 = load ptr, ptr %pGen.addr, align 8
  %24 = load ptr, ptr %pRoot.addr, align 8
  %pStart21 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pStart21, align 8
  %tobool22 = icmp ne ptr %25, null
  br i1 %tobool22, label %cond.true23, label %cond.false26

cond.true23:                                      ; preds = %if.then20
  %26 = load ptr, ptr %pRoot.addr, align 8
  %pStart24 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pStart24, align 8
  %nLine25 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nLine25, align 4
  br label %cond.end27

cond.false26:                                     ; preds = %if.then20
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true23
  %cond28 = phi i32 [ %28, %cond.true23 ], [ 0, %cond.false26 ]
  %call29 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %23, i32 noundef 1, i32 noundef %cond28, ptr noundef @.str.312)
  store i32 %call29, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp30 = icmp ne i32 %29, -10
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %cond.end27
  store i32 -9, ptr %rc, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %cond.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end18
  %30 = load i32, ptr %rc, align 4
  ret i32 %30
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
