; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

@aOpTable = external hidden constant [62 x { { ptr, i32, [4 x i8] }, i32, i32, i32, i32 }], align 16
@.str.246 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.247 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.248 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.249 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.250 = external hidden unnamed_addr constant [43 x i8], align 1
@sFCallOp = external hidden constant { { ptr, i32, [4 x i8] }, i32, i32, i32, i32 }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ExprExtractOperator(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprVerifyNodes(ptr noundef %pGen, ptr noundef %apNode, i32 noundef %nNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %apNode.addr = alloca ptr, align 8
  %nNode.addr = alloca i32, align 4
  %iParen = alloca i32, align 4
  %iSquare = alloca i32, align 4
  %iQuesty = alloca i32, align 4
  %iBraces = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %pOp133 = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %iNest = alloca i32, align 4
  %j = alloca i32, align 4
  %pOp255 = alloca ptr, align 8
  %iExprOp = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %apNode, ptr %apNode.addr, align 8
  store i32 %nNode, ptr %nNode.addr, align 4
  %0 = load i32, ptr %nNode.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %apNode.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pOp, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %apNode.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %pOp3 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pOp3, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %iOp, align 8
  %cmp4 = icmp eq i32 %7, 19
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1
  %8 = load ptr, ptr %apNode.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx5, align 8
  %pOp6 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pOp6, align 8
  %iOp7 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %iOp7, align 8
  %cmp8 = icmp eq i32 %11, 20
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true1
  %12 = load ptr, ptr %apNode.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx9, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pStart, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %14, i32 0, i32 0
  %call = call ptr @PH7_ExprExtractOperator(ptr noundef %sData, ptr noundef null)
  %15 = load ptr, ptr %apNode.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx10, align 8
  %pOp11 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %16, i32 0, i32 0
  store ptr %call, ptr %pOp11, align 8
  %17 = load ptr, ptr %apNode.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx12, align 8
  %pOp13 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pOp13, align 8
  %20 = load ptr, ptr %apNode.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %20, i64 0
  %21 = load ptr, ptr %arrayidx14, align 8
  %pStart15 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %pStart15, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 3
  store ptr %19, ptr %pUserData, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, ptr %iBraces, align 4
  store i32 0, ptr %iQuesty, align 4
  store i32 0, ptr %iSquare, align 4
  store i32 0, ptr %iParen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %nNode.addr, align 4
  %cmp16 = icmp slt i32 %23, %24
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %apNode.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %arrayidx17, align 8
  %pStart18 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %pStart18, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType, align 8
  %and = and i32 %29, 512
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.body
  %30 = load i32, ptr %i, align 4
  %cmp21 = icmp sgt i32 %30, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end61

land.lhs.true22:                                  ; preds = %if.then20
  %31 = load ptr, ptr %apNode.addr, align 8
  %32 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %32, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %31, i64 %idxprom23
  %33 = load ptr, ptr %arrayidx24, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %xCode, align 8
  %cmp25 = icmp eq ptr %34, @PH7_CompileVariable
  br i1 %cmp25, label %if.then40, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true22
  %35 = load ptr, ptr %apNode.addr, align 8
  %36 = load i32, ptr %i, align 4
  %sub27 = sub nsw i32 %36, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %35, i64 %idxprom28
  %37 = load ptr, ptr %arrayidx29, align 8
  %xCode30 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %xCode30, align 8
  %cmp31 = icmp eq ptr %38, @PH7_CompileLiteral
  br i1 %cmp31, label %if.then40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %39 = load ptr, ptr %apNode.addr, align 8
  %40 = load i32, ptr %i, align 4
  %sub33 = sub nsw i32 %40, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %39, i64 %idxprom34
  %41 = load ptr, ptr %arrayidx35, align 8
  %pStart36 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %pStart36, align 8
  %nType37 = getelementptr inbounds nuw %struct.SyToken, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %nType37, align 8
  %and38 = and i32 %43, 29836
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end61

if.then40:                                        ; preds = %lor.lhs.false32, %lor.lhs.false26, %land.lhs.true22
  %44 = load ptr, ptr %apNode.addr, align 8
  %45 = load i32, ptr %i, align 4
  %sub41 = sub nsw i32 %45, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %44, i64 %idxprom42
  %46 = load ptr, ptr %arrayidx43, align 8
  %pStart44 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pStart44, align 8
  %nType45 = getelementptr inbounds nuw %struct.SyToken, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nType45, align 8
  %and46 = and i32 %48, 32
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.then40
  %49 = load ptr, ptr %apNode.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %49, i64 %idxprom49
  %51 = load ptr, ptr %arrayidx50, align 8
  %pStart51 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %pStart51, align 8
  %nType52 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %nType52, align 8
  %or = or i32 %53, 32
  store i32 %or, ptr %nType52, align 8
  %54 = load ptr, ptr %apNode.addr, align 8
  %55 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %55 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %54, i64 %idxprom53
  %56 = load ptr, ptr %arrayidx54, align 8
  %pStart55 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %pStart55, align 8
  %pUserData56 = getelementptr inbounds nuw %struct.SyToken, ptr %57, i32 0, i32 3
  store ptr @sFCallOp, ptr %pUserData56, align 8
  %58 = load ptr, ptr %apNode.addr, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %59 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %58, i64 %idxprom57
  %60 = load ptr, ptr %arrayidx58, align 8
  %pOp59 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %60, i32 0, i32 0
  store ptr @sFCallOp, ptr %pOp59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then48, %if.then40
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %lor.lhs.false32, %if.then20
  %61 = load i32, ptr %iParen, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, ptr %iParen, align 4
  br label %if.end318

if.else:                                          ; preds = %for.body
  %62 = load ptr, ptr %apNode.addr, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %63 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %62, i64 %idxprom62
  %64 = load ptr, ptr %arrayidx63, align 8
  %pStart64 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %pStart64, align 8
  %nType65 = getelementptr inbounds nuw %struct.SyToken, ptr %65, i32 0, i32 1
  %66 = load i32, ptr %nType65, align 8
  %and66 = and i32 %66, 1024
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.else79

if.then68:                                        ; preds = %if.else
  %67 = load i32, ptr %iParen, align 4
  %cmp69 = icmp sle i32 %67, 0
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %if.then68
  %68 = load ptr, ptr %pGen.addr, align 8
  %69 = load ptr, ptr %apNode.addr, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %70 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %69, i64 %idxprom71
  %71 = load ptr, ptr %arrayidx72, align 8
  %pStart73 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %71, i32 0, i32 3
  %72 = load ptr, ptr %pStart73, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %nLine, align 4
  %call74 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %68, i32 noundef 1, i32 noundef %73, ptr noundef @.str.246)
  store i32 %call74, ptr %rc, align 4
  %74 = load i32, ptr %rc, align 4
  %cmp75 = icmp ne i32 %74, -10
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then70
  store i32 -12, ptr %rc, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then70
  %75 = load i32, ptr %rc, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.then68
  %76 = load i32, ptr %iParen, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, ptr %iParen, align 4
  br label %if.end317

if.else79:                                        ; preds = %if.else
  %77 = load ptr, ptr %apNode.addr, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %78 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %77, i64 %idxprom80
  %79 = load ptr, ptr %arrayidx81, align 8
  %pStart82 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %pStart82, align 8
  %nType83 = getelementptr inbounds nuw %struct.SyToken, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %nType83, align 8
  %and84 = and i32 %81, 2048
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.else79
  %82 = load i32, ptr %iSquare, align 4
  %inc87 = add nsw i32 %82, 1
  store i32 %inc87, ptr %iSquare, align 4
  br label %if.end316

if.else88:                                        ; preds = %if.else79
  %83 = load ptr, ptr %apNode.addr, align 8
  %84 = load i32, ptr %i, align 4
  %idxprom89 = sext i32 %84 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %83, i64 %idxprom89
  %85 = load ptr, ptr %arrayidx90, align 8
  %pStart91 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %pStart91, align 8
  %nType92 = getelementptr inbounds nuw %struct.SyToken, ptr %86, i32 0, i32 1
  %87 = load i32, ptr %nType92, align 8
  %and93 = and i32 %87, 4096
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then95, label %if.else108

if.then95:                                        ; preds = %if.else88
  %88 = load i32, ptr %iSquare, align 4
  %cmp96 = icmp sle i32 %88, 0
  br i1 %cmp96, label %if.then97, label %if.end106

if.then97:                                        ; preds = %if.then95
  %89 = load ptr, ptr %pGen.addr, align 8
  %90 = load ptr, ptr %apNode.addr, align 8
  %91 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %91 to i64
  %arrayidx99 = getelementptr inbounds ptr, ptr %90, i64 %idxprom98
  %92 = load ptr, ptr %arrayidx99, align 8
  %pStart100 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %92, i32 0, i32 3
  %93 = load ptr, ptr %pStart100, align 8
  %nLine101 = getelementptr inbounds nuw %struct.SyToken, ptr %93, i32 0, i32 2
  %94 = load i32, ptr %nLine101, align 4
  %call102 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %89, i32 noundef 1, i32 noundef %94, ptr noundef @.str.247)
  store i32 %call102, ptr %rc, align 4
  %95 = load i32, ptr %rc, align 4
  %cmp103 = icmp ne i32 %95, -10
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then97
  store i32 -12, ptr %rc, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then97
  %96 = load i32, ptr %rc, align 4
  store i32 %96, ptr %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.then95
  %97 = load i32, ptr %iSquare, align 4
  %dec107 = add nsw i32 %97, -1
  store i32 %dec107, ptr %iSquare, align 4
  br label %if.end315

