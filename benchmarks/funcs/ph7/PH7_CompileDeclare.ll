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

@.str.324 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.325 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.326 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.327 = external hidden unnamed_addr constant [78 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_version() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileDeclare(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  store ptr null, ptr %pEnd, align 8
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd4, align 8
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn5, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 512
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.324)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchro

if.end9:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn10, align 8
  %incdec.ptr11 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr11, ptr %pIn10, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn12, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pEnd13, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %18, ptr noundef %20, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %21 = load ptr, ptr %pEnd, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pEnd14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %pEnd14, align 8
  %cmp15 = icmp uge ptr %21, %23
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end9
  %24 = load ptr, ptr %pGen.addr, align 8
  %25 = load i32, ptr %nLine, align 4
  %call17 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %24, i32 noundef 1, i32 noundef %25, ptr noundef @.str.325)
  store i32 %call17, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %26, -10
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -10, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end9
  %27 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %27, i64 1
  %28 = load ptr, ptr %pGen.addr, align 8
  %pIn22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn22, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn23, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pEnd24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 13
  %32 = load ptr, ptr %pEnd24, align 8
  %cmp25 = icmp uge ptr %30, %32
  br i1 %cmp25, label %if.then31, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end21
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn27 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pIn27, align 8
  %nType28 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %nType28, align 8
  %and29 = and i32 %35, 262208
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %lor.lhs.false26, %if.end21
  %36 = load ptr, ptr %pGen.addr, align 8
  %37 = load i32, ptr %nLine, align 4
  %call32 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %36, i32 noundef 1, i32 noundef %37, ptr noundef @.str.326)
  store i32 %call32, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %38, -10
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  store i32 -10, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then31
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %lor.lhs.false26
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load i32, ptr %nLine, align 4
  %call37 = call ptr @ph7_lib_version()
  %call38 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %39, i32 noundef 8, i32 noundef %40, ptr noundef @.str.327, ptr noundef %call37)
  store i32 0, ptr %retval, align 4
  br label %return

Synchro:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Synchro
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn39, align 8
  %43 = load ptr, ptr %pGen.addr, align 8
  %pEnd40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 13
  %44 = load ptr, ptr %pEnd40, align 8
  %cmp41 = icmp ult ptr %42, %44
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn42 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn42, align 8
  %nType43 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %nType43, align 8
  %and44 = and i32 %47, 262208
  %cmp45 = icmp eq i32 %and44, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp45, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load ptr, ptr %pGen.addr, align 8
  %pIn46 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %pIn46, align 8
  %incdec.ptr47 = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 1
  store ptr %incdec.ptr47, ptr %pIn46, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end36, %if.then34, %if.end20, %if.then19, %if.then8
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
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
