; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @randomByte(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %t = alloca i8, align 1
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %i = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %i, align 2
  %inc = add i8 %1, 1
  store i8 %inc, ptr %i, align 2
  %2 = load ptr, ptr %pCtx.addr, align 8
  %s = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pCtx.addr, align 8
  %i1 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %i1, align 2
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %s, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  store i8 %5, ptr %t, align 1
  %6 = load i8, ptr %t, align 1
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %pCtx.addr, align 8
  %j = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %j, align 1
  %conv2 = zext i8 %8 to i32
  %add = add nsw i32 %conv2, %conv
  %conv3 = trunc i32 %add to i8
  store i8 %conv3, ptr %j, align 1
  %9 = load ptr, ptr %pCtx.addr, align 8
  %s4 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pCtx.addr, align 8
  %j5 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %j5, align 1
  %idxprom6 = zext i8 %11 to i64
  %arrayidx7 = getelementptr inbounds nuw [256 x i8], ptr %s4, i64 0, i64 %idxprom6
  %12 = load i8, ptr %arrayidx7, align 1
  %13 = load ptr, ptr %pCtx.addr, align 8
  %s8 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pCtx.addr, align 8
  %i9 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %i9, align 2
  %idxprom10 = zext i8 %15 to i64
  %arrayidx11 = getelementptr inbounds nuw [256 x i8], ptr %s8, i64 0, i64 %idxprom10
  store i8 %12, ptr %arrayidx11, align 1
  %16 = load i8, ptr %t, align 1
  %17 = load ptr, ptr %pCtx.addr, align 8
  %s12 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pCtx.addr, align 8
  %j13 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %18, i32 0, i32 1
  %19 = load i8, ptr %j13, align 1
  %idxprom14 = zext i8 %19 to i64
  %arrayidx15 = getelementptr inbounds nuw [256 x i8], ptr %s12, i64 0, i64 %idxprom14
  store i8 %16, ptr %arrayidx15, align 1
  %20 = load ptr, ptr %pCtx.addr, align 8
  %s16 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pCtx.addr, align 8
  %i17 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %21, i32 0, i32 0
  %22 = load i8, ptr %i17, align 2
  %idxprom18 = zext i8 %22 to i64
  %arrayidx19 = getelementptr inbounds nuw [256 x i8], ptr %s16, i64 0, i64 %idxprom18
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %24 = load i8, ptr %t, align 1
  %conv21 = zext i8 %24 to i32
  %add22 = add nsw i32 %conv21, %conv20
  %conv23 = trunc i32 %add22 to i8
  store i8 %conv23, ptr %t, align 1
  %25 = load ptr, ptr %pCtx.addr, align 8
  %s24 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %25, i32 0, i32 2
  %26 = load i8, ptr %t, align 1
  %idxprom25 = zext i8 %26 to i64
  %arrayidx26 = getelementptr inbounds nuw [256 x i8], ptr %s24, i64 0, i64 %idxprom25
  %27 = load i8, ptr %arrayidx26, align 1
  ret i8 %27
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
