; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.270 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.271 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.272 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprMakeTree(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ExprFreeTree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprProcessFuncArguments(ptr noundef %pGen, ptr noundef %pOp, ptr noundef %apNode, i32 noundef %nToken) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pOp.addr = alloca ptr, align 8
  %apNode.addr = alloca ptr, align 8
  %nToken.addr = alloca i32, align 4
  %iNest = alloca i32, align 4
  %iCur = alloca i32, align 4
  %iNode = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pOp, ptr %pOp.addr, align 8
  store ptr %apNode, ptr %apNode.addr, align 8
  store i32 %nToken, ptr %nToken.addr, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end109, %entry
  %0 = load i32, ptr %iCur, align 4
  %1 = load i32, ptr %nToken.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load i32, ptr %iCur, align 4
  store i32 %2, ptr %iNode, align 4
  store i32 0, ptr %iNest, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %3 = load i32, ptr %iCur, align 4
  %4 = load i32, ptr %nToken.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %apNode.addr, align 8
  %6 = load i32, ptr %iCur, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end30

if.then2:                                         ; preds = %while.body
  %8 = load ptr, ptr %apNode.addr, align 8
  %9 = load i32, ptr %iCur, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 %idxprom3
  %10 = load ptr, ptr %arrayidx4, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pStart, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nType, align 8
  %and = and i32 %12, 131072
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then2
  %13 = load ptr, ptr %apNode.addr, align 8
  %14 = load i32, ptr %iCur, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %13, i64 %idxprom6
  %15 = load ptr, ptr %arrayidx7, align 8
  %pLeft = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pLeft, align 8
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %17 = load i32, ptr %iNest, align 4
  %cmp10 = icmp sle i32 %17, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true9
  br label %while.end

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %if.then2
  %18 = load ptr, ptr %apNode.addr, align 8
  %19 = load i32, ptr %iCur, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 %idxprom12
  %20 = load ptr, ptr %arrayidx13, align 8
  %pStart14 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pStart14, align 8
  %nType15 = getelementptr inbounds nuw %struct.SyToken, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nType15, align 8
  %and16 = and i32 %22, 2624
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  %23 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end28

if.else19:                                        ; preds = %if.else
  %24 = load ptr, ptr %apNode.addr, align 8
  %25 = load i32, ptr %iCur, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %24, i64 %idxprom20
  %26 = load ptr, ptr %arrayidx21, align 8
  %pStart22 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pStart22, align 8
  %nType23 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nType23, align 8
  %and24 = and i32 %28, 5248
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else19
  %29 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else19
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then18
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %30 = load i32, ptr %iCur, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, ptr %iCur, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then11, %while.cond
  %31 = load i32, ptr %iCur, align 4
  %32 = load i32, ptr %iNode, align 4
  %cmp32 = icmp sgt i32 %31, %32
  br i1 %cmp32, label %if.then33, label %if.else78

if.then33:                                        ; preds = %while.end
  %33 = load ptr, ptr %apNode.addr, align 8
  %34 = load i32, ptr %iNode, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %33, i64 %idxprom34
  %35 = load ptr, ptr %arrayidx35, align 8
  %tobool36 = icmp ne ptr %35, null
  br i1 %tobool36, label %land.lhs.true37, label %if.end58

land.lhs.true37:                                  ; preds = %if.then33
  %36 = load ptr, ptr %apNode.addr, align 8
  %37 = load i32, ptr %iNode, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %36, i64 %idxprom38
  %38 = load ptr, ptr %arrayidx39, align 8
  %pStart40 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %pStart40, align 8
  %nType41 = getelementptr inbounds nuw %struct.SyToken, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nType41, align 8
  %and42 = and i32 %40, 2097152
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true44, label %if.end58

land.lhs.true44:                                  ; preds = %land.lhs.true37
  %41 = load i32, ptr %iCur, align 4
  %42 = load i32, ptr %iNode, align 4
  %sub = sub nsw i32 %41, %42
  %cmp45 = icmp eq i32 %sub, 2
  br i1 %cmp45, label %land.lhs.true46, label %if.end58

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %43 = load ptr, ptr %apNode.addr, align 8
  %44 = load i32, ptr %iNode, align 4
  %add = add nsw i32 %44, 1
  %idxprom47 = sext i32 %add to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %43, i64 %idxprom47
  %45 = load ptr, ptr %arrayidx48, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %xCode, align 8
  %cmp49 = icmp eq ptr %46, @PH7_CompileVariable
  br i1 %cmp49, label %if.then50, label %if.end58

if.then50:                                        ; preds = %land.lhs.true46
  %47 = load ptr, ptr %pGen.addr, align 8
  %48 = load ptr, ptr %apNode.addr, align 8
  %49 = load i32, ptr %iNode, align 4
  %idxprom51 = sext i32 %49 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %48, i64 %idxprom51
  %50 = load ptr, ptr %arrayidx52, align 8
  %pStart53 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %50, i32 0, i32 3
  %51 = load ptr, ptr %pStart53, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %47, i32 noundef 2, i32 noundef %52, ptr noundef @.str.270)
  %53 = load ptr, ptr %pGen.addr, align 8
  %54 = load ptr, ptr %apNode.addr, align 8
  %55 = load i32, ptr %iNode, align 4
  %idxprom54 = sext i32 %55 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %54, i64 %idxprom54
  %56 = load ptr, ptr %arrayidx55, align 8
  call void @ExprFreeTree(ptr noundef %53, ptr noundef %56)
  %57 = load ptr, ptr %apNode.addr, align 8
  %58 = load i32, ptr %iNode, align 4
  %idxprom56 = sext i32 %58 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %57, i64 %idxprom56
  store ptr null, ptr %arrayidx57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %land.lhs.true46, %land.lhs.true44, %land.lhs.true37, %if.then33
  %59 = load ptr, ptr %pGen.addr, align 8
  %60 = load ptr, ptr %apNode.addr, align 8
  %61 = load i32, ptr %iNode, align 4
  %idxprom59 = sext i32 %61 to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %60, i64 %idxprom59
  %62 = load i32, ptr %iCur, align 4
  %63 = load i32, ptr %iNode, align 4
  %sub61 = sub nsw i32 %62, %63
  %call62 = call i32 @ExprMakeTree(ptr noundef %59, ptr noundef %arrayidx60, i32 noundef %sub61)
  %64 = load ptr, ptr %apNode.addr, align 8
  %65 = load i32, ptr %iNode, align 4
  %idxprom63 = sext i32 %65 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %64, i64 %idxprom63
  %66 = load ptr, ptr %arrayidx64, align 8
  %tobool65 = icmp ne ptr %66, null
  br i1 %tobool65, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.end58
  %67 = load ptr, ptr %pOp.addr, align 8
  %aNodeArgs = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %67, i32 0, i32 7
  %68 = load ptr, ptr %apNode.addr, align 8
  %69 = load i32, ptr %iNode, align 4
  %idxprom67 = sext i32 %69 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %68, i64 %idxprom67
  %call69 = call i32 @SySetPut(ptr noundef %aNodeArgs, ptr noundef %arrayidx68)
  br label %if.end77

