; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.292 = external hidden unnamed_addr constant [35 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateForEachNodeValidator(ptr noundef %pGen, ptr noundef %pRoot) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pRoot.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pRoot.addr, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %xCode, align 8
  %cmp = icmp ne ptr %1, @PH7_CompileVariable
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pGen.addr, align 8
  %3 = load ptr, ptr %pRoot.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pStart, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %pRoot.addr, align 8
  %pStart1 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pStart1, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nLine, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %2, i32 noundef 1, i32 noundef %cond, ptr noundef @.str.292)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %8, -10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %cond.end
  store i32 -9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %cond.end
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %9 = load i32, ptr %rc, align 4
  ret i32 %9
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
