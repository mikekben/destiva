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

@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.276 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.277 = external hidden unnamed_addr constant [28 x i8], align 1

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
define hidden i32 @PH7_CompileIf(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pCondBlock = alloca ptr, align 8
  %nJumpIdx = alloca i32, align 4
  %nKeyID = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pEnd, align 8
  store ptr null, ptr %pCondBlock, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn1, align 8
  store ptr %3, ptr %pToken, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmInstrLength(ptr noundef %6)
  %call2 = call i32 @GenStateEnterBlock(ptr noundef %4, i32 noundef 4, i32 noundef %call, ptr noundef null, ptr noundef %pCondBlock)
  store i32 %call2, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end100, %if.end
  %8 = load ptr, ptr %pToken, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pEnd3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pEnd3, align 8
  %cmp4 = icmp uge ptr %8, %10
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %11 = load ptr, ptr %pToken, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nType, align 8
  %and = and i32 %12, 512
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then6, label %if.end16

if.then6:                                         ; preds = %lor.lhs.false, %for.cond
  %13 = load ptr, ptr %pToken, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pEnd7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %pEnd7, align 8
  %cmp8 = icmp uge ptr %13, %15
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %16 = load ptr, ptr %pToken, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.SyToken, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %pToken, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6
  %17 = load ptr, ptr %pGen.addr, align 8
  %18 = load ptr, ptr %pToken, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nLine, align 4
  %call12 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %17, i32 noundef 1, i32 noundef %19, ptr noundef @.str.276)
  store i32 %call12, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %20, -10
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 -10, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  br label %Synchronize

if.end16:                                         ; preds = %lor.lhs.false
  %21 = load ptr, ptr %pToken, align 8
  %incdec.ptr17 = getelementptr inbounds nuw %struct.SyToken, ptr %21, i32 1
  store ptr %incdec.ptr17, ptr %pToken, align 8
  %22 = load ptr, ptr %pToken, align 8
  %23 = load ptr, ptr %pGen.addr, align 8
  %pEnd18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %pEnd18, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %22, ptr noundef %24, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %25 = load ptr, ptr %pToken, align 8
  %26 = load ptr, ptr %pEnd, align 8
  %cmp19 = icmp uge ptr %25, %26
  br i1 %cmp19, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end16
  %27 = load ptr, ptr %pEnd, align 8
  %nType21 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nType21, align 8
  %and22 = and i32 %28, 1024
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then24, label %if.end35

if.then24:                                        ; preds = %lor.lhs.false20, %if.end16
  %29 = load ptr, ptr %pToken, align 8
  %30 = load ptr, ptr %pGen.addr, align 8
  %pEnd25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 13
  %31 = load ptr, ptr %pEnd25, align 8
  %cmp26 = icmp uge ptr %29, %31
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  %32 = load ptr, ptr %pToken, align 8
  %incdec.ptr28 = getelementptr inbounds %struct.SyToken, ptr %32, i32 -1
  store ptr %incdec.ptr28, ptr %pToken, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load ptr, ptr %pToken, align 8
  %nLine30 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %nLine30, align 4
  %call31 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %33, i32 noundef 1, i32 noundef %35, ptr noundef @.str.277)
  store i32 %call31, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp32 = icmp eq i32 %36, -10
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 -10, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  br label %Synchronize

if.end35:                                         ; preds = %lor.lhs.false20
  %37 = load ptr, ptr %pGen.addr, align 8
  %pEnd36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 13
  %38 = load ptr, ptr %pEnd36, align 8
  store ptr %38, ptr %pTmp, align 8
  %39 = load ptr, ptr %pToken, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  store ptr %39, ptr %pIn37, align 8
  %41 = load ptr, ptr %pEnd, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %pEnd38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 13
  store ptr %41, ptr %pEnd38, align 8
  %43 = load ptr, ptr %pGen.addr, align 8
  %call39 = call i32 @PH7_CompileExpr(ptr noundef %43, i32 noundef 0, ptr noundef null)
  store i32 %call39, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end35
  %44 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %pIn40, align 8
  %46 = load ptr, ptr %pEnd, align 8
  %cmp41 = icmp ult ptr %45, %46
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load ptr, ptr %pGen.addr, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %pIn42 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %pIn42, align 8
  %nLine43 = getelementptr inbounds nuw %struct.SyToken, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %nLine43, align 4
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn44 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn44, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 0
  %call45 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %47, i32 noundef 1, i32 noundef %50, ptr noundef @.str.229, ptr noundef %sData)
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn46 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %pIn46, align 8
  %incdec.ptr47 = getelementptr inbounds nuw %struct.SyToken, ptr %54, i32 1
  store ptr %incdec.ptr47, ptr %pIn46, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %55 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %55, i64 1
  %56 = load ptr, ptr %pGen.addr, align 8
  %pIn48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn48, align 8
  %57 = load ptr, ptr %pTmp, align 8
  %58 = load ptr, ptr %pGen.addr, align 8
  %pEnd49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 13
  store ptr %57, ptr %pEnd49, align 8
  %59 = load i32, ptr %rc, align 4
  %cmp50 = icmp eq i32 %59, -10
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %while.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %while.end
  %60 = load ptr, ptr %pGen.addr, align 8
  %pVm53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pVm53, align 8
  %call54 = call i32 @PH7_VmEmitInstr(ptr noundef %61, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nJumpIdx)
  %62 = load ptr, ptr %pCondBlock, align 8
  %63 = load i32, ptr %nJumpIdx, align 4
  %call55 = call i32 @GenStateNewJumpFixup(ptr noundef %62, i32 noundef 11, i32 noundef %63)
  %64 = load ptr, ptr %pGen.addr, align 8
  %call56 = call i32 @PH7_CompileBlock(ptr noundef %64, i32 noundef 4194304)
  store i32 %call56, ptr %rc, align 4
  %65 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %65, -10
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end52
  store i32 -10, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end52
  %66 = load ptr, ptr %pGen.addr, align 8
  %pIn60 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %pIn60, align 8
  %68 = load ptr, ptr %pGen.addr, align 8
  %pEnd61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 13
  %69 = load ptr, ptr %pEnd61, align 8
  %cmp62 = icmp uge ptr %67, %69
  br i1 %cmp62, label %if.then68, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end59
  %70 = load ptr, ptr %pGen.addr, align 8
  %pIn64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pIn64, align 8
  %nType65 = getelementptr inbounds nuw %struct.SyToken, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %nType65, align 8
  %and66 = and i32 %72, 4
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false63, %if.end59
  br label %for.end

