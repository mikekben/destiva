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
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileNowDoc(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pStr = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  store i32 0, ptr %nIdx, align 4
  %2 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nByte, align 8
  %cmp = icmp ule i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmEmitInstr(ptr noundef %5, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pGen.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm1, align 8
  %call2 = call ptr @PH7_ReserveConstObj(ptr noundef %7, ptr noundef %nIdx)
  store ptr %call2, ptr %pObj, align 8
  %8 = load ptr, ptr %pObj, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pGen.addr, align 8
  %10 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pIn5, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nLine, align 4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %9, i32 noundef 1, i32 noundef %12, ptr noundef @.str.209)
  store i32 0, ptr %iCompileFlag.addr, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %pGen.addr, align 8
  %pVm8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVm8, align 8
  %15 = load ptr, ptr %pObj, align 8
  %16 = load ptr, ptr %pStr, align 8
  %call9 = call i32 @PH7_MemObjInitFromString(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %pGen.addr, align 8
  %pVm10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pVm10, align 8
  %19 = load i32, ptr %nIdx, align 4
  %call11 = call i32 @PH7_VmEmitInstr(ptr noundef %18, i32 noundef 4, i32 noundef 0, i32 noundef %19, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
