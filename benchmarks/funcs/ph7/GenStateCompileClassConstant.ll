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

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.336 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.337 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.338 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.339 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.340 = external hidden unnamed_addr constant [71 x i8], align 1

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
declare hidden i32 @GenStateIsReservedConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileClassConstant(ptr noundef %pGen, i32 noundef %iProtection, i32 noundef %iFlags, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iProtection.addr = alloca i32, align 4
  %iFlags.addr = alloca i32, align 4
  %pClass.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pInstrContainer = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
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
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  br label %loop

loop:                                             ; preds = %if.then101, %entry
  %6 = load i32, ptr %iFlags.addr, align 4
  %or = or i32 %6, 2
  store i32 %or, ptr %iFlags.addr, align 4
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn3, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %8, %10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %loop
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nType, align 8
  %and = and i32 %13, 8
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %loop
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load i32, ptr %nLine, align 4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef %15, ptr noundef @.str.336)
  store i32 %call6, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %16, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchronize

if.end9:                                          ; preds = %lor.lhs.false
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn10, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %19 = load ptr, ptr %pName, align 8
  %call11 = call i32 @GenStateIsReservedConstant(ptr noundef %19)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load i32, ptr %nLine, align 4
  %22 = load ptr, ptr %pName, align 8
  %call13 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %20, i32 noundef 1, i32 noundef %21, ptr noundef @.str.337, ptr noundef %22)
  store i32 %call13, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %23, -10
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 -10, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then12
  br label %Synchronize

if.end17:                                         ; preds = %if.end9
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn18, align 8
  %incdec.ptr19 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 1
  store ptr %incdec.ptr19, ptr %pIn18, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn20, align 8
  %28 = load ptr, ptr %pGen.addr, align 8
  %pEnd21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 13
  %29 = load ptr, ptr %pEnd21, align 8
  %cmp22 = icmp uge ptr %27, %29
  br i1 %cmp22, label %if.then28, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end17
  %30 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %pIn24, align 8
  %nType25 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %nType25, align 8
  %and26 = and i32 %32, 4194304
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %lor.lhs.false23, %if.end17
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load i32, ptr %nLine, align 4
  %35 = load ptr, ptr %pName, align 8
  %call29 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %33, i32 noundef 1, i32 noundef %34, ptr noundef @.str.338, ptr noundef %35)
  store i32 %call29, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %36, -10
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -10, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  br label %Synchronize

if.end33:                                         ; preds = %lor.lhs.false23
  %37 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %pIn34, align 8
  %incdec.ptr35 = getelementptr inbounds nuw %struct.SyToken, ptr %38, i32 1
  store ptr %incdec.ptr35, ptr %pIn34, align 8
  %39 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pVm, align 8
  %41 = load ptr, ptr %pName, align 8
  %42 = load i32, ptr %nLine, align 4
  %43 = load i32, ptr %iProtection.addr, align 4
  %44 = load i32, ptr %iFlags.addr, align 4
  %call36 = call ptr @PH7_NewClassAttr(ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44)
  store ptr %call36, ptr %pCons, align 8
  %45 = load ptr, ptr %pCons, align 8
  %cmp37 = icmp eq ptr %45, null
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end33
  %46 = load ptr, ptr %pGen.addr, align 8
  %47 = load i32, ptr %nLine, align 4
  %call39 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %46, i32 noundef 1, i32 noundef %47, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end33
  %48 = load ptr, ptr %pGen.addr, align 8
  %pVm41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %pVm41, align 8
  %call42 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %49)
  store ptr %call42, ptr %pInstrContainer, align 8
  %50 = load ptr, ptr %pGen.addr, align 8
  %pVm43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %pVm43, align 8
  %52 = load ptr, ptr %pCons, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %52, i32 0, i32 3
  %call44 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %51, ptr noundef %aByteCode)
  %53 = load ptr, ptr %pGen.addr, align 8
  %call45 = call i32 @PH7_CompileExpr(ptr noundef %53, i32 noundef 4, ptr noundef null)
  store i32 %call45, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp46 = icmp eq i32 %54, -3
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end40
  %55 = load ptr, ptr %pGen.addr, align 8
  %56 = load i32, ptr %nLine, align 4
  %57 = load ptr, ptr %pName, align 8
  %call48 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %55, i32 noundef 1, i32 noundef %56, ptr noundef @.str.339, ptr noundef %57)
  store i32 %call48, ptr %rc, align 4
  %58 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %58, -10
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end40
  %59 = load ptr, ptr %pGen.addr, align 8
  %pVm53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pVm53, align 8
  %call54 = call i32 @PH7_VmEmitInstr(ptr noundef %60, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  %61 = load ptr, ptr %pGen.addr, align 8
  %pVm55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pVm55, align 8
  %63 = load ptr, ptr %pInstrContainer, align 8
  %call56 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %62, ptr noundef %63)
  %64 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %64, -10
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end52
  store i32 -10, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end52
  %65 = load ptr, ptr %pClass.addr, align 8
  %66 = load ptr, ptr %pCons, align 8
  %call60 = call i32 @PH7_ClassInstallAttr(ptr noundef %65, ptr noundef %66)
  store i32 %call60, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  %cmp61 = icmp ne i32 %67, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %68 = load ptr, ptr %pGen.addr, align 8
  %69 = load i32, ptr %nLine, align 4
  %call63 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %68, i32 noundef 1, i32 noundef %69, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end59
  %70 = load ptr, ptr %pGen.addr, align 8
  %pIn65 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pIn65, align 8
  %72 = load ptr, ptr %pGen.addr, align 8
  %pEnd66 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 13
  %73 = load ptr, ptr %pEnd66, align 8
  %cmp67 = icmp ult ptr %71, %73
  br i1 %cmp67, label %land.lhs.true, label %if.end104