if.end69:                                         ; preds = %lor.lhs.false63
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn70 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn70, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 0, i32 3
  %75 = load ptr, ptr %pUserData, align 8
  %76 = ptrtoint ptr %75 to i64
  %conv = trunc i64 %76 to i32
  store i32 %conv, ptr %nKeyID, align 4
  %77 = load i32, ptr %nKeyID, align 4
  %and71 = and i32 %77, 201326592
  %cmp72 = icmp eq i32 %and71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end69
  br label %for.end

if.end75:                                         ; preds = %if.end69
  %78 = load ptr, ptr %pGen.addr, align 8
  %pVm76 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %pVm76, align 8
  %call77 = call i32 @PH7_VmEmitInstr(ptr noundef %79, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nJumpIdx)
  %80 = load ptr, ptr %pCondBlock, align 8
  %81 = load i32, ptr %nJumpIdx, align 4
  %call78 = call i32 @GenStateNewJumpFixup(ptr noundef %80, i32 noundef 10, i32 noundef %81)
  %82 = load i32, ptr %nKeyID, align 4
  %and79 = and i32 %82, 134217728
  %tobool = icmp ne i32 %and79, 0
  br i1 %tobool, label %if.then80, label %if.end100

if.then80:                                        ; preds = %if.end75
  %83 = load ptr, ptr %pGen.addr, align 8
  %pIn81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %pIn81, align 8
  %arrayidx82 = getelementptr inbounds %struct.SyToken, ptr %84, i64 1
  store ptr %arrayidx82, ptr %pToken, align 8
  %85 = load ptr, ptr %pToken, align 8
  %86 = load ptr, ptr %pGen.addr, align 8
  %pEnd83 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %86, i32 0, i32 13
  %87 = load ptr, ptr %pEnd83, align 8
  %cmp84 = icmp uge ptr %85, %87
  br i1 %cmp84, label %if.then96, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.then80
  %88 = load ptr, ptr %pToken, align 8
  %nType87 = getelementptr inbounds nuw %struct.SyToken, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %nType87, align 8
  %and88 = and i32 %89, 4
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %if.then96, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false86
  %90 = load ptr, ptr %pToken, align 8
  %pUserData92 = getelementptr inbounds nuw %struct.SyToken, ptr %90, i32 0, i32 3
  %91 = load ptr, ptr %pUserData92, align 8
  %92 = ptrtoint ptr %91 to i64
  %conv93 = trunc i64 %92 to i32
  %cmp94 = icmp ne i32 %conv93, 13
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %lor.lhs.false91, %lor.lhs.false86, %if.then80
  br label %for.end

if.end97:                                         ; preds = %lor.lhs.false91
  %93 = load ptr, ptr %pGen.addr, align 8
  %pIn98 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %pIn98, align 8
  %incdec.ptr99 = getelementptr inbounds nuw %struct.SyToken, ptr %94, i32 1
  store ptr %incdec.ptr99, ptr %pIn98, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %if.end75
  %95 = load ptr, ptr %pGen.addr, align 8
  %pIn101 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %pIn101, align 8
  %incdec.ptr102 = getelementptr inbounds nuw %struct.SyToken, ptr %96, i32 1
  store ptr %incdec.ptr102, ptr %pIn101, align 8
  %97 = load ptr, ptr %pGen.addr, align 8
  %pIn103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %pIn103, align 8
  store ptr %98, ptr %pToken, align 8
  %99 = load ptr, ptr %pCondBlock, align 8
  %100 = load ptr, ptr %pGen.addr, align 8
  %pVm104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %pVm104, align 8
  %call105 = call i32 @PH7_VmInstrLength(ptr noundef %101)
  %call106 = call i32 @GenStateFixJumps(ptr noundef %99, i32 noundef 11, i32 noundef %call105)
  br label %for.cond

