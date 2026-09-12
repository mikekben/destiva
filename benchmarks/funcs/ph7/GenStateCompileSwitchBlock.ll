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

@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileSwitchBlock(ptr noundef %pGen, i32 noundef %iTokenDelim, ptr noundef %pBlockStart) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iTokenDelim.addr = alloca i32, align 4
  %pBlockStart.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nKwrd = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iTokenDelim, ptr %iTokenDelim.addr, align 4
  store ptr %pBlockStart, ptr %pBlockStart.addr, align 8
  store i32 0, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn1, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nType, align 8
  %and = and i32 %6, 1310720
  %cmp2 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pGen.addr, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn3, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %nLine, align 4
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn4, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 0
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %8, i32 noundef 1, i32 noundef %11, ptr noundef @.str.229, ptr noundef %sData)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %14, -10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn6, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pIn6, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn7, align 8
  %incdec.ptr8 = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 1
  store ptr %incdec.ptr8, ptr %pIn7, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pVm, align 8
  %call9 = call i32 @PH7_VmInstrLength(ptr noundef %20)
  %21 = load ptr, ptr %pBlockStart.addr, align 8
  store i32 %call9, ptr %21, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end65, %while.end
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn10, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pEnd11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %pEnd11, align 8
  %cmp12 = icmp uge ptr %23, %25
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.cond
  br label %for.end

if.end14:                                         ; preds = %for.cond
  store i32 0, ptr %rc, align 4
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn15, align 8
  %nType16 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nType16, align 8
  %and17 = and i32 %28, 4
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn20, align 8
  %nType21 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nType21, align 8
  %and22 = and i32 %31, 128
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %if.then23, label %if.end35

if.then23:                                        ; preds = %if.then19
  %32 = load i32, ptr %iTokenDelim.addr, align 4
  %cmp24 = icmp ne i32 %32, 128
  br i1 %cmp24, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.then23
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn26, align 8
  %nLine27 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %nLine27, align 4
  %37 = load ptr, ptr %pGen.addr, align 8
  %pIn28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %pIn28, align 8
  %sData29 = getelementptr inbounds nuw %struct.SyToken, ptr %38, i32 0, i32 0
  %call30 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %33, i32 noundef 1, i32 noundef %36, ptr noundef @.str.229, ptr noundef %sData29)
  store i32 %call30, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp31 = icmp eq i32 %39, -10
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then25
  store i32 -10, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  store i32 -18, ptr %rc, align 4
  br label %for.end

if.end35:                                         ; preds = %if.then19
  br label %if.end60

if.else:                                          ; preds = %if.end14
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn36, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %pUserData, align 8
  %43 = ptrtoint ptr %42 to i64
  %conv = trunc i64 %43 to i32
  store i32 %conv, ptr %nKwrd, align 4
  %44 = load i32, ptr %nKwrd, align 4
  %cmp37 = icmp eq i32 %44, 17
  br i1 %cmp37, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %45 = load i32, ptr %nKwrd, align 4
  %cmp39 = icmp eq i32 %45, 31
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false, %if.else
  br label %for.end

if.end42:                                         ; preds = %lor.lhs.false
  %46 = load i32, ptr %nKwrd, align 4
  %cmp43 = icmp eq i32 %46, 2
  br i1 %cmp43, label %if.then45, label %if.end59

if.then45:                                        ; preds = %if.end42
  %47 = load i32, ptr %iTokenDelim.addr, align 4
  %cmp46 = icmp ne i32 %47, 4
  br i1 %cmp46, label %if.then48, label %if.end58

if.then48:                                        ; preds = %if.then45
  %48 = load ptr, ptr %pGen.addr, align 8
  %49 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %pIn49, align 8
  %nLine50 = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %nLine50, align 4
  %52 = load ptr, ptr %pGen.addr, align 8
  %pIn51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %pIn51, align 8
  %sData52 = getelementptr inbounds nuw %struct.SyToken, ptr %53, i32 0, i32 0
  %call53 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %48, i32 noundef 1, i32 noundef %51, ptr noundef @.str.229, ptr noundef %sData52)
  store i32 %call53, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %54, -10
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then48
  store i32 -10, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then48
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then45
  br label %for.end

if.end59:                                         ; preds = %if.end42
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end35
  %55 = load ptr, ptr %pGen.addr, align 8
  %call61 = call i32 @PH7_CompileBlock(ptr noundef %55, i32 noundef 0)
  store i32 %call61, ptr %rc, align 4
  %56 = load i32, ptr %rc, align 4
  %cmp62 = icmp eq i32 %56, -10
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  store i32 -10, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end60
  br label %for.cond

for.end:                                          ; preds = %if.end58, %if.then41, %if.end34, %if.then13
  %57 = load i32, ptr %rc, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then64, %if.then56, %if.then32, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
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
