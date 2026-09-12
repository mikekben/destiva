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
%struct.ph7_case_expr = type { %struct.SySet, i32 }

@.str.302 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileCaseExpr(ptr noundef %pGen, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pInstrContainer = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %iNest = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %iNest, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  store ptr %1, ptr %pEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load ptr, ptr %pEnd, align 8
  %3 = load ptr, ptr %pGen.addr, align 8
  %pEnd1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %pEnd1, align 8
  %cmp = icmp ult ptr %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pEnd, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nType, align 8
  %and = and i32 %6, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end13

if.else:                                          ; preds = %while.body
  %8 = load ptr, ptr %pEnd, align 8
  %nType2 = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nType2, align 8
  %and3 = and i32 %9, 1024
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %10 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end12

if.else6:                                         ; preds = %if.else
  %11 = load ptr, ptr %pEnd, align 8
  %nType7 = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nType7, align 8
  %and8 = and i32 %12, 1310720
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else6
  %13 = load i32, ptr %iNest, align 4
  %cmp10 = icmp slt i32 %13, 1
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %if.else6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then5
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %14 = load ptr, ptr %pEnd, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %pEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then11, %while.cond
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn14, align 8
  %17 = load ptr, ptr %pEnd, align 8
  %cmp15 = icmp uge ptr %16, %17
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %while.end
  %18 = load ptr, ptr %pGen.addr, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn17, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %18, i32 noundef 1, i32 noundef %21, ptr noundef @.str.302)
  store i32 %call, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %22, -10
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -10, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.end
  %23 = load ptr, ptr %pGen.addr, align 8
  %pEnd22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %pEnd22, align 8
  store ptr %24, ptr %pTmp, align 8
  %25 = load ptr, ptr %pEnd, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pEnd23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 13
  store ptr %25, ptr %pEnd23, align 8
  %27 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pVm, align 8
  %call24 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %28)
  store ptr %call24, ptr %pInstrContainer, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pVm25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm25, align 8
  %31 = load ptr, ptr %pExpr.addr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %31, i32 0, i32 0
  %call26 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %30, ptr noundef %aByteCode)
  %32 = load ptr, ptr %pGen.addr, align 8
  %call27 = call i32 @PH7_CompileExpr(ptr noundef %32, i32 noundef 0, ptr noundef null)
  store i32 %call27, ptr %rc, align 4
  %33 = load ptr, ptr %pGen.addr, align 8
  %pVm28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pVm28, align 8
  %35 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %35, -3
  %36 = zext i1 %cmp29 to i64
  %cond = select i1 %cmp29, i32 1, i32 0
  %call30 = call i32 @PH7_VmEmitInstr(ptr noundef %34, i32 noundef 1, i32 noundef %cond, i32 noundef 0, ptr noundef null, ptr noundef null)
  %37 = load ptr, ptr %pGen.addr, align 8
  %pVm31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pVm31, align 8
  %39 = load ptr, ptr %pInstrContainer, align 8
  %call32 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %pEnd, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  store ptr %40, ptr %pIn33, align 8
  %42 = load ptr, ptr %pTmp, align 8
  %43 = load ptr, ptr %pGen.addr, align 8
  %pEnd34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 13
  store ptr %42, ptr %pEnd34, align 8
  %44 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %44, -10
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end21
  store i32 -10, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then36, %if.then19
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