for.end:                                          ; preds = %if.then96, %if.then74, %if.then68
  %102 = load ptr, ptr %pCondBlock, align 8
  %103 = load ptr, ptr %pGen.addr, align 8
  %pVm107 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %pVm107, align 8
  %call108 = call i32 @PH7_VmInstrLength(ptr noundef %104)
  %call109 = call i32 @GenStateFixJumps(ptr noundef %102, i32 noundef 11, i32 noundef %call108)
  %105 = load ptr, ptr %pGen.addr, align 8
  %pIn110 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %pIn110, align 8
  %107 = load ptr, ptr %pGen.addr, align 8
  %pEnd111 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %107, i32 0, i32 13
  %108 = load ptr, ptr %pEnd111, align 8
  %cmp112 = icmp ult ptr %106, %108
  br i1 %cmp112, label %land.lhs.true, label %if.end132

land.lhs.true:                                    ; preds = %for.end
  %109 = load ptr, ptr %pGen.addr, align 8
  %pIn114 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %pIn114, align 8
  %nType115 = getelementptr inbounds nuw %struct.SyToken, ptr %110, i32 0, i32 1
  %111 = load i32, ptr %nType115, align 8
  %and116 = and i32 %111, 4
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %land.lhs.true118, label %if.end132

land.lhs.true118:                                 ; preds = %land.lhs.true
  %112 = load ptr, ptr %pGen.addr, align 8
  %pIn119 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %112, i32 0, i32 12
  %113 = load ptr, ptr %pIn119, align 8
  %pUserData120 = getelementptr inbounds nuw %struct.SyToken, ptr %113, i32 0, i32 3
  %114 = load ptr, ptr %pUserData120, align 8
  %115 = ptrtoint ptr %114 to i64
  %conv121 = trunc i64 %115 to i32
  %and122 = and i32 %conv121, 134217728
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then124, label %if.end132

if.then124:                                       ; preds = %land.lhs.true118
  %116 = load ptr, ptr %pGen.addr, align 8
  %pIn125 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %116, i32 0, i32 12
  %117 = load ptr, ptr %pIn125, align 8
  %incdec.ptr126 = getelementptr inbounds nuw %struct.SyToken, ptr %117, i32 1
  store ptr %incdec.ptr126, ptr %pIn125, align 8
  %118 = load ptr, ptr %pGen.addr, align 8
  %call127 = call i32 @PH7_CompileBlock(ptr noundef %118, i32 noundef 4194304)
  store i32 %call127, ptr %rc, align 4
  %119 = load i32, ptr %rc, align 4
  %cmp128 = icmp eq i32 %119, -10
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then124
  store i32 -10, ptr %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.then124
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %land.lhs.true118, %land.lhs.true, %for.end
  %120 = load ptr, ptr %pGen.addr, align 8
  %pVm133 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %pVm133, align 8
  %call134 = call i32 @PH7_VmInstrLength(ptr noundef %121)
  store i32 %call134, ptr %nJumpIdx, align 4
  %122 = load ptr, ptr %pCondBlock, align 8
  %123 = load i32, ptr %nJumpIdx, align 4
  %call135 = call i32 @GenStateFixJumps(ptr noundef %122, i32 noundef 10, i32 noundef %123)
  %124 = load ptr, ptr %pGen.addr, align 8
  %call136 = call i32 @GenStateLeaveBlock(ptr noundef %124, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end34, %if.end15
  br label %while.cond137

while.cond137:                                    ; preds = %while.body147, %Synchronize
  %125 = load ptr, ptr %pGen.addr, align 8
  %pIn138 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %125, i32 0, i32 12
  %126 = load ptr, ptr %pIn138, align 8
  %127 = load ptr, ptr %pGen.addr, align 8
  %pEnd139 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %pEnd139, align 8
  %cmp140 = icmp ult ptr %126, %128
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond137
  %129 = load ptr, ptr %pGen.addr, align 8
  %pIn142 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %129, i32 0, i32 12
  %130 = load ptr, ptr %pIn142, align 8
  %nType143 = getelementptr inbounds nuw %struct.SyToken, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %nType143, align 8
  %and144 = and i32 %131, 262208
  %cmp145 = icmp eq i32 %and144, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond137
  %132 = phi i1 [ false, %while.cond137 ], [ %cmp145, %land.rhs ]
  br i1 %132, label %while.body147, label %while.end150

while.body147:                                    ; preds = %land.end
  %133 = load ptr, ptr %pGen.addr, align 8
  %pIn148 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %133, i32 0, i32 12
  %134 = load ptr, ptr %pIn148, align 8
  %incdec.ptr149 = getelementptr inbounds nuw %struct.SyToken, ptr %134, i32 1
  store ptr %incdec.ptr149, ptr %pIn148, align 8
  br label %while.cond137, !llvm.loop !8

while.end150:                                     ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end150, %if.end132, %if.then130, %if.then58, %if.then51, %if.then33, %if.then14, %if.then
  %135 = load i32, ptr %retval, align 4
  ret i32 %135
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
