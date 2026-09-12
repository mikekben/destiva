; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm_func_arg = type { %struct.SyString, %struct.SySet, i32, %struct.SyString, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.225 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.226 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.227 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.228 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCollectFuncArgs(ptr noundef %pFunc, ptr noundef %pGen, ptr noundef %pEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %pFunc.addr = alloca ptr, align 8
  %pGen.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %sArg = alloca %struct.ph7_vm_func_arg, align 8
  %pCur = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %sSig = alloca %struct.SyBlob, align 8
  %zDup = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nKey = alloca i32, align 4
  %pName = alloca ptr, align 8
  %zDup43 = alloca ptr, align 8
  %pDefend = alloca ptr, align 8
  %iNest = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %pFunc, ptr %pFunc.addr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn1, align 8
  store ptr %1, ptr %pIn, align 8
  store ptr null, ptr %pCur, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call = call i32 @SyBlobInit(ptr noundef %sSig, ptr noundef %sAllocator)
  br label %for.cond

for.cond:                                         ; preds = %if.end189, %entry
  %4 = load ptr, ptr %pIn, align 8
  %5 = load ptr, ptr %pEnd.addr, align 8
  %cmp = icmp uge ptr %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  call void @SyZero(ptr noundef %sArg, i32 noundef 88)
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 1
  %6 = load ptr, ptr %pGen.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm2, align 8
  %sAllocator3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator3, i32 noundef 24)
  %8 = load ptr, ptr %pIn, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nType, align 8
  %and = and i32 %9, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end56

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %pIn, align 8
  %nType6 = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType6, align 8
  %and7 = and i32 %11, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else41

if.then9:                                         ; preds = %if.then5
  %12 = load ptr, ptr %pIn, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pUserData, align 8
  %14 = ptrtoint ptr %13 to i64
  %conv = trunc i64 %14 to i32
  store i32 %conv, ptr %nKey, align 4
  %15 = load i32, ptr %nKey, align 4
  %and10 = and i32 %15, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %nType13 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 64, ptr %nType13, align 8
  br label %if.end40

if.else:                                          ; preds = %if.then9
  %16 = load i32, ptr %nKey, align 4
  %and14 = and i32 %16, 32768
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %nType17 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 8, ptr %nType17, align 8
  br label %if.end39

if.else18:                                        ; preds = %if.else
  %17 = load i32, ptr %nKey, align 4
  %and19 = and i32 %17, 65536
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else18
  %nType22 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 2, ptr %nType22, align 8
  br label %if.end38

if.else23:                                        ; preds = %if.else18
  %18 = load i32, ptr %nKey, align 4
  %and24 = and i32 %18, 262144
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else23
  %nType27 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 1, ptr %nType27, align 8
  br label %if.end37

if.else28:                                        ; preds = %if.else23
  %19 = load i32, ptr %nKey, align 4
  %and29 = and i32 %19, 131072
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else28
  %nType32 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 4, ptr %nType32, align 8
  br label %if.end36

if.else33:                                        ; preds = %if.else28
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn34, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %nLine, align 4
  %24 = load ptr, ptr %pIn, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 0
  %call35 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %20, i32 noundef 2, i32 noundef %23, ptr noundef @.str.225, ptr noundef %sData)
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then21
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then16
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then12
  br label %if.end55

