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
%struct.VmShutdownCB = type { %struct.ph7_value, [10 x %struct.ph7_value], i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmInvokeShutdownCallbacks(ptr noundef %pVm) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %apArg = alloca [10 x ptr], align 16
  %n = alloca i32, align 4
  %nEntry = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %aShutdown = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 23
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aShutdown, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  store i32 %1, ptr %nEntry, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %apArg, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc37, %for.end
  %5 = load i32, ptr %n, align 4
  %6 = load i32, ptr %nEntry, align 4
  %cmp2 = icmp ult i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end39

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %pVm.addr, align 8
  %aShutdown4 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 23
  %8 = load i32, ptr %n, align 4
  %call = call ptr @SySetAt(ptr noundef %aShutdown4, i32 noundef %8)
  store ptr %call, ptr %pEntry, align 8
  %9 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then, label %if.end36

if.then:                                          ; preds = %for.body3
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %if.then
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %pEntry, align 8
  %nArg = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nArg, align 8
  %cmp6 = icmp slt i32 %10, %12
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %13 = load i32, ptr %i, align 4
  %cmp8 = icmp sge i32 %13, 10
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body7
  br label %for.end16

if.end:                                           ; preds = %for.body7
  %14 = load ptr, ptr %pEntry, align 8
  %aArg = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [10 x %struct.ph7_value], ptr %aArg, i64 0, i64 %idxprom10
  %16 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [10 x ptr], ptr %apArg, i64 0, i64 %idxprom12
  store ptr %arrayidx11, ptr %arrayidx13, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %17 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond5, !llvm.loop !8

for.end16:                                        ; preds = %if.then9, %for.cond5
  %18 = load ptr, ptr %pVm.addr, align 8
  %19 = load ptr, ptr %pEntry, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pEntry, align 8
  %nArg17 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %nArg17, align 8
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %apArg, i64 0, i64 0
  %call18 = call i32 @PH7_VmCallUserFunction(ptr noundef %18, ptr noundef %sCallback, i32 noundef %21, ptr noundef %arraydecay, ptr noundef null)
  %22 = load ptr, ptr %pVm.addr, align 8
  %aShutdown19 = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 23
  %23 = load i32, ptr %n, align 4
  %call20 = call ptr @SySetAt(ptr noundef %aShutdown19, i32 noundef %23)
  store ptr %call20, ptr %pEntry, align 8
  %24 = load ptr, ptr %pEntry, align 8
  %tobool21 = icmp ne ptr %24, null
  br i1 %tobool21, label %if.then22, label %if.end35

if.then22:                                        ; preds = %for.end16
  %25 = load ptr, ptr %pEntry, align 8
  %sCallback23 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %25, i32 0, i32 0
  %call24 = call i32 @PH7_MemObjRelease(ptr noundef %sCallback23)
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %if.then22
  %26 = load i32, ptr %i, align 4
  %27 = load ptr, ptr %pEntry, align 8
  %nArg26 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nArg26, align 8
  %cmp27 = icmp slt i32 %26, %28
  br i1 %cmp27, label %for.body28, label %for.end34

for.body28:                                       ; preds = %for.cond25
  %29 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [10 x ptr], ptr %apArg, i64 0, i64 %idxprom29
  %30 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 @PH7_MemObjRelease(ptr noundef %30)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body28
  %31 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond25, !llvm.loop !9

for.end34:                                        ; preds = %for.cond25
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %for.end16
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %for.body3
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %32 = load i32, ptr %n, align 4
  %inc38 = add i32 %32, 1
  store i32 %inc38, ptr %n, align 4
  br label %for.cond1, !llvm.loop !10

for.end39:                                        ; preds = %for.cond1
  %33 = load ptr, ptr %pVm.addr, align 8
  %aShutdown40 = getelementptr inbounds nuw %struct.ph7_vm, ptr %33, i32 0, i32 23
  %call41 = call i32 @SySetReset(ptr noundef %aShutdown40)
  ret void
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
