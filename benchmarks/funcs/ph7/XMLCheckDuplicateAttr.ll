; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLRawStr = type { ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @XMLCheckDuplicateAttr(ptr noundef %aSet, i32 noundef %nEntry, ptr noundef %pEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %aSet.addr = alloca ptr, align 8
  %nEntry.addr = alloca i32, align 4
  %pEntry.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %pAttr = alloca ptr, align 8
  store ptr %aSet, ptr %aSet.addr, align 8
  store i32 %nEntry, ptr %nEntry.addr, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %1 = load i32, ptr %nEntry.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %aSet.addr, align 8
  %3 = load i32, ptr %n, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pAttr, align 8
  %4 = load ptr, ptr %pAttr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %6 = load ptr, ptr %pEntry.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte1, align 8
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %pAttr, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zString, align 8
  %10 = load ptr, ptr %pEntry.addr, align 8
  %zString3 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString3, align 8
  %12 = load ptr, ptr %pEntry.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nByte4, align 8
  %call = call i32 @SyMemcmp(ptr noundef %9, ptr noundef %11, i32 noundef %13)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %n, align 4
  %add = add i32 %14, 2
  store i32 %add, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
