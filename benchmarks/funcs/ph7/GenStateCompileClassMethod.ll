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
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.341 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.342 = external hidden unnamed_addr constant [61 x i8], align 1
@.str.343 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.344 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.345 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCollectFuncArgs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileFuncBody(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileClassMethod(ptr noundef %pGen, i32 noundef %iProtection, i32 noundef %iFlags, i32 noundef %doBody, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iProtection.addr = alloca i32, align 4
  %iFlags.addr = alloca i32, align 4
  %doBody.addr = alloca i32, align 4
  %pClass.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pMeth = alloca ptr, align 8
  %iFuncFlags = alloca i32, align 4
  %pName = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iProtection, ptr %iProtection.addr, align 4
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 %doBody, ptr %doBody.addr, align 4
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
  store i32 0, ptr %iFuncFlags, align 4
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn3, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pEnd4, align 8
  %cmp = icmp uge ptr %7, %9
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %pGen.addr, align 8
  %11 = load i32, ptr %nLine, align 4
  %call5 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %10, i32 noundef 1, i32 noundef %11, ptr noundef @.str.341)
  store i32 %call5, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %12, -10
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchronize

if.end8:                                          ; preds = %entry
  %13 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pIn9, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pEnd10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %pEnd10, align 8
  %cmp11 = icmp ult ptr %14, %16
  br i1 %cmp11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn12, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nType, align 8
  %and = and i32 %19, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  %20 = load i32, ptr %iFuncFlags, align 4
  %or = or i32 %20, 4
  store i32 %or, ptr %iFuncFlags, align 4
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn14, align 8
  %incdec.ptr15 = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 1
  store ptr %incdec.ptr15, ptr %pIn14, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true, %if.end8
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn17, align 8
  %25 = load ptr, ptr %pGen.addr, align 8
  %pEnd18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 13
  %26 = load ptr, ptr %pEnd18, align 8
  %cmp19 = icmp uge ptr %24, %26
  br i1 %cmp19, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %27 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %pIn20, align 8
  %nType21 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType21, align 8
  %and22 = and i32 %29, 8
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %lor.lhs.false, %if.end16
  %30 = load ptr, ptr %pGen.addr, align 8
  %31 = load i32, ptr %nLine, align 4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %30, i32 noundef 1, i32 noundef %31, ptr noundef @.str.341)
  store i32 %call25, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %32, -10
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  store i32 -10, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then24
  br label %Synchronize

if.end29:                                         ; preds = %lor.lhs.false
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pIn30, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn31, align 8
  %nLine32 = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %nLine32, align 4
  store i32 %37, ptr %nLine, align 4
  %38 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %pIn33, align 8
  %incdec.ptr34 = getelementptr inbounds nuw %struct.SyToken, ptr %39, i32 1
  store ptr %incdec.ptr34, ptr %pIn33, align 8
  %40 = load i32, ptr %iFlags.addr, align 4
  %and35 = and i32 %40, 4
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end29
  %41 = load i32, ptr %iProtection.addr, align 4
  %cmp38 = icmp eq i32 %41, 3
  br i1 %cmp38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.then37
  %42 = load ptr, ptr %pGen.addr, align 8
  %43 = load i32, ptr %nLine, align 4
  %44 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pName, align 8
  %call40 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %42, i32 noundef 1, i32 noundef %43, ptr noundef @.str.342, ptr noundef %sName, ptr noundef %45)
  store i32 %call40, ptr %rc, align 4
  %46 = load i32, ptr %rc, align 4
  %cmp41 = icmp eq i32 %46, -10
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  store i32 -10, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then37
  store i32 0, ptr %doBody.addr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end29
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn46 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn46, align 8
  %49 = load ptr, ptr %pGen.addr, align 8
  %pEnd47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 13
  %50 = load ptr, ptr %pEnd47, align 8
  %cmp48 = icmp uge ptr %48, %50
  br i1 %cmp48, label %if.then54, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end45
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn50, align 8
  %nType51 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %nType51, align 8
  %and52 = and i32 %53, 512
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %lor.lhs.false49, %if.end45
  %54 = load ptr, ptr %pGen.addr, align 8
  %55 = load i32, ptr %nLine, align 4
  %56 = load ptr, ptr %pName, align 8
  %call55 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %54, i32 noundef 1, i32 noundef %55, ptr noundef @.str.343, ptr noundef %56)
  store i32 %call55, ptr %rc, align 4
  %57 = load i32, ptr %rc, align 4
  %cmp56 = icmp eq i32 %57, -10
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then54
  store i32 -10, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then54
  br label %Synchronize

