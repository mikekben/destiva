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

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileLangConstruct(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pName = alloca ptr, align 8
  %nKeyID = alloca i32, align 4
  %rc = alloca i32, align 4
  %pTmp = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %nArg = alloca i32, align 4
  %nIdx = alloca i32, align 4
  %pObj = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn1, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pUserData, align 8
  %5 = ptrtoint ptr %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %nKeyID, align 4
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  %8 = load i32, ptr %nKeyID, align 4
  %cmp = icmp eq i32 %8, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %pNext, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pEnd, align 8
  store ptr %10, ptr %pTmp, align 8
  %11 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmEmitInstr(ptr noundef %12, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then
  %13 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pIn4, align 8
  %15 = load ptr, ptr %pTmp, align 8
  %call5 = call i32 @PH7_GetNextExpr(ptr noundef %14, ptr noundef %15, ptr noundef %pNext)
  %cmp6 = icmp eq i32 0, %call5
  br i1 %cmp6, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pGen.addr, align 8
  %pIn8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %pIn8, align 8
  %18 = load ptr, ptr %pNext, align 8
  %cmp9 = icmp ult ptr %17, %18
  br i1 %cmp9, label %if.then11, label %if.end23

if.then11:                                        ; preds = %while.body
  %19 = load ptr, ptr %pNext, align 8
  %20 = load ptr, ptr %pGen.addr, align 8
  %pEnd12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 13
  store ptr %19, ptr %pEnd12, align 8
  %21 = load ptr, ptr %pGen.addr, align 8
  %call13 = call i32 @PH7_CompileExpr(ptr noundef %21, i32 noundef 2, ptr noundef null)
  store i32 %call13, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %22, -10
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then11
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then11
  %23 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %23, -3
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end
  %24 = load ptr, ptr %pGen.addr, align 8
  %pVm20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pVm20, align 8
  %call21 = call i32 @PH7_VmEmitInstr(ptr noundef %25, i32 noundef 69, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %while.body
  br label %while.cond24

while.cond24:                                     ; preds = %while.body27, %if.end23
  %26 = load ptr, ptr %pNext, align 8
  %27 = load ptr, ptr %pTmp, align 8
  %cmp25 = icmp ult ptr %26, %27
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond24
  %28 = load ptr, ptr %pNext, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType, align 8
  %and = and i32 %29, 131072
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond24
  %30 = phi i1 [ false, %while.cond24 ], [ %tobool, %land.rhs ]
  br i1 %30, label %while.body27, label %while.end

while.body27:                                     ; preds = %land.end
  %31 = load ptr, ptr %pNext, align 8
  %incdec.ptr28 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 1
  store ptr %incdec.ptr28, ptr %pNext, align 8
  br label %while.cond24, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %pNext, align 8
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  store ptr %32, ptr %pIn29, align 8
  br label %while.cond, !llvm.loop !8

while.end30:                                      ; preds = %while.cond
  %34 = load ptr, ptr %pTmp, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %pEnd31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 13
  store ptr %34, ptr %pEnd31, align 8
  br label %if.end61

if.else:                                          ; preds = %entry
  store i32 0, ptr %nArg, align 4
  store i32 0, ptr %nIdx, align 4
  %36 = load ptr, ptr %pGen.addr, align 8
  %call32 = call i32 @PH7_CompileExpr(ptr noundef %36, i32 noundef 2, ptr noundef null)
  store i32 %call32, ptr %rc, align 4
  %37 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %37, -10
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else
  store i32 -10, ptr %retval, align 4
  br label %return

if.else36:                                        ; preds = %if.else
  %38 = load i32, ptr %rc, align 4
  %cmp37 = icmp ne i32 %38, -3
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.else36
  store i32 1, ptr %nArg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.else36
  br label %if.end41

if.end41:                                         ; preds = %if.end40
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load ptr, ptr %pName, align 8
  %call42 = call i32 @GenStateFindLiteral(ptr noundef %39, ptr noundef %40, ptr noundef %nIdx)
  %cmp43 = icmp ne i32 0, %call42
  br i1 %cmp43, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end41
  %41 = load ptr, ptr %pGen.addr, align 8
  %pVm46 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %pVm46, align 8
  %call47 = call ptr @PH7_ReserveConstObj(ptr noundef %42, ptr noundef %nIdx)
  store ptr %call47, ptr %pObj, align 8
  %43 = load ptr, ptr %pObj, align 8
  %cmp48 = icmp eq ptr %43, null
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then45
  %44 = load ptr, ptr %pGen.addr, align 8
  %call51 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %44, i32 noundef 1, i32 noundef 1, ptr noundef @.str.201)
  store i32 0, ptr %iCompileFlag.addr, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then45
  %45 = load ptr, ptr %pGen.addr, align 8
  %pVm53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pVm53, align 8
  %47 = load ptr, ptr %pObj, align 8
  %48 = load ptr, ptr %pName, align 8
  %call54 = call i32 @PH7_MemObjInitFromString(ptr noundef %46, ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %pGen.addr, align 8
  %50 = load ptr, ptr %pObj, align 8
  %51 = load i32, ptr %nIdx, align 4
  %call55 = call i32 @GenStateInstallLiteral(ptr noundef %49, ptr noundef %50, i32 noundef %51)
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.end41
  %52 = load ptr, ptr %pGen.addr, align 8
  %pVm57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %pVm57, align 8
  %54 = load i32, ptr %nIdx, align 4
  %call58 = call i32 @PH7_VmEmitInstr(ptr noundef %53, i32 noundef 4, i32 noundef 0, i32 noundef %54, ptr noundef null, ptr noundef null)
  %55 = load ptr, ptr %pGen.addr, align 8
  %pVm59 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pVm59, align 8
  %57 = load i32, ptr %nArg, align 4
  %call60 = call i32 @PH7_VmEmitInstr(ptr noundef %56, i32 noundef 18, i32 noundef %57, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end61

if.end61:                                         ; preds = %if.end56, %while.end30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.then50, %if.then35, %if.then16
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFindLiteral(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateInstallLiteral(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GetNextExpr(ptr noundef, ptr noundef, ptr noundef) #0

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
