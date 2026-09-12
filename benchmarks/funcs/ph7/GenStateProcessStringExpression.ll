; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_TokenizePHP(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateProcessStringExpression(ptr noundef %pGen, i32 noundef %nLine, ptr noundef %zIn, ptr noundef %zEnd) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %nLine.addr = alloca i32, align 4
  %zIn.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %pTmpIn = alloca ptr, align 8
  %pTmpEnd = alloca ptr, align 8
  %sToken = alloca %struct.SySet, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %nLine, ptr %nLine.addr, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sToken, ptr noundef %sAllocator, i32 noundef 32)
  %call1 = call i32 @SySetAlloc(ptr noundef %sToken, i32 noundef 8)
  %2 = load ptr, ptr %zIn.addr, align 8
  %3 = load ptr, ptr %zEnd.addr, align 8
  %4 = load ptr, ptr %zIn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %5 = load i32, ptr %nLine.addr, align 4
  %call2 = call i32 @PH7_TokenizePHP(ptr noundef %2, i32 noundef %conv, i32 noundef %5, ptr noundef %sToken)
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn, align 8
  store ptr %7, ptr %pTmpIn, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pEnd, align 8
  store ptr %9, ptr %pTmpEnd, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sToken, i32 0, i32 1
  %10 = load ptr, ptr %pBase, align 8
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  store ptr %10, ptr %pIn3, align 8
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn4, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sToken, i32 0, i32 2
  %14 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyToken, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %pGen.addr, align 8
  %pEnd5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 13
  store ptr %arrayidx, ptr %pEnd5, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %call6 = call i32 @PH7_CompileExpr(ptr noundef %16, i32 noundef 0, ptr noundef null)
  store i32 %call6, ptr %rc, align 4
  %17 = load ptr, ptr %pTmpIn, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  store ptr %17, ptr %pIn7, align 8
  %19 = load ptr, ptr %pTmpEnd, align 8
  %20 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 13
  store ptr %19, ptr %pEnd8, align 8
  %call9 = call i32 @SySetRelease(ptr noundef %sToken)
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
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
