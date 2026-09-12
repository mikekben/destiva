; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

@.str.210 = external hidden unnamed_addr constant [47 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateListNodeValidator(ptr noundef %pGen, ptr noundef %pRoot) #0 {
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
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %pRoot.addr, align 8
  %pOp2 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pOp2, align 8
  %iOp3 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %iOp3, align 8
  %cmp4 = icmp ne i32 %7, 3
  br i1 %cmp4, label %land.lhs.true5, label %if.end14

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pRoot.addr, align 8
  %pOp6 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pOp6, align 8
  %iOp7 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iOp7, align 8
  %cmp8 = icmp ne i32 %10, 4
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %land.lhs.true5
  %11 = load ptr, ptr %pGen.addr, align 8
  %12 = load ptr, ptr %pRoot.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pStart, align 8
  %tobool10 = icmp ne ptr %13, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %14 = load ptr, ptr %pRoot.addr, align 8
  %pStart11 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pStart11, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %nLine, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 0, %cond.false ]
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %11, i32 noundef 1, i32 noundef %cond, ptr noundef @.str.210)
  store i32 %call, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp12 = icmp ne i32 %17, -10
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %cond.end
  store i32 -9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %cond.end
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true5, %land.lhs.true, %if.then
  br label %if.end30

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %pRoot.addr, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %xCode, align 8
  %cmp15 = icmp ne ptr %19, @PH7_CompileVariable
  br i1 %cmp15, label %if.then16, label %if.end29

if.then16:                                        ; preds = %if.else
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load ptr, ptr %pRoot.addr, align 8
  %pStart17 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %pStart17, align 8
  %tobool18 = icmp ne ptr %22, null
  br i1 %tobool18, label %cond.true19, label %cond.false22

cond.true19:                                      ; preds = %if.then16
  %23 = load ptr, ptr %pRoot.addr, align 8
  %pStart20 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pStart20, align 8
  %nLine21 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nLine21, align 4
  br label %cond.end23

cond.false22:                                     ; preds = %if.then16
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true19
  %cond24 = phi i32 [ %25, %cond.true19 ], [ 0, %cond.false22 ]
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %20, i32 noundef 1, i32 noundef %cond24, ptr noundef @.str.210)
  store i32 %call25, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %26, -10
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %cond.end23
  store i32 -9, ptr %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %cond.end23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end14
  %27 = load i32, ptr %rc, align 4
  ret i32 %27
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
