; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { [4 x i32], [2 x i32], [64 x i8] }

; Function Attrs: nounwind uwtable
define hidden i32 @SyMD5Compute(ptr noundef %pIn, i32 noundef %nLen, ptr noundef %zDigest) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zDigest.addr = alloca ptr, align 8
  %sCtx = alloca %struct.MD5Context, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %zDigest, ptr %zDigest.addr, align 8
  %call = call i32 @MD5Init(ptr noundef %sCtx)
  %0 = load ptr, ptr %pIn.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  call void @MD5Update(ptr noundef %sCtx, ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %zDigest.addr, align 8
  call void @MD5Final(ptr noundef %2, ptr noundef %sCtx)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @MD5Init(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @MD5Update(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @MD5Final(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
