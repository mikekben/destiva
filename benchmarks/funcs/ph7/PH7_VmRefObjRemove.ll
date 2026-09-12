; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmRefObj = type { %struct.SySet, %struct.SySet, i32, i32, ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmRefObjRemove(ptr noundef %pVm, i32 noundef %nIdx, ptr noundef %pEntry, ptr noundef %pMapEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %nIdx.addr = alloca i32, align 4
  %pEntry.addr = alloca ptr, align 8
  %pMapEntry.addr = alloca ptr, align 8
  %pRef = alloca ptr, align 8
  %n = alloca i32, align 4
  %apEntry = alloca ptr, align 8
  %apNode = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %nIdx, ptr %nIdx.addr, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pMapEntry, ptr %pMapEntry.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %1 = load i32, ptr %nIdx.addr, align 4
  %call = call ptr @VmRefObjExtract(ptr noundef %0, i32 noundef %1)
  store ptr %call, ptr %pRef, align 8
  %2 = load ptr, ptr %pRef, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pEntry.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %pRef, align 8
  %aReference = getelementptr inbounds nuw %struct.VmRefObj, ptr %4, i32 0, i32 0
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aReference, i32 0, i32 1
  %5 = load ptr, ptr %pBase, align 8
  store ptr %5, ptr %apEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %6 = load i32, ptr %n, align 4
  %7 = load ptr, ptr %pRef, align 8
  %aReference2 = getelementptr inbounds nuw %struct.VmRefObj, ptr %7, i32 0, i32 0
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aReference2, i32 0, i32 2
  %8 = load i32, ptr %nUsed, align 8
  %cmp3 = icmp ult i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %apEntry, align 8
  %10 = load i32, ptr %n, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = load ptr, ptr %pEntry.addr, align 8
  %cmp4 = icmp eq ptr %11, %12
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %for.body
  %13 = load ptr, ptr %apEntry, align 8
  %14 = load i32, ptr %n, align 4
  %idxprom6 = zext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds nuw ptr, ptr %13, i64 %idxprom6
  store ptr null, ptr %arrayidx7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %15 = load i32, ptr %n, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end
  %16 = load ptr, ptr %pMapEntry.addr, align 8
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %if.then11, label %if.end28

if.then11:                                        ; preds = %if.end9
  %17 = load ptr, ptr %pRef, align 8
  %aArrEntries = getelementptr inbounds nuw %struct.VmRefObj, ptr %17, i32 0, i32 1
  %pBase12 = getelementptr inbounds nuw %struct.SySet, ptr %aArrEntries, i32 0, i32 1
  %18 = load ptr, ptr %pBase12, align 8
  store ptr %18, ptr %apNode, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %if.then11
  %19 = load i32, ptr %n, align 4
  %20 = load ptr, ptr %pRef, align 8
  %aArrEntries14 = getelementptr inbounds nuw %struct.VmRefObj, ptr %20, i32 0, i32 1
  %nUsed15 = getelementptr inbounds nuw %struct.SySet, ptr %aArrEntries14, i32 0, i32 2
  %21 = load i32, ptr %nUsed15, align 8
  %cmp16 = icmp ult i32 %19, %21
  br i1 %cmp16, label %for.body17, label %for.end27

for.body17:                                       ; preds = %for.cond13
  %22 = load ptr, ptr %apNode, align 8
  %23 = load i32, ptr %n, align 4
  %idxprom18 = zext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds nuw ptr, ptr %22, i64 %idxprom18
  %24 = load ptr, ptr %arrayidx19, align 8
  %25 = load ptr, ptr %pMapEntry.addr, align 8
  %cmp20 = icmp eq ptr %24, %25
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %for.body17
  %26 = load ptr, ptr %apNode, align 8
  %27 = load i32, ptr %n, align 4
  %idxprom22 = zext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds nuw ptr, ptr %26, i64 %idxprom22
  store ptr null, ptr %arrayidx23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %for.body17
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %28 = load i32, ptr %n, align 4
  %inc26 = add i32 %28, 1
  store i32 %inc26, ptr %n, align 4
  br label %for.cond13, !llvm.loop !8

for.end27:                                        ; preds = %for.cond13
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmRefObjExtract(ptr noundef, i32 noundef) #0

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