if.else41:                                        ; preds = %if.then5
  %25 = load ptr, ptr %pIn, align 8
  %sData42 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 0
  store ptr %sData42, ptr %pName, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm44 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm44, align 8
  %sAllocator45 = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zString, align 8
  %30 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nByte, align 8
  %call46 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator45, ptr noundef %29, i32 noundef %31)
  store ptr %call46, ptr %zDup43, align 8
  %32 = load ptr, ptr %zDup43, align 8
  %tobool47 = icmp ne ptr %32, null
  br i1 %tobool47, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.else41
  %nType49 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  store i32 -1, ptr %nType49, align 8
  %33 = load ptr, ptr %zDup43, align 8
  %sClass = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 3
  %zString50 = getelementptr inbounds nuw %struct.SyString, ptr %sClass, i32 0, i32 0
  store ptr %33, ptr %zString50, align 8
  %34 = load ptr, ptr %pName, align 8
  %nByte51 = getelementptr inbounds nuw %struct.SyString, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %nByte51, align 8
  %sClass52 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 3
  %nByte53 = getelementptr inbounds nuw %struct.SyString, ptr %sClass52, i32 0, i32 1
  store i32 %35, ptr %nByte53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else41
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end40
  %36 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end
  %37 = load ptr, ptr %pIn, align 8
  %38 = load ptr, ptr %pEnd.addr, align 8
  %cmp57 = icmp uge ptr %37, %38
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.end56
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn60 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn60, align 8
  %nLine61 = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %nLine61, align 4
  %call62 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %39, i32 noundef 1, i32 noundef %42, ptr noundef @.str.226)
  store i32 %call62, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end56
  %44 = load ptr, ptr %pIn, align 8
  %nType64 = getelementptr inbounds nuw %struct.SyToken, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %nType64, align 8
  %and65 = and i32 %45, 2097152
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end63
  %iFlags = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 4
  store i32 1, ptr %iFlags, align 8
  %46 = load ptr, ptr %pIn, align 8
  %incdec.ptr68 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 1
  store ptr %incdec.ptr68, ptr %pIn, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end63
  %47 = load ptr, ptr %pIn, align 8
  %48 = load ptr, ptr %pEnd.addr, align 8
  %cmp70 = icmp uge ptr %47, %48
  br i1 %cmp70, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end69
  %49 = load ptr, ptr %pIn, align 8
  %nType72 = getelementptr inbounds nuw %struct.SyToken, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %nType72, align 8
  %and73 = and i32 %50, 16
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.then85, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false
  %51 = load ptr, ptr %pIn, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %51, i64 1
  %52 = load ptr, ptr %pEnd.addr, align 8
  %cmp77 = icmp uge ptr %arrayidx, %52
  br i1 %cmp77, label %if.then85, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false76
  %53 = load ptr, ptr %pIn, align 8
  %arrayidx80 = getelementptr inbounds %struct.SyToken, ptr %53, i64 1
  %nType81 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx80, i32 0, i32 1
  %54 = load i32, ptr %nType81, align 8
  %and82 = and i32 %54, 12
  %cmp83 = icmp eq i32 %and82, 0
  br i1 %cmp83, label %if.then85, label %if.end89

