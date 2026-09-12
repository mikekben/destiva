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

@.str.254 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.293 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileFunc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileFunction(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  store i32 0, ptr %iFlags, align 4
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %6, %8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, ptr %iFlags, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %iFlags, align 4
  %13 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pIn5, align 8
  %incdec.ptr6 = getelementptr inbounds nuw %struct.SyToken, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %pIn5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn7, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %pEnd8, align 8
  %cmp9 = icmp uge ptr %16, %18
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn10, align 8
  %nType11 = getelementptr inbounds nuw %struct.SyToken, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nType11, align 8
  %and12 = and i32 %21, 12
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end27

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %22 = load ptr, ptr %pGen.addr, align 8
  %23 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %22, i32 noundef 1, i32 noundef %23, ptr noundef @.str.254)
  store i32 %call, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %24, -10
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  store i32 -10, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end17
  %25 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 12
  %26 = load ptr, ptr %pIn18, align 8
  %27 = load ptr, ptr %pGen.addr, align 8
  %pEnd19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 13
  %28 = load ptr, ptr %pEnd19, align 8
  %cmp20 = icmp ult ptr %26, %28
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn21, align 8
  %nType22 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nType22, align 8
  %and23 = and i32 %31, 262208
  %cmp24 = icmp eq i32 %and23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pIn25, align 8
  %incdec.ptr26 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 1
  store ptr %incdec.ptr26, ptr %pIn25, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn28, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %37 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %pIn29, align 8
  %nLine30 = getelementptr inbounds nuw %struct.SyToken, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %nLine30, align 4
  store i32 %39, ptr %nLine, align 4
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn31, align 8
  %incdec.ptr32 = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 1
  store ptr %incdec.ptr32, ptr %pIn31, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn33, align 8
  %44 = load ptr, ptr %pGen.addr, align 8
  %pEnd34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 13
  %45 = load ptr, ptr %pEnd34, align 8
  %cmp35 = icmp uge ptr %43, %45
  br i1 %cmp35, label %if.then41, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end27
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %pIn37, align 8
  %nType38 = getelementptr inbounds nuw %struct.SyToken, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nType38, align 8
  %and39 = and i32 %48, 512
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %if.then41, label %if.end60

if.then41:                                        ; preds = %lor.lhs.false36, %if.end27
  %49 = load ptr, ptr %pGen.addr, align 8
  %50 = load i32, ptr %nLine, align 4
  %51 = load ptr, ptr %pName, align 8
  %call42 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %49, i32 noundef 1, i32 noundef %50, ptr noundef @.str.293, ptr noundef %51)
  store i32 %call42, ptr %rc, align 4
  %52 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %52, -10
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then41
  store i32 -10, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then41
  br label %while.cond46

while.cond46:                                     ; preds = %while.body56, %if.end45
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %pIn47, align 8
  %55 = load ptr, ptr %pGen.addr, align 8
  %pEnd48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 13
  %56 = load ptr, ptr %pEnd48, align 8
  %cmp49 = icmp ult ptr %54, %56
  br i1 %cmp49, label %land.rhs50, label %land.end55

land.rhs50:                                       ; preds = %while.cond46
  %57 = load ptr, ptr %pGen.addr, align 8
  %pIn51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %pIn51, align 8
  %nType52 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %nType52, align 8
  %and53 = and i32 %59, 262208
  %cmp54 = icmp eq i32 %and53, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs50, %while.cond46
  %60 = phi i1 [ false, %while.cond46 ], [ %cmp54, %land.rhs50 ]
  br i1 %60, label %while.body56, label %while.end59

while.body56:                                     ; preds = %land.end55
  %61 = load ptr, ptr %pGen.addr, align 8
  %pIn57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %pIn57, align 8
  %incdec.ptr58 = getelementptr inbounds nuw %struct.SyToken, ptr %62, i32 1
  store ptr %incdec.ptr58, ptr %pIn57, align 8
  br label %while.cond46, !llvm.loop !8

while.end59:                                      ; preds = %land.end55
  store i32 0, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %lor.lhs.false36
  %63 = load ptr, ptr %pGen.addr, align 8
  %64 = load ptr, ptr %pName, align 8
  %65 = load i32, ptr %iFlags, align 4
  %call61 = call i32 @GenStateCompileFunc(ptr noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef 0, ptr noundef null)
  store i32 %call61, ptr %rc, align 4
  %66 = load i32, ptr %rc, align 4
  store i32 %66, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %while.end59, %if.then44, %while.end, %if.then16
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
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
