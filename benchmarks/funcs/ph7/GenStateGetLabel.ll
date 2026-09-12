; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.Label = type { ptr, i32, %struct.SyString, i32, i8 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateGetLabel(ptr noundef %pGen, ptr noundef %pName, ptr noundef %ppOut) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %aLabel = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %aLabel1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aLabel1, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %aLabel, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %3 = load ptr, ptr %pGen.addr, align 8
  %aLabel2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aLabel2, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %aLabel, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw %struct.Label, ptr %5, i64 %idxprom
  %sName = getelementptr inbounds nuw %struct.Label, ptr %arrayidx, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %8 = load ptr, ptr %pName.addr, align 8
  %nByte3 = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte3, align 8
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load ptr, ptr %aLabel, align 8
  %11 = load i32, ptr %n, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds nuw %struct.Label, ptr %10, i64 %idxprom5
  %sName7 = getelementptr inbounds nuw %struct.Label, ptr %arrayidx6, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName7, i32 0, i32 0
  %12 = load ptr, ptr %zString, align 8
  %13 = load ptr, ptr %pName.addr, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zString8, align 8
  %15 = load ptr, ptr %pName.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nByte9, align 8
  %call = call i32 @SyMemcmp(ptr noundef %12, ptr noundef %14, i32 noundef %16)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load ptr, ptr %aLabel, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom10 = zext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds nuw %struct.Label, ptr %17, i64 %idxprom10
  %sName12 = getelementptr inbounds nuw %struct.Label, ptr %arrayidx11, i32 0, i32 2
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %sName12, i32 0, i32 1
  %19 = load i32, ptr %nByte13, align 8
  %20 = load ptr, ptr %pName.addr, align 8
  %nByte14 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nByte14, align 8
  %sub = sub i32 %19, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %sub, %cond.false ]
  %cmp15 = icmp eq i32 %cond, 0
  br i1 %cmp15, label %if.then, label %if.end21

if.then:                                          ; preds = %cond.end
  %22 = load ptr, ptr %aLabel, align 8
  %23 = load i32, ptr %n, align 4
  %idxprom16 = zext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds nuw %struct.Label, ptr %22, i64 %idxprom16
  %bRef = getelementptr inbounds nuw %struct.Label, ptr %arrayidx17, i32 0, i32 4
  store i8 1, ptr %bRef, align 4
  %24 = load ptr, ptr %ppOut.addr, align 8
  %tobool = icmp ne ptr %24, null
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %25 = load ptr, ptr %aLabel, align 8
  %26 = load i32, ptr %n, align 4
  %idxprom19 = zext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds nuw %struct.Label, ptr %25, i64 %idxprom19
  %27 = load ptr, ptr %ppOut.addr, align 8
  store ptr %arrayidx20, ptr %27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %28 = load i32, ptr %n, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
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