land.lhs.true:                                    ; preds = %if.end64
  %74 = load ptr, ptr %pGen.addr, align 8
  %pIn68 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %pIn68, align 8
  %nType69 = getelementptr inbounds nuw %struct.SyToken, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %nType69, align 8
  %and70 = and i32 %76, 131072
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end104

if.then72:                                        ; preds = %land.lhs.true
  %77 = load ptr, ptr %pGen.addr, align 8
  %pIn73 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %pIn73, align 8
  %incdec.ptr74 = getelementptr inbounds nuw %struct.SyToken, ptr %78, i32 1
  store ptr %incdec.ptr74, ptr %pIn73, align 8
  %79 = load ptr, ptr %pGen.addr, align 8
  %pIn75 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %pIn75, align 8
  %81 = load ptr, ptr %pGen.addr, align 8
  %pEnd76 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 13
  %82 = load ptr, ptr %pEnd76, align 8
  %cmp77 = icmp uge ptr %80, %82
  br i1 %cmp77, label %if.then83, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.then72
  %83 = load ptr, ptr %pGen.addr, align 8
  %pIn79 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %pIn79, align 8
  %nType80 = getelementptr inbounds nuw %struct.SyToken, ptr %84, i32 0, i32 1
  %85 = load i32, ptr %nType80, align 8
  %and81 = and i32 %85, 8
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.then83, label %if.else

if.then83:                                        ; preds = %lor.lhs.false78, %if.then72
  %86 = load ptr, ptr %pGen.addr, align 8
  %pIn84 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %86, i32 0, i32 12
  %87 = load ptr, ptr %pIn84, align 8
  store ptr %87, ptr %pTok, align 8
  %88 = load ptr, ptr %pTok, align 8
  %89 = load ptr, ptr %pGen.addr, align 8
  %pEnd85 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %89, i32 0, i32 13
  %90 = load ptr, ptr %pEnd85, align 8
  %cmp86 = icmp uge ptr %88, %90
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then83
  %91 = load ptr, ptr %pTok, align 8
  %incdec.ptr88 = getelementptr inbounds %struct.SyToken, ptr %91, i32 -1
  store ptr %incdec.ptr88, ptr %pTok, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.then83
  %92 = load ptr, ptr %pGen.addr, align 8
  %93 = load ptr, ptr %pGen.addr, align 8
  %pIn90 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %pIn90, align 8
  %nLine91 = getelementptr inbounds nuw %struct.SyToken, ptr %94, i32 0, i32 2
  %95 = load i32, ptr %nLine91, align 4
  %96 = load ptr, ptr %pTok, align 8
  %sData92 = getelementptr inbounds nuw %struct.SyToken, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %97, i32 0, i32 2
  %call93 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %92, i32 noundef 1, i32 noundef %95, ptr noundef @.str.340, ptr noundef %sData92, ptr noundef %sName)
  store i32 %call93, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  %cmp94 = icmp eq i32 %98, -10
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end89
  store i32 -10, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end89
  br label %if.end103

if.else:                                          ; preds = %lor.lhs.false78
  %99 = load ptr, ptr %pGen.addr, align 8
  %pIn97 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 12
  %100 = load ptr, ptr %pIn97, align 8
  %nType98 = getelementptr inbounds nuw %struct.SyToken, ptr %100, i32 0, i32 1
  %101 = load i32, ptr %nType98, align 8
  %and99 = and i32 %101, 8
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else
  br label %loop

if.end102:                                        ; preds = %if.else
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end96
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %land.lhs.true, %if.end64
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end32, %if.end16, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Synchronize
  %102 = load ptr, ptr %pGen.addr, align 8
  %pIn105 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %pIn105, align 8
  %104 = load ptr, ptr %pGen.addr, align 8
  %pEnd106 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %104, i32 0, i32 13
  %105 = load ptr, ptr %pEnd106, align 8
  %cmp107 = icmp ult ptr %103, %105
  br i1 %cmp107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %106 = load ptr, ptr %pGen.addr, align 8
  %pIn108 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %106, i32 0, i32 12
  %107 = load ptr, ptr %pIn108, align 8
  %nType109 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %nType109, align 8
  %and110 = and i32 %108, 262144
  %cmp111 = icmp eq i32 %and110, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %109 = phi i1 [ false, %while.cond ], [ %cmp111, %land.rhs ]
  br i1 %109, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %110 = load ptr, ptr %pGen.addr, align 8
  %pIn112 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 12
  %111 = load ptr, ptr %pIn112, align 8
  %incdec.ptr113 = getelementptr inbounds nuw %struct.SyToken, ptr %111, i32 1
  store ptr %incdec.ptr113, ptr %pIn112, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 -24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end104, %if.then95, %if.then62, %if.then58, %if.then50, %if.then38, %if.then31, %if.then15, %if.then8
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GetProtectionLevel(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewClassAttr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstallAttr(ptr noundef, ptr noundef) #0

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
