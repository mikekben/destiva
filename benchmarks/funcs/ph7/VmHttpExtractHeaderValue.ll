; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyhttpHeader = type { %struct.SyString, %struct.SyString }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmHttpExtractHeaderValue(ptr noundef %pSet, ptr noundef %zMime, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pSet.addr = alloca ptr, align 8
  %zMime.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %aMime = alloca ptr, align 8
  %pMime = alloca ptr, align 8
  %sMime = alloca %struct.SyString, align 8
  %n = alloca i32, align 4
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %zMime, ptr %zMime.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %zMime.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sMime, i32 0, i32 0
  store ptr %0, ptr %zString, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %sMime, i32 0, i32 1
  store i32 %1, ptr %nByte1, align 8
  %2 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pBase, align 8
  store ptr %3, ptr %aMime, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %aMime, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %pMime, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %sMime, i32 0, i32 1
  %9 = load i32, ptr %nByte2, align 8
  %10 = load ptr, ptr %pMime, align 8
  %sName = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %10, i32 0, i32 0
  %nByte3 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %11 = load i32, ptr %nByte3, align 8
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sMime, i32 0, i32 0
  %12 = load ptr, ptr %zString5, align 8
  %13 = load ptr, ptr %pMime, align 8
  %sName6 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %13, i32 0, i32 0
  %zString7 = getelementptr inbounds nuw %struct.SyString, ptr %sName6, i32 0, i32 0
  %14 = load ptr, ptr %zString7, align 8
  %15 = load ptr, ptr %pMime, align 8
  %sName8 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %15, i32 0, i32 0
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %sName8, i32 0, i32 1
  %16 = load i32, ptr %nByte9, align 8
  %call = call i32 @SyStrnicmp(ptr noundef %12, ptr noundef %14, i32 noundef %16)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %sMime, i32 0, i32 1
  %17 = load i32, ptr %nByte10, align 8
  %18 = load ptr, ptr %pMime, align 8
  %sName11 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %18, i32 0, i32 0
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %sName11, i32 0, i32 1
  %19 = load i32, ptr %nByte12, align 8
  %sub = sub i32 %17, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %sub, %cond.false ]
  %cmp13 = icmp eq i32 %cond, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %20 = load ptr, ptr %pMime, align 8
  %sValue = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %20, i32 0, i32 1
  store ptr %sValue, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %n, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
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
