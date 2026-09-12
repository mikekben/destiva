; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_output(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @printfConsumer(ptr noundef %pCtx, ptr noundef %zInput, i32 noundef %nLen, ptr noundef %pUserData) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zInput.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pCounter = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pCounter, align 8
  %1 = load ptr, ptr %pCtx.addr, align 8
  %2 = load ptr, ptr %zInput.addr, align 8
  %3 = load i32, ptr %nLen.addr, align 4
  %call = call i32 @ph7_context_output(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %4 = load i32, ptr %nLen.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %pCounter, align 8
  %6 = load i64, ptr %5, align 8
  %add = add nsw i64 %6, %conv
  store i64 %add, ptr %5, align 8
  ret i32 0
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