if.else108:                                       ; preds = %if.else88
  %98 = load ptr, ptr %apNode.addr, align 8
  %99 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %99 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %98, i64 %idxprom109
  %100 = load ptr, ptr %arrayidx110, align 8
  %pStart111 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %100, i32 0, i32 3
  %101 = load ptr, ptr %pStart111, align 8
  %nType112 = getelementptr inbounds nuw %struct.SyToken, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %nType112, align 8
  %and113 = and i32 %102, 64
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then115, label %if.else207

if.then115:                                       ; preds = %if.else108
  %103 = load i32, ptr %iBraces, align 4
  %inc116 = add nsw i32 %103, 1
  store i32 %inc116, ptr %iBraces, align 4
  %104 = load i32, ptr %i, align 4
  %cmp117 = icmp sgt i32 %104, 0
  br i1 %cmp117, label %land.lhs.true118, label %if.end206

land.lhs.true118:                                 ; preds = %if.then115
  %105 = load ptr, ptr %apNode.addr, align 8
  %106 = load i32, ptr %i, align 4
  %sub119 = sub nsw i32 %106, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %105, i64 %idxprom120
  %107 = load ptr, ptr %arrayidx121, align 8
  %xCode122 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %107, i32 0, i32 6
  %108 = load ptr, ptr %xCode122, align 8
  %cmp123 = icmp eq ptr %108, @PH7_CompileVariable
  br i1 %cmp123, label %if.then132, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %land.lhs.true118
  %109 = load ptr, ptr %apNode.addr, align 8
  %110 = load i32, ptr %i, align 4
  %sub125 = sub nsw i32 %110, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds ptr, ptr %109, i64 %idxprom126
  %111 = load ptr, ptr %arrayidx127, align 8
  %pStart128 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %111, i32 0, i32 3
  %112 = load ptr, ptr %pStart128, align 8
  %nType129 = getelementptr inbounds nuw %struct.SyToken, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %nType129, align 8
  %and130 = and i32 %113, 4096
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then132, label %if.end206