if.then85:                                        ; preds = %lor.lhs.false79, %lor.lhs.false76, %lor.lhs.false, %if.end69
  %55 = load ptr, ptr %pGen.addr, align 8
  %56 = load ptr, ptr %pGen.addr, align 8
  %pIn86 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 12
  %57 = load ptr, ptr %pIn86, align 8
  %nLine87 = getelementptr inbounds nuw %struct.SyToken, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %nLine87, align 4
  %call88 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %55, i32 noundef 1, i32 noundef %58, ptr noundef @.str.227)
  store i32 %call88, ptr %rc, align 4
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %lor.lhs.false79
  %60 = load ptr, ptr %pIn, align 8
  %incdec.ptr90 = getelementptr inbounds nuw %struct.SyToken, ptr %60, i32 1
  store ptr %incdec.ptr90, ptr %pIn, align 8
  %61 = load ptr, ptr %pGen.addr, align 8
  %pVm91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pVm91, align 8
  %sAllocator92 = getelementptr inbounds nuw %struct.ph7_vm, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %pIn, align 8
  %sData93 = getelementptr inbounds nuw %struct.SyToken, ptr %63, i32 0, i32 0
  %zString94 = getelementptr inbounds nuw %struct.SyString, ptr %sData93, i32 0, i32 0
  %64 = load ptr, ptr %zString94, align 8
  %65 = load ptr, ptr %pIn, align 8
  %sData95 = getelementptr inbounds nuw %struct.SyToken, ptr %65, i32 0, i32 0
  %nByte96 = getelementptr inbounds nuw %struct.SyString, ptr %sData95, i32 0, i32 1
  %66 = load i32, ptr %nByte96, align 8
  %call97 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator92, ptr noundef %64, i32 noundef %66)
  store ptr %call97, ptr %zDup, align 8
  %67 = load ptr, ptr %zDup, align 8
  %cmp98 = icmp eq ptr %67, null
  br i1 %cmp98, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.end89
  %68 = load ptr, ptr %pGen.addr, align 8
  %69 = load ptr, ptr %pIn, align 8
  %nLine101 = getelementptr inbounds nuw %struct.SyToken, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %nLine101, align 4
  %call102 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %68, i32 noundef 1, i32 noundef %70, ptr noundef @.str.209)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.end89
  %71 = load ptr, ptr %zDup, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 0
  %zString104 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %71, ptr %zString104, align 8
  %72 = load ptr, ptr %pIn, align 8
  %sData105 = getelementptr inbounds nuw %struct.SyToken, ptr %72, i32 0, i32 0
  %nByte106 = getelementptr inbounds nuw %struct.SyString, ptr %sData105, i32 0, i32 1
  %73 = load i32, ptr %nByte106, align 8
  %sName107 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 0
  %nByte108 = getelementptr inbounds nuw %struct.SyString, ptr %sName107, i32 0, i32 1
  store i32 %73, ptr %nByte108, align 8
  %74 = load ptr, ptr %pIn, align 8
  %incdec.ptr109 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 1
  store ptr %incdec.ptr109, ptr %pIn, align 8
  %75 = load ptr, ptr %pIn, align 8
  %76 = load ptr, ptr %pEnd.addr, align 8
  %cmp110 = icmp ult ptr %75, %76
  br i1 %cmp110, label %if.then112, label %if.end164

if.then112:                                       ; preds = %if.end103
  %77 = load ptr, ptr %pIn, align 8
  %nType113 = getelementptr inbounds nuw %struct.SyToken, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %nType113, align 8
  %and114 = and i32 %78, 4194304
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then116, label %if.end150

if.then116:                                       ; preds = %if.then112
  store i32 0, ptr %iNest, align 4
  %79 = load ptr, ptr %pIn, align 8
  %incdec.ptr117 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 1
  store ptr %incdec.ptr117, ptr %pIn, align 8
  %80 = load ptr, ptr %pIn, align 8
  store ptr %80, ptr %pDefend, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end137, %if.then116
  %81 = load ptr, ptr %pDefend, align 8
  %82 = load ptr, ptr %pEnd.addr, align 8
  %cmp118 = icmp ult ptr %81, %82
  br i1 %cmp118, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load ptr, ptr %pDefend, align 8
  %nType120 = getelementptr inbounds nuw %struct.SyToken, ptr %83, i32 0, i32 1
  %84 = load i32, ptr %nType120, align 8
  %and121 = and i32 %84, 131072
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %land.lhs.true, label %if.end126

land.lhs.true:                                    ; preds = %while.body
  %85 = load i32, ptr %iNest, align 4
  %cmp123 = icmp sle i32 %85, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %land.lhs.true
  br label %while.end

if.end126:                                        ; preds = %land.lhs.true, %while.body
  %86 = load ptr, ptr %pDefend, align 8
  %nType127 = getelementptr inbounds nuw %struct.SyToken, ptr %86, i32 0, i32 1
  %87 = load i32, ptr %nType127, align 8
  %and128 = and i32 %87, 2624
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then130, label %if.else131

if.then130:                                       ; preds = %if.end126
  %88 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end137

