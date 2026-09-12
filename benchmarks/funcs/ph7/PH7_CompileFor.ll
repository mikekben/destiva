; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.JumpFixup = type { i32, i32, %struct.SyString, ptr, i32 }
%struct.VmInstr = type { i8, i32, i32, ptr }

@.str.278 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.279 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.280 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.281 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.282 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetInstr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileFor(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pPostStart = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pForBlock = alloca ptr, align 8
  %nFalseJump = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %aPost = alloca ptr, align 8
  %pInstr = alloca ptr, align 8
  %nJumpDest = alloca i32, align 4
  %n = alloca i32, align 4
  %pTmpIn = alloca ptr, align 8
  %pTmpEnd = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pEnd, align 8
  store ptr null, ptr %pForBlock, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd4, align 8
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn5, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 512
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.278)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn10, align 8
  %incdec.ptr11 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr11, ptr %pIn10, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn12, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pEnd13, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %18, ptr noundef %20, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn14, align 8
  %23 = load ptr, ptr %pEnd, align 8
  %cmp15 = icmp eq ptr %22, %23
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end9
  %24 = load ptr, ptr %pEnd, align 8
  %25 = load ptr, ptr %pGen.addr, align 8
  %pEnd17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 13
  %26 = load ptr, ptr %pEnd17, align 8
  %cmp18 = icmp uge ptr %24, %26
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %lor.lhs.false16, %if.end9
  %27 = load ptr, ptr %pGen.addr, align 8
  %28 = load i32, ptr %nLine, align 4
  %call20 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %27, i32 noundef 1, i32 noundef %28, ptr noundef @.str.279)
  store i32 %call20, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %29, -10
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i32 -10, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then19
  %30 = load ptr, ptr %pEnd, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 12
  store ptr %30, ptr %pIn24, align 8
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn25, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pEnd26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pEnd26, align 8
  %cmp27 = icmp ult ptr %33, %35
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn29, align 8
  %incdec.ptr30 = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 1
  store ptr %incdec.ptr30, ptr %pIn29, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false16
  %38 = load ptr, ptr %pGen.addr, align 8
  %pEnd33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %pEnd33, align 8
  store ptr %39, ptr %pTmp, align 8
  %40 = load ptr, ptr %pEnd, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pEnd34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 13
  store ptr %40, ptr %pEnd34, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %call35 = call i32 @PH7_CompileExpr(ptr noundef %42, i32 noundef 0, ptr noundef null)
  store i32 %call35, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp36 = icmp eq i32 %43, -10
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  store i32 -10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end32
  %44 = load i32, ptr %rc, align 4
  %cmp38 = icmp ne i32 %44, -3
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.else
  %45 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pVm, align 8
  %call40 = call i32 @PH7_VmEmitInstr(ptr noundef %46, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn43, align 8
  %nType44 = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %nType44, align 8
  %and45 = and i32 %49, 262144
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.end42
  %50 = load ptr, ptr %pGen.addr, align 8
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn48, align 8
  %nLine49 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %nLine49, align 4
  %call50 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %50, i32 noundef 1, i32 noundef %53, ptr noundef @.str.280)
  store i32 %call50, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %54, -10
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then47
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end42
  %55 = load ptr, ptr %pGen.addr, align 8
  %pIn55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 12
  %56 = load ptr, ptr %pIn55, align 8
  %incdec.ptr56 = getelementptr inbounds nuw %struct.SyToken, ptr %56, i32 1
  store ptr %incdec.ptr56, ptr %pIn55, align 8
  %57 = load ptr, ptr %pGen.addr, align 8
  %58 = load ptr, ptr %pGen.addr, align 8
  %pVm57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pVm57, align 8
  %call58 = call i32 @PH7_VmInstrLength(ptr noundef %59)
  %call59 = call i32 @GenStateEnterBlock(ptr noundef %57, i32 noundef 1, i32 noundef %call58, ptr noundef null, ptr noundef %pForBlock)
  store i32 %call59, ptr %rc, align 4
  %60 = load i32, ptr %rc, align 4
  %cmp60 = icmp ne i32 %60, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end54
  store i32 -10, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end54
  %61 = load ptr, ptr %pForBlock, align 8
  %bPostContinue = getelementptr inbounds nuw %struct.GenBlock, ptr %61, i32 0, i32 6
  store i8 1, ptr %bPostContinue, align 8
  %62 = load ptr, ptr %pGen.addr, align 8
  %call63 = call i32 @PH7_CompileExpr(ptr noundef %62, i32 noundef 0, ptr noundef null)
  store i32 %call63, ptr %rc, align 4
  %63 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %63, -10
  br i1 %cmp64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.end62
  store i32 -10, ptr %retval, align 4
  br label %return

