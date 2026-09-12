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

@.str.211 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.212 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.213 = external hidden unnamed_addr constant [37 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileArray(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %xValidator = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %iEmitRef = alloca i32, align 4
  %nPair = alloca i32, align 4
  %iNest = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  store i32 0, ptr %iEmitRef, align 4
  store i32 0, ptr %nPair, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %1, i64 2
  store ptr %add.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  %incdec.ptr = getelementptr inbounds %struct.SyToken, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %pEnd, align 8
  store ptr null, ptr %xValidator, align 8
  store i32 0, ptr %iCompileFlag.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end90, %if.then13, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn1, align 8
  %6 = load ptr, ptr %pGen.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %pEnd2, align 8
  %cmp = icmp ult ptr %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %pIn3, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nType, align 8
  %and = and i32 %10, 131072
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn4, align 8
  %incdec.ptr5 = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 1
  store ptr %incdec.ptr5, ptr %pIn4, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pIn6, align 8
  store ptr %15, ptr %pCur, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %pIn7, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 13
  %19 = load ptr, ptr %pEnd8, align 8
  %20 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 12
  %call = call i32 @PH7_GetNextExpr(ptr noundef %17, ptr noundef %19, ptr noundef %pIn9)
  %cmp10 = icmp ne i32 0, %call
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %21 = load ptr, ptr %pCur, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn11, align 8
  %cmp12 = icmp uge ptr %21, %23
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %for.cond

if.end14:                                         ; preds = %if.end
  %24 = load ptr, ptr %pCur, align 8
  store ptr %24, ptr %pKey, align 8
  store i32 0, ptr %iNest, align 4
  br label %while.cond15

while.cond15:                                     ; preds = %if.end34, %if.end14
  %25 = load ptr, ptr %pCur, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn16, align 8
  %cmp17 = icmp ult ptr %25, %27
  br i1 %cmp17, label %while.body18, label %while.end36

while.body18:                                     ; preds = %while.cond15
  %28 = load ptr, ptr %pCur, align 8
  %nType19 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType19, align 8
  %and20 = and i32 %29, 8388608
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %while.body18
  %30 = load i32, ptr %iNest, align 4
  %cmp22 = icmp sle i32 %30, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  br label %while.end36

if.end24:                                         ; preds = %land.lhs.true, %while.body18
  %31 = load ptr, ptr %pCur, align 8
  %nType25 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %nType25, align 8
  %and26 = and i32 %32, 512
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %33 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end24
  %34 = load ptr, ptr %pCur, align 8
  %nType29 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %nType29, align 8
  %and30 = and i32 %35, 1024
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else
  %36 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then28
  %37 = load ptr, ptr %pCur, align 8
  %incdec.ptr35 = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 1
  store ptr %incdec.ptr35, ptr %pCur, align 8
  br label %while.cond15, !llvm.loop !8

while.end36:                                      ; preds = %if.then23, %while.cond15
  store i32 -3, ptr %rc, align 4
  %38 = load ptr, ptr %pCur, align 8
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn37, align 8
  %cmp38 = icmp ult ptr %38, %40
  br i1 %cmp38, label %if.then39, label %if.else53

if.then39:                                        ; preds = %while.end36
  %41 = load ptr, ptr %pCur, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %41, i64 1
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn40, align 8
  %cmp41 = icmp uge ptr %arrayidx, %43
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.then39
  %44 = load ptr, ptr %pGen.addr, align 8
  %45 = load ptr, ptr %pCur, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %nLine, align 4
  %call43 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %44, i32 noundef 1, i32 noundef %46, ptr noundef @.str.211)
  store i32 %call43, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %47, -10
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then42
  store i32 -10, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then42
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.then39
  %48 = load ptr, ptr %pGen.addr, align 8
  %49 = load ptr, ptr %pKey, align 8
  %50 = load ptr, ptr %pCur, align 8
  %call48 = call i32 @GenStateCompileArrayEntry(ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef 2, ptr noundef null)
  store i32 %call48, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %51, -10
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end47
  %52 = load ptr, ptr %pCur, align 8
  %incdec.ptr52 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 1
  store ptr %incdec.ptr52, ptr %pCur, align 8
  br label %if.end61

if.else53:                                        ; preds = %while.end36
  %53 = load ptr, ptr %pKey, align 8
  %54 = load ptr, ptr %pCur, align 8
  %cmp54 = icmp eq ptr %53, %54
  br i1 %cmp54, label %if.then55, label %if.else59

if.then55:                                        ; preds = %if.else53
  %55 = load ptr, ptr %pGen.addr, align 8
  %56 = load ptr, ptr %pCur, align 8
  %nLine56 = getelementptr inbounds nuw %struct.SyToken, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %nLine56, align 4
  %call57 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %55, i32 noundef 2, i32 noundef %57, ptr noundef @.str.212)
  %58 = load ptr, ptr %pCur, align 8
  %incdec.ptr58 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 1
  store ptr %incdec.ptr58, ptr %pCur, align 8
  br label %if.end60