if.then132:                                       ; preds = %lor.lhs.false124, %land.lhs.true118
  store i32 1, ptr %iNest, align 4
  %114 = load i32, ptr %i, align 4
  %add = add nsw i32 %114, 1
  store i32 %add, ptr %j, align 4
  %115 = load ptr, ptr %apNode.addr, align 8
  %116 = load i32, ptr %i, align 4
  %idxprom134 = sext i32 %116 to i64
  %arrayidx135 = getelementptr inbounds ptr, ptr %115, i64 %idxprom134
  %117 = load ptr, ptr %arrayidx135, align 8
  %pStart136 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %117, i32 0, i32 3
  %118 = load ptr, ptr %pStart136, align 8
  %nType137 = getelementptr inbounds nuw %struct.SyToken, ptr %118, i32 0, i32 1
  %119 = load i32, ptr %nType137, align 8
  %and138 = and i32 %119, -65
  store i32 %and138, ptr %nType137, align 8
  %120 = load ptr, ptr %apNode.addr, align 8
  %121 = load i32, ptr %i, align 4
  %idxprom139 = sext i32 %121 to i64
  %arrayidx140 = getelementptr inbounds ptr, ptr %120, i64 %idxprom139
  %122 = load ptr, ptr %arrayidx140, align 8
  %pStart141 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %122, i32 0, i32 3
  %123 = load ptr, ptr %pStart141, align 8
  %nType142 = getelementptr inbounds nuw %struct.SyToken, ptr %123, i32 0, i32 1
  %124 = load i32, ptr %nType142, align 8
  %or143 = or i32 %124, 2048
  store i32 %or143, ptr %nType142, align 8
  store ptr @aOpTable, ptr %pOp133, align 8
  %125 = load ptr, ptr %pOp133, align 8
  %arrayidx144 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %125, i64 1984
  store ptr %arrayidx144, ptr %pEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end149, %if.then132
  %126 = load ptr, ptr %pOp133, align 8
  %127 = load ptr, ptr %pEnd, align 8
  %cmp145 = icmp ult ptr %126, %127
  br i1 %cmp145, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %128 = load ptr, ptr %pOp133, align 8
  %iOp146 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %128, i32 0, i32 1
  %129 = load i32, ptr %iOp146, align 8
  %cmp147 = icmp eq i32 %129, 5
  br i1 %cmp147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %while.body
  br label %while.end

