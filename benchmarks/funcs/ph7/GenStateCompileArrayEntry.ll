; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileArrayEntry(ptr noundef %pGen, ptr noundef %pIn, ptr noundef %pEnd, i32 noundef %iFlags, ptr noundef %xValidator) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %xValidator.addr = alloca ptr, align 8
  %pTmpIn = alloca ptr, align 8
  %pTmpEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store ptr %xValidator, ptr %xValidator.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn1, align 8
  store ptr %1, ptr %pTmpIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd2, align 8
  store ptr %3, ptr %pTmpEnd, align 8
  %4 = load ptr, ptr %pIn.addr, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  store ptr %4, ptr %pIn3, align 8
  %6 = load ptr, ptr %pEnd.addr, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  store ptr %6, ptr %pEnd4, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %9 = load i32, ptr %iFlags.addr, align 4
  %10 = load ptr, ptr %xValidator.addr, align 8
  %call = call i32 @PH7_CompileExpr(ptr noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  %11 = load ptr, ptr %pTmpIn, align 8
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  store ptr %11, ptr %pIn5, align 8
  %13 = load ptr, ptr %pTmpEnd, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pEnd6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 13
  store ptr %13, ptr %pEnd6, align 8
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
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
