; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.216 = external hidden unnamed_addr constant [68 x i8], align 1
@.str.217 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.218 = external hidden unnamed_addr constant [61 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprAssembleAnnon(ptr noundef %pGen, ptr noundef %ppCur, ptr noundef %pEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %ppCur.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %nKey = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %ppCur, ptr %ppCur.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  %0 = load ptr, ptr %ppCur.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %pIn, align 8
  %2 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nLine1, align 4
  store i32 %3, ptr %nLine, align 4
  %4 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %5 = load ptr, ptr %pIn, align 8
  %6 = load ptr, ptr %pEnd.addr, align 8
  %cmp = icmp ult ptr %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %pIn, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType, align 8
  %and = and i32 %8, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %pIn, align 8
  %incdec.ptr2 = getelementptr inbounds nuw %struct.SyToken, ptr %9, i32 1
  store ptr %incdec.ptr2, ptr %pIn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %pIn, align 8
  %11 = load ptr, ptr %pEnd.addr, align 8
  %cmp3 = icmp uge ptr %10, %11
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load ptr, ptr %pIn, align 8
  %nType4 = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nType4, align 8
  %and5 = and i32 %13, 512
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef %15, ptr noundef @.str.216)
  store i32 %call, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %16, -10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  store i32 -12, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %Synchronize

if.end11:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %pIn, align 8
  %incdec.ptr12 = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 1
  store ptr %incdec.ptr12, ptr %pIn, align 8
  %18 = load ptr, ptr %pIn, align 8
  %19 = load ptr, ptr %pEnd.addr, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %18, ptr noundef %19, i32 noundef 512, i32 noundef 1024, ptr noundef %pIn)
  %20 = load ptr, ptr %pIn, align 8
  %21 = load ptr, ptr %pEnd.addr, align 8
  %cmp13 = icmp uge ptr %20, %21
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %22 = load ptr, ptr %pIn, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %22, i64 1
  %23 = load ptr, ptr %pEnd.addr, align 8
  %cmp15 = icmp uge ptr %arrayidx, %23
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %lor.lhs.false14, %if.end11
  %24 = load ptr, ptr %pGen.addr, align 8
  %25 = load i32, ptr %nLine, align 4
  %call17 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %24, i32 noundef 1, i32 noundef %25, ptr noundef @.str.217)
  store i32 %call17, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %26, -10
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -12, ptr %rc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  br label %Synchronize

if.end21:                                         ; preds = %lor.lhs.false14
  %27 = load ptr, ptr %pIn, align 8
  %incdec.ptr22 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 1
  store ptr %incdec.ptr22, ptr %pIn, align 8
  %28 = load ptr, ptr %pIn, align 8
  %nType23 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType23, align 8
  %and24 = and i32 %29, 4
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end66

if.then26:                                        ; preds = %if.end21
  %30 = load ptr, ptr %pIn, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %pUserData, align 8
  %32 = ptrtoint ptr %31 to i64
  %conv = trunc i64 %32 to i32
  store i32 %conv, ptr %nKey, align 4
  %33 = load i32, ptr %nKey, align 4
  %cmp27 = icmp eq i32 %33, 24
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  %34 = load ptr, ptr %pIn, align 8
  %incdec.ptr30 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 1
  store ptr %incdec.ptr30, ptr %pIn, align 8
  %35 = load ptr, ptr %pIn, align 8
  %36 = load ptr, ptr %pEnd.addr, align 8
  %cmp31 = icmp uge ptr %35, %36
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then29
  %37 = load ptr, ptr %pIn, align 8
  %nType34 = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nType34, align 8
  %and35 = and i32 %38, 512
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %lor.lhs.false33, %if.then29
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load i32, ptr %nLine, align 4
  %call39 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %39, i32 noundef 1, i32 noundef %40, ptr noundef @.str.217)
  store i32 %call39, ptr %rc, align 4
  %41 = load i32, ptr %rc, align 4
  %cmp40 = icmp ne i32 %41, -10
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then38
  store i32 -12, ptr %rc, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then38
  br label %Synchronize