if.end149:                                        ; preds = %while.body
  %130 = load ptr, ptr %pOp133, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %130, i32 1
  store ptr %incdec.ptr, ptr %pOp133, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then148, %while.cond
  %131 = load ptr, ptr %pOp133, align 8
  %132 = load ptr, ptr %pEnd, align 8
  %cmp150 = icmp uge ptr %131, %132
  br i1 %cmp150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %while.end
  store ptr null, ptr %pOp133, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %while.end
  %133 = load ptr, ptr %pOp133, align 8
  %tobool153 = icmp ne ptr %133, null
  br i1 %tobool153, label %if.then154, label %if.end163

if.then154:                                       ; preds = %if.end152
  %134 = load ptr, ptr %pOp133, align 8
  %135 = load ptr, ptr %apNode.addr, align 8
  %136 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %136 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %135, i64 %idxprom155
  %137 = load ptr, ptr %arrayidx156, align 8
  %pOp157 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %137, i32 0, i32 0
  store ptr %134, ptr %pOp157, align 8
  %138 = load ptr, ptr %apNode.addr, align 8
  %139 = load i32, ptr %i, align 4
  %idxprom158 = sext i32 %139 to i64
  %arrayidx159 = getelementptr inbounds ptr, ptr %138, i64 %idxprom158
  %140 = load ptr, ptr %arrayidx159, align 8
  %pStart160 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %140, i32 0, i32 3
  %141 = load ptr, ptr %pStart160, align 8
  %nType161 = getelementptr inbounds nuw %struct.SyToken, ptr %141, i32 0, i32 1
  %142 = load i32, ptr %nType161, align 8
  %or162 = or i32 %142, 32
  store i32 %or162, ptr %nType161, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then154, %if.end152
  %143 = load i32, ptr %iBraces, align 4
  %dec164 = add nsw i32 %143, -1
  store i32 %dec164, ptr %iBraces, align 4
  %144 = load i32, ptr %iSquare, align 4
  %inc165 = add nsw i32 %144, 1
  store i32 %inc165, ptr %iSquare, align 4
  br label %while.cond166

while.cond166:                                    ; preds = %if.end190, %if.end163
  %145 = load i32, ptr %j, align 4
  %146 = load i32, ptr %nNode.addr, align 4
  %cmp167 = icmp slt i32 %145, %146
  br i1 %cmp167, label %while.body168, label %while.end192

while.body168:                                    ; preds = %while.cond166
  %147 = load ptr, ptr %apNode.addr, align 8
  %148 = load i32, ptr %j, align 4
  %idxprom169 = sext i32 %148 to i64
  %arrayidx170 = getelementptr inbounds ptr, ptr %147, i64 %idxprom169
  %149 = load ptr, ptr %arrayidx170, align 8
  %pStart171 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %149, i32 0, i32 3
  %150 = load ptr, ptr %pStart171, align 8
  %nType172 = getelementptr inbounds nuw %struct.SyToken, ptr %150, i32 0, i32 1
  %151 = load i32, ptr %nType172, align 8
  %and173 = and i32 %151, 64
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then175, label %if.else177

if.then175:                                       ; preds = %while.body168
  %152 = load i32, ptr %iNest, align 4
  %inc176 = add nsw i32 %152, 1
  store i32 %inc176, ptr %iNest, align 4
  br label %if.end190

