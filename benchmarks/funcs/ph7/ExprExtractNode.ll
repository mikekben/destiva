; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }

@.str.193 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.194 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.195 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.196 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.197 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.198 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprExtractNode(ptr noundef %pGen, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %ppNode.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nKeyword = alloca i32, align 4
  %pOp98 = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %ppNode, ptr %ppNode.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 104)
  store ptr %call, ptr %pNode, align 8
  %2 = load ptr, ptr %pNode, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pNode, align 8
  call void @SyZero(ptr noundef %3, i32 noundef 104)
  %4 = load ptr, ptr %pNode, align 8
  %aNodeArgs = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %pGen.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVm1, align 8
  %sAllocator2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 0
  %call3 = call i32 @SySetInit(ptr noundef %aNodeArgs, ptr noundef %sAllocator2, i32 noundef 8)
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn, align 8
  %9 = load ptr, ptr %pNode, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %9, i32 0, i32 3
  store ptr %8, ptr %pStart, align 8
  store ptr %8, ptr %pCur, align 8
  %10 = load ptr, ptr %pCur, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %pCur, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pUserData, align 8
  %14 = load ptr, ptr %pNode, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %14, i32 0, i32 0
  store ptr %13, ptr %pOp, align 8
  %15 = load ptr, ptr %pCur, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %pCur, align 8
  br label %if.end209

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %pCur, align 8
  %nType5 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nType5, align 8
  %and6 = and i32 %17, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else46

if.then8:                                         ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then8
  %18 = load ptr, ptr %pCur, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pEnd, align 8
  %cmp9 = icmp ult ptr %18, %20
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load ptr, ptr %pCur, align 8
  %nType10 = getelementptr inbounds nuw %struct.SyToken, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nType10, align 8
  %and11 = and i32 %22, 16
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load ptr, ptr %pCur, align 8
  %incdec.ptr13 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 1
  store ptr %incdec.ptr13, ptr %pCur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %25 = load ptr, ptr %pCur, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pEnd14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 13
  %27 = load ptr, ptr %pEnd14, align 8
  %cmp15 = icmp ult ptr %25, %27
  br i1 %cmp15, label %if.then16, label %if.end45

if.then16:                                        ; preds = %while.end
  %28 = load ptr, ptr %pCur, align 8
  %nType17 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType17, align 8
  %and18 = and i32 %29, 12
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.then16
  %30 = load ptr, ptr %pCur, align 8
  %incdec.ptr21 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 1
  store ptr %incdec.ptr21, ptr %pCur, align 8
  br label %if.end44

if.else22:                                        ; preds = %if.then16
  %31 = load ptr, ptr %pCur, align 8
  %nType23 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %nType23, align 8
  %and24 = and i32 %32, 64
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end43

if.then26:                                        ; preds = %if.else22
  %33 = load ptr, ptr %pCur, align 8
  %incdec.ptr27 = getelementptr inbounds nuw %struct.SyToken, ptr %33, i32 1
  store ptr %incdec.ptr27, ptr %pCur, align 8
  %34 = load ptr, ptr %pCur, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %pEnd28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 13
  %36 = load ptr, ptr %pEnd28, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %34, ptr noundef %36, i32 noundef 64, i32 noundef 128, ptr noundef %pCur)
  %37 = load ptr, ptr %pCur, align 8
  %38 = load ptr, ptr %pGen.addr, align 8
  %pEnd29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %pEnd29, align 8
  %cmp30 = icmp ult ptr %37, %39
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then26
  %40 = load ptr, ptr %pCur, align 8
  %incdec.ptr32 = getelementptr inbounds nuw %struct.SyToken, ptr %40, i32 1
  store ptr %incdec.ptr32, ptr %pCur, align 8
  br label %if.end42

if.else33:                                        ; preds = %if.then26
  %41 = load ptr, ptr %pGen.addr, align 8
  %42 = load ptr, ptr %pNode, align 8
  %pStart34 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %pStart34, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %nLine, align 4
  %call35 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %41, i32 noundef 1, i32 noundef %44, ptr noundef @.str.193)
  store i32 %call35, ptr %rc, align 4
  %45 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %45, -10
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.else33
  store i32 -12, ptr %rc, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.else33
  %46 = load ptr, ptr %pGen.addr, align 8
  %pVm39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %pVm39, align 8
  %sAllocator40 = getelementptr inbounds nuw %struct.ph7_vm, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pNode, align 8
  %call41 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator40, ptr noundef %48)
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then31
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.else22
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then20
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %while.end
  %50 = load ptr, ptr %pNode, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %50, i32 0, i32 6
  store ptr @PH7_CompileVariable, ptr %xCode, align 8
  br label %if.end208

