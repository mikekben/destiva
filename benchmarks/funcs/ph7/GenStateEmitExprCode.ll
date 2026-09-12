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
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.VmInstr = type { i8, i32, i32, ptr }

@.str.273 = external hidden unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateEmitExprCode(ptr noundef %pGen, ptr noundef %pNode, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %pInstr = alloca ptr, align 8
  %nJmpIdx = alloca i32, align 4
  %iP1 = alloca i32, align 4
  %iP2 = alloca i32, align 4
  %p3 = alloca ptr, align 8
  %iVmOp = alloca i32, align 4
  %rc = alloca i32, align 4
  %pTmpIn = alloca ptr, align 8
  %pTmpEnd = alloca ptr, align 8
  %nJz = alloca i32, align 4
  %nJmp = alloca i32, align 4
  %apNode = alloca ptr, align 8
  %n = alloca i32, align 4
  %apNode107 = alloca ptr, align 8
  %n108 = alloca i32, align 4
  %pPrev = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 0, ptr %iP1, align 4
  store i32 0, ptr %iP2, align 4
  store ptr null, ptr %p3, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %xCode, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn, align 8
  store ptr %3, ptr %pTmpIn, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pEnd, align 8
  store ptr %5, ptr %pTmpEnd, align 8
  %6 = load ptr, ptr %pNode.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pStart, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 12
  store ptr %7, ptr %pIn1, align 8
  %9 = load ptr, ptr %pNode.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pEnd2, align 8
  %11 = load ptr, ptr %pGen.addr, align 8
  %pEnd3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 13
  store ptr %10, ptr %pEnd3, align 8
  %12 = load ptr, ptr %pNode.addr, align 8
  %xCode4 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %xCode4, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load i32, ptr %iFlags.addr, align 4
  %call = call i32 %13(ptr noundef %14, i32 noundef %15)
  store i32 %call, ptr %rc, align 4
  %16 = load ptr, ptr %pTmpIn, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  store ptr %16, ptr %pIn5, align 8
  %18 = load ptr, ptr %pTmpEnd, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  store ptr %18, ptr %pEnd6, align 8
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %21 = load ptr, ptr %pNode.addr, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pOp, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %23 = load ptr, ptr %pGen.addr, align 8
  %24 = load ptr, ptr %pNode.addr, align 8
  %pStart8 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pStart8, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %nLine, align 4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %23, i32 noundef 1, i32 noundef %26, ptr noundef @.str.273)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %27 = load ptr, ptr %pNode.addr, align 8
  %pOp11 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pOp11, align 8
  %iVmOp12 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %iVmOp12, align 4
  store i32 %29, ptr %iVmOp, align 4
  %30 = load ptr, ptr %pNode.addr, align 8
  %pOp13 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pOp13, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %iOp, align 8
  %cmp14 = icmp eq i32 %32, 41
  br i1 %cmp14, label %if.then15, label %if.end58

