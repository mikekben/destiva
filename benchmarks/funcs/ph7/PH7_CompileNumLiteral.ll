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

@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @PH7_TokenValueToInt64(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileNumLiteral(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pToken = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %pObj = alloca ptr, align 8
  %iValue = alloca i64, align 8
  %pObj4 = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  store ptr %1, ptr %pToken, align 8
  store i32 0, ptr %nIdx, align 4
  %2 = load ptr, ptr %pToken, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nType, align 8
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pToken, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 0, i32 0
  %call = call i64 @PH7_TokenValueToInt64(ptr noundef %sData)
  store i64 %call, ptr %iValue, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %call1 = call ptr @GenStateInstallNumLiteral(ptr noundef %5, ptr noundef %nIdx)
  store ptr %call1, ptr %pObj, align 8
  %6 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %iCompileFlag.addr, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %9 = load ptr, ptr %pObj, align 8
  %10 = load i64, ptr %iValue, align 8
  %call3 = call i32 @PH7_MemObjInitFromInt(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  br label %if.end15

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pGen.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm5, align 8
  %call6 = call ptr @PH7_ReserveConstObj(ptr noundef %12, ptr noundef %nIdx)
  store ptr %call6, ptr %pObj4, align 8
  %13 = load ptr, ptr %pObj4, align 8
  %cmp7 = icmp eq ptr %13, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %pGen.addr, align 8
  %call9 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef @.str.209)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.else
  %15 = load ptr, ptr %pGen.addr, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVm11, align 8
  %17 = load ptr, ptr %pObj4, align 8
  %18 = load ptr, ptr %pToken, align 8
  %sData12 = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 0
  %call13 = call i32 @PH7_MemObjInitFromString(ptr noundef %16, ptr noundef %17, ptr noundef %sData12)
  %19 = load ptr, ptr %pObj4, align 8
  %call14 = call i32 @PH7_MemObjToReal(ptr noundef %19)
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end
  %20 = load ptr, ptr %pGen.addr, align 8
  %pVm16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pVm16, align 8
  %22 = load i32, ptr %nIdx, align 4
  %call17 = call i32 @PH7_VmEmitInstr(ptr noundef %21, i32 noundef 4, i32 noundef 0, i32 noundef %22, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then8, %if.then2
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden ptr @GenStateInstallNumLiteral(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
