; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_compile(ptr noundef %pEngine, ptr noundef %zSource, i32 noundef %nLen, ptr noundef %ppOutVm) #0 {
entry:
  %retval = alloca i32, align 4
  %pEngine.addr = alloca ptr, align 8
  %zSource.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %ppOutVm.addr = alloca ptr, align 8
  %sScript = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store ptr %zSource, ptr %zSource.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %ppOutVm, ptr %ppOutVm.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pEngine.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %nMagic, align 8
  %cmp1 = icmp ne i32 %2, -126567209
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %zSource.addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i32, ptr %nLen.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %zSource.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %5)
  store i32 %call, ptr %nLen.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load ptr, ptr %zSource.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 0
  store ptr %6, ptr %zString, align 8
  %7 = load i32, ptr %nLen.addr, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 1
  store i32 %7, ptr %nByte, align 8
  %8 = load ptr, ptr %pEngine.addr, align 8
  %9 = load ptr, ptr %ppOutVm.addr, align 8
  %call7 = call i32 @ProcessScript(ptr noundef %8, ptr noundef %9, ptr noundef %sScript, i32 noundef 0, ptr noundef null)
  store i32 %call7, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ProcessScript(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