if.then15:                                        ; preds = %if.end10
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load ptr, ptr %pNode.addr, align 8
  %pCond = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %34, i32 0, i32 8
  %35 = load ptr, ptr %pCond, align 8
  %36 = load i32, ptr %iFlags.addr, align 4
  %call16 = call i32 @GenStateEmitExprCode(ptr noundef %33, ptr noundef %35, i32 noundef %36)
  store i32 %call16, ptr %rc, align 4
  %37 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %37, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then15
  store i32 0, ptr %nJmp, align 4
  store i32 0, ptr %nJz, align 4
  %39 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pVm, align 8
  %call20 = call i32 @PH7_VmEmitInstr(ptr noundef %40, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nJz)
  %41 = load ptr, ptr %pNode.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %pLeft, align 8
  %tobool21 = icmp ne ptr %42, null
  br i1 %tobool21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end19
  %43 = load ptr, ptr %pGen.addr, align 8
  %44 = load ptr, ptr %pNode.addr, align 8
  %pLeft23 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pLeft23, align 8
  %46 = load i32, ptr %iFlags.addr, align 4
  %call24 = call i32 @GenStateEmitExprCode(ptr noundef %43, ptr noundef %45, i32 noundef %46)
  store i32 %call24, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %cmp25 = icmp ne i32 %47, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end19
  %49 = load ptr, ptr %pGen.addr, align 8
  %pVm29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pVm29, align 8
  %call30 = call i32 @PH7_VmEmitInstr(ptr noundef %50, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nJmp)
  %51 = load ptr, ptr %pGen.addr, align 8
  %pVm31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %pVm31, align 8
  %53 = load i32, ptr %nJz, align 4
  %call32 = call ptr @PH7_VmGetInstr(ptr noundef %52, i32 noundef %53)
  store ptr %call32, ptr %pInstr, align 8
  %54 = load ptr, ptr %pInstr, align 8
  %tobool33 = icmp ne ptr %54, null
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end28
  %55 = load ptr, ptr %pGen.addr, align 8
  %pVm35 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pVm35, align 8
  %call36 = call i32 @PH7_VmInstrLength(ptr noundef %56)
  %57 = load ptr, ptr %pInstr, align 8
  %iP237 = getelementptr inbounds nuw %struct.VmInstr, ptr %57, i32 0, i32 2
  store i32 %call36, ptr %iP237, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end28
  %58 = load ptr, ptr %pNode.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %pRight, align 8
  %tobool39 = icmp ne ptr %59, null
  br i1 %tobool39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end38
  %60 = load ptr, ptr %pGen.addr, align 8
  %61 = load ptr, ptr %pNode.addr, align 8
  %pRight41 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %pRight41, align 8
  %63 = load i32, ptr %iFlags.addr, align 4
  %call42 = call i32 @GenStateEmitExprCode(ptr noundef %60, ptr noundef %62, i32 noundef %63)
  store i32 %call42, ptr %rc, align 4
  %64 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %64, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then40
  %65 = load i32, ptr %rc, align 4
  store i32 %65, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then40
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end38
  %66 = load i32, ptr %nJmp, align 4
  %cmp47 = icmp ugt i32 %66, 0
  br i1 %cmp47, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end46
  %67 = load ptr, ptr %pGen.addr, align 8
  %pVm49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %pVm49, align 8
  %69 = load i32, ptr %nJmp, align 4
  %call50 = call ptr @PH7_VmGetInstr(ptr noundef %68, i32 noundef %69)
  store ptr %call50, ptr %pInstr, align 8
  %70 = load ptr, ptr %pInstr, align 8
  %tobool51 = icmp ne ptr %70, null
  br i1 %tobool51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.then48
  %71 = load ptr, ptr %pGen.addr, align 8
  %pVm53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %pVm53, align 8
  %call54 = call i32 @PH7_VmInstrLength(ptr noundef %72)
  %73 = load ptr, ptr %pInstr, align 8
  %iP255 = getelementptr inbounds nuw %struct.VmInstr, ptr %73, i32 0, i32 2
  store i32 %call54, ptr %iP255, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then48
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end46
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end10
  %74 = load ptr, ptr %pNode.addr, align 8
  %pLeft59 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %pLeft59, align 8
  %tobool60 = icmp ne ptr %75, null
  br i1 %tobool60, label %if.then61, label %if.end149

if.then61:                                        ; preds = %if.end58
  %76 = load i32, ptr %iVmOp, align 4
  %cmp62 = icmp eq i32 %76, 18
  br i1 %cmp62, label %if.then63, label %if.end73

