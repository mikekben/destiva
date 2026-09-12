; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.JumpFixup = type { i32, i32, %struct.SyString, ptr, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.VmInstr = type { i8, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateFixJumps(ptr noundef %pBlock, i32 noundef %nJumpType, i32 noundef %nJumpDest) #0 {
entry:
  %pBlock.addr = alloca ptr, align 8
  %nJumpType.addr = alloca i32, align 4
  %nJumpDest.addr = alloca i32, align 4
  %aFix = alloca ptr, align 8
  %pInstr = alloca ptr, align 8
  %nFixed = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pBlock, ptr %pBlock.addr, align 8
  store i32 %nJumpType, ptr %nJumpType.addr, align 4
  store i32 %nJumpDest, ptr %nJumpDest.addr, align 4
  %0 = load ptr, ptr %pBlock.addr, align 8
  %aJumpFix = getelementptr inbounds nuw %struct.GenBlock, ptr %0, i32 0, i32 4
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aJumpFix, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %aFix, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %nFixed, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %3 = load ptr, ptr %pBlock.addr, align 8
  %aJumpFix1 = getelementptr inbounds nuw %struct.GenBlock, ptr %3, i32 0, i32 4
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aJumpFix1, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %aFix, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw %struct.JumpFixup, ptr %5, i64 %idxprom
  %nJumpType2 = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx, i32 0, i32 0
  %7 = load i32, ptr %nJumpType2, align 8
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i32, ptr %nJumpType.addr, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %aFix, align 8
  %10 = load i32, ptr %n, align 4
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds nuw %struct.JumpFixup, ptr %9, i64 %idxprom5
  %nJumpType7 = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx6, i32 0, i32 0
  %11 = load i32, ptr %nJumpType7, align 8
  %12 = load i32, ptr %nJumpType.addr, align 4
  %cmp8 = icmp ne i32 %11, %12
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %pBlock.addr, align 8
  %pGen = getelementptr inbounds nuw %struct.GenBlock, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pGen, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pVm, align 8
  %16 = load ptr, ptr %aFix, align 8
  %17 = load i32, ptr %n, align 4
  %idxprom11 = zext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds nuw %struct.JumpFixup, ptr %16, i64 %idxprom11
  %nInstrIdx = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx12, i32 0, i32 1
  %18 = load i32, ptr %nInstrIdx, align 4
  %call = call ptr @PH7_VmGetInstr(ptr noundef %15, i32 noundef %18)
  store ptr %call, ptr %pInstr, align 8
  %19 = load ptr, ptr %pInstr, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  %20 = load i32, ptr %nJumpDest.addr, align 4
  %21 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %21, i32 0, i32 2
  store i32 %20, ptr %iP2, align 8
  %22 = load i32, ptr %nFixed, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %nFixed, align 4
  %23 = load ptr, ptr %aFix, align 8
  %24 = load i32, ptr %n, align 4
  %idxprom14 = zext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds nuw %struct.JumpFixup, ptr %23, i64 %idxprom14
  %nJumpType16 = getelementptr inbounds nuw %struct.JumpFixup, ptr %arrayidx15, i32 0, i32 0
  store i32 -1, ptr %nJumpType16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.then9, %if.then
  %25 = load i32, ptr %n, align 4
  %inc18 = add i32 %25, 1
  store i32 %inc18, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %nFixed, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetInstr(ptr noundef, i32 noundef) #0

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
