; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_context_output(ptr noundef %pCtx, ptr noundef %zString, i32 noundef %nLen) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zString.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %sData = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zString, ptr %zString.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zString.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %1)
  store i32 %call, ptr %nLen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %zString.addr, align 8
  %zString1 = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  store ptr %2, ptr %zString1, align 8
  %3 = load i32, ptr %nLen.addr, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 1
  store i32 %3, ptr %nByte, align 8
  %4 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pVm, align 8
  %call2 = call i32 @PH7_VmOutputConsume(ptr noundef %5, ptr noundef %sData)
  store i32 %call2, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmOutputConsume(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
