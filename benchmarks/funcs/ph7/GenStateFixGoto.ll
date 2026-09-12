; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.JumpFixup = type { i32, i32, %struct.SyString, ptr, i32 }
%struct.SyString = type { ptr, i32 }
%struct.Label = type { ptr, i32, %struct.SyString, i32, i8 }
%struct.VmInstr = type { i8, i32, i32, ptr }

@.str.368 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.369 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.370 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateFixGoto(ptr noundef %pGen, i32 noundef %nOfft) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nOfft.addr = alloca i32, align 4
  %pJump = alloca ptr, align 8
  %aJumps = alloca ptr, align 8
  %pLabel = alloca ptr, align 8
  %aLabel = alloca ptr, align 8
  %pInstr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %nOfft, ptr %nOfft.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 9
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aGoto, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %aJumps, align 8
  %2 = load i32, ptr %nOfft.addr, align 4
  store i32 %2, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %n, align 4
  %4 = load ptr, ptr %pGen.addr, align 8
  %aGoto1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 9
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aGoto1, i32 0, i32 2
  %5 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %aJumps, align 8
  %7 = load i32, ptr %n, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds nuw %struct.JumpFixup, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pJump, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %9 = load ptr, ptr %pJump, align 8
  %sLabel = getelementptr inbounds nuw %struct.JumpFixup, ptr %9, i32 0, i32 2
  %call = call i32 @GenStateGetLabel(ptr noundef %8, ptr noundef %sLabel, ptr noundef %pLabel)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %pGen.addr, align 8
  %12 = load ptr, ptr %pJump, align 8
  %nLine = getelementptr inbounds nuw %struct.JumpFixup, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %nLine, align 8
  %14 = load ptr, ptr %pJump, align 8
  %sLabel3 = getelementptr inbounds nuw %struct.JumpFixup, ptr %14, i32 0, i32 2
  %call4 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %11, i32 noundef 1, i32 noundef %13, ptr noundef @.str.368, ptr noundef %sLabel3)
  store i32 %call4, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %15, -10
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %16 = load ptr, ptr %pLabel, align 8
  %pFunc = getelementptr inbounds nuw %struct.Label, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pFunc, align 8
  %18 = load ptr, ptr %pJump, align 8
  %pFunc8 = getelementptr inbounds nuw %struct.JumpFixup, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pFunc8, align 8
  %cmp9 = icmp ne ptr %17, %19
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load ptr, ptr %pJump, align 8
  %nLine11 = getelementptr inbounds nuw %struct.JumpFixup, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %nLine11, align 8
  %23 = load ptr, ptr %pJump, align 8
  %sLabel12 = getelementptr inbounds nuw %struct.JumpFixup, ptr %23, i32 0, i32 2
  %call13 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %20, i32 noundef 1, i32 noundef %22, ptr noundef @.str.369, ptr noundef %sLabel12)
  store i32 %call13, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %24, -10
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  store i32 -10, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end7
  %25 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pVm, align 8
  %27 = load ptr, ptr %pJump, align 8
  %nInstrIdx = getelementptr inbounds nuw %struct.JumpFixup, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nInstrIdx, align 4
  %call18 = call ptr @PH7_VmGetInstr(ptr noundef %26, i32 noundef %28)
  store ptr %call18, ptr %pInstr, align 8
  %29 = load ptr, ptr %pInstr, align 8
  %tobool = icmp ne ptr %29, null
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %30 = load ptr, ptr %pLabel, align 8
  %nJumpDest = getelementptr inbounds nuw %struct.Label, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nJumpDest, align 8
  %32 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %32, i32 0, i32 2
  store i32 %31, ptr %iP2, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.end
  %33 = load i32, ptr %n, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %pGen.addr, align 8
  %aLabel21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 8
  %pBase22 = getelementptr inbounds nuw %struct.SySet, ptr %aLabel21, i32 0, i32 1
  %35 = load ptr, ptr %pBase22, align 8
  store ptr %35, ptr %aLabel, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc40, %for.end
  %36 = load i32, ptr %n, align 4
  %37 = load ptr, ptr %pGen.addr, align 8
  %aLabel24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 8
  %nUsed25 = getelementptr inbounds nuw %struct.SySet, ptr %aLabel24, i32 0, i32 2
  %38 = load i32, ptr %nUsed25, align 8
  %cmp26 = icmp ult i32 %36, %38
  br i1 %cmp26, label %for.body27, label %for.end42

for.body27:                                       ; preds = %for.cond23
  %39 = load ptr, ptr %aLabel, align 8
  %40 = load i32, ptr %n, align 4
  %idxprom28 = zext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds nuw %struct.Label, ptr %39, i64 %idxprom28
  %bRef = getelementptr inbounds nuw %struct.Label, ptr %arrayidx29, i32 0, i32 4
  %41 = load i8, ptr %bRef, align 4
  %conv = zext i8 %41 to i32
  %cmp30 = icmp eq i32 %conv, 0
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %for.body27
  %42 = load ptr, ptr %pGen.addr, align 8
  %43 = load ptr, ptr %aLabel, align 8
  %44 = load i32, ptr %n, align 4
  %idxprom33 = zext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds nuw %struct.Label, ptr %43, i64 %idxprom33
  %nLine35 = getelementptr inbounds nuw %struct.Label, ptr %arrayidx34, i32 0, i32 3
  %45 = load i32, ptr %nLine35, align 8
  %46 = load ptr, ptr %aLabel, align 8
  %47 = load i32, ptr %n, align 4
  %idxprom36 = zext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds nuw %struct.Label, ptr %46, i64 %idxprom36
  %sName = getelementptr inbounds nuw %struct.Label, ptr %arrayidx37, i32 0, i32 2
  %call38 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %42, i32 noundef 2, i32 noundef %45, ptr noundef @.str.370, ptr noundef %sName)
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %for.body27
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %48 = load i32, ptr %n, align 4
  %inc41 = add i32 %48, 1
  store i32 %inc41, ptr %n, align 4
  br label %for.cond23, !llvm.loop !8

for.end42:                                        ; preds = %for.cond23
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end42, %if.then15, %if.then6
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetInstr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateGetLabel(ptr noundef, ptr noundef, ptr noundef) #0

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
