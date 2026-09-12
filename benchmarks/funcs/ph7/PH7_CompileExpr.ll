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
define hidden i32 @PH7_CompileExpr(ptr noundef %pGen, i32 noundef %iFlags, ptr noundef %xTreeValidator) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %xTreeValidator.addr = alloca ptr, align 8
  %pRoot = alloca ptr, align 8
  %sExprNode = alloca %struct.SySet, align 8
  %pEnd = alloca ptr, align 8
  %nExpr = alloca i32, align 4
  %iNest = alloca i32, align 4
  %rc = alloca i32, align 4
  %pEnd220 = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store ptr %xTreeValidator, ptr %xTreeValidator.addr, align 8
  store i32 0, ptr %nExpr, align 4
  store ptr null, ptr %pRoot, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sExprNode, ptr noundef %sAllocator, i32 noundef 8)
  %call1 = call i32 @SySetAlloc(ptr noundef %sExprNode, i32 noundef 16)
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn, align 8
  store ptr %3, ptr %pEnd, align 8
  store i32 0, ptr %iNest, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %4 = load ptr, ptr %pEnd, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %pEnd2, align 8
  %cmp = icmp ult ptr %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %pEnd, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType, align 8
  %and = and i32 %8, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end16

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %pEnd, align 8
  %nType3 = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType3, align 8
  %and4 = and i32 %11, 128
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %12 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end15

if.else7:                                         ; preds = %if.else
  %13 = load ptr, ptr %pEnd, align 8
  %nType8 = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nType8, align 8
  %and9 = and i32 %14, 262144
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else7
  %15 = load i32, ptr %iNest, align 4
  %cmp12 = icmp sle i32 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then11
  br label %while.end

if.end:                                           ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.else7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then6
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %16 = load ptr, ptr %pEnd, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then13, %while.cond
  %17 = load i32, ptr %iFlags.addr, align 4
  %and17 = and i32 %17, 4
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end52

if.then19:                                        ; preds = %while.end
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pIn21, align 8
  store ptr %19, ptr %pEnd220, align 8
  store i32 0, ptr %iNest, align 4
  br label %while.cond22

while.cond22:                                     ; preds = %if.end46, %if.then19
  %20 = load ptr, ptr %pEnd220, align 8
  %21 = load ptr, ptr %pEnd, align 8
  %cmp23 = icmp ult ptr %20, %21
  br i1 %cmp23, label %while.body24, label %while.end48

while.body24:                                     ; preds = %while.cond22
  %22 = load ptr, ptr %pEnd220, align 8
  %nType25 = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nType25, align 8
  %and26 = and i32 %23, 2624
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %while.body24
  %24 = load i32, ptr %iNest, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, ptr %iNest, align 4
  br label %if.end46

if.else30:                                        ; preds = %while.body24
  %25 = load ptr, ptr %pEnd220, align 8
  %nType31 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nType31, align 8
  %and32 = and i32 %26, 5248
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else30
  %27 = load i32, ptr %iNest, align 4
  %dec35 = add nsw i32 %27, -1
  store i32 %dec35, ptr %iNest, align 4
  br label %if.end45

if.else36:                                        ; preds = %if.else30
  %28 = load ptr, ptr %pEnd220, align 8
  %nType37 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType37, align 8
  %and38 = and i32 %29, 131072
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.else36
  %30 = load i32, ptr %iNest, align 4
  %cmp41 = icmp sle i32 %30, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then40
  br label %while.end48

if.end43:                                         ; preds = %if.then40
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then34
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then28
  %31 = load ptr, ptr %pEnd220, align 8
  %incdec.ptr47 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 1
  store ptr %incdec.ptr47, ptr %pEnd220, align 8
  br label %while.cond22, !llvm.loop !8

while.end48:                                      ; preds = %if.then42, %while.cond22
  %32 = load ptr, ptr %pEnd220, align 8
  %33 = load ptr, ptr %pEnd, align 8
  %cmp49 = icmp ult ptr %32, %33
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %while.end48
  %34 = load ptr, ptr %pEnd220, align 8
  store ptr %34, ptr %pEnd, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %while.end48
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %while.end
  %35 = load ptr, ptr %pEnd, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn53, align 8
  %cmp54 = icmp ugt ptr %35, %37
  br i1 %cmp54, label %if.then55, label %if.end78

if.then55:                                        ; preds = %if.end52
  %38 = load ptr, ptr %pGen.addr, align 8
  %pEnd56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %pEnd56, align 8
  store ptr %39, ptr %pTmp, align 8
  %40 = load ptr, ptr %pEnd, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pEnd57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 13
  store ptr %40, ptr %pEnd57, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %call58 = call i32 @PH7_ExprMakeTree(ptr noundef %42, ptr noundef %sExprNode, ptr noundef %pRoot)
  store i32 %call58, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp59 = icmp eq i32 %43, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.then55
  %44 = load ptr, ptr %pRoot, align 8
  %tobool60 = icmp ne ptr %44, null
  br i1 %tobool60, label %if.then61, label %if.end70

if.then61:                                        ; preds = %land.lhs.true
  store i32 0, ptr %rc, align 4
  %45 = load ptr, ptr %xTreeValidator.addr, align 8
  %tobool62 = icmp ne ptr %45, null
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then61
  %46 = load ptr, ptr %xTreeValidator.addr, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %48 = load ptr, ptr %pRoot, align 8
  %call64 = call i32 %46(ptr noundef %47, ptr noundef %48)
  store i32 %call64, ptr %rc, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then61
  %49 = load i32, ptr %rc, align 4
  %cmp66 = icmp ne i32 %49, -10
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  %50 = load ptr, ptr %pGen.addr, align 8
  %51 = load ptr, ptr %pRoot, align 8
  %52 = load i32, ptr %iFlags.addr, align 4
  %call68 = call i32 @GenStateEmitExprCode(ptr noundef %50, ptr noundef %51, i32 noundef %52)
  store i32 %call68, ptr %rc, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65
  store i32 1, ptr %nExpr, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %land.lhs.true, %if.then55
  %53 = load ptr, ptr %pGen.addr, align 8
  %call71 = call i32 @PH7_ExprFreeTree(ptr noundef %53, ptr noundef %sExprNode)
  %54 = load ptr, ptr %pTmp, align 8
  %55 = load ptr, ptr %pGen.addr, align 8
  %pEnd72 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 13
  store ptr %54, ptr %pEnd72, align 8
  %56 = load ptr, ptr %pEnd, align 8
  %57 = load ptr, ptr %pGen.addr, align 8
  %pIn73 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 12
  store ptr %56, ptr %pIn73, align 8
  %58 = load i32, ptr %rc, align 4
  %cmp74 = icmp eq i32 %58, -10
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end70
  %call76 = call i32 @SySetRelease(ptr noundef %sExprNode)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end52
  %call79 = call i32 @SySetRelease(ptr noundef %sExprNode)
  %59 = load i32, ptr %nExpr, align 4
  %cmp80 = icmp sgt i32 %59, 0
  %60 = zext i1 %cmp80 to i64
  %cond = select i1 %cmp80, i32 0, i32 -3
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then75
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ExprMakeTree(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEmitExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ExprFreeTree(ptr noundef, ptr noundef) #0

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