if.else131:                                       ; preds = %if.end126
  %89 = load ptr, ptr %pDefend, align 8
  %nType132 = getelementptr inbounds nuw %struct.SyToken, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %nType132, align 8
  %and133 = and i32 %90, 5248
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.else131
  %91 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.else131
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then130
  %92 = load ptr, ptr %pDefend, align 8
  %incdec.ptr138 = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 1
  store ptr %incdec.ptr138, ptr %pDefend, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then125, %while.cond
  %93 = load ptr, ptr %pIn, align 8
  %94 = load ptr, ptr %pDefend, align 8
  %cmp139 = icmp uge ptr %93, %94
  br i1 %cmp139, label %if.then141, label %if.end144

if.then141:                                       ; preds = %while.end
  %95 = load ptr, ptr %pGen.addr, align 8
  %96 = load ptr, ptr %pIn, align 8
  %nLine142 = getelementptr inbounds nuw %struct.SyToken, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %nLine142, align 4
  %call143 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %95, i32 noundef 1, i32 noundef %97, ptr noundef @.str.228)
  store i32 %call143, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  store i32 %98, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %while.end
  %99 = load ptr, ptr %pGen.addr, align 8
  %100 = load ptr, ptr %pIn, align 8
  %101 = load ptr, ptr %pDefend, align 8
  %call145 = call i32 @GenStateProcessArgValue(ptr noundef %99, ptr noundef %sArg, ptr noundef %100, ptr noundef %101)
  store i32 %call145, ptr %rc, align 4
  %102 = load i32, ptr %rc, align 4
  %cmp146 = icmp ne i32 %102, 0
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end144
  %103 = load i32, ptr %rc, align 4
  store i32 %103, ptr %retval, align 4
  br label %return

if.end149:                                        ; preds = %if.end144
  %104 = load ptr, ptr %pDefend, align 8
  store ptr %104, ptr %pIn, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then112
  %105 = load ptr, ptr %pIn, align 8
  %106 = load ptr, ptr %pEnd.addr, align 8
  %cmp151 = icmp ult ptr %105, %106
  br i1 %cmp151, label %land.lhs.true153, label %if.end162

land.lhs.true153:                                 ; preds = %if.end150
  %107 = load ptr, ptr %pIn, align 8
  %nType154 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %nType154, align 8
  %and155 = and i32 %108, 131072
  %cmp156 = icmp eq i32 %and155, 0
  br i1 %cmp156, label %if.then158, label %if.end162

if.then158:                                       ; preds = %land.lhs.true153
  %109 = load ptr, ptr %pGen.addr, align 8
  %110 = load ptr, ptr %pIn, align 8
  %nLine159 = getelementptr inbounds nuw %struct.SyToken, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %nLine159, align 4
  %112 = load ptr, ptr %pIn, align 8
  %sData160 = getelementptr inbounds nuw %struct.SyToken, ptr %112, i32 0, i32 0
  %call161 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %109, i32 noundef 1, i32 noundef %111, ptr noundef @.str.229, ptr noundef %sData160)
  store i32 %call161, ptr %rc, align 4
  %113 = load i32, ptr %rc, align 4
  store i32 %113, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %land.lhs.true153, %if.end150
  %114 = load ptr, ptr %pIn, align 8
  %incdec.ptr163 = getelementptr inbounds nuw %struct.SyToken, ptr %114, i32 1
  store ptr %incdec.ptr163, ptr %pIn, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.end162, %if.end103
  %nType165 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  %115 = load i32, ptr %nType165, align 8
  %cmp166 = icmp ugt i32 %115, 0
  br i1 %cmp166, label %if.then168, label %if.else187

if.then168:                                       ; preds = %if.end164
  %sClass169 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 3
  %nByte170 = getelementptr inbounds nuw %struct.SyString, ptr %sClass169, i32 0, i32 1
  %116 = load i32, ptr %nByte170, align 8
  %cmp171 = icmp ugt i32 %116, 0
  br i1 %cmp171, label %if.then173, label %if.else179

