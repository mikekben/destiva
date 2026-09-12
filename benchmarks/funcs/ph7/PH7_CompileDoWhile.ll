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

@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.283 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.284 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.303 = external hidden unnamed_addr constant [43 x i8], align 1

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
define hidden i32 @PH7_CompileDoWhile(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pDoBlock = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %aPost = alloca ptr, align 8
  %pInstr = alloca ptr, align 8
  %nJumpDest = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pEnd, align 8
  store ptr null, ptr %pDoBlock, align 8
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
  %6 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmInstrLength(ptr noundef %7)
  %call3 = call i32 @GenStateEnterBlock(ptr noundef %5, i32 noundef 1, i32 noundef %call, ptr noundef null, ptr noundef %pDoBlock)
  store i32 %call3, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pDoBlock, align 8
  %bPostContinue = getelementptr inbounds nuw %struct.GenBlock, ptr %9, i32 0, i32 6
  store i8 1, ptr %bPostContinue, align 8
  %10 = load ptr, ptr %pGen.addr, align 8
  %call4 = call i32 @PH7_CompileBlock(ptr noundef %10, i32 noundef 0)
  store i32 %call4, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %11, -10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn8, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pEnd9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %pEnd9, align 8
  %cmp10 = icmp ult ptr %13, %15
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  %16 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %pIn12, align 8
  %nLine13 = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nLine13, align 4
  store i32 %18, ptr %nLine, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn15, align 8
  %21 = load ptr, ptr %pGen.addr, align 8
  %pEnd16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %pEnd16, align 8
  %cmp17 = icmp uge ptr %20, %22
  br i1 %cmp17, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn18, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nType, align 8
  %cmp19 = icmp ne i32 %25, 4
  br i1 %cmp19, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn21, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %pUserData, align 8
  %29 = ptrtoint ptr %28 to i64
  %conv = trunc i64 %29 to i32
  %cmp22 = icmp ne i32 %conv, 26
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %if.end14
  %30 = load ptr, ptr %pGen.addr, align 8
  %31 = load i32, ptr %nLine, align 4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %30, i32 noundef 1, i32 noundef %31, ptr noundef @.str.303)
  store i32 %call25, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %32, -10
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  store i32 -10, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then24
  br label %Synchronize

if.end30:                                         ; preds = %lor.lhs.false20
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pIn31, align 8
  %incdec.ptr32 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 1
  store ptr %incdec.ptr32, ptr %pIn31, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn33, align 8
  %37 = load ptr, ptr %pGen.addr, align 8
  %pEnd34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 13
  %38 = load ptr, ptr %pEnd34, align 8
  %cmp35 = icmp uge ptr %36, %38
  br i1 %cmp35, label %if.then42, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end30
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn38, align 8
  %nType39 = getelementptr inbounds nuw %struct.SyToken, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nType39, align 8
  %and = and i32 %41, 512
  %cmp40 = icmp eq i32 %and, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %lor.lhs.false37, %if.end30
  %42 = load ptr, ptr %pGen.addr, align 8
  %43 = load i32, ptr %nLine, align 4
  %call43 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %42, i32 noundef 1, i32 noundef %43, ptr noundef @.str.283)
  store i32 %call43, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %44, -10
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then42
  store i32 -10, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.then42
  br label %Synchronize

if.end48:                                         ; preds = %lor.lhs.false37
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn49, align 8
  %incdec.ptr50 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 1
  store ptr %incdec.ptr50, ptr %pIn49, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn51, align 8
  %49 = load ptr, ptr %pGen.addr, align 8
  %pEnd52 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 13
  %50 = load ptr, ptr %pEnd52, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %48, ptr noundef %50, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn53, align 8
  %53 = load ptr, ptr %pEnd, align 8
  %cmp54 = icmp eq ptr %52, %53
  br i1 %cmp54, label %if.then60, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end48
  %54 = load ptr, ptr %pEnd, align 8
  %55 = load ptr, ptr %pGen.addr, align 8
  %pEnd57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 13
  %56 = load ptr, ptr %pEnd57, align 8
  %cmp58 = icmp uge ptr %54, %56
  br i1 %cmp58, label %if.then60, label %if.end66