if.else177:                                       ; preds = %while.body168
  %153 = load ptr, ptr %apNode.addr, align 8
  %154 = load i32, ptr %j, align 4
  %idxprom178 = sext i32 %154 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %153, i64 %idxprom178
  %155 = load ptr, ptr %arrayidx179, align 8
  %pStart180 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %155, i32 0, i32 3
  %156 = load ptr, ptr %pStart180, align 8
  %nType181 = getelementptr inbounds nuw %struct.SyToken, ptr %156, i32 0, i32 1
  %157 = load i32, ptr %nType181, align 8
  %and182 = and i32 %157, 128
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then184, label %if.end189

if.then184:                                       ; preds = %if.else177
  %158 = load i32, ptr %iNest, align 4
  %dec185 = add nsw i32 %158, -1
  store i32 %dec185, ptr %iNest, align 4
  %159 = load i32, ptr %iNest, align 4
  %cmp186 = icmp slt i32 %159, 1
  br i1 %cmp186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.then184
  br label %while.end192

if.end188:                                        ; preds = %if.then184
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.else177
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then175
  %160 = load i32, ptr %j, align 4
  %inc191 = add nsw i32 %160, 1
  store i32 %inc191, ptr %j, align 4
  br label %while.cond166, !llvm.loop !8

while.end192:                                     ; preds = %if.then187, %while.cond166
  %161 = load i32, ptr %j, align 4
  %162 = load i32, ptr %nNode.addr, align 4
  %cmp193 = icmp slt i32 %161, %162
  br i1 %cmp193, label %if.then194, label %if.end205

if.then194:                                       ; preds = %while.end192
  %163 = load ptr, ptr %apNode.addr, align 8
  %164 = load i32, ptr %j, align 4
  %idxprom195 = sext i32 %164 to i64
  %arrayidx196 = getelementptr inbounds ptr, ptr %163, i64 %idxprom195
  %165 = load ptr, ptr %arrayidx196, align 8
  %pStart197 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %165, i32 0, i32 3
  %166 = load ptr, ptr %pStart197, align 8
  %nType198 = getelementptr inbounds nuw %struct.SyToken, ptr %166, i32 0, i32 1
  %167 = load i32, ptr %nType198, align 8
  %and199 = and i32 %167, -129
  store i32 %and199, ptr %nType198, align 8
  %168 = load ptr, ptr %apNode.addr, align 8
  %169 = load i32, ptr %j, align 4
  %idxprom200 = sext i32 %169 to i64
  %arrayidx201 = getelementptr inbounds ptr, ptr %168, i64 %idxprom200
  %170 = load ptr, ptr %arrayidx201, align 8
  %pStart202 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %170, i32 0, i32 3
  %171 = load ptr, ptr %pStart202, align 8
  %nType203 = getelementptr inbounds nuw %struct.SyToken, ptr %171, i32 0, i32 1
  %172 = load i32, ptr %nType203, align 8
  %or204 = or i32 %172, 4096
  store i32 %or204, ptr %nType203, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then194, %while.end192
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %lor.lhs.false124, %if.then115
  br label %if.end314

if.else207:                                       ; preds = %if.else108
  %173 = load ptr, ptr %apNode.addr, align 8
  %174 = load i32, ptr %i, align 4
  %idxprom208 = sext i32 %174 to i64
  %arrayidx209 = getelementptr inbounds ptr, ptr %173, i64 %idxprom208
  %175 = load ptr, ptr %arrayidx209, align 8
  %pStart210 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %175, i32 0, i32 3
  %176 = load ptr, ptr %pStart210, align 8
  %nType211 = getelementptr inbounds nuw %struct.SyToken, ptr %176, i32 0, i32 1
  %177 = load i32, ptr %nType211, align 8
  %and212 = and i32 %177, 128
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.then214, label %if.else227

if.then214:                                       ; preds = %if.else207
  %178 = load i32, ptr %iBraces, align 4
  %cmp215 = icmp sle i32 %178, 0
  br i1 %cmp215, label %if.then216, label %if.end225

