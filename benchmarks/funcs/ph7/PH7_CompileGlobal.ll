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

@.str.304 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.305 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GetNextExpr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileGlobal(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %nExpr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pNext, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn1, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %3, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn2, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType, align 8
  %and = and i32 %8, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %pGen.addr, align 8
  %pEnd3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pEnd3, align 8
  store ptr %10, ptr %pTmp, align 8
  store i32 0, ptr %nExpr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %pIn4, align 8
  %13 = load ptr, ptr %pTmp, align 8
  %call = call i32 @PH7_GetNextExpr(ptr noundef %12, ptr noundef %13, ptr noundef %pNext)
  %cmp5 = icmp eq i32 0, %call
  br i1 %cmp5, label %while.body, label %while.end52

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pIn6, align 8
  %16 = load ptr, ptr %pNext, align 8
  %cmp7 = icmp ult ptr %15, %16
  br i1 %cmp7, label %if.then8, label %if.end40

if.then8:                                         ; preds = %while.body
  %17 = load ptr, ptr %pNext, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pEnd9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 13
  store ptr %17, ptr %pEnd9, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn10, align 8
  %nType11 = getelementptr inbounds nuw %struct.SyToken, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nType11, align 8
  %and12 = and i32 %21, 16
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then8
  %22 = load ptr, ptr %pGen.addr, align 8
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn15, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nLine, align 4
  %call16 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %22, i32 noundef 1, i32 noundef %25, ptr noundef @.str.304)
  store i32 %call16, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %26, -10
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  store i32 -10, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  br label %if.end39

if.else:                                          ; preds = %if.then8
  %27 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %pIn20, align 8
  %incdec.ptr21 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 1
  store ptr %incdec.ptr21, ptr %pIn20, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn22, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pEnd23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 13
  %32 = load ptr, ptr %pEnd23, align 8
  %cmp24 = icmp uge ptr %30, %32
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.else
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn26, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %35, i64 -1
  %nLine27 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx, i32 0, i32 2
  %36 = load i32, ptr %nLine27, align 4
  %call28 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %33, i32 noundef 2, i32 noundef %36, ptr noundef @.str.305)
  br label %if.end38

if.else29:                                        ; preds = %if.else
  %37 = load ptr, ptr %pGen.addr, align 8
  %call30 = call i32 @PH7_CompileExpr(ptr noundef %37, i32 noundef 0, ptr noundef null)
  store i32 %call30, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp31 = icmp eq i32 %38, -10
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else29
  store i32 -10, ptr %retval, align 4
  br label %return

if.else33:                                        ; preds = %if.else29
  %39 = load i32, ptr %rc, align 4
  %cmp34 = icmp ne i32 %39, -3
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  %40 = load i32, ptr %nExpr, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %nExpr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end19
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %while.body
  %41 = load ptr, ptr %pNext, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  store ptr %41, ptr %pIn41, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %while.body49, %if.end40
  %43 = load ptr, ptr %pGen.addr, align 8
  %pIn43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %pIn43, align 8
  %45 = load ptr, ptr %pTmp, align 8
  %cmp44 = icmp ult ptr %44, %45
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond42
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %pIn45, align 8
  %nType46 = getelementptr inbounds nuw %struct.SyToken, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nType46, align 8
  %and47 = and i32 %48, 131072
  %tobool48 = icmp ne i32 %and47, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond42
  %49 = phi i1 [ false, %while.cond42 ], [ %tobool48, %land.rhs ]
  br i1 %49, label %while.body49, label %while.end

while.body49:                                     ; preds = %land.end
  %50 = load ptr, ptr %pGen.addr, align 8
  %pIn50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pIn50, align 8
  %incdec.ptr51 = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 1
  store ptr %incdec.ptr51, ptr %pIn50, align 8
  br label %while.cond42, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond, !llvm.loop !8

while.end52:                                      ; preds = %while.cond
  %52 = load ptr, ptr %pTmp, align 8
  %53 = load ptr, ptr %pGen.addr, align 8
  %pEnd53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 13
  store ptr %52, ptr %pEnd53, align 8
  %54 = load i32, ptr %nExpr, align 4
  %cmp54 = icmp sgt i32 %54, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %while.end52
  %55 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pVm, align 8
  %57 = load i32, ptr %nExpr, align 4
  %call56 = call i32 @PH7_VmEmitInstr(ptr noundef %56, i32 noundef 73, i32 noundef %57, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %while.end52
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %if.then32, %if.then18, %if.then
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
!8 = distinct !{!8, !7}