if.then60:                                        ; preds = %lor.lhs.false56, %if.end48
  %57 = load ptr, ptr %pGen.addr, align 8
  %58 = load i32, ptr %nLine, align 4
  %call61 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %57, i32 noundef 1, i32 noundef %58, ptr noundef @.str.284)
  store i32 %call61, ptr %rc, align 4
  %59 = load i32, ptr %rc, align 4
  %cmp62 = icmp eq i32 %59, -10
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then60
  store i32 -10, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.then60
  br label %Synchronize

if.end66:                                         ; preds = %lor.lhs.false56
  %60 = load ptr, ptr %pDoBlock, align 8
  %aPostContFix = getelementptr inbounds nuw %struct.GenBlock, ptr %60, i32 0, i32 7
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix, i32 0, i32 2
  %61 = load i32, ptr %nUsed, align 8
  %cmp67 = icmp ugt i32 %61, 0
  br i1 %cmp67, label %if.then69, label %if.end81

if.then69:                                        ; preds = %if.end66
  %62 = load ptr, ptr %pDoBlock, align 8
  %aPostContFix70 = getelementptr inbounds nuw %struct.GenBlock, ptr %62, i32 0, i32 7
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix70, i32 0, i32 1
  %63 = load ptr, ptr %pBase, align 8
  store ptr %63, ptr %aPost, align 8
  %64 = load ptr, ptr %pGen.addr, align 8
  %pVm71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %pVm71, align 8
  %call72 = call i32 @PH7_VmInstrLength(ptr noundef %65)
  store i32 %call72, ptr %nJumpDest, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then69
  %66 = load i32, ptr %n, align 4
  %67 = load ptr, ptr %pDoBlock, align 8
  %aPostContFix73 = getelementptr inbounds nuw %struct.GenBlock, ptr %67, i32 0, i32 7
  %nUsed74 = getelementptr inbounds nuw %struct.SySet, ptr %aPostContFix73, i32 0, i32 2
  %68 = load i32, ptr %nUsed74, align 8
  %cmp75 = icmp ult i32 %66, %68
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load ptr, ptr %pGen.addr, align 8
  %pVm77 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %pVm77, align 8
  %71 = load ptr, ptr %aPost, align 8
  %72 = load i32, ptr %n, align 4
  %idxprom = zext i32 %72 to i64
  %arrayidx = getelementptr inbounds nuw %struct.JumpFixup, ptr %71, i64 %idxprom
  %nInstrIdx = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx, i32 0, i32 1
  %73 = load i32, ptr %nInstrIdx, align 4
  %call78 = call ptr @PH7_VmGetInstr(ptr noundef %70, i32 noundef %73)
  store ptr %call78, ptr %pInstr, align 8
  %74 = load ptr, ptr %pInstr, align 8
  %tobool = icmp ne ptr %74, null
  br i1 %tobool, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.body
  %75 = load i32, ptr %nJumpDest, align 4
  %76 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %76, i32 0, i32 2
  store i32 %75, ptr %iP2, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end80
  %77 = load i32, ptr %n, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end81

if.end81:                                         ; preds = %for.end, %if.end66
  %78 = load ptr, ptr %pGen.addr, align 8
  %pEnd82 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 13
  %79 = load ptr, ptr %pEnd82, align 8
  store ptr %79, ptr %pTmp, align 8
  %80 = load ptr, ptr %pEnd, align 8
  %81 = load ptr, ptr %pGen.addr, align 8
  %pEnd83 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 13
  store ptr %80, ptr %pEnd83, align 8
  %82 = load ptr, ptr %pGen.addr, align 8
  %call84 = call i32 @PH7_CompileExpr(ptr noundef %82, i32 noundef 0, ptr noundef null)
  store i32 %call84, ptr %rc, align 4
  %83 = load i32, ptr %rc, align 4
  %cmp85 = icmp eq i32 %83, -10
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end81
  store i32 -10, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end81
  br label %while.cond