if.else46:                                        ; preds = %if.else
  %51 = load ptr, ptr %pCur, align 8
  %nType47 = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %nType47, align 8
  %and48 = and i32 %52, 4
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.else172

if.then50:                                        ; preds = %if.else46
  %53 = load ptr, ptr %pCur, align 8
  %pUserData51 = getelementptr inbounds nuw %struct.SyToken, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %pUserData51, align 8
  %55 = ptrtoint ptr %54 to i64
  %conv = trunc i64 %55 to i32
  store i32 %conv, ptr %nKeyword, align 4
  %56 = load i32, ptr %nKeyword, align 4
  %cmp52 = icmp eq i32 %56, 512
  br i1 %cmp52, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then50
  %57 = load i32, ptr %nKeyword, align 4
  %cmp54 = icmp eq i32 %57, 15
  br i1 %cmp54, label %if.then56, label %if.else132

if.then56:                                        ; preds = %lor.lhs.false, %if.then50
  %58 = load ptr, ptr %pCur, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %58, i64 1
  %59 = load ptr, ptr %pGen.addr, align 8
  %pEnd57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %59, i32 0, i32 13
  %60 = load ptr, ptr %pEnd57, align 8
  %cmp58 = icmp uge ptr %arrayidx, %60
  br i1 %cmp58, label %if.then66, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.then56
  %61 = load ptr, ptr %pCur, align 8
  %arrayidx61 = getelementptr inbounds %struct.SyToken, ptr %61, i64 1
  %nType62 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx61, i32 0, i32 1
  %62 = load i32, ptr %nType62, align 8
  %and63 = and i32 %62, 512
  %cmp64 = icmp eq i32 %and63, 0
  br i1 %cmp64, label %if.then66, label %if.else69

if.then66:                                        ; preds = %lor.lhs.false60, %if.then56
  %63 = load ptr, ptr %pGen.addr, align 8
  %pEnd67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %63, i32 0, i32 13
  %64 = load ptr, ptr %pEnd67, align 8
  call void @ExprAssembleLiteral(ptr noundef %pCur, ptr noundef %64)
  %65 = load ptr, ptr %pNode, align 8
  %xCode68 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %65, i32 0, i32 6
  store ptr @PH7_CompileLiteral, ptr %xCode68, align 8
  br label %if.end131

if.else69:                                        ; preds = %lor.lhs.false60
  %66 = load ptr, ptr %pCur, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %66, i64 2
  store ptr %add.ptr, ptr %pCur, align 8
  %67 = load ptr, ptr %pCur, align 8
  %68 = load ptr, ptr %pGen.addr, align 8
  %pEnd70 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 13
  %69 = load ptr, ptr %pEnd70, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %67, ptr noundef %69, i32 noundef 512, i32 noundef 1024, ptr noundef %pCur)
  %70 = load ptr, ptr %pCur, align 8
  %71 = load ptr, ptr %pGen.addr, align 8
  %pEnd71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 13
  %72 = load ptr, ptr %pEnd71, align 8
  %cmp72 = icmp ult ptr %70, %72
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.else69
  %73 = load ptr, ptr %pCur, align 8
  %incdec.ptr75 = getelementptr inbounds nuw %struct.SyToken, ptr %73, i32 1
  store ptr %incdec.ptr75, ptr %pCur, align 8
  br label %if.end89