if.then216:                                       ; preds = %if.then214
  %179 = load ptr, ptr %pGen.addr, align 8
  %180 = load ptr, ptr %apNode.addr, align 8
  %181 = load i32, ptr %i, align 4
  %idxprom217 = sext i32 %181 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %180, i64 %idxprom217
  %182 = load ptr, ptr %arrayidx218, align 8
  %pStart219 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %182, i32 0, i32 3
  %183 = load ptr, ptr %pStart219, align 8
  %nLine220 = getelementptr inbounds nuw %struct.SyToken, ptr %183, i32 0, i32 2
  %184 = load i32, ptr %nLine220, align 4
  %call221 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %179, i32 noundef 1, i32 noundef %184, ptr noundef @.str.248)
  store i32 %call221, ptr %rc, align 4
  %185 = load i32, ptr %rc, align 4
  %cmp222 = icmp ne i32 %185, -10
  br i1 %cmp222, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.then216
  store i32 -12, ptr %rc, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.then216
  %186 = load i32, ptr %rc, align 4
  store i32 %186, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.then214
  %187 = load i32, ptr %iBraces, align 4
  %dec226 = add nsw i32 %187, -1
  store i32 %dec226, ptr %iBraces, align 4
  br label %if.end313

if.else227:                                       ; preds = %if.else207
  %188 = load ptr, ptr %apNode.addr, align 8
  %189 = load i32, ptr %i, align 4
  %idxprom228 = sext i32 %189 to i64
  %arrayidx229 = getelementptr inbounds ptr, ptr %188, i64 %idxprom228
  %190 = load ptr, ptr %arrayidx229, align 8
  %pStart230 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %190, i32 0, i32 3
  %191 = load ptr, ptr %pStart230, align 8
  %nType231 = getelementptr inbounds nuw %struct.SyToken, ptr %191, i32 0, i32 1
  %192 = load i32, ptr %nType231, align 8
  %and232 = and i32 %192, 1048576
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %if.then234, label %if.else247

if.then234:                                       ; preds = %if.else227
  %193 = load i32, ptr %iQuesty, align 4
  %cmp235 = icmp sle i32 %193, 0
  br i1 %cmp235, label %if.then236, label %if.end245

if.then236:                                       ; preds = %if.then234
  %194 = load ptr, ptr %pGen.addr, align 8
  %195 = load ptr, ptr %apNode.addr, align 8
  %196 = load i32, ptr %i, align 4
  %idxprom237 = sext i32 %196 to i64
  %arrayidx238 = getelementptr inbounds ptr, ptr %195, i64 %idxprom237
  %197 = load ptr, ptr %arrayidx238, align 8
  %pStart239 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %197, i32 0, i32 3
  %198 = load ptr, ptr %pStart239, align 8
  %nLine240 = getelementptr inbounds nuw %struct.SyToken, ptr %198, i32 0, i32 2
  %199 = load i32, ptr %nLine240, align 4
  %call241 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %194, i32 noundef 1, i32 noundef %199, ptr noundef @.str.249)
  store i32 %call241, ptr %rc, align 4
  %200 = load i32, ptr %rc, align 4
  %cmp242 = icmp ne i32 %200, -10
  br i1 %cmp242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.then236
  store i32 -12, ptr %rc, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.then236
  %201 = load i32, ptr %rc, align 4
  store i32 %201, ptr %retval, align 4
  br label %return

if.end245:                                        ; preds = %if.then234
  %202 = load i32, ptr %iQuesty, align 4
  %dec246 = add nsw i32 %202, -1
  store i32 %dec246, ptr %iQuesty, align 4
  br label %if.end312

if.else247:                                       ; preds = %if.else227
  %203 = load ptr, ptr %apNode.addr, align 8
  %204 = load i32, ptr %i, align 4
  %idxprom248 = sext i32 %204 to i64
  %arrayidx249 = getelementptr inbounds ptr, ptr %203, i64 %idxprom248
  %205 = load ptr, ptr %arrayidx249, align 8
  %pStart250 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %205, i32 0, i32 3
  %206 = load ptr, ptr %pStart250, align 8
  %nType251 = getelementptr inbounds nuw %struct.SyToken, ptr %206, i32 0, i32 1
  %207 = load i32, ptr %nType251, align 8
  %and252 = and i32 %207, 32
  %tobool253 = icmp ne i32 %and252, 0
  br i1 %tobool253, label %if.then254, label %if.end311

