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
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyHashEntry = type { ptr, i32, ptr }

@.str.199 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.200 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileVariable(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %nLine = alloca i32, align 4
  %iVv = alloca i32, align 4
  %iP1 = alloca i32, align 4
  %p3 = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  store i32 -1, ptr %iVv, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %4, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn3, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nType, align 8
  %and = and i32 %9, 16
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %pIn4, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %pIn4, align 8
  %13 = load i32, ptr %iVv, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %iVv, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pIn5, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %pEnd6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 13
  %17 = load ptr, ptr %pEnd6, align 8
  %cmp7 = icmp uge ptr %15, %17
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pIn8, align 8
  %nType9 = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nType9, align 8
  %and10 = and i32 %20, 76
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %21 = load ptr, ptr %pGen.addr, align 8
  %22 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %21, i32 noundef 1, i32 noundef %22, ptr noundef @.str.199)
  store i32 %call, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp12 = icmp eq i32 %23, -10
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  store ptr null, ptr %p3, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn15, align 8
  %nType16 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nType16, align 8
  %and17 = and i32 %26, 64
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else38

if.then19:                                        ; preds = %if.end14
  %27 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %pIn20, align 8
  %incdec.ptr21 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 1
  store ptr %incdec.ptr21, ptr %pIn20, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pEnd22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 13
  %30 = load ptr, ptr %pEnd22, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.SyToken, ptr %30, i32 -1
  store ptr %incdec.ptr23, ptr %pEnd22, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %pIn24, align 8
  %33 = load ptr, ptr %pGen.addr, align 8
  %pEnd25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 13
  %34 = load ptr, ptr %pEnd25, align 8
  %cmp26 = icmp uge ptr %32, %34
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then19
  %35 = load ptr, ptr %pGen.addr, align 8
  %36 = load i32, ptr %nLine, align 4
  %call28 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %35, i32 noundef 1, i32 noundef %36, ptr noundef @.str.199)
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then19
  %37 = load ptr, ptr %pGen.addr, align 8
  %call30 = call i32 @PH7_CompileExpr(ptr noundef %37, i32 noundef 0, ptr noundef null)
  store i32 %call30, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp31 = icmp eq i32 %38, -10
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  store i32 -10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end29
  %39 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %39, -3
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else
  %40 = load ptr, ptr %pGen.addr, align 8
  %41 = load i32, ptr %nLine, align 4
  %call35 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %40, i32 noundef 1, i32 noundef %41, ptr noundef @.str.200)
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %if.end57

if.else38:                                        ; preds = %if.end14
  store ptr null, ptr %zName, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn39, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %43, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %44 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %pIn40, align 8
  %incdec.ptr41 = getelementptr inbounds nuw %struct.SyToken, ptr %45, i32 1
  store ptr %incdec.ptr41, ptr %pIn40, align 8
  %46 = load ptr, ptr %pGen.addr, align 8
  %hVar = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %zString, align 8
  %49 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %nByte, align 8
  %call42 = call ptr @SyHashGet(ptr noundef %hVar, ptr noundef %48, i32 noundef %50)
  store ptr %call42, ptr %pEntry, align 8
  %51 = load ptr, ptr %pEntry, align 8
  %cmp43 = icmp eq ptr %51, null
  br i1 %cmp43, label %if.then44, label %if.else55

if.then44:                                        ; preds = %if.else38
  %52 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pName, align 8
  %zString45 = getelementptr inbounds nuw %struct.SyString, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %zString45, align 8
  %56 = load ptr, ptr %pName, align 8
  %nByte46 = getelementptr inbounds nuw %struct.SyString, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %nByte46, align 8
  %call47 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %55, i32 noundef %57)
  store ptr %call47, ptr %zName, align 8
  %58 = load ptr, ptr %zName, align 8
  %cmp48 = icmp eq ptr %58, null
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then44
  %59 = load ptr, ptr %pGen.addr, align 8
  %60 = load i32, ptr %nLine, align 4
  %call50 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %59, i32 noundef 1, i32 noundef %60, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.then44
  %61 = load ptr, ptr %pGen.addr, align 8
  %hVar52 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %zName, align 8
  %63 = load ptr, ptr %pName, align 8
  %nByte53 = getelementptr inbounds nuw %struct.SyString, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %nByte53, align 8
  %65 = load ptr, ptr %zName, align 8
  %call54 = call i32 @SyHashInsert(ptr noundef %hVar52, ptr noundef %62, i32 noundef %64, ptr noundef %65)
  br label %if.end56

if.else55:                                        ; preds = %if.else38
  %66 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %pUserData, align 8
  store ptr %67, ptr %zName, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.end51
  %68 = load ptr, ptr %zName, align 8
  store ptr %68, ptr %p3, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end37
  store i32 0, ptr %iP1, align 4
  %69 = load i32, ptr %iCompileFlag.addr, align 4
  %and58 = and i32 %69, 2
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end57
  %70 = load i32, ptr %iCompileFlag.addr, align 4
  %and61 = and i32 %70, 1
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then60
  store i32 1, ptr %iP1, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end57
  %71 = load ptr, ptr %pGen.addr, align 8
  %pVm66 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %pVm66, align 8
  %73 = load i32, ptr %iP1, align 4
  %74 = load ptr, ptr %p3, align 8
  %call67 = call i32 @PH7_VmEmitInstr(ptr noundef %72, i32 noundef 3, i32 noundef %73, i32 noundef 0, ptr noundef %74, ptr noundef null)
  br label %while.cond68

while.cond68:                                     ; preds = %while.body70, %if.end65
  %75 = load i32, ptr %iVv, align 4
  %cmp69 = icmp sgt i32 %75, 0
  br i1 %cmp69, label %while.body70, label %while.end73

while.body70:                                     ; preds = %while.cond68
  %76 = load ptr, ptr %pGen.addr, align 8
  %pVm71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %pVm71, align 8
  %78 = load i32, ptr %iP1, align 4
  %call72 = call i32 @PH7_VmEmitInstr(ptr noundef %77, i32 noundef 3, i32 noundef %78, i32 noundef 0, ptr noundef null, ptr noundef null)
  %79 = load i32, ptr %iVv, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, ptr %iVv, align 4
  br label %while.cond68, !llvm.loop !8

while.end73:                                      ; preds = %while.cond68
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end73, %if.then49, %if.then34, %if.then32, %if.then27, %if.end, %if.then13
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
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
!8 = distinct !{!8, !7}