if.else76:                                        ; preds = %if.else69
  %74 = load ptr, ptr %pGen.addr, align 8
  %75 = load ptr, ptr %pNode, align 8
  %pStart77 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %75, i32 0, i32 3
  %76 = load ptr, ptr %pStart77, align 8
  %nLine78 = getelementptr inbounds nuw %struct.SyToken, ptr %76, i32 0, i32 2
  %77 = load i32, ptr %nLine78, align 4
  %78 = load i32, ptr %nKeyword, align 4
  %cmp79 = icmp eq i32 %78, 15
  %79 = zext i1 %cmp79 to i64
  %cond = select i1 %cmp79, ptr @.str.195, ptr @.str.196
  %call81 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %74, i32 noundef 1, i32 noundef %77, ptr noundef @.str.194, ptr noundef %cond)
  store i32 %call81, ptr %rc, align 4
  %80 = load i32, ptr %rc, align 4
  %cmp82 = icmp ne i32 %80, -10
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.else76
  store i32 -12, ptr %rc, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.else76
  %81 = load ptr, ptr %pGen.addr, align 8
  %pVm86 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pVm86, align 8
  %sAllocator87 = getelementptr inbounds nuw %struct.ph7_vm, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %pNode, align 8
  %call88 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator87, ptr noundef %83)
  %84 = load i32, ptr %rc, align 4
  store i32 %84, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then74
  %85 = load i32, ptr %nKeyword, align 4
  %cmp90 = icmp eq i32 %85, 15
  %86 = zext i1 %cmp90 to i64
  %cond92 = select i1 %cmp90, ptr @PH7_CompileList, ptr @PH7_CompileArray
  %87 = load ptr, ptr %pNode, align 8
  %xCode93 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %87, i32 0, i32 6
  store ptr %cond92, ptr %xCode93, align 8
  %88 = load ptr, ptr %pNode, align 8
  %xCode94 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %88, i32 0, i32 6
  %89 = load ptr, ptr %xCode94, align 8
  %cmp95 = icmp eq ptr %89, @PH7_CompileList
  br i1 %cmp95, label %if.then97, label %if.end130

if.then97:                                        ; preds = %if.end89
  %90 = load ptr, ptr %pCur, align 8
  %91 = load ptr, ptr %pGen.addr, align 8
  %pEnd99 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 13
  %92 = load ptr, ptr %pEnd99, align 8
  %cmp100 = icmp ult ptr %90, %92
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then97
  %93 = load ptr, ptr %pCur, align 8
  %pUserData102 = getelementptr inbounds nuw %struct.SyToken, ptr %93, i32 0, i32 3
  %94 = load ptr, ptr %pUserData102, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond103 = phi ptr [ %94, %cond.true ], [ null, %cond.false ]
  store ptr %cond103, ptr %pOp98, align 8
  %95 = load ptr, ptr %pCur, align 8
  %96 = load ptr, ptr %pGen.addr, align 8
  %pEnd104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %96, i32 0, i32 13
  %97 = load ptr, ptr %pEnd104, align 8
  %cmp105 = icmp uge ptr %95, %97
  br i1 %cmp105, label %if.then118, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %cond.end
  %98 = load ptr, ptr %pCur, align 8
  %nType108 = getelementptr inbounds nuw %struct.SyToken, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %nType108, align 8
  %and109 = and i32 %99, 32
  %cmp110 = icmp eq i32 %and109, 0
  br i1 %cmp110, label %if.then118, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false107
  %100 = load ptr, ptr %pOp98, align 8
  %cmp113 = icmp eq ptr %100, null
  br i1 %cmp113, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %101 = load ptr, ptr %pOp98, align 8
  %iVmOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %iVmOp, align 4
  %cmp116 = icmp ne i32 %102, 44
  br i1 %cmp116, label %if.then118, label %if.end129

if.then118:                                       ; preds = %lor.lhs.false115, %lor.lhs.false112, %lor.lhs.false107, %cond.end
  %103 = load ptr, ptr %pGen.addr, align 8
  %104 = load ptr, ptr %pNode, align 8
  %pStart119 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %pStart119, align 8
  %nLine120 = getelementptr inbounds nuw %struct.SyToken, ptr %105, i32 0, i32 2
  %106 = load i32, ptr %nLine120, align 4
  %call121 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %103, i32 noundef 1, i32 noundef %106, ptr noundef @.str.197)
  store i32 %call121, ptr %rc, align 4
  %107 = load i32, ptr %rc, align 4
  %cmp122 = icmp ne i32 %107, -10
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then118
  store i32 -12, ptr %rc, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.then118
  %108 = load ptr, ptr %pGen.addr, align 8
  %pVm126 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %pVm126, align 8
  %sAllocator127 = getelementptr inbounds nuw %struct.ph7_vm, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %pNode, align 8
  %call128 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator127, ptr noundef %110)
  %111 = load i32, ptr %rc, align 4
  store i32 %111, ptr %retval, align 4
  br label %return

if.end129:                                        ; preds = %lor.lhs.false115
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end89
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then66
  br label %if.end171

if.else132:                                       ; preds = %lor.lhs.false
  %112 = load i32, ptr %nKeyword, align 4
  %cmp133 = icmp eq i32 %112, 19
  br i1 %cmp133, label %if.then135, label %if.else155

