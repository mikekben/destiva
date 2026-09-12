; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmIsIncludedFile(ptr noundef %pVm, ptr noundef %pFile) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %aEntries = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %aIncluded = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 21
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aIncluded, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %aEntries, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %3 = load ptr, ptr %pVm.addr, align 8
  %aIncluded1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 21
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aIncluded1, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pFile.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %7 = load ptr, ptr %aEntries, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyString, ptr %7, i64 %idxprom
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %arrayidx, i32 0, i32 1
  %9 = load i32, ptr %nByte2, align 8
  %cmp3 = icmp eq i32 %6, %9
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load ptr, ptr %pFile.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString, align 8
  %12 = load ptr, ptr %aEntries, align 8
  %13 = load i32, ptr %n, align 4
  %idxprom4 = zext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds nuw %struct.SyString, ptr %12, i64 %idxprom4
  %zString6 = getelementptr inbounds nuw %struct.SyString, ptr %arrayidx5, i32 0, i32 0
  %14 = load ptr, ptr %zString6, align 8
  %15 = load ptr, ptr %aEntries, align 8
  %16 = load i32, ptr %n, align 4
  %idxprom7 = zext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds nuw %struct.SyString, ptr %15, i64 %idxprom7
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %arrayidx8, i32 0, i32 1
  %17 = load i32, ptr %nByte9, align 8
  %call = call i32 @SyMemcmp(ptr noundef %11, ptr noundef %14, i32 noundef %17)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load ptr, ptr %pFile.addr, align 8
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte10, align 8
  %20 = load ptr, ptr %aEntries, align 8
  %21 = load i32, ptr %n, align 4
  %idxprom11 = zext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds nuw %struct.SyString, ptr %20, i64 %idxprom11
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %arrayidx12, i32 0, i32 1
  %22 = load i32, ptr %nByte13, align 8
  %sub = sub i32 %19, %22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %sub, %cond.false ]
  %cmp14 = icmp eq i32 %cond, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %n, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