if.then63:                                        ; preds = %if.then61
  %77 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %77, i32 0, i32 7
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs, i32 0, i32 1
  %78 = load ptr, ptr %pBase, align 8
  store ptr %78, ptr %apNode, align 8
  %79 = load i32, ptr %iFlags.addr, align 4
  %or = or i32 %79, 2
  store i32 %or, ptr %iFlags.addr, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then63
  %80 = load i32, ptr %n, align 4
  %81 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs64 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %81, i32 0, i32 7
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs64, i32 0, i32 2
  %82 = load i32, ptr %nUsed, align 8
  %cmp65 = icmp slt i32 %80, %82
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %pGen.addr, align 8
  %84 = load ptr, ptr %apNode, align 8
  %85 = load i32, ptr %n, align 4
  %idxprom = sext i32 %85 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %84, i64 %idxprom
  %86 = load ptr, ptr %arrayidx, align 8
  %87 = load i32, ptr %iFlags.addr, align 4
  %and = and i32 %87, -2
  %call66 = call i32 @GenStateEmitExprCode(ptr noundef %83, ptr noundef %86, i32 noundef %and)
  store i32 %call66, ptr %rc, align 4
  %88 = load i32, ptr %rc, align 4
  %cmp67 = icmp ne i32 %88, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.body
  %89 = load i32, ptr %rc, align 4
  store i32 %89, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %90 = load i32, ptr %n, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %91 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs70 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %91, i32 0, i32 7
  %nUsed71 = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs70, i32 0, i32 2
  %92 = load i32, ptr %nUsed71, align 8
  store i32 %92, ptr %iP1, align 4
  %93 = load i32, ptr %iFlags.addr, align 4
  %and72 = and i32 %93, -3
  store i32 %and72, ptr %iFlags.addr, align 4
  br label %if.end73

if.end73:                                         ; preds = %for.end, %if.then61
  %94 = load ptr, ptr %pGen.addr, align 8
  %95 = load ptr, ptr %pNode.addr, align 8
  %pLeft74 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %pLeft74, align 8
  %97 = load i32, ptr %iFlags.addr, align 4
  %call75 = call i32 @GenStateEmitExprCode(ptr noundef %94, ptr noundef %96, i32 noundef %97)
  store i32 %call75, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  %cmp76 = icmp ne i32 %98, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  %99 = load i32, ptr %rc, align 4
  store i32 %99, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.end73
  %100 = load i32, ptr %iVmOp, align 4
  %cmp79 = icmp eq i32 %100, 18
  br i1 %cmp79, label %if.then80, label %if.else103

if.then80:                                        ; preds = %if.end78
  %101 = load ptr, ptr %pGen.addr, align 8
  %pVm81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %pVm81, align 8
  %call82 = call ptr @PH7_VmPeekInstr(ptr noundef %102)
  store ptr %call82, ptr %pInstr, align 8
  %103 = load ptr, ptr %pInstr, align 8
  %tobool83 = icmp ne ptr %103, null
  br i1 %tobool83, label %if.then84, label %if.end102

if.then84:                                        ; preds = %if.then80
  %104 = load ptr, ptr %pInstr, align 8
  %iOp85 = getelementptr inbounds nuw %struct.VmInstr, ptr %104, i32 0, i32 0
  %105 = load i8, ptr %iOp85, align 8
  %conv = zext i8 %105 to i32
  %cmp86 = icmp eq i32 %conv, 4
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.then84
  %106 = load ptr, ptr %pInstr, align 8
  %iP189 = getelementptr inbounds nuw %struct.VmInstr, ptr %106, i32 0, i32 1
  store i32 0, ptr %iP189, align 4
  br label %if.end101

if.else:                                          ; preds = %if.then84
  %107 = load ptr, ptr %pInstr, align 8
  %iOp90 = getelementptr inbounds nuw %struct.VmInstr, ptr %107, i32 0, i32 0
  %108 = load i8, ptr %iOp90, align 8
  %conv91 = zext i8 %108 to i32
  %cmp92 = icmp eq i32 %conv91, 72
  br i1 %cmp92, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %109 = load ptr, ptr %pInstr, align 8
  %iOp94 = getelementptr inbounds nuw %struct.VmInstr, ptr %109, i32 0, i32 0
  %110 = load i8, ptr %iOp94, align 8
  %conv95 = zext i8 %110 to i32
  %cmp96 = icmp eq i32 %conv95, 56
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %lor.lhs.false, %if.else
  %111 = load ptr, ptr %pInstr, align 8
  %iP299 = getelementptr inbounds nuw %struct.VmInstr, ptr %111, i32 0, i32 2
  store i32 1, ptr %iP299, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %lor.lhs.false
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then88
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then80
  br label %if.end148