if.else59:                                        ; preds = %if.else53
  %59 = load ptr, ptr %pKey, align 8
  store ptr %59, ptr %pCur, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end51
  %60 = load i32, ptr %rc, align 4
  %cmp62 = icmp eq i32 %60, -3
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end61
  %61 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pVm, align 8
  %call64 = call i32 @PH7_VmEmitInstr(ptr noundef %62, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61
  %63 = load ptr, ptr %pCur, align 8
  %nType66 = getelementptr inbounds nuw %struct.SyToken, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %nType66, align 8
  %and67 = and i32 %64, 2097152
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.end80

if.then69:                                        ; preds = %if.end65
  store ptr @GenStateArrayNodeValidator, ptr %xValidator, align 8
  store i32 1, ptr %iEmitRef, align 4
  %65 = load ptr, ptr %pCur, align 8
  %incdec.ptr70 = getelementptr inbounds nuw %struct.SyToken, ptr %65, i32 1
  store ptr %incdec.ptr70, ptr %pCur, align 8
  %66 = load ptr, ptr %pCur, align 8
  %67 = load ptr, ptr %pGen.addr, align 8
  %pIn71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %pIn71, align 8
  %cmp72 = icmp uge ptr %66, %68
  br i1 %cmp72, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.then69
  %69 = load ptr, ptr %pGen.addr, align 8
  %70 = load ptr, ptr %pCur, align 8
  %nLine74 = getelementptr inbounds nuw %struct.SyToken, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %nLine74, align 4
  %call75 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %69, i32 noundef 1, i32 noundef %71, ptr noundef @.str.213)
  store i32 %call75, ptr %rc, align 4
  %72 = load i32, ptr %rc, align 4
  %cmp76 = icmp eq i32 %72, -10
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then73
  store i32 -10, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.then73
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then69
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end65
  %73 = load ptr, ptr %pGen.addr, align 8
  %74 = load ptr, ptr %pCur, align 8
  %75 = load ptr, ptr %pGen.addr, align 8
  %pIn81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %pIn81, align 8
  %77 = load ptr, ptr %xValidator, align 8
  %call82 = call i32 @GenStateCompileArrayEntry(ptr noundef %73, ptr noundef %74, ptr noundef %76, i32 noundef 2, ptr noundef %77)
  store i32 %call82, ptr %rc, align 4
  %78 = load i32, ptr %rc, align 4
  %cmp83 = icmp eq i32 %78, -10
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end80
  store i32 -10, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end80
  %79 = load i32, ptr %iEmitRef, align 4
  %tobool86 = icmp ne i32 %79, 0
  br i1 %tobool86, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end85
  %80 = load ptr, ptr %pGen.addr, align 8
  %pVm88 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %pVm88, align 8
  %call89 = call i32 @PH7_VmEmitInstr(ptr noundef %81, i32 noundef 70, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end85
  store ptr null, ptr %xValidator, align 8
  store i32 0, ptr %iEmitRef, align 4
  %82 = load i32, ptr %nPair, align 4
  %inc91 = add nsw i32 %82, 1
  store i32 %inc91, ptr %nPair, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %83 = load ptr, ptr %pGen.addr, align 8
  %pVm92 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %pVm92, align 8
  %85 = load i32, ptr %nPair, align 4
  %mul = mul nsw i32 %85, 2
  %call93 = call i32 @PH7_VmEmitInstr(ptr noundef %84, i32 noundef 6, i32 noundef %mul, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then84, %if.end78, %if.then77, %if.then50, %if.end46, %if.then45
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GetNextExpr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileArrayEntry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateArrayNodeValidator(ptr noundef, ptr noundef) #0

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
