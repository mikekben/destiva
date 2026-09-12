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
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.360 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.361 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.362 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.363 = external hidden unnamed_addr constant [72 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GetProtectionLevel(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewClassAttr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstallAttr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileClassAttr(ptr noundef %pGen, i32 noundef %iProtection, i32 noundef %iFlags, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iProtection.addr = alloca i32, align 4
  %iFlags.addr = alloca i32, align 4
  %pClass.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pAttr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pInstrContainer = alloca ptr, align 8
  %pTok = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iProtection, ptr %iProtection.addr, align 4
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store ptr %pClass, ptr %pClass.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  %3 = load i32, ptr %iProtection.addr, align 4
  %call = call i32 @GetProtectionLevel(i32 noundef %3)
  store i32 %call, ptr %iProtection.addr, align 4
  br label %loop

loop:                                             ; preds = %if.then96, %entry
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn3, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %7, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %loop
  %10 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nType, align 8
  %and = and i32 %12, 12
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %loop
  %13 = load ptr, ptr %pGen.addr, align 8
  %14 = load i32, ptr %nLine, align 4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %13, i32 noundef 1, i32 noundef %14, ptr noundef @.str.360)
  store i32 %call6, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %15, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchronize

if.end9:                                          ; preds = %lor.lhs.false
  %16 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %pIn10, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pIn11, align 8
  %incdec.ptr12 = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 1
  store ptr %incdec.ptr12, ptr %pIn11, align 8
  %20 = load ptr, ptr %pGen.addr, align 8
  %pIn13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 12
  %21 = load ptr, ptr %pIn13, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pEnd14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %pEnd14, align 8
  %cmp15 = icmp uge ptr %21, %23
  br i1 %cmp15, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end9
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn17, align 8
  %nType18 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nType18, align 8
  %and19 = and i32 %26, 4587520
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %lor.lhs.false16, %if.end9
  %27 = load ptr, ptr %pGen.addr, align 8
  %28 = load i32, ptr %nLine, align 4
  %29 = load ptr, ptr %pName, align 8
  %call22 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %27, i32 noundef 1, i32 noundef %28, ptr noundef @.str.361, ptr noundef %29)
  store i32 %call22, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %30, -10
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  store i32 -10, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then21
  br label %Synchronize

if.end26:                                         ; preds = %lor.lhs.false16
  %31 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pVm, align 8
  %33 = load ptr, ptr %pName, align 8
  %34 = load i32, ptr %nLine, align 4
  %35 = load i32, ptr %iProtection.addr, align 4
  %36 = load i32, ptr %iFlags.addr, align 4
  %call27 = call ptr @PH7_NewClassAttr(ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36)
  store ptr %call27, ptr %pAttr, align 8
  %37 = load ptr, ptr %pAttr, align 8
  %cmp28 = icmp eq ptr %37, null
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %38 = load ptr, ptr %pGen.addr, align 8
  %39 = load i32, ptr %nLine, align 4
  %call30 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %38, i32 noundef 1, i32 noundef %39, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn32 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn32, align 8
  %nType33 = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nType33, align 8
  %and34 = and i32 %42, 4194304
  %tobool = icmp ne i32 %and34, 0
  br i1 %tobool, label %if.then35, label %if.end54

if.then35:                                        ; preds = %if.end31
  %43 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %pIn36, align 8
  %incdec.ptr37 = getelementptr inbounds nuw %struct.SyToken, ptr %44, i32 1
  store ptr %incdec.ptr37, ptr %pIn36, align 8
  %45 = load ptr, ptr %pGen.addr, align 8
  %pVm38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pVm38, align 8
  %call39 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %46)
  store ptr %call39, ptr %pInstrContainer, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pVm40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pVm40, align 8
  %49 = load ptr, ptr %pAttr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %49, i32 0, i32 3
  %call41 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %48, ptr noundef %aByteCode)
  %50 = load ptr, ptr %pGen.addr, align 8
  %call42 = call i32 @PH7_CompileExpr(ptr noundef %50, i32 noundef 4, ptr noundef null)
  store i32 %call42, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %51, -3
  br i1 %cmp43, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.then35
  %52 = load ptr, ptr %pGen.addr, align 8
  %53 = load i32, ptr %nLine, align 4
  %54 = load ptr, ptr %pName, align 8
  %call45 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %52, i32 noundef 1, i32 noundef %53, ptr noundef @.str.362, ptr noundef %54)
  store i32 %call45, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %cmp46 = icmp eq i32 %55, -10
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then44
  store i32 -10, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then44
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then35
  %56 = load ptr, ptr %pGen.addr, align 8
  %pVm50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pVm50, align 8
  %call51 = call i32 @PH7_VmEmitInstr(ptr noundef %57, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  %58 = load ptr, ptr %pGen.addr, align 8
  %pVm52 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pVm52, align 8
  %60 = load ptr, ptr %pInstrContainer, align 8
  %call53 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %59, ptr noundef %60)
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %if.end31
  %61 = load ptr, ptr %pClass.addr, align 8
  %62 = load ptr, ptr %pAttr, align 8
  %call55 = call i32 @PH7_ClassInstallAttr(ptr noundef %61, ptr noundef %62)
  store i32 %call55, ptr %rc, align 4
  %63 = load i32, ptr %rc, align 4
  %cmp56 = icmp ne i32 %63, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %64 = load ptr, ptr %pGen.addr, align 8
  %65 = load i32, ptr %nLine, align 4
  %call58 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %64, i32 noundef 1, i32 noundef %65, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end54
  %66 = load ptr, ptr %pGen.addr, align 8
  %pIn60 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %pIn60, align 8
  %68 = load ptr, ptr %pGen.addr, align 8
  %pEnd61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 13
  %69 = load ptr, ptr %pEnd61, align 8
  %cmp62 = icmp ult ptr %67, %69
  br i1 %cmp62, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %if.end59
  %70 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pIn63, align 8
  %nType64 = getelementptr inbounds nuw %struct.SyToken, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %nType64, align 8
  %and65 = and i32 %72, 131072
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end99

