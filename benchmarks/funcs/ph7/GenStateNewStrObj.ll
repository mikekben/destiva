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
define hidden ptr @GenStateNewStrObj(ptr noundef %pGen, ptr noundef %pCount) #0 {
entry:
  %retval = alloca ptr, align 8
  %pGen.addr = alloca ptr, align 8
  %pCount.addr = alloca ptr, align 8
  %pConstObj = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pCount, ptr %pCount.addr, align 8
  store i32 0, ptr %nIdx, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_ReserveConstObj(ptr noundef %1, ptr noundef %nIdx)
  store ptr %call, ptr %pConstObj, align 8
  %2 = load ptr, ptr %pConstObj, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nLine, align 4
  %call1 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %3, i32 noundef 1, i32 noundef %6, ptr noundef @.str.209)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pCount.addr, align 8
  %8 = load i32, ptr %7, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %7, align 4
  %9 = load ptr, ptr %pGen.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm2, align 8
  %11 = load ptr, ptr %pConstObj, align 8
  %call3 = call i32 @PH7_MemObjInitFromString(ptr noundef %10, ptr noundef %11, ptr noundef null)
  %12 = load ptr, ptr %pGen.addr, align 8
  %pVm4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm4, align 8
  %14 = load i32, ptr %nIdx, align 4
  %call5 = call i32 @PH7_VmEmitInstr(ptr noundef %13, i32 noundef 4, i32 noundef 0, i32 noundef %14, ptr noundef null, ptr noundef null)
  %15 = load ptr, ptr %pConstObj, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
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