if.end59:                                         ; preds = %lor.lhs.false49
  %58 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pVm, align 8
  %60 = load ptr, ptr %pClass.addr, align 8
  %61 = load ptr, ptr %pName, align 8
  %62 = load i32, ptr %nLine, align 4
  %63 = load i32, ptr %iProtection.addr, align 4
  %64 = load i32, ptr %iFlags.addr, align 4
  %65 = load i32, ptr %iFuncFlags, align 4
  %call60 = call ptr @PH7_NewClassMethod(ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65)
  store ptr %call60, ptr %pMeth, align 8
  %66 = load ptr, ptr %pMeth, align 8
  %cmp61 = icmp eq ptr %66, null
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %67 = load ptr, ptr %pGen.addr, align 8
  %68 = load i32, ptr %nLine, align 4
  %call63 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %67, i32 noundef 1, i32 noundef %68, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end59
  %69 = load ptr, ptr %pGen.addr, align 8
  %pIn65 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pIn65, align 8
  %incdec.ptr66 = getelementptr inbounds nuw %struct.SyToken, ptr %70, i32 1
  store ptr %incdec.ptr66, ptr %pIn65, align 8
  store ptr null, ptr %pEnd, align 8
  %71 = load ptr, ptr %pGen.addr, align 8
  %pIn67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %pIn67, align 8
  %73 = load ptr, ptr %pGen.addr, align 8
  %pEnd68 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 13
  %74 = load ptr, ptr %pEnd68, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %72, ptr noundef %74, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %75 = load ptr, ptr %pEnd, align 8
  %76 = load ptr, ptr %pGen.addr, align 8
  %pEnd69 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %76, i32 0, i32 13
  %77 = load ptr, ptr %pEnd69, align 8
  %cmp70 = icmp uge ptr %75, %77
  br i1 %cmp70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.end64
  %78 = load ptr, ptr %pGen.addr, align 8
  %79 = load i32, ptr %nLine, align 4
  %80 = load ptr, ptr %pName, align 8
  %call72 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %78, i32 noundef 1, i32 noundef %79, ptr noundef @.str.344, ptr noundef %80)
  store i32 %call72, ptr %rc, align 4
  %81 = load i32, ptr %rc, align 4
  %cmp73 = icmp eq i32 %81, -10
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then71
  store i32 -10, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.then71
  br label %Synchronize

if.end76:                                         ; preds = %if.end64
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn77 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  %83 = load ptr, ptr %pIn77, align 8
  %84 = load ptr, ptr %pEnd, align 8
  %cmp78 = icmp ult ptr %83, %84
  br i1 %cmp78, label %if.then79, label %if.end84

if.then79:                                        ; preds = %if.end76
  %85 = load ptr, ptr %pMeth, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %pGen.addr, align 8
  %87 = load ptr, ptr %pEnd, align 8
  %call80 = call i32 @GenStateCollectFuncArgs(ptr noundef %sFunc, ptr noundef %86, ptr noundef %87)
  store i32 %call80, ptr %rc, align 4
  %88 = load i32, ptr %rc, align 4
  %cmp81 = icmp eq i32 %88, -10
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  store i32 -10, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.then79
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end76
  %89 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %89, i64 1
  %90 = load ptr, ptr %pGen.addr, align 8
  %pIn85 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %90, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn85, align 8
  %91 = load i32, ptr %doBody.addr, align 4
  %tobool86 = icmp ne i32 %91, 0
  br i1 %tobool86, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end84
  %92 = load ptr, ptr %pGen.addr, align 8
  %93 = load ptr, ptr %pMeth, align 8
  %sFunc88 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %93, i32 0, i32 0
  %call89 = call i32 @GenStateCompileFuncBody(ptr noundef %92, ptr noundef %sFunc88)
  store i32 %call89, ptr %rc, align 4
  %94 = load i32, ptr %rc, align 4
  %cmp90 = icmp eq i32 %94, -10
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  store i32 -10, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then87
  br label %if.end109

