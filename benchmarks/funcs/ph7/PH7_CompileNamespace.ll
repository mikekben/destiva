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

@.str.202 = external hidden unnamed_addr constant [75 x i8], align 1
@.str.321 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.322 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_version() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileNamespace(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %pTok = alloca ptr, align 8
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
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 262476
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn6, align 8
  store ptr %13, ptr %pTok, align 8
  %14 = load ptr, ptr %pTok, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pEnd7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %pEnd7, align 8
  %cmp8 = icmp uge ptr %14, %16
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %17 = load ptr, ptr %pTok, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.SyToken, ptr %17, i32 -1
  store ptr %incdec.ptr10, ptr %pTok, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %18 = load ptr, ptr %pGen.addr, align 8
  %19 = load i32, ptr %nLine, align 4
  %20 = load ptr, ptr %pTok, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %20, i32 0, i32 0
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %18, i32 noundef 1, i32 noundef %19, ptr noundef @.str.321, ptr noundef %sData)
  store i32 %call, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %21, -10
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end14
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn15, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pEnd16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %pEnd16, align 8
  %cmp17 = icmp ult ptr %23, %25
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn18, align 8
  %nType19 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nType19, align 8
  %and20 = and i32 %28, 268
  %tobool = icmp ne i32 %and20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %pIn21, align 8
  %incdec.ptr22 = getelementptr inbounds nuw %struct.SyToken, ptr %31, i32 1
  store ptr %incdec.ptr22, ptr %pIn21, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn23, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pEnd24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pEnd24, align 8
  %cmp25 = icmp ult ptr %33, %35
  br i1 %cmp25, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %while.end
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn26, align 8
  %nType27 = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nType27, align 8
  %and28 = and i32 %38, 262208
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load i32, ptr %nLine, align 4
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn31, align 8
  %sData32 = getelementptr inbounds nuw %struct.SyToken, ptr %42, i32 0, i32 0
  %call33 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %39, i32 noundef 1, i32 noundef %40, ptr noundef @.str.322, ptr noundef %sData32)
  store i32 %call33, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %43, -10
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  store i32 -10, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %while.end
  %44 = load ptr, ptr %pGen.addr, align 8
  %45 = load i32, ptr %nLine, align 4
  %call38 = call ptr @ph7_lib_version()
  %call39 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %44, i32 noundef 2, i32 noundef %45, ptr noundef @.str.202, ptr noundef %call38)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %if.then12
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
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