if.then135:                                       ; preds = %if.else132
  %113 = load ptr, ptr %pCur, align 8
  %arrayidx136 = getelementptr inbounds %struct.SyToken, ptr %113, i64 1
  %114 = load ptr, ptr %pGen.addr, align 8
  %pEnd137 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %114, i32 0, i32 13
  %115 = load ptr, ptr %pEnd137, align 8
  %cmp138 = icmp uge ptr %arrayidx136, %115
  br i1 %cmp138, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.then135
  %116 = load ptr, ptr %pGen.addr, align 8
  %pEnd141 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %116, i32 0, i32 13
  %117 = load ptr, ptr %pEnd141, align 8
  call void @ExprAssembleLiteral(ptr noundef %pCur, ptr noundef %117)
  %118 = load ptr, ptr %pNode, align 8
  %xCode142 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %118, i32 0, i32 6
  store ptr @PH7_CompileLiteral, ptr %xCode142, align 8
  br label %if.end154

if.else143:                                       ; preds = %if.then135
  %119 = load ptr, ptr %pGen.addr, align 8
  %120 = load ptr, ptr %pGen.addr, align 8
  %pEnd144 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 13
  %121 = load ptr, ptr %pEnd144, align 8
  %call145 = call i32 @ExprAssembleAnnon(ptr noundef %119, ptr noundef %pCur, ptr noundef %121)
  store i32 %call145, ptr %rc, align 4
  %122 = load i32, ptr %rc, align 4
  %cmp146 = icmp ne i32 %122, 0
  br i1 %cmp146, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.else143
  %123 = load ptr, ptr %pGen.addr, align 8
  %pVm149 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %pVm149, align 8
  %sAllocator150 = getelementptr inbounds nuw %struct.ph7_vm, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %pNode, align 8
  %call151 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator150, ptr noundef %125)
  %126 = load i32, ptr %rc, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.else143
  %127 = load ptr, ptr %pNode, align 8
  %xCode153 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %127, i32 0, i32 6
  store ptr @PH7_CompileAnnonFunc, ptr %xCode153, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.end152, %if.then140
  br label %if.end170

if.else155:                                       ; preds = %if.else132
  %128 = load i32, ptr %nKeyword, align 4
  %call156 = call i32 @PH7_IsLangConstruct(i32 noundef %128, i8 noundef zeroext 0)
  %cmp157 = icmp eq i32 %call156, 1
  br i1 %cmp157, label %land.lhs.true, label %if.else166

land.lhs.true:                                    ; preds = %if.else155
  %129 = load ptr, ptr %pCur, align 8
  %arrayidx159 = getelementptr inbounds %struct.SyToken, ptr %129, i64 1
  %130 = load ptr, ptr %pGen.addr, align 8
  %pEnd160 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %130, i32 0, i32 13
  %131 = load ptr, ptr %pEnd160, align 8
  %cmp161 = icmp ult ptr %arrayidx159, %131
  br i1 %cmp161, label %if.then163, label %if.else166

if.then163:                                       ; preds = %land.lhs.true
  %132 = load ptr, ptr %pCur, align 8
  %133 = load ptr, ptr %pGen.addr, align 8
  %pEnd164 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %133, i32 0, i32 13
  %134 = load ptr, ptr %pEnd164, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %132, ptr noundef %134, i32 noundef 2624, i32 noundef 5248, ptr noundef %pCur)
  %135 = load ptr, ptr %pNode, align 8
  %xCode165 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %135, i32 0, i32 6
  store ptr @PH7_CompileLangConstruct, ptr %xCode165, align 8
  br label %if.end169

if.else166:                                       ; preds = %land.lhs.true, %if.else155
  %136 = load ptr, ptr %pGen.addr, align 8
  %pEnd167 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %136, i32 0, i32 13
  %137 = load ptr, ptr %pEnd167, align 8
  call void @ExprAssembleLiteral(ptr noundef %pCur, ptr noundef %137)
  %138 = load ptr, ptr %pNode, align 8
  %xCode168 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %138, i32 0, i32 6
  store ptr @PH7_CompileLiteral, ptr %xCode168, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.else166, %if.then163
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end154
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end131
  br label %if.end207

if.else172:                                       ; preds = %if.else46
  %139 = load ptr, ptr %pCur, align 8
  %nType173 = getelementptr inbounds nuw %struct.SyToken, ptr %139, i32 0, i32 1
  %140 = load i32, ptr %nType173, align 8
  %and174 = and i32 %140, 264
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then176, label %if.else179