if.end44:                                         ; preds = %lor.lhs.false33
  %42 = load ptr, ptr %pIn, align 8
  %incdec.ptr45 = getelementptr inbounds nuw %struct.SyToken, ptr %42, i32 1
  store ptr %incdec.ptr45, ptr %pIn, align 8
  %43 = load ptr, ptr %pIn, align 8
  %44 = load ptr, ptr %pEnd.addr, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %43, ptr noundef %44, i32 noundef 512, i32 noundef 1024, ptr noundef %pIn)
  %45 = load ptr, ptr %pIn, align 8
  %46 = load ptr, ptr %pEnd.addr, align 8
  %cmp46 = icmp uge ptr %45, %46
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %47 = load ptr, ptr %pIn, align 8
  %arrayidx49 = getelementptr inbounds %struct.SyToken, ptr %47, i64 1
  %48 = load ptr, ptr %pEnd.addr, align 8
  %cmp50 = icmp uge ptr %arrayidx49, %48
  br i1 %cmp50, label %if.then52, label %if.end58

if.then52:                                        ; preds = %lor.lhs.false48, %if.end44
  %49 = load ptr, ptr %pGen.addr, align 8
  %50 = load i32, ptr %nLine, align 4
  %call53 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %49, i32 noundef 1, i32 noundef %50, ptr noundef @.str.217)
  store i32 %call53, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp54 = icmp ne i32 %51, -10
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then52
  store i32 -12, ptr %rc, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then52
  br label %Synchronize

if.end58:                                         ; preds = %lor.lhs.false48
  %52 = load ptr, ptr %pIn, align 8
  %incdec.ptr59 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 1
  store ptr %incdec.ptr59, ptr %pIn, align 8
  br label %if.end65

if.else:                                          ; preds = %if.then26
  %53 = load ptr, ptr %pGen.addr, align 8
  %54 = load i32, ptr %nLine, align 4
  %call60 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %53, i32 noundef 1, i32 noundef %54, ptr noundef @.str.217)
  store i32 %call60, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %cmp61 = icmp ne i32 %55, -10
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else
  store i32 -12, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else
  br label %Synchronize

if.end65:                                         ; preds = %if.end58
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end21
  %56 = load ptr, ptr %pIn, align 8
  %nType67 = getelementptr inbounds nuw %struct.SyToken, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %nType67, align 8
  %and68 = and i32 %57, 64
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %if.else77

if.then70:                                        ; preds = %if.end66
  %58 = load ptr, ptr %pIn, align 8
  %incdec.ptr71 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 1
  store ptr %incdec.ptr71, ptr %pIn, align 8
  %59 = load ptr, ptr %pIn, align 8
  %60 = load ptr, ptr %pEnd.addr, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %59, ptr noundef %60, i32 noundef 64, i32 noundef 128, ptr noundef %pIn)
  %61 = load ptr, ptr %pIn, align 8
  %62 = load ptr, ptr %pEnd.addr, align 8
  %cmp72 = icmp ult ptr %61, %62
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then70
  %63 = load ptr, ptr %pIn, align 8
  %incdec.ptr75 = getelementptr inbounds nuw %struct.SyToken, ptr %63, i32 1
  store ptr %incdec.ptr75, ptr %pIn, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then70
  br label %if.end83

if.else77:                                        ; preds = %if.end66
  %64 = load ptr, ptr %pGen.addr, align 8
  %65 = load i32, ptr %nLine, align 4
  %call78 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %64, i32 noundef 1, i32 noundef %65, ptr noundef @.str.218)
  store i32 %call78, ptr %rc, align 4
  %66 = load i32, ptr %rc, align 4
  %cmp79 = icmp eq i32 %66, -10
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.else77
  store i32 -10, ptr %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.else77
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end76
  store i32 0, ptr %rc, align 4
  br label %Synchronize

Synchronize:                                      ; preds = %if.end83, %if.end64, %if.end57, %if.end43, %if.end20, %if.end10
  %67 = load ptr, ptr %pIn, align 8
  %68 = load ptr, ptr %ppCur.addr, align 8
  store ptr %67, ptr %68, align 8
  %69 = load i32, ptr %rc, align 4
  store i32 %69, ptr %retval, align 4
  br label %return

return:                                           ; preds = %Synchronize, %if.then81
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
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