if.else66:                                        ; preds = %if.end62
  %64 = load i32, ptr %rc, align 4
  %cmp67 = icmp ne i32 %64, -3
  br i1 %cmp67, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.else66
  %65 = load ptr, ptr %pGen.addr, align 8
  %pVm69 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %pVm69, align 8
  %call70 = call i32 @PH7_VmEmitInstr(ptr noundef %66, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nFalseJump)
  %67 = load ptr, ptr %pForBlock, align 8
  %68 = load i32, ptr %nFalseJump, align 4
  %call71 = call i32 @GenStateNewJumpFixup(ptr noundef %67, i32 noundef 11, i32 noundef %68)
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.else66
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  %69 = load ptr, ptr %pGen.addr, align 8
  %pIn74 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pIn74, align 8
  %nType75 = getelementptr inbounds nuw %struct.SyToken, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %nType75, align 8
  %and76 = and i32 %71, 262144
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %if.then78, label %if.end85

if.then78:                                        ; preds = %if.end73
  %72 = load ptr, ptr %pGen.addr, align 8
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn79 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn79, align 8
  %nLine80 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %nLine80, align 4
  %call81 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %72, i32 noundef 1, i32 noundef %75, ptr noundef @.str.281)
  store i32 %call81, ptr %rc, align 4
  %76 = load i32, ptr %rc, align 4
  %cmp82 = icmp eq i32 %76, -10
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then78
  store i32 -10, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then78
  store i32 0, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end73
  %77 = load ptr, ptr %pGen.addr, align 8
  %pIn86 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %pIn86, align 8
  %incdec.ptr87 = getelementptr inbounds nuw %struct.SyToken, ptr %78, i32 1
  store ptr %incdec.ptr87, ptr %pIn86, align 8
  %79 = load ptr, ptr %pGen.addr, align 8
  %pIn88 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %pIn88, align 8
  store ptr %80, ptr %pPostStart, align 8
  %81 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %81, i64 1
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn89 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn89, align 8
  %83 = load ptr, ptr %pTmp, align 8
  %84 = load ptr, ptr %pGen.addr, align 8
  %pEnd90 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 13
  store ptr %83, ptr %pEnd90, align 8
  %85 = load ptr, ptr %pGen.addr, align 8
  %call91 = call i32 @PH7_CompileBlock(ptr noundef %85, i32 noundef 16777216)
  store i32 %call91, ptr %rc, align 4
  %86 = load i32, ptr %rc, align 4
  %cmp92 = icmp eq i32 %86, -10
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end85
  store i32 -10, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.end85
  %87 = load ptr, ptr %pForBlock, align 8
  %aPostContFix = getelementptr inbounds nuw %struct.GenBlock, ptr %87, i32 0, i32 7
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix, i32 0, i32 2
  %88 = load i32, ptr %nUsed, align 8
  %cmp95 = icmp ugt i32 %88, 0
  br i1 %cmp95, label %if.then96, label %if.end108

