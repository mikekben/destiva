; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_exception = type { ptr, %struct.SySet, ptr }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.308 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileTry(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pException = alloca ptr, align 8
  %pTry = alloca ptr, align 8
  %nJmpIdx = alloca i32, align 4
  %rc = alloca i32, align 4
  %pTok = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef 56)
  store ptr %call, ptr %pException, align 8
  %2 = load ptr, ptr %pException, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nLine, align 4
  %call1 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %3, i32 noundef 1, i32 noundef %6, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pException, align 8
  call void @SyZero(ptr noundef %7, i32 noundef 56)
  %8 = load ptr, ptr %pException, align 8
  %sEntry = getelementptr inbounds nuw %struct.ph7_exception, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pGen.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm2, align 8
  %sAllocator3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %sEntry, ptr noundef %sAllocator3, i32 noundef 72)
  %11 = load ptr, ptr %pGen.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm5, align 8
  %13 = load ptr, ptr %pException, align 8
  %pVm6 = getelementptr inbounds nuw %struct.ph7_exception, ptr %13, i32 0, i32 0
  store ptr %12, ptr %pVm6, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVm7, align 8
  %call8 = call i32 @PH7_VmInstrLength(ptr noundef %16)
  %call9 = call i32 @GenStateEnterBlock(ptr noundef %14, i32 noundef 256, i32 noundef %call8, ptr noundef null, ptr noundef %pTry)
  store i32 %call9, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %17, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %18 = load ptr, ptr %pGen.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm13, align 8
  %20 = load ptr, ptr %pException, align 8
  %call14 = call i32 @PH7_VmEmitInstr(ptr noundef %19, i32 noundef 80, i32 noundef 0, i32 noundef 0, ptr noundef %20, ptr noundef %nJmpIdx)
  %21 = load ptr, ptr %pTry, align 8
  %22 = load i32, ptr %nJmpIdx, align 4
  %call15 = call i32 @GenStateNewJumpFixup(ptr noundef %21, i32 noundef 80, i32 noundef %22)
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn16, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %pIn16, align 8
  %25 = load ptr, ptr %pGen.addr, align 8
  %call17 = call i32 @PH7_CompileBlock(ptr noundef %25, i32 noundef 0)
  store i32 %call17, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %26, -10
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end12
  store i32 -10, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end12
  %27 = load ptr, ptr %pTry, align 8
  %28 = load ptr, ptr %pGen.addr, align 8
  %pVm21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pVm21, align 8
  %call22 = call i32 @PH7_VmInstrLength(ptr noundef %29)
  %call23 = call i32 @GenStateFixJumps(ptr noundef %27, i32 noundef -1, i32 noundef %call22)
  %30 = load ptr, ptr %pGen.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pVm24, align 8
  %32 = load ptr, ptr %pException, align 8
  %call25 = call i32 @PH7_VmEmitInstr(ptr noundef %31, i32 noundef 81, i32 noundef 0, i32 noundef 0, ptr noundef %32, ptr noundef null)
  %33 = load ptr, ptr %pGen.addr, align 8
  %call26 = call i32 @GenStateLeaveBlock(ptr noundef %33, ptr noundef null)
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn27 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn27, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 13
  %37 = load ptr, ptr %pEnd, align 8
  %cmp28 = icmp uge ptr %35, %37
  br i1 %cmp28, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %38 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %pIn29, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nType, align 8
  %and = and i32 %40, 4
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn32 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn32, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %pUserData, align 8
  %44 = ptrtoint ptr %43 to i64
  %conv = trunc i64 %44 to i32
  %cmp33 = icmp ne i32 %conv, 53
  br i1 %cmp33, label %if.then35, label %if.end49

if.then35:                                        ; preds = %lor.lhs.false31, %lor.lhs.false, %if.end20
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn36, align 8
  store ptr %46, ptr %pTok, align 8
  %47 = load ptr, ptr %pTok, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %pEnd37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %pEnd37, align 8
  %cmp38 = icmp uge ptr %47, %49
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then35
  %50 = load ptr, ptr %pTok, align 8
  %incdec.ptr41 = getelementptr inbounds %struct.SyToken, ptr %50, i32 -1
  store ptr %incdec.ptr41, ptr %pTok, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then35
  %51 = load ptr, ptr %pGen.addr, align 8
  %52 = load ptr, ptr %pTok, align 8
  %nLine43 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %nLine43, align 4
  %54 = load ptr, ptr %pTok, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %54, i32 0, i32 0
  %call44 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %51, i32 noundef 1, i32 noundef %53, ptr noundef @.str.308, ptr noundef %sData)
  store i32 %call44, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %cmp45 = icmp eq i32 %55, -10
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  store i32 -10, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %lor.lhs.false31
  br label %for.cond

for.cond:                                         ; preds = %if.end72, %if.end49
  %56 = load ptr, ptr %pGen.addr, align 8
  %pIn50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 12
  %57 = load ptr, ptr %pIn50, align 8
  %58 = load ptr, ptr %pGen.addr, align 8
  %pEnd51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 13
  %59 = load ptr, ptr %pEnd51, align 8
  %cmp52 = icmp uge ptr %57, %59
  br i1 %cmp52, label %if.then66, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %for.cond
  %60 = load ptr, ptr %pGen.addr, align 8
  %pIn55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %pIn55, align 8
  %nType56 = getelementptr inbounds nuw %struct.SyToken, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %nType56, align 8
  %and57 = and i32 %62, 4
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.then66, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %63 = load ptr, ptr %pGen.addr, align 8
  %pIn61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %pIn61, align 8
  %pUserData62 = getelementptr inbounds nuw %struct.SyToken, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %pUserData62, align 8
  %66 = ptrtoint ptr %65 to i64
  %conv63 = trunc i64 %66 to i32
  %cmp64 = icmp ne i32 %conv63, 53
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false60, %lor.lhs.false54, %for.cond
  br label %for.end

if.end67:                                         ; preds = %lor.lhs.false60
  %67 = load ptr, ptr %pGen.addr, align 8
  %68 = load ptr, ptr %pException, align 8
  %call68 = call i32 @PH7_CompileCatch(ptr noundef %67, ptr noundef %68)
  store i32 %call68, ptr %rc, align 4
  %69 = load i32, ptr %rc, align 4
  %cmp69 = icmp eq i32 %69, -10
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  store i32 -10, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end67
  br label %for.cond

for.end:                                          ; preds = %if.then66
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then71, %if.end48, %if.then47, %if.then19, %if.then11, %if.then
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNewJumpFixup(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileCatch(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