if.then254:                                       ; preds = %if.else247
  %208 = load ptr, ptr %apNode.addr, align 8
  %209 = load i32, ptr %i, align 4
  %idxprom256 = sext i32 %209 to i64
  %arrayidx257 = getelementptr inbounds ptr, ptr %208, i64 %idxprom256
  %210 = load ptr, ptr %arrayidx257, align 8
  %pOp258 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %210, i32 0, i32 0
  %211 = load ptr, ptr %pOp258, align 8
  store ptr %211, ptr %pOp255, align 8
  %212 = load ptr, ptr %pOp255, align 8
  %iOp259 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %212, i32 0, i32 1
  %213 = load i32, ptr %iOp259, align 8
  %cmp260 = icmp eq i32 %213, 41
  br i1 %cmp260, label %if.then261, label %if.else263

if.then261:                                       ; preds = %if.then254
  %214 = load i32, ptr %iQuesty, align 4
  %inc262 = add nsw i32 %214, 1
  store i32 %inc262, ptr %iQuesty, align 4
  br label %if.end310

if.else263:                                       ; preds = %if.then254
  %215 = load i32, ptr %i, align 4
  %cmp264 = icmp sgt i32 %215, 0
  br i1 %cmp264, label %land.lhs.true265, label %if.end309

land.lhs.true265:                                 ; preds = %if.else263
  %216 = load ptr, ptr %pOp255, align 8
  %iOp266 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %216, i32 0, i32 1
  %217 = load i32, ptr %iOp266, align 8
  %cmp267 = icmp eq i32 %217, 10
  br i1 %cmp267, label %if.then271, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %land.lhs.true265
  %218 = load ptr, ptr %pOp255, align 8
  %iOp269 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %218, i32 0, i32 1
  %219 = load i32, ptr %iOp269, align 8
  %cmp270 = icmp eq i32 %219, 11
  br i1 %cmp270, label %if.then271, label %if.end309

if.then271:                                       ; preds = %lor.lhs.false268, %land.lhs.true265
  %220 = load ptr, ptr %apNode.addr, align 8
  %221 = load i32, ptr %i, align 4
  %sub272 = sub nsw i32 %221, 1
  %idxprom273 = sext i32 %sub272 to i64
  %arrayidx274 = getelementptr inbounds ptr, ptr %220, i64 %idxprom273
  %222 = load ptr, ptr %arrayidx274, align 8
  %xCode275 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %222, i32 0, i32 6
  %223 = load ptr, ptr %xCode275, align 8
  %cmp276 = icmp eq ptr %223, @PH7_CompileVariable
  br i1 %cmp276, label %if.then283, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %if.then271
  %224 = load ptr, ptr %apNode.addr, align 8
  %225 = load i32, ptr %i, align 4
  %sub278 = sub nsw i32 %225, 1
  %idxprom279 = sext i32 %sub278 to i64
  %arrayidx280 = getelementptr inbounds ptr, ptr %224, i64 %idxprom279
  %226 = load ptr, ptr %arrayidx280, align 8
  %xCode281 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %226, i32 0, i32 6
  %227 = load ptr, ptr %xCode281, align 8
  %cmp282 = icmp eq ptr %227, @PH7_CompileLiteral
  br i1 %cmp282, label %if.then283, label %if.end308

if.then283:                                       ; preds = %lor.lhs.false277, %if.then271
  store i32 20, ptr %iExprOp, align 4
  store i32 0, ptr %n, align 4
  %228 = load ptr, ptr %pOp255, align 8
  %iOp284 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %228, i32 0, i32 1
  %229 = load i32, ptr %iOp284, align 8
  %cmp285 = icmp eq i32 %229, 11
  br i1 %cmp285, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.then283
  store i32 19, ptr %iExprOp, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.then283
  br label %while.cond288

while.cond288:                                    ; preds = %while.body296, %if.end287
  %230 = load i32, ptr %n, align 4
  %conv = zext i32 %230 to i64
  %cmp289 = icmp ult i64 %conv, 62
  br i1 %cmp289, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond288
  %231 = load i32, ptr %n, align 4
  %idxprom291 = zext i32 %231 to i64
  %arrayidx292 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom291
  %iOp293 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx292, i32 0, i32 1
  %232 = load i32, ptr %iOp293, align 16
  %233 = load i32, ptr %iExprOp, align 4
  %cmp294 = icmp ne i32 %232, %233
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond288
  %234 = phi i1 [ false, %while.cond288 ], [ %cmp294, %land.rhs ]
  br i1 %234, label %while.body296, label %while.end298

while.body296:                                    ; preds = %land.end
  %235 = load i32, ptr %n, align 4
  %inc297 = add i32 %235, 1
  store i32 %inc297, ptr %n, align 4
  br label %while.cond288, !llvm.loop !9