if.then176:                                       ; preds = %if.else172
  %141 = load ptr, ptr %pGen.addr, align 8
  %pEnd177 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %141, i32 0, i32 13
  %142 = load ptr, ptr %pEnd177, align 8
  call void @ExprAssembleLiteral(ptr noundef %pCur, ptr noundef %142)
  %143 = load ptr, ptr %pNode, align 8
  %xCode178 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %143, i32 0, i32 6
  store ptr @PH7_CompileLiteral, ptr %xCode178, align 8
  br label %if.end206

if.else179:                                       ; preds = %if.else172
  %144 = load ptr, ptr %pCur, align 8
  %nType180 = getelementptr inbounds nuw %struct.SyToken, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %nType180, align 8
  %and181 = and i32 %145, 1185472
  %cmp182 = icmp eq i32 %and181, 0
  br i1 %cmp182, label %if.then184, label %if.end204

if.then184:                                       ; preds = %if.else179
  %146 = load ptr, ptr %pCur, align 8
  %nType185 = getelementptr inbounds nuw %struct.SyToken, ptr %146, i32 0, i32 1
  %147 = load i32, ptr %nType185, align 8
  %call186 = call ptr @PH7_GetNodeHandler(i32 noundef %147)
  %148 = load ptr, ptr %pNode, align 8
  %xCode187 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %148, i32 0, i32 6
  store ptr %call186, ptr %xCode187, align 8
  %149 = load ptr, ptr %pNode, align 8
  %xCode188 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %149, i32 0, i32 6
  %150 = load ptr, ptr %xCode188, align 8
  %cmp189 = icmp eq ptr %150, null
  br i1 %cmp189, label %if.then191, label %if.end203

if.then191:                                       ; preds = %if.then184
  %151 = load ptr, ptr %pGen.addr, align 8
  %152 = load ptr, ptr %pNode, align 8
  %pStart192 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %152, i32 0, i32 3
  %153 = load ptr, ptr %pStart192, align 8
  %nLine193 = getelementptr inbounds nuw %struct.SyToken, ptr %153, i32 0, i32 2
  %154 = load i32, ptr %nLine193, align 4
  %155 = load ptr, ptr %pNode, align 8
  %pStart194 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %155, i32 0, i32 3
  %156 = load ptr, ptr %pStart194, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %156, i32 0, i32 0
  %call195 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %151, i32 noundef 1, i32 noundef %154, ptr noundef @.str.198, ptr noundef %sData)
  store i32 %call195, ptr %rc, align 4
  %157 = load i32, ptr %rc, align 4
  %cmp196 = icmp ne i32 %157, -10
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then191
  store i32 -12, ptr %rc, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.then191
  %158 = load ptr, ptr %pGen.addr, align 8
  %pVm200 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %pVm200, align 8
  %sAllocator201 = getelementptr inbounds nuw %struct.ph7_vm, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %pNode, align 8
  %call202 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator201, ptr noundef %160)
  %161 = load i32, ptr %rc, align 4
  store i32 %161, ptr %retval, align 4
  br label %return

if.end203:                                        ; preds = %if.then184
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.else179
  %162 = load ptr, ptr %pCur, align 8
  %incdec.ptr205 = getelementptr inbounds nuw %struct.SyToken, ptr %162, i32 1
  store ptr %incdec.ptr205, ptr %pCur, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.end204, %if.then176
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end171
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end45
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then4
  %163 = load ptr, ptr %pCur, align 8
  %164 = load ptr, ptr %pNode, align 8
  %pEnd210 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %164, i32 0, i32 4
  store ptr %163, ptr %pEnd210, align 8
  %165 = load ptr, ptr %pNode, align 8
  %166 = load ptr, ptr %ppNode.addr, align 8
  store ptr %165, ptr %166, align 8
  %167 = load ptr, ptr %pCur, align 8
  %168 = load ptr, ptr %pGen.addr, align 8
  %pIn211 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %168, i32 0, i32 12
  store ptr %167, ptr %pIn211, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end209, %if.end199, %if.then148, %if.end125, %if.end85, %if.end38, %if.then
  %169 = load i32, ptr %retval, align 4
  ret i32 %169
}

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ExprAssembleLiteral(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileLiteral(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileList(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprAssembleAnnon(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileAnnonFunc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_IsLangConstruct(i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileLangConstruct(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_GetNodeHandler(i32 noundef) #0

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