if.then96:                                        ; preds = %if.end94
  %89 = load ptr, ptr %pForBlock, align 8
  %aPostContFix97 = getelementptr inbounds nuw %struct.GenBlock, ptr %89, i32 0, i32 7
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix97, i32 0, i32 1
  %90 = load ptr, ptr %pBase, align 8
  store ptr %90, ptr %aPost, align 8
  %91 = load ptr, ptr %pGen.addr, align 8
  %pVm98 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %pVm98, align 8
  %call99 = call i32 @PH7_VmInstrLength(ptr noundef %92)
  store i32 %call99, ptr %nJumpDest, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then96
  %93 = load i32, ptr %n, align 4
  %94 = load ptr, ptr %pForBlock, align 8
  %aPostContFix100 = getelementptr inbounds nuw %struct.GenBlock, ptr %94, i32 0, i32 7
  %nUsed101 = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix100, i32 0, i32 2
  %95 = load i32, ptr %nUsed101, align 8
  %cmp102 = icmp ult i32 %93, %95
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %96 = load ptr, ptr %pGen.addr, align 8
  %pVm103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %pVm103, align 8
  %98 = load ptr, ptr %aPost, align 8
  %99 = load i32, ptr %n, align 4
  %idxprom = zext i32 %99 to i64
  %arrayidx104 = getelementptr inbounds nuw %struct.JumpFixup, ptr %98, i64 %idxprom
  %nInstrIdx = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx104, i32 0, i32 1
  %100 = load i32, ptr %nInstrIdx, align 4
  %call105 = call ptr @PH7_VmGetInstr(ptr noundef %97, i32 noundef %100)
  store ptr %call105, ptr %pInstr, align 8
  %101 = load ptr, ptr %pInstr, align 8
  %tobool = icmp ne ptr %101, null
  br i1 %tobool, label %if.then106, label %if.end107

if.then106:                                       ; preds = %for.body
  %102 = load i32, ptr %nJumpDest, align 4
  %103 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %103, i32 0, i32 2
  store i32 %102, ptr %iP2, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end107
  %104 = load i32, ptr %n, align 4
  %inc = add i32 %104, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end108

if.end108:                                        ; preds = %for.end, %if.end94
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end108
  %105 = load ptr, ptr %pPostStart, align 8
  %106 = load ptr, ptr %pEnd, align 8
  %cmp109 = icmp ult ptr %105, %106
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %107 = load ptr, ptr %pPostStart, align 8
  %nType110 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %nType110, align 8
  %and111 = and i32 %108, 262144
  %tobool112 = icmp ne i32 %and111, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %109 = phi i1 [ false, %while.cond ], [ %tobool112, %land.rhs ]
  br i1 %109, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %110 = load ptr, ptr %pPostStart, align 8
  %incdec.ptr113 = getelementptr inbounds nuw %struct.SyToken, ptr %110, i32 1
  store ptr %incdec.ptr113, ptr %pPostStart, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %111 = load ptr, ptr %pPostStart, align 8
  %112 = load ptr, ptr %pEnd, align 8
  %cmp114 = icmp ult ptr %111, %112
  br i1 %cmp114, label %if.then115, label %if.end143

if.then115:                                       ; preds = %while.end
  %113 = load ptr, ptr %pGen.addr, align 8
  %pIn116 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %pIn116, align 8
  store ptr %114, ptr %pTmpIn, align 8
  %115 = load ptr, ptr %pGen.addr, align 8
  %pEnd117 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %115, i32 0, i32 13
  %116 = load ptr, ptr %pEnd117, align 8
  store ptr %116, ptr %pTmpEnd, align 8
  %117 = load ptr, ptr %pPostStart, align 8
  %118 = load ptr, ptr %pGen.addr, align 8
  %pIn118 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %118, i32 0, i32 12
  store ptr %117, ptr %pIn118, align 8
  %119 = load ptr, ptr %pEnd, align 8
  %120 = load ptr, ptr %pGen.addr, align 8
  %pEnd119 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 13
  store ptr %119, ptr %pEnd119, align 8
  %121 = load ptr, ptr %pGen.addr, align 8
  %call120 = call i32 @PH7_CompileExpr(ptr noundef %121, i32 noundef 0, ptr noundef null)
  store i32 %call120, ptr %rc, align 4
  %122 = load ptr, ptr %pGen.addr, align 8
  %pIn121 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %122, i32 0, i32 12
  %123 = load ptr, ptr %pIn121, align 8
  %124 = load ptr, ptr %pGen.addr, align 8
  %pEnd122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %124, i32 0, i32 13
  %125 = load ptr, ptr %pEnd122, align 8
  %cmp123 = icmp ult ptr %123, %125
  br i1 %cmp123, label %if.then124, label %if.end131