if.then173:                                       ; preds = %if.then168
  %sClass174 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 3
  %zString175 = getelementptr inbounds nuw %struct.SyString, ptr %sClass174, i32 0, i32 0
  %117 = load ptr, ptr %zString175, align 8
  %sClass176 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 3
  %nByte177 = getelementptr inbounds nuw %struct.SyString, ptr %sClass176, i32 0, i32 1
  %118 = load i32, ptr %nByte177, align 8
  %call178 = call i32 @SyBlobAppend(ptr noundef %sSig, ptr noundef %117, i32 noundef %118)
  br label %if.end186

if.else179:                                       ; preds = %if.then168
  store i32 110, ptr %c, align 4
  %nType180 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %sArg, i32 0, i32 2
  %119 = load i32, ptr %nType180, align 8
  switch i32 %119, label %sw.default [
    i32 64, label %sw.bb
    i32 2, label %sw.bb181
    i32 8, label %sw.bb182
    i32 4, label %sw.bb183
    i32 1, label %sw.bb184
  ]

sw.bb:                                            ; preds = %if.else179
  store i32 104, ptr %c, align 4
  br label %sw.epilog

sw.bb181:                                         ; preds = %if.else179
  store i32 105, ptr %c, align 4
  br label %sw.epilog

sw.bb182:                                         ; preds = %if.else179
  store i32 98, ptr %c, align 4
  br label %sw.epilog

sw.bb183:                                         ; preds = %if.else179
  store i32 102, ptr %c, align 4
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.else179
  store i32 115, ptr %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else179
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb184, %sw.bb183, %sw.bb182, %sw.bb181, %sw.bb
  %call185 = call i32 @SyBlobAppend(ptr noundef %sSig, ptr noundef %c, i32 noundef 1)
  br label %if.end186

if.end186:                                        ; preds = %sw.epilog, %if.then173
  br label %if.end189

if.else187:                                       ; preds = %if.end164
  %call188 = call i32 @SyBlobRelease(ptr noundef %sSig)
  br label %if.end189

if.end189:                                        ; preds = %if.else187, %if.end186
  %120 = load ptr, ptr %pFunc.addr, align 8
  %aArgs = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %120, i32 0, i32 0
  %call190 = call i32 @SySetPut(ptr noundef %aArgs, ptr noundef %sArg)
  br label %for.cond

for.end:                                          ; preds = %if.then
  %nByte191 = getelementptr inbounds nuw %struct.SyBlob, ptr %sSig, i32 0, i32 2
  %121 = load i32, ptr %nByte191, align 8
  %cmp192 = icmp ugt i32 %121, 0
  br i1 %cmp192, label %if.then194, label %if.end199

if.then194:                                       ; preds = %for.end
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sSig, i32 0, i32 1
  %122 = load ptr, ptr %pBlob, align 8
  %123 = load ptr, ptr %pFunc.addr, align 8
  %sSignature = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %123, i32 0, i32 6
  %zString195 = getelementptr inbounds nuw %struct.SyString, ptr %sSignature, i32 0, i32 0
  store ptr %122, ptr %zString195, align 8
  %nByte196 = getelementptr inbounds nuw %struct.SyBlob, ptr %sSig, i32 0, i32 2
  %124 = load i32, ptr %nByte196, align 8
  %125 = load ptr, ptr %pFunc.addr, align 8
  %sSignature197 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %125, i32 0, i32 6
  %nByte198 = getelementptr inbounds nuw %struct.SyString, ptr %sSignature197, i32 0, i32 1
  store i32 %124, ptr %nByte198, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end199, %if.then158, %if.then148, %if.then141, %if.then100, %if.then85, %if.then59
  %126 = load i32, ptr %retval, align 4
  ret i32 %126
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateProcessArgValue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
