; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@PH7_CompileAnnonFunc.iCnt = external hidden global i32, align 4
@.str.219 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBufferFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileAnnonFunc(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pAnnonFunc = alloca ptr, align 8
  %zName = alloca [512 x i8], align 16
  %pObj = alloca ptr, align 8
  %sName = alloca %struct.SyString, align 8
  %nIdx = alloca i32, align 4
  %nLen = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn1, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nType, align 8
  %and = and i32 %4, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn2, align 8
  %incdec.ptr3 = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 1
  store ptr %incdec.ptr3, ptr %pIn2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_ReserveConstObj(ptr noundef %8, ptr noundef %nIdx)
  store ptr %call, ptr %pObj, align 8
  %9 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %pGen.addr, align 8
  %call5 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef @.str.201)
  store i32 0, ptr %iCompileFlag.addr, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [512 x i8], ptr %zName, i64 0, i64 0
  %11 = load i32, ptr @PH7_CompileAnnonFunc.iCnt, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr @PH7_CompileAnnonFunc.iCnt, align 4
  %call7 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay, i32 noundef 512, ptr noundef @.str.219, i32 noundef %11)
  store i32 %call7, ptr %nLen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %12 = load ptr, ptr %pGen.addr, align 8
  %pVm8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm8, align 8
  %hFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 13
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %zName, i64 0, i64 0
  %14 = load i32, ptr %nLen, align 4
  %call10 = call ptr @SyHashGet(ptr noundef %hFunction, ptr noundef %arraydecay9, i32 noundef %14)
  %cmp11 = icmp ne ptr %call10, null
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i32, ptr %nLen, align 4
  %conv = zext i32 %15 to i64
  %cmp12 = icmp ult i64 %conv, 510
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %arraydecay14 = getelementptr inbounds [512 x i8], ptr %zName, i64 0, i64 0
  %17 = load i32, ptr @PH7_CompileAnnonFunc.iCnt, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, ptr @PH7_CompileAnnonFunc.iCnt, align 4
  %call16 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay14, i32 noundef 512, ptr noundef @.str.219, i32 noundef %17)
  store i32 %call16, ptr %nLen, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %arraydecay17 = getelementptr inbounds [512 x i8], ptr %zName, i64 0, i64 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %arraydecay17, ptr %zString, align 8
  %18 = load i32, ptr %nLen, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %18, ptr %nByte, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pVm18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pVm18, align 8
  %21 = load ptr, ptr %pObj, align 8
  %call19 = call i32 @PH7_MemObjInitFromString(ptr noundef %20, ptr noundef %21, ptr noundef %sName)
  %22 = load ptr, ptr %pGen.addr, align 8
  %call20 = call i32 @GenStateCompileFunc(ptr noundef %22, ptr noundef %sName, i32 noundef 0, i32 noundef 1, ptr noundef %pAnnonFunc)
  store i32 %call20, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %23, -10
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %while.end
  %24 = load ptr, ptr %pAnnonFunc, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %iFlags, align 8
  %and25 = and i32 %25, 16
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm28, align 8
  %28 = load ptr, ptr %pAnnonFunc, align 8
  %call29 = call i32 @PH7_VmEmitInstr(ptr noundef %27, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef null)
  br label %if.end32

if.else:                                          ; preds = %if.end24
  %29 = load ptr, ptr %pGen.addr, align 8
  %pVm30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm30, align 8
  %31 = load i32, ptr %nIdx, align 4
  %call31 = call i32 @PH7_VmEmitInstr(ptr noundef %30, i32 noundef 4, i32 noundef 0, i32 noundef %31, ptr noundef null, ptr noundef null)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then23, %if.then4
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileFunc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

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
