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
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.203 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.204 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.206 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.207 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.208 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateLoadLiteral(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %pBlock = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %pObj114 = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  store ptr %1, ptr %pToken, align 8
  %2 = load ptr, ptr %pToken, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %2, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  %3 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %conv = zext i32 %4 to i64
  %cmp = icmp eq i64 %conv, 4
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zString, align 8
  %call = call i32 @SyStrnicmp(ptr noundef %6, ptr noundef @.str.203, i32 noundef 4)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %call5 = call i32 @PH7_VmEmitInstr(ptr noundef %8, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pStr, align 8
  %zString6 = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString6, align 8
  %call7 = call i32 @SyStrnicmp(ptr noundef %10, ptr noundef @.str.204, i32 noundef 4)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %pGen.addr, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm11, align 8
  %call12 = call i32 @PH7_VmEmitInstr(ptr noundef %12, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end108

if.else14:                                        ; preds = %entry
  %13 = load ptr, ptr %pStr, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nByte15, align 8
  %conv16 = zext i32 %14 to i64
  %cmp17 = icmp eq i64 %conv16, 5
  br i1 %cmp17, label %land.lhs.true, label %if.else26

land.lhs.true:                                    ; preds = %if.else14
  %15 = load ptr, ptr %pStr, align 8
  %zString19 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zString19, align 8
  %call20 = call i32 @SyStrnicmp(ptr noundef %16, ptr noundef @.str.205, i32 noundef 5)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else26

if.then23:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %pGen.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pVm24, align 8
  %call25 = call i32 @PH7_VmEmitInstr(ptr noundef %18, i32 noundef 4, i32 noundef 0, i32 noundef 2, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.else26:                                        ; preds = %land.lhs.true, %if.else14
  %19 = load ptr, ptr %pStr, align 8
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nByte27, align 8
  %conv28 = zext i32 %20 to i64
  %cmp29 = icmp eq i64 %conv28, 8
  br i1 %cmp29, label %land.lhs.true31, label %if.else50

land.lhs.true31:                                  ; preds = %if.else26
  %21 = load ptr, ptr %pStr, align 8
  %zString32 = getelementptr inbounds nuw %struct.SyString, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zString32, align 8
  %call33 = call i32 @SyMemcmp(ptr noundef %22, ptr noundef @.str.206, i32 noundef 8)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else50

if.then36:                                        ; preds = %land.lhs.true31
  %23 = load ptr, ptr %pGen.addr, align 8
  %pVm37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pVm37, align 8
  %call38 = call ptr @PH7_ReserveConstObj(ptr noundef %24, ptr noundef %nIdx)
  store ptr %call38, ptr %pObj, align 8
  %25 = load ptr, ptr %pObj, align 8
  %cmp39 = icmp eq ptr %25, null
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then36
  %26 = load ptr, ptr %pGen.addr, align 8
  %27 = load ptr, ptr %pToken, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nLine, align 4
  %call42 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %26, i32 noundef 1, i32 noundef %28, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then36
  %29 = load ptr, ptr %pGen.addr, align 8
  %pVm44 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm44, align 8
  %31 = load ptr, ptr %pObj, align 8
  %32 = load ptr, ptr %pToken, align 8
  %nLine45 = getelementptr inbounds nuw %struct.SyToken, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %nLine45, align 4
  %conv46 = zext i32 %33 to i64
  %call47 = call i32 @PH7_MemObjInitFromInt(ptr noundef %30, ptr noundef %31, i64 noundef %conv46)
  %34 = load ptr, ptr %pGen.addr, align 8
  %pVm48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pVm48, align 8
  %36 = load i32, ptr %nIdx, align 4
  %call49 = call i32 @PH7_VmEmitInstr(ptr noundef %35, i32 noundef 4, i32 noundef 0, i32 noundef %36, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.else50:                                        ; preds = %land.lhs.true31, %if.else26
  %37 = load ptr, ptr %pStr, align 8
  %nByte51 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte51, align 8
  %conv52 = zext i32 %38 to i64
  %cmp53 = icmp eq i64 %conv52, 12
  br i1 %cmp53, label %land.lhs.true55, label %lor.lhs.false

land.lhs.true55:                                  ; preds = %if.else50
  %39 = load ptr, ptr %pStr, align 8
  %zString56 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zString56, align 8
  %call57 = call i32 @SyMemcmp(ptr noundef %40, ptr noundef @.str.207, i32 noundef 12)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true55, %if.else50
  %41 = load ptr, ptr %pStr, align 8
  %nByte60 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nByte60, align 8
  %conv61 = zext i32 %42 to i64
  %cmp62 = icmp eq i64 %conv61, 10
  br i1 %cmp62, label %land.lhs.true64, label %if.end105

land.lhs.true64:                                  ; preds = %lor.lhs.false
  %43 = load ptr, ptr %pStr, align 8
  %zString65 = getelementptr inbounds nuw %struct.SyString, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %zString65, align 8
  %call66 = call i32 @SyMemcmp(ptr noundef %44, ptr noundef @.str.208, i32 noundef 10)
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end105

if.then69:                                        ; preds = %land.lhs.true64, %land.lhs.true55
  %45 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %pCurrent, align 8
  store ptr %46, ptr %pBlock, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then69
  %47 = load ptr, ptr %pBlock, align 8
  %tobool = icmp ne ptr %47, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %48 = load ptr, ptr %pBlock, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %iFlags, align 4
  %and = and i32 %49, 8
  %cmp70 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %50, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %pParent, align 8
  store ptr %52, ptr %pBlock, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %53 = load ptr, ptr %pBlock, align 8
  %cmp72 = icmp eq ptr %53, null
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %while.end
  %54 = load ptr, ptr %pGen.addr, align 8
  %pVm75 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pVm75, align 8
  %call76 = call i32 @PH7_VmEmitInstr(ptr noundef %55, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end104

if.else77:                                        ; preds = %while.end
  %56 = load ptr, ptr %pBlock, align 8
  %pUserData = getelementptr inbounds nuw %struct.GenBlock, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %pUserData, align 8
  store ptr %57, ptr %pFunc, align 8
  %58 = load ptr, ptr %pStr, align 8
  %zString78 = getelementptr inbounds nuw %struct.SyString, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zString78, align 8
  %arrayidx = getelementptr inbounds i8, ptr %59, i64 2
  %60 = load i8, ptr %arrayidx, align 1
  %conv79 = sext i8 %60 to i32
  %cmp80 = icmp eq i32 %conv79, 77
  br i1 %cmp80, label %land.lhs.true82, label %if.else90

land.lhs.true82:                                  ; preds = %if.else77
  %61 = load ptr, ptr %pFunc, align 8
  %iFlags83 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %iFlags83, align 8
  %and84 = and i32 %62, 8
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %if.then87, label %if.else90

if.then87:                                        ; preds = %land.lhs.true82
  %63 = load ptr, ptr %pGen.addr, align 8
  %pVm88 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %pVm88, align 8
  %call89 = call i32 @PH7_VmEmitInstr(ptr noundef %64, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end103

if.else90:                                        ; preds = %land.lhs.true82, %if.else77
  %65 = load ptr, ptr %pGen.addr, align 8
  %pVm91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %pVm91, align 8
  %call92 = call ptr @PH7_ReserveConstObj(ptr noundef %66, ptr noundef %nIdx)
  store ptr %call92, ptr %pObj, align 8
  %67 = load ptr, ptr %pObj, align 8
  %cmp93 = icmp eq ptr %67, null
  br i1 %cmp93, label %if.then95, label %if.end98

if.then95:                                        ; preds = %if.else90
  %68 = load ptr, ptr %pGen.addr, align 8
  %69 = load ptr, ptr %pToken, align 8
  %nLine96 = getelementptr inbounds nuw %struct.SyToken, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %nLine96, align 4
  %call97 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %68, i32 noundef 1, i32 noundef %70, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.else90
  %71 = load ptr, ptr %pGen.addr, align 8
  %pVm99 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %pVm99, align 8
  %73 = load ptr, ptr %pObj, align 8
  %74 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %74, i32 0, i32 2
  %call100 = call i32 @PH7_MemObjInitFromString(ptr noundef %72, ptr noundef %73, ptr noundef %sName)
  %75 = load ptr, ptr %pGen.addr, align 8
  %pVm101 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %pVm101, align 8
  %77 = load i32, ptr %nIdx, align 4
  %call102 = call i32 @PH7_VmEmitInstr(ptr noundef %76, i32 noundef 4, i32 noundef 0, i32 noundef %77, ptr noundef null, ptr noundef null)
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %if.then87
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %land.lhs.true64, %lor.lhs.false
  br label %if.end106

if.end106:                                        ; preds = %if.end105
  br label %if.end107

if.end107:                                        ; preds = %if.end106
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end13
  %78 = load ptr, ptr %pGen.addr, align 8
  %79 = load ptr, ptr %pToken, align 8
  %sData109 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 0, i32 0
  %call110 = call i32 @GenStateFindLiteral(ptr noundef %78, ptr noundef %sData109, ptr noundef %nIdx)
  %cmp111 = icmp ne i32 0, %call110
  br i1 %cmp111, label %if.then113, label %if.end126

if.then113:                                       ; preds = %if.end108
  %80 = load ptr, ptr %pGen.addr, align 8
  %pVm115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %pVm115, align 8
  %call116 = call ptr @PH7_ReserveConstObj(ptr noundef %81, ptr noundef %nIdx)
  store ptr %call116, ptr %pObj114, align 8
  %82 = load ptr, ptr %pObj114, align 8
  %cmp117 = icmp eq ptr %82, null
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.then113
  %83 = load ptr, ptr %pGen.addr, align 8
  %call120 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %83, i32 noundef 1, i32 noundef 1, ptr noundef @.str.209)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end121:                                        ; preds = %if.then113
  %84 = load ptr, ptr %pGen.addr, align 8
  %pVm122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %pVm122, align 8
  %86 = load ptr, ptr %pObj114, align 8
  %87 = load ptr, ptr %pToken, align 8
  %sData123 = getelementptr inbounds nuw %struct.SyToken, ptr %87, i32 0, i32 0
  %call124 = call i32 @PH7_MemObjInitFromString(ptr noundef %85, ptr noundef %86, ptr noundef %sData123)
  %88 = load ptr, ptr %pGen.addr, align 8
  %89 = load ptr, ptr %pObj114, align 8
  %90 = load i32, ptr %nIdx, align 4
  %call125 = call i32 @GenStateInstallLiteral(ptr noundef %88, ptr noundef %89, i32 noundef %90)
  br label %if.end126

if.end126:                                        ; preds = %if.end121, %if.end108
  %91 = load ptr, ptr %pGen.addr, align 8
  %pVm127 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %pVm127, align 8
  %93 = load i32, ptr %nIdx, align 4
  %call128 = call i32 @PH7_VmEmitInstr(ptr noundef %92, i32 noundef 4, i32 noundef 1, i32 noundef %93, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end126, %if.then119, %if.end104, %if.then95, %if.end43, %if.then41, %if.then23, %if.then10, %if.then4
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFindLiteral(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateInstallLiteral(ptr noundef, ptr noundef, i32 noundef) #0

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