if.then67:                                        ; preds = %land.lhs.true
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn68 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn68, align 8
  %incdec.ptr69 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 1
  store ptr %incdec.ptr69, ptr %pIn68, align 8
  %75 = load ptr, ptr %pGen.addr, align 8
  %pIn70 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %pIn70, align 8
  %77 = load ptr, ptr %pGen.addr, align 8
  %pEnd71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %77, i32 0, i32 13
  %78 = load ptr, ptr %pEnd71, align 8
  %cmp72 = icmp uge ptr %76, %78
  br i1 %cmp72, label %if.then78, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.then67
  %79 = load ptr, ptr %pGen.addr, align 8
  %pIn74 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %pIn74, align 8
  %nType75 = getelementptr inbounds nuw %struct.SyToken, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %nType75, align 8
  %and76 = and i32 %81, 16
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %lor.lhs.false73, %if.then67
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn79 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  %83 = load ptr, ptr %pIn79, align 8
  store ptr %83, ptr %pTok, align 8
  %84 = load ptr, ptr %pTok, align 8
  %85 = load ptr, ptr %pGen.addr, align 8
  %pEnd80 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %85, i32 0, i32 13
  %86 = load ptr, ptr %pEnd80, align 8
  %cmp81 = icmp uge ptr %84, %86
  br i1 %cmp81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then78
  %87 = load ptr, ptr %pTok, align 8
  %incdec.ptr83 = getelementptr inbounds %struct.SyToken, ptr %87, i32 -1
  store ptr %incdec.ptr83, ptr %pTok, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then78
  %88 = load ptr, ptr %pGen.addr, align 8
  %89 = load ptr, ptr %pGen.addr, align 8
  %pIn85 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %89, i32 0, i32 12
  %90 = load ptr, ptr %pIn85, align 8
  %nLine86 = getelementptr inbounds nuw %struct.SyToken, ptr %90, i32 0, i32 2
  %91 = load i32, ptr %nLine86, align 4
  %92 = load ptr, ptr %pTok, align 8
  %sData87 = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %93, i32 0, i32 2
  %call88 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %88, i32 noundef 1, i32 noundef %91, ptr noundef @.str.363, ptr noundef %sData87, ptr noundef %sName)
  store i32 %call88, ptr %rc, align 4
  %94 = load i32, ptr %rc, align 4
  %cmp89 = icmp eq i32 %94, -10
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end84
  store i32 -10, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.end84
  br label %if.end98

if.else:                                          ; preds = %lor.lhs.false73
  %95 = load ptr, ptr %pGen.addr, align 8
  %pIn92 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %pIn92, align 8
  %nType93 = getelementptr inbounds nuw %struct.SyToken, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %nType93, align 8
  %and94 = and i32 %97, 16
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.else
  br label %loop

if.end97:                                         ; preds = %if.else
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end91
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %land.lhs.true, %if.end59
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end25, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Synchronize
  %98 = load ptr, ptr %pGen.addr, align 8
  %pIn100 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %pIn100, align 8
  %100 = load ptr, ptr %pGen.addr, align 8
  %pEnd101 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %100, i32 0, i32 13
  %101 = load ptr, ptr %pEnd101, align 8
  %cmp102 = icmp ult ptr %99, %101
  br i1 %cmp102, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %102 = load ptr, ptr %pGen.addr, align 8
  %pIn103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %pIn103, align 8
  %nType104 = getelementptr inbounds nuw %struct.SyToken, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %nType104, align 8
  %and105 = and i32 %104, 262144
  %cmp106 = icmp eq i32 %and105, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %105 = phi i1 [ false, %while.cond ], [ %cmp106, %land.rhs ]
  br i1 %105, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %106 = load ptr, ptr %pGen.addr, align 8
  %pIn107 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %106, i32 0, i32 12
  %107 = load ptr, ptr %pIn107, align 8
  %incdec.ptr108 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 1
  store ptr %incdec.ptr108, ptr %pIn107, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 -24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end99, %if.then90, %if.then57, %if.then47, %if.then29, %if.then24, %if.then8
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
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