while.cond:                                       ; preds = %if.end99, %if.end88
  %84 = load ptr, ptr %pGen.addr, align 8
  %pIn89 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 12
  %85 = load ptr, ptr %pIn89, align 8
  %86 = load ptr, ptr %pEnd, align 8
  %cmp90 = icmp ult ptr %85, %86
  br i1 %cmp90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %87 = load ptr, ptr %pGen.addr, align 8
  %88 = load ptr, ptr %pGen.addr, align 8
  %pIn92 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %88, i32 0, i32 12
  %89 = load ptr, ptr %pIn92, align 8
  %nLine93 = getelementptr inbounds nuw %struct.SyToken, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %nLine93, align 4
  %91 = load ptr, ptr %pGen.addr, align 8
  %pIn94 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 12
  %92 = load ptr, ptr %pIn94, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 0, i32 0
  %call95 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %87, i32 noundef 1, i32 noundef %90, ptr noundef @.str.229, ptr noundef %sData)
  store i32 %call95, ptr %rc, align 4
  %93 = load i32, ptr %rc, align 4
  %cmp96 = icmp eq i32 %93, -10
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %while.body
  store i32 -10, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %while.body
  %94 = load ptr, ptr %pGen.addr, align 8
  %pIn100 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 12
  %95 = load ptr, ptr %pIn100, align 8
  %incdec.ptr101 = getelementptr inbounds nuw %struct.SyToken, ptr %95, i32 1
  store ptr %incdec.ptr101, ptr %pIn100, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %96 = load ptr, ptr %pEnd, align 8
  %arrayidx102 = getelementptr inbounds %struct.SyToken, ptr %96, i64 1
  %97 = load ptr, ptr %pGen.addr, align 8
  %pIn103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %97, i32 0, i32 12
  store ptr %arrayidx102, ptr %pIn103, align 8
  %98 = load ptr, ptr %pTmp, align 8
  %99 = load ptr, ptr %pGen.addr, align 8
  %pEnd104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 13
  store ptr %98, ptr %pEnd104, align 8
  %100 = load ptr, ptr %pGen.addr, align 8
  %pVm105 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %pVm105, align 8
  %102 = load ptr, ptr %pDoBlock, align 8
  %nFirstInstr = getelementptr inbounds nuw %struct.GenBlock, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %nFirstInstr, align 8
  %call106 = call i32 @PH7_VmEmitInstr(ptr noundef %101, i32 noundef 12, i32 noundef 0, i32 noundef %103, ptr noundef null, ptr noundef null)
  %104 = load ptr, ptr %pDoBlock, align 8
  %105 = load ptr, ptr %pGen.addr, align 8
  %pVm107 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %pVm107, align 8
  %call108 = call i32 @PH7_VmInstrLength(ptr noundef %106)
  %call109 = call i32 @GenStateFixJumps(ptr noundef %104, i32 noundef -1, i32 noundef %call108)
  %107 = load ptr, ptr %pGen.addr, align 8
  %call110 = call i32 @GenStateLeaveBlock(ptr noundef %107, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end65, %if.end47, %if.end29
  br label %while.cond111

while.cond111:                                    ; preds = %while.body121, %Synchronize
  %108 = load ptr, ptr %pGen.addr, align 8
  %pIn112 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %108, i32 0, i32 12
  %109 = load ptr, ptr %pIn112, align 8
  %110 = load ptr, ptr %pGen.addr, align 8
  %pEnd113 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 13
  %111 = load ptr, ptr %pEnd113, align 8
  %cmp114 = icmp ult ptr %109, %111
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond111
  %112 = load ptr, ptr %pGen.addr, align 8
  %pIn116 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %112, i32 0, i32 12
  %113 = load ptr, ptr %pIn116, align 8
  %nType117 = getelementptr inbounds nuw %struct.SyToken, ptr %113, i32 0, i32 1
  %114 = load i32, ptr %nType117, align 8
  %and118 = and i32 %114, 262208
  %cmp119 = icmp eq i32 %and118, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond111
  %115 = phi i1 [ false, %while.cond111 ], [ %cmp119, %land.rhs ]
  br i1 %115, label %while.body121, label %while.end124

while.body121:                                    ; preds = %land.end
  %116 = load ptr, ptr %pGen.addr, align 8
  %pIn122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %116, i32 0, i32 12
  %117 = load ptr, ptr %pIn122, align 8
  %incdec.ptr123 = getelementptr inbounds nuw %struct.SyToken, ptr %117, i32 1
  store ptr %incdec.ptr123, ptr %pIn122, align 8
  br label %while.cond111, !llvm.loop !9

while.end124:                                     ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end124, %while.end, %if.then98, %if.then87, %if.then64, %if.then46, %if.then28, %if.then6, %if.then
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
