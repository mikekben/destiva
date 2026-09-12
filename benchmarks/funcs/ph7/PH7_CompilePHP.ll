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

@.str.132 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompilePHP(ptr noundef %pGen, ptr noundef %pTokenSet, i32 noundef %is_expr) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pTokenSet.addr = alloca ptr, align 8
  %is_expr.addr = alloca i32, align 4
  %pScript = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pTokenSet, ptr %pTokenSet.addr, align 8
  store i32 %is_expr, ptr %is_expr.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pRawIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %pRawIn, align 8
  store ptr %1, ptr %pScript, align 8
  %2 = load ptr, ptr %pTokenSet.addr, align 8
  %call = call i32 @SySetReset(ptr noundef %2)
  %3 = load ptr, ptr %pTokenSet.addr, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pTokenSet1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 17
  store ptr %3, ptr %pTokenSet1, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pRawIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %pRawIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %pRawIn2, align 8
  %7 = load ptr, ptr %pScript, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  %8 = load ptr, ptr %zString, align 8
  %9 = load ptr, ptr %pScript, align 8
  %sData3 = getelementptr inbounds nuw %struct.SyToken, ptr %9, i32 0, i32 0
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sData3, i32 0, i32 1
  %10 = load i32, ptr %nByte, align 8
  %11 = load ptr, ptr %pScript, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nLine, align 4
  %13 = load ptr, ptr %pTokenSet.addr, align 8
  %call4 = call i32 @PH7_TokenizePHP(ptr noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %pTokenSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %pBase, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 12
  store ptr %15, ptr %pIn, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn5, align 8
  %19 = load ptr, ptr %pTokenSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyToken, ptr %18, i64 %idxprom
  %21 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 13
  store ptr %arrayidx, ptr %pEnd, align 8
  %22 = load i32, ptr %is_expr.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  store i32 -3, ptr %rc, align 4
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn6, align 8
  %25 = load ptr, ptr %pGen.addr, align 8
  %pEnd7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 13
  %26 = load ptr, ptr %pEnd7, align 8
  %cmp = icmp ult ptr %24, %26
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %27 = load ptr, ptr %pGen.addr, align 8
  %call9 = call i32 @PH7_CompileExpr(ptr noundef %27, i32 noundef 0, ptr noundef null)
  store i32 %call9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %28 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pVm, align 8
  %30 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %30, -3
  %31 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 1, i32 0
  %call11 = call i32 @PH7_VmEmitInstr(ptr noundef %29, i32 noundef 1, i32 noundef %cond, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %entry
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn13, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pEnd14 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pEnd14, align 8
  %cmp15 = icmp ult ptr %33, %35
  br i1 %cmp15, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end12
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn16, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nType, align 8
  %and = and i32 %38, 4194304
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then18, label %if.end34

if.then18:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn19, align 8
  %nType20 = getelementptr inbounds nuw %struct.SyToken, ptr %40, i32 0, i32 1
  store i32 4, ptr %nType20, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn21, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %42, i32 0, i32 3
  store ptr inttoptr (i64 37 to ptr), ptr %pUserData, align 8
  %43 = load ptr, ptr %pGen.addr, align 8
  %pIn22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %pIn22, align 8
  %sData23 = getelementptr inbounds nuw %struct.SyToken, ptr %44, i32 0, i32 0
  %zString24 = getelementptr inbounds nuw %struct.SyString, ptr %sData23, i32 0, i32 0
  store ptr @.str.132, ptr %zString24, align 8
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn25, align 8
  %sData26 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 0
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %sData26, i32 0, i32 1
  store i32 4, ptr %nByte27, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %call28 = call i32 @PH7_CompileExpr(ptr noundef %47, i32 noundef 0, ptr noundef null)
  store i32 %call28, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %48, -3
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.then18
  %49 = load ptr, ptr %pGen.addr, align 8
  %pVm31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pVm31, align 8
  %call32 = call i32 @PH7_VmEmitInstr(ptr noundef %50, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %if.end12
  %51 = load ptr, ptr %pGen.addr, align 8
  %call35 = call i32 @GenStateCompileChunk(ptr noundef %51, i32 noundef 0)
  store i32 %call35, ptr %rc, align 4
  %52 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %pCurrent, align 8
  %54 = load ptr, ptr %pGen.addr, align 8
  %pVm36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pVm36, align 8
  %call37 = call i32 @PH7_VmInstrLength(ptr noundef %55)
  %call38 = call i32 @GenStateFixJumps(ptr noundef %53, i32 noundef 82, i32 noundef %call37)
  %56 = load ptr, ptr %pGen.addr, align 8
  %call39 = call i32 @GenStateFixGoto(ptr noundef %56, i32 noundef 0)
  %cmp40 = icmp eq i32 -10, %call39
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end34
  store i32 -10, ptr %rc, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end34
  %57 = load ptr, ptr %pGen.addr, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 9
  %call43 = call i32 @SySetReset(ptr noundef %aGoto)
  %58 = load ptr, ptr %pGen.addr, align 8
  %aLabel = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 8
  %call44 = call i32 @SySetReset(ptr noundef %aLabel)
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.end33, %if.end
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_TokenizePHP(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileChunk(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixGoto(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