if.else103:                                       ; preds = %if.end78
  %112 = load i32, ptr %iVmOp, align 4
  %cmp104 = icmp eq i32 %112, 5
  br i1 %cmp104, label %if.then106, label %if.else138

if.then106:                                       ; preds = %if.else103
  %113 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs109 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %113, i32 0, i32 7
  %pBase110 = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs109, i32 0, i32 1
  %114 = load ptr, ptr %pBase110, align 8
  store ptr %114, ptr %apNode107, align 8
  store i32 0, ptr %n108, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc125, %if.then106
  %115 = load i32, ptr %n108, align 4
  %116 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs112 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %116, i32 0, i32 7
  %nUsed113 = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs112, i32 0, i32 2
  %117 = load i32, ptr %nUsed113, align 8
  %cmp114 = icmp slt i32 %115, %117
  br i1 %cmp114, label %for.body116, label %for.end127

for.body116:                                      ; preds = %for.cond111
  %118 = load ptr, ptr %pGen.addr, align 8
  %119 = load ptr, ptr %apNode107, align 8
  %120 = load i32, ptr %n108, align 4
  %idxprom117 = sext i32 %120 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %119, i64 %idxprom117
  %121 = load ptr, ptr %arrayidx118, align 8
  %122 = load i32, ptr %iFlags.addr, align 4
  %and119 = and i32 %122, -2
  %call120 = call i32 @GenStateEmitExprCode(ptr noundef %118, ptr noundef %121, i32 noundef %and119)
  store i32 %call120, ptr %rc, align 4
  %123 = load i32, ptr %rc, align 4
  %cmp121 = icmp ne i32 %123, 0
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %for.body116
  %124 = load i32, ptr %rc, align 4
  store i32 %124, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %for.body116
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %125 = load i32, ptr %n108, align 4
  %inc126 = add nsw i32 %125, 1
  store i32 %inc126, ptr %n108, align 4
  br label %for.cond111, !llvm.loop !8

for.end127:                                       ; preds = %for.cond111
  %126 = load ptr, ptr %pNode.addr, align 8
  %aNodeArgs128 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %126, i32 0, i32 7
  %nUsed129 = getelementptr inbounds nuw %struct.SySet, ptr %aNodeArgs128, i32 0, i32 2
  %127 = load i32, ptr %nUsed129, align 8
  %cmp130 = icmp ugt i32 %127, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %for.end127
  store i32 1, ptr %iP1, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %for.end127
  %128 = load i32, ptr %iFlags.addr, align 4
  %and134 = and i32 %128, 1
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  store i32 1, ptr %iP2, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  br label %if.end147