if.else:                                          ; preds = %if.end84
  %95 = load ptr, ptr %pGen.addr, align 8
  %pIn93 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %pIn93, align 8
  %97 = load ptr, ptr %pGen.addr, align 8
  %pEnd94 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %97, i32 0, i32 13
  %98 = load ptr, ptr %pEnd94, align 8
  %cmp95 = icmp ult ptr %96, %98
  br i1 %cmp95, label %land.lhs.true96, label %if.end108

land.lhs.true96:                                  ; preds = %if.else
  %99 = load ptr, ptr %pGen.addr, align 8
  %pIn97 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 12
  %100 = load ptr, ptr %pIn97, align 8
  %nType98 = getelementptr inbounds nuw %struct.SyToken, ptr %100, i32 0, i32 1
  %101 = load i32, ptr %nType98, align 8
  %and99 = and i32 %101, 262144
  %cmp100 = icmp eq i32 %and99, 0
  br i1 %cmp100, label %if.then101, label %if.end108

if.then101:                                       ; preds = %land.lhs.true96
  %102 = load ptr, ptr %pGen.addr, align 8
  %103 = load ptr, ptr %pGen.addr, align 8
  %pIn102 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %103, i32 0, i32 12
  %104 = load ptr, ptr %pIn102, align 8
  %nLine103 = getelementptr inbounds nuw %struct.SyToken, ptr %104, i32 0, i32 2
  %105 = load i32, ptr %nLine103, align 4
  %106 = load ptr, ptr %pName, align 8
  %call104 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %102, i32 noundef 1, i32 noundef %105, ptr noundef @.str.345, ptr noundef %106)
  store i32 %call104, ptr %rc, align 4
  %107 = load i32, ptr %rc, align 4
  %cmp105 = icmp eq i32 %107, -10
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then101
  store i32 -10, ptr %retval, align 4
  br label %return

if.end107:                                        ; preds = %if.then101
  store i32 -24, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %land.lhs.true96, %if.else
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end92
  %108 = load ptr, ptr %pClass.addr, align 8
  %109 = load ptr, ptr %pMeth, align 8
  %call110 = call i32 @PH7_ClassInstallMethod(ptr noundef %108, ptr noundef %109)
  store i32 %call110, ptr %rc, align 4
  %110 = load i32, ptr %rc, align 4
  %cmp111 = icmp ne i32 %110, 0
  br i1 %cmp111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end109
  %111 = load ptr, ptr %pGen.addr, align 8
  %112 = load i32, ptr %nLine, align 4
  %call113 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %111, i32 noundef 1, i32 noundef %112, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %if.end109
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end75, %if.end58, %if.end28, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Synchronize
  %113 = load ptr, ptr %pGen.addr, align 8
  %pIn115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %pIn115, align 8
  %115 = load ptr, ptr %pGen.addr, align 8
  %pEnd116 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %115, i32 0, i32 13
  %116 = load ptr, ptr %pEnd116, align 8
  %cmp117 = icmp ult ptr %114, %116
  br i1 %cmp117, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %117 = load ptr, ptr %pGen.addr, align 8
  %pIn118 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %pIn118, align 8
  %nType119 = getelementptr inbounds nuw %struct.SyToken, ptr %118, i32 0, i32 1
  %119 = load i32, ptr %nType119, align 8
  %and120 = and i32 %119, 262144
  %cmp121 = icmp eq i32 %and120, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %120 = phi i1 [ false, %while.cond ], [ %cmp121, %land.rhs ]
  br i1 %120, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %121 = load ptr, ptr %pGen.addr, align 8
  %pIn122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %121, i32 0, i32 12
  %122 = load ptr, ptr %pIn122, align 8
  %incdec.ptr123 = getelementptr inbounds nuw %struct.SyToken, ptr %122, i32 1
  store ptr %incdec.ptr123, ptr %pIn122, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 -24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end114, %if.then112, %if.end107, %if.then106, %if.then91, %if.then82, %if.then74, %if.then62, %if.then57, %if.then42, %if.then27, %if.then7
  %123 = load i32, ptr %retval, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GetProtectionLevel(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewClassMethod(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstallMethod(ptr noundef, ptr noundef) #0

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