while.end298:                                     ; preds = %land.end
  %236 = load i32, ptr %n, align 4
  %idxprom299 = zext i32 %236 to i64
  %arrayidx300 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom299
  store ptr %arrayidx300, ptr %pOp255, align 8
  %237 = load ptr, ptr %pOp255, align 8
  %238 = load ptr, ptr %apNode.addr, align 8
  %239 = load i32, ptr %i, align 4
  %idxprom301 = sext i32 %239 to i64
  %arrayidx302 = getelementptr inbounds ptr, ptr %238, i64 %idxprom301
  %240 = load ptr, ptr %arrayidx302, align 8
  %pOp303 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %240, i32 0, i32 0
  store ptr %237, ptr %pOp303, align 8
  %241 = load ptr, ptr %pOp255, align 8
  %242 = load ptr, ptr %apNode.addr, align 8
  %243 = load i32, ptr %i, align 4
  %idxprom304 = sext i32 %243 to i64
  %arrayidx305 = getelementptr inbounds ptr, ptr %242, i64 %idxprom304
  %244 = load ptr, ptr %arrayidx305, align 8
  %pStart306 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %244, i32 0, i32 3
  %245 = load ptr, ptr %pStart306, align 8
  %pUserData307 = getelementptr inbounds nuw %struct.SyToken, ptr %245, i32 0, i32 3
  store ptr %241, ptr %pUserData307, align 8
  br label %if.end308

if.end308:                                        ; preds = %while.end298, %lor.lhs.false277
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %lor.lhs.false268, %if.else263
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then261
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.else247
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.end245
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %if.end225
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.end206
  br label %if.end315

if.end315:                                        ; preds = %if.end314, %if.end106
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.then86
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end78
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.end61
  br label %for.inc

for.inc:                                          ; preds = %if.end318
  %246 = load i32, ptr %i, align 4
  %inc319 = add nsw i32 %246, 1
  store i32 %inc319, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %247 = load i32, ptr %iParen, align 4
  %cmp320 = icmp ne i32 %247, 0
  br i1 %cmp320, label %if.then331, label %lor.lhs.false322

lor.lhs.false322:                                 ; preds = %for.end
  %248 = load i32, ptr %iSquare, align 4
  %cmp323 = icmp ne i32 %248, 0
  br i1 %cmp323, label %if.then331, label %lor.lhs.false325

lor.lhs.false325:                                 ; preds = %lor.lhs.false322
  %249 = load i32, ptr %iQuesty, align 4
  %cmp326 = icmp ne i32 %249, 0
  br i1 %cmp326, label %if.then331, label %lor.lhs.false328

lor.lhs.false328:                                 ; preds = %lor.lhs.false325
  %250 = load i32, ptr %iBraces, align 4
  %cmp329 = icmp ne i32 %250, 0
  br i1 %cmp329, label %if.then331, label %if.end340

if.then331:                                       ; preds = %lor.lhs.false328, %lor.lhs.false325, %lor.lhs.false322, %for.end
  %251 = load ptr, ptr %pGen.addr, align 8
  %252 = load ptr, ptr %apNode.addr, align 8
  %arrayidx332 = getelementptr inbounds ptr, ptr %252, i64 0
  %253 = load ptr, ptr %arrayidx332, align 8
  %pStart333 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %253, i32 0, i32 3
  %254 = load ptr, ptr %pStart333, align 8
  %nLine334 = getelementptr inbounds nuw %struct.SyToken, ptr %254, i32 0, i32 2
  %255 = load i32, ptr %nLine334, align 4
  %call335 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %251, i32 noundef 1, i32 noundef %255, ptr noundef @.str.250)
  store i32 %call335, ptr %rc, align 4
  %256 = load i32, ptr %rc, align 4
  %cmp336 = icmp ne i32 %256, -10
  br i1 %cmp336, label %if.then338, label %if.end339

if.then338:                                       ; preds = %if.then331
  store i32 -12, ptr %rc, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.then338, %if.then331
  %257 = load i32, ptr %rc, align 4
  store i32 %257, ptr %retval, align 4
  br label %return

if.end340:                                        ; preds = %lor.lhs.false328
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end340, %if.end339, %if.end244, %if.end224, %if.end105, %if.end77
  %258 = load i32, ptr %retval, align 4
  ret i32 %258
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileLiteral(ptr noundef, i32 noundef) #0

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