if.else138:                                       ; preds = %if.else103
  %129 = load ptr, ptr %pNode.addr, align 8
  %pOp139 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %pOp139, align 8
  %iOp140 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %iOp140, align 8
  %cmp141 = icmp eq i32 %131, 54
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.else138
  %132 = load ptr, ptr %pGen.addr, align 8
  %pVm144 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %pVm144, align 8
  %call145 = call i32 @PH7_VmEmitInstr(ptr noundef %133, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.else138
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end137
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end102
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end58
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %nJmpIdx, align 4
  %134 = load ptr, ptr %pNode.addr, align 8
  %pRight150 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %134, i32 0, i32 2
  %135 = load ptr, ptr %pRight150, align 8
  %tobool151 = icmp ne ptr %135, null
  br i1 %tobool151, label %if.then152, label %if.end230

if.then152:                                       ; preds = %if.end149
  %136 = load i32, ptr %iVmOp, align 4
  %cmp153 = icmp eq i32 %136, 41
  br i1 %cmp153, label %if.then155, label %if.else158

if.then155:                                       ; preds = %if.then152
  %137 = load ptr, ptr %pGen.addr, align 8
  %pVm156 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %pVm156, align 8
  %call157 = call i32 @PH7_VmEmitInstr(ptr noundef %138, i32 noundef 11, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %nJmpIdx)
  br label %if.end172

if.else158:                                       ; preds = %if.then152
  %139 = load i32, ptr %iVmOp, align 4
  %cmp159 = icmp eq i32 %139, 42
  br i1 %cmp159, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else158
  %140 = load ptr, ptr %pGen.addr, align 8
  %pVm162 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %pVm162, align 8
  %call163 = call i32 @PH7_VmEmitInstr(ptr noundef %141, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %nJmpIdx)
  br label %if.end171

if.else164:                                       ; preds = %if.else158
  %142 = load ptr, ptr %pNode.addr, align 8
  %pOp165 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %pOp165, align 8
  %iPrec = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %143, i32 0, i32 2
  %144 = load i32, ptr %iPrec, align 4
  %cmp166 = icmp eq i32 %144, 18
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.else164
  %145 = load i32, ptr %iFlags.addr, align 4
  %or169 = or i32 %145, 1
  store i32 %or169, ptr %iFlags.addr, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.else164
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then161
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then155
  %146 = load ptr, ptr %pGen.addr, align 8
  %147 = load ptr, ptr %pNode.addr, align 8
  %pRight173 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %147, i32 0, i32 2
  %148 = load ptr, ptr %pRight173, align 8
  %149 = load i32, ptr %iFlags.addr, align 4
  %call174 = call i32 @GenStateEmitExprCode(ptr noundef %146, ptr noundef %148, i32 noundef %149)
  store i32 %call174, ptr %rc, align 4
  %150 = load i32, ptr %iVmOp, align 4
  %cmp175 = icmp eq i32 %150, 44
  br i1 %cmp175, label %if.then177, label %if.else208

if.then177:                                       ; preds = %if.end172
  %151 = load ptr, ptr %pGen.addr, align 8
  %pVm178 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %pVm178, align 8
  %call179 = call ptr @PH7_VmPeekInstr(ptr noundef %152)
  store ptr %call179, ptr %pInstr, align 8
  %153 = load ptr, ptr %pInstr, align 8
  %tobool180 = icmp ne ptr %153, null
  br i1 %tobool180, label %if.then181, label %if.end207

if.then181:                                       ; preds = %if.then177
  %154 = load ptr, ptr %pInstr, align 8
  %iOp182 = getelementptr inbounds nuw %struct.VmInstr, ptr %154, i32 0, i32 0
  %155 = load i8, ptr %iOp182, align 8
  %conv183 = zext i8 %155 to i32
  %cmp184 = icmp eq i32 %conv183, 7
  br i1 %cmp184, label %if.then186, label %if.else187

if.then186:                                       ; preds = %if.then181
  store i32 0, ptr %iVmOp, align 4
  br label %if.end206

if.else187:                                       ; preds = %if.then181
  %156 = load ptr, ptr %pInstr, align 8
  %iOp188 = getelementptr inbounds nuw %struct.VmInstr, ptr %156, i32 0, i32 0
  %157 = load i8, ptr %iOp188, align 8
  %conv189 = zext i8 %157 to i32
  %cmp190 = icmp eq i32 %conv189, 72
  br i1 %cmp190, label %if.then192, label %if.else193

if.then192:                                       ; preds = %if.else187
  store i32 1, ptr %iP2, align 4
  br label %if.end205

if.else193:                                       ; preds = %if.else187
  %158 = load ptr, ptr %pInstr, align 8
  %iOp194 = getelementptr inbounds nuw %struct.VmInstr, ptr %158, i32 0, i32 0
  %159 = load i8, ptr %iOp194, align 8
  %conv195 = zext i8 %159 to i32
  %cmp196 = icmp eq i32 %conv195, 5
  br i1 %cmp196, label %if.then198, label %if.else200

if.then198:                                       ; preds = %if.else193
  store i32 45, ptr %iVmOp, align 4
  %160 = load ptr, ptr %pInstr, align 8
  %iP1199 = getelementptr inbounds nuw %struct.VmInstr, ptr %160, i32 0, i32 1
  %161 = load i32, ptr %iP1199, align 4
  store i32 %161, ptr %iP1, align 4
  br label %if.end202

if.else200:                                       ; preds = %if.else193
  %162 = load ptr, ptr %pInstr, align 8
  %p3201 = getelementptr inbounds nuw %struct.VmInstr, ptr %162, i32 0, i32 3
  %163 = load ptr, ptr %p3201, align 8
  store ptr %163, ptr %p3, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else200, %if.then198
  %164 = load ptr, ptr %pGen.addr, align 8
  %pVm203 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %pVm203, align 8
  %call204 = call ptr @PH7_VmPopInstr(ptr noundef %165)
  br label %if.end205

if.end205:                                        ; preds = %if.end202, %if.then192
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.then186
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.then177
  br label %if.end229

if.else208:                                       ; preds = %if.end172
  %166 = load i32, ptr %iVmOp, align 4
  %cmp209 = icmp eq i32 %166, 71
  br i1 %cmp209, label %if.then211, label %if.end228

if.then211:                                       ; preds = %if.else208
  %167 = load ptr, ptr %pGen.addr, align 8
  %pVm212 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %pVm212, align 8
  %call213 = call ptr @PH7_VmPopInstr(ptr noundef %168)
  store ptr %call213, ptr %pInstr, align 8
  %169 = load ptr, ptr %pInstr, align 8
  %tobool214 = icmp ne ptr %169, null
  br i1 %tobool214, label %if.then215, label %if.end227

if.then215:                                       ; preds = %if.then211
  %170 = load ptr, ptr %pInstr, align 8
  %iOp216 = getelementptr inbounds nuw %struct.VmInstr, ptr %170, i32 0, i32 0
  %171 = load i8, ptr %iOp216, align 8
  %conv217 = zext i8 %171 to i32
  %cmp218 = icmp eq i32 %conv217, 5
  br i1 %cmp218, label %if.then220, label %if.else224

if.then220:                                       ; preds = %if.then215
  store i32 46, ptr %iVmOp, align 4
  %172 = load ptr, ptr %pInstr, align 8
  %iP1221 = getelementptr inbounds nuw %struct.VmInstr, ptr %172, i32 0, i32 1
  %173 = load i32, ptr %iP1221, align 4
  store i32 %173, ptr %iP1, align 4
  %174 = load ptr, ptr %pInstr, align 8
  %iP2222 = getelementptr inbounds nuw %struct.VmInstr, ptr %174, i32 0, i32 2
  %175 = load i32, ptr %iP2222, align 8
  store i32 %175, ptr %iP2, align 4
  %176 = load ptr, ptr %pInstr, align 8
  %p3223 = getelementptr inbounds nuw %struct.VmInstr, ptr %176, i32 0, i32 3
  %177 = load ptr, ptr %p3223, align 8
  store ptr %177, ptr %p3, align 8
  br label %if.end226

if.else224:                                       ; preds = %if.then215
  %178 = load ptr, ptr %pInstr, align 8
  %p3225 = getelementptr inbounds nuw %struct.VmInstr, ptr %178, i32 0, i32 3
  %179 = load ptr, ptr %p3225, align 8
  store ptr %179, ptr %p3, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.else224, %if.then220
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.then211
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.else208
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %if.end207
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end149
  %180 = load i32, ptr %iVmOp, align 4
  %cmp231 = icmp sgt i32 %180, 0
  br i1 %cmp231, label %if.then233, label %if.end312

if.then233:                                       ; preds = %if.end230
  %181 = load i32, ptr %iVmOp, align 4
  %cmp234 = icmp eq i32 %181, 52
  br i1 %cmp234, label %if.then239, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.then233
  %182 = load i32, ptr %iVmOp, align 4
  %cmp237 = icmp eq i32 %182, 53
  br i1 %cmp237, label %if.then239, label %if.else245

if.then239:                                       ; preds = %lor.lhs.false236, %if.then233
  %183 = load ptr, ptr %pNode.addr, align 8
  %iFlags240 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %183, i32 0, i32 5
  %184 = load i32, ptr %iFlags240, align 8
  %and241 = and i32 %184, 1
  %tobool242 = icmp ne i32 %and241, 0
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.then239
  store i32 1, ptr %iP1, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.then239
  br label %if.end297

if.else245:                                       ; preds = %lor.lhs.false236
  %185 = load i32, ptr %iVmOp, align 4
  %cmp246 = icmp eq i32 %185, 56
  br i1 %cmp246, label %if.then248, label %if.else272

if.then248:                                       ; preds = %if.else245
  %186 = load ptr, ptr %pGen.addr, align 8
  %pVm249 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %186, i32 0, i32 0
  %187 = load ptr, ptr %pVm249, align 8
  %call250 = call ptr @PH7_VmPeekInstr(ptr noundef %187)
  store ptr %call250, ptr %pInstr, align 8
  %188 = load ptr, ptr %pInstr, align 8
  %tobool251 = icmp ne ptr %188, null
  br i1 %tobool251, label %land.lhs.true, label %if.end271

land.lhs.true:                                    ; preds = %if.then248
  %189 = load ptr, ptr %pInstr, align 8
  %iOp252 = getelementptr inbounds nuw %struct.VmInstr, ptr %189, i32 0, i32 0
  %190 = load i8, ptr %iOp252, align 8
  %conv253 = zext i8 %190 to i32
  %cmp254 = icmp eq i32 %conv253, 18
  br i1 %cmp254, label %if.then256, label %if.end271

if.then256:                                       ; preds = %land.lhs.true
  %191 = load ptr, ptr %pGen.addr, align 8
  %pVm257 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %pVm257, align 8
  %call258 = call ptr @PH7_VmPeekNextInstr(ptr noundef %192)
  store ptr %call258, ptr %pPrev, align 8
  %193 = load ptr, ptr %pPrev, align 8
  %cmp259 = icmp eq ptr %193, null
  br i1 %cmp259, label %if.then266, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %if.then256
  %194 = load ptr, ptr %pPrev, align 8
  %iOp262 = getelementptr inbounds nuw %struct.VmInstr, ptr %194, i32 0, i32 0
  %195 = load i8, ptr %iOp262, align 8
  %conv263 = zext i8 %195 to i32
  %cmp264 = icmp ne i32 %conv263, 72
  br i1 %cmp264, label %if.then266, label %if.end270

if.then266:                                       ; preds = %lor.lhs.false261, %if.then256
  %196 = load ptr, ptr %pInstr, align 8
  %iP1267 = getelementptr inbounds nuw %struct.VmInstr, ptr %196, i32 0, i32 1
  %197 = load i32, ptr %iP1267, align 4
  store i32 %197, ptr %iP1, align 4
  %198 = load ptr, ptr %pGen.addr, align 8
  %pVm268 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %pVm268, align 8
  %call269 = call ptr @PH7_VmPopInstr(ptr noundef %199)
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %lor.lhs.false261
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %land.lhs.true, %if.then248
  br label %if.end296

if.else272:                                       ; preds = %if.else245
  %200 = load i32, ptr %iVmOp, align 4
  %cmp273 = icmp eq i32 %200, 72
  br i1 %cmp273, label %if.then275, label %if.end295

if.then275:                                       ; preds = %if.else272
  %201 = load ptr, ptr %pNode.addr, align 8
  %pOp276 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %pOp276, align 8
  %iOp277 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %202, i32 0, i32 1
  %203 = load i32, ptr %iOp277, align 8
  %cmp278 = icmp eq i32 %203, 4
  br i1 %cmp278, label %if.then280, label %if.end294

if.then280:                                       ; preds = %if.then275
  store i32 1, ptr %iP1, align 4
  %204 = load ptr, ptr %pGen.addr, align 8
  %pVm281 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %204, i32 0, i32 0
  %205 = load ptr, ptr %pVm281, align 8
  %call282 = call ptr @PH7_VmPeekInstr(ptr noundef %205)
  store ptr %call282, ptr %pInstr, align 8
  %206 = load ptr, ptr %pInstr, align 8
  %tobool283 = icmp ne ptr %206, null
  br i1 %tobool283, label %land.lhs.true284, label %if.end293

land.lhs.true284:                                 ; preds = %if.then280
  %207 = load ptr, ptr %pInstr, align 8
  %iOp285 = getelementptr inbounds nuw %struct.VmInstr, ptr %207, i32 0, i32 0
  %208 = load i8, ptr %iOp285, align 8
  %conv286 = zext i8 %208 to i32
  %cmp287 = icmp eq i32 %conv286, 3
  br i1 %cmp287, label %if.then289, label %if.end293

if.then289:                                       ; preds = %land.lhs.true284
  %209 = load ptr, ptr %pInstr, align 8
  %p3290 = getelementptr inbounds nuw %struct.VmInstr, ptr %209, i32 0, i32 3
  %210 = load ptr, ptr %p3290, align 8
  store ptr %210, ptr %p3, align 8
  %211 = load ptr, ptr %pGen.addr, align 8
  %pVm291 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %211, i32 0, i32 0
  %212 = load ptr, ptr %pVm291, align 8
  %call292 = call ptr @PH7_VmPopInstr(ptr noundef %212)
  br label %if.end293

if.end293:                                        ; preds = %if.then289, %land.lhs.true284, %if.then280
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.then275
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.else272
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.end271
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.end244
  %213 = load ptr, ptr %pGen.addr, align 8
  %pVm298 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %213, i32 0, i32 0
  %214 = load ptr, ptr %pVm298, align 8
  %215 = load i32, ptr %iVmOp, align 4
  %216 = load i32, ptr %iP1, align 4
  %217 = load i32, ptr %iP2, align 4
  %218 = load ptr, ptr %p3, align 8
  %call299 = call i32 @PH7_VmEmitInstr(ptr noundef %214, i32 noundef %215, i32 noundef %216, i32 noundef %217, ptr noundef %218, ptr noundef null)
  %219 = load i32, ptr %nJmpIdx, align 4
  %cmp300 = icmp ugt i32 %219, 0
  br i1 %cmp300, label %if.then302, label %if.end311

if.then302:                                       ; preds = %if.end297
  %220 = load ptr, ptr %pGen.addr, align 8
  %pVm303 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %pVm303, align 8
  %222 = load i32, ptr %nJmpIdx, align 4
  %call304 = call ptr @PH7_VmGetInstr(ptr noundef %221, i32 noundef %222)
  store ptr %call304, ptr %pInstr, align 8
  %223 = load ptr, ptr %pInstr, align 8
  %tobool305 = icmp ne ptr %223, null
  br i1 %tobool305, label %if.then306, label %if.end310

if.then306:                                       ; preds = %if.then302
  %224 = load ptr, ptr %pGen.addr, align 8
  %pVm307 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %224, i32 0, i32 0
  %225 = load ptr, ptr %pVm307, align 8
  %call308 = call i32 @PH7_VmInstrLength(ptr noundef %225)
  %226 = load ptr, ptr %pInstr, align 8
  %iP2309 = getelementptr inbounds nuw %struct.VmInstr, ptr %226, i32 0, i32 2
  store i32 %call308, ptr %iP2309, align 8
  br label %if.end310

if.end310:                                        ; preds = %if.then306, %if.then302
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end297
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.end230
  %227 = load i32, ptr %rc, align 4
  store i32 %227, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end312, %if.then123, %if.then77, %if.then68, %if.end57, %if.then44, %if.then26, %if.then18, %if.then7, %if.then
  %228 = load i32, ptr %retval, align 4
  ret i32 %228
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetInstr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPeekInstr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPopInstr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPeekNextInstr(ptr noundef) #0

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