if.then124:                                       ; preds = %if.then115
  %126 = load ptr, ptr %pGen.addr, align 8
  %127 = load ptr, ptr %pGen.addr, align 8
  %pIn125 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %127, i32 0, i32 12
  %128 = load ptr, ptr %pIn125, align 8
  %nLine126 = getelementptr inbounds nuw %struct.SyToken, ptr %128, i32 0, i32 2
  %129 = load i32, ptr %nLine126, align 4
  %call127 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %126, i32 noundef 1, i32 noundef %129, ptr noundef @.str.282)
  store i32 %call127, ptr %rc, align 4
  %130 = load i32, ptr %rc, align 4
  %cmp128 = icmp eq i32 %130, -10
  br i1 %cmp128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then124
  store i32 -10, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.then124
  store i32 0, ptr %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.then115
  %131 = load ptr, ptr %pTmpIn, align 8
  %132 = load ptr, ptr %pGen.addr, align 8
  %pIn132 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %132, i32 0, i32 12
  store ptr %131, ptr %pIn132, align 8
  %133 = load ptr, ptr %pTmpEnd, align 8
  %134 = load ptr, ptr %pGen.addr, align 8
  %pEnd133 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %134, i32 0, i32 13
  store ptr %133, ptr %pEnd133, align 8
  %135 = load i32, ptr %rc, align 4
  %cmp134 = icmp eq i32 %135, -10
  br i1 %cmp134, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.end131
  store i32 -10, ptr %retval, align 4
  br label %return

if.else136:                                       ; preds = %if.end131
  %136 = load i32, ptr %rc, align 4
  %cmp137 = icmp ne i32 %136, -3
  br i1 %cmp137, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.else136
  %137 = load ptr, ptr %pGen.addr, align 8
  %pVm139 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %pVm139, align 8
  %call140 = call i32 @PH7_VmEmitInstr(ptr noundef %138, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.else136
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %while.end
  %139 = load ptr, ptr %pGen.addr, align 8
  %pVm144 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %pVm144, align 8
  %141 = load ptr, ptr %pForBlock, align 8
  %nFirstInstr = getelementptr inbounds nuw %struct.GenBlock, ptr %141, i32 0, i32 2
  %142 = load i32, ptr %nFirstInstr, align 8
  %call145 = call i32 @PH7_VmEmitInstr(ptr noundef %140, i32 noundef 10, i32 noundef 0, i32 noundef %142, ptr noundef null, ptr noundef null)
  %143 = load ptr, ptr %pForBlock, align 8
  %144 = load ptr, ptr %pGen.addr, align 8
  %pVm146 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %pVm146, align 8
  %call147 = call i32 @PH7_VmInstrLength(ptr noundef %145)
  %call148 = call i32 @GenStateFixJumps(ptr noundef %143, i32 noundef -1, i32 noundef %call147)
  %146 = load ptr, ptr %pGen.addr, align 8
  %call149 = call i32 @GenStateLeaveBlock(ptr noundef %146, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end143, %if.then135, %if.end130, %if.then129, %if.then93, %if.end84, %if.then83, %if.then65, %if.then61, %if.end53, %if.then52, %if.then37, %if.end31, %if.then22, %if.end, %if.then8
  %147 = load i32, ptr %retval, align 4
  ret i32 %147
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNewJumpFixup(ptr noundef, i32 noundef, i32 noundef) #0

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