if.else70:                                        ; preds = %if.end58
  %70 = load ptr, ptr %pGen.addr, align 8
  %71 = load ptr, ptr %pOp.addr, align 8
  %pStart71 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %71, i32 0, i32 3
  %72 = load ptr, ptr %pStart71, align 8
  %nLine72 = getelementptr inbounds nuw %struct.SyToken, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %nLine72, align 4
  %call73 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %70, i32 noundef 1, i32 noundef %73, ptr noundef @.str.271)
  store i32 %call73, ptr %rc, align 4
  %74 = load i32, ptr %rc, align 4
  %cmp74 = icmp ne i32 %74, -10
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.else70
  store i32 -12, ptr %rc, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.else70
  %75 = load i32, ptr %rc, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.then66
  br label %if.end85

if.else78:                                        ; preds = %while.end
  %76 = load ptr, ptr %pGen.addr, align 8
  %77 = load ptr, ptr %pOp.addr, align 8
  %pStart79 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %pStart79, align 8
  %nLine80 = getelementptr inbounds nuw %struct.SyToken, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %nLine80, align 4
  %call81 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %76, i32 noundef 1, i32 noundef %79, ptr noundef @.str.272)
  store i32 %call81, ptr %rc, align 4
  %80 = load i32, ptr %rc, align 4
  %cmp82 = icmp ne i32 %80, -10
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.else78
  store i32 -12, ptr %rc, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.else78
  %81 = load i32, ptr %rc, align 4
  store i32 %81, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end77
  %82 = load i32, ptr %iCur, align 4
  %83 = load i32, ptr %nToken.addr, align 4
  %cmp86 = icmp slt i32 %82, %83
  br i1 %cmp86, label %land.lhs.true87, label %if.end109

land.lhs.true87:                                  ; preds = %if.end85
  %84 = load ptr, ptr %apNode.addr, align 8
  %85 = load i32, ptr %iCur, align 4
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %84, i64 %idxprom88
  %86 = load ptr, ptr %arrayidx89, align 8
  %tobool90 = icmp ne ptr %86, null
  br i1 %tobool90, label %land.lhs.true91, label %if.end109

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %87 = load ptr, ptr %apNode.addr, align 8
  %88 = load i32, ptr %iCur, align 4
  %idxprom92 = sext i32 %88 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %87, i64 %idxprom92
  %89 = load ptr, ptr %arrayidx93, align 8
  %pStart94 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %89, i32 0, i32 3
  %90 = load ptr, ptr %pStart94, align 8
  %nType95 = getelementptr inbounds nuw %struct.SyToken, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %nType95, align 8
  %and96 = and i32 %91, 131072
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.end109

if.then98:                                        ; preds = %land.lhs.true91
  %92 = load i32, ptr %iCur, align 4
  %inc99 = add nsw i32 %92, 1
  store i32 %inc99, ptr %iCur, align 4
  %93 = load i32, ptr %iCur, align 4
  %94 = load i32, ptr %nToken.addr, align 4
  %cmp100 = icmp sge i32 %93, %94
  br i1 %cmp100, label %if.then101, label %if.end108

if.then101:                                       ; preds = %if.then98
  %95 = load ptr, ptr %pGen.addr, align 8
  %96 = load ptr, ptr %pOp.addr, align 8
  %pStart102 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %96, i32 0, i32 3
  %97 = load ptr, ptr %pStart102, align 8
  %nLine103 = getelementptr inbounds nuw %struct.SyToken, ptr %97, i32 0, i32 2
  %98 = load i32, ptr %nLine103, align 4
  %call104 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %95, i32 noundef 1, i32 noundef %98, ptr noundef @.str.272)
  store i32 %call104, ptr %rc, align 4
  %99 = load i32, ptr %rc, align 4
  %cmp105 = icmp ne i32 %99, -10
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then101
  store i32 -12, ptr %rc, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then101
  %100 = load i32, ptr %rc, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.then98
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %land.lhs.true91, %land.lhs.true87, %if.end85
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end107, %if.end84, %if.end76
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
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
