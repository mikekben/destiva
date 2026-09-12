; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyBinHash(ptr noundef %pSrc, i32 noundef %nLen) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nH = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %pSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  store i32 5381, ptr %nH, align 4
  %1 = load ptr, ptr %zIn, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end23, %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load i32, ptr %nH, align 4
  %mul = mul i32 %5, 33
  %6 = load ptr, ptr %zIn, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %7 to i32
  %add = add i32 %mul, %conv
  store i32 %add, ptr %nH, align 4
  %8 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zIn, align 8
  %10 = load ptr, ptr %zEnd, align 8
  %cmp2 = icmp uge ptr %9, %10
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  %11 = load i32, ptr %nH, align 4
  %mul6 = mul i32 %11, 33
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %add9 = add i32 %mul6, %conv8
  store i32 %add9, ptr %nH, align 4
  %14 = load ptr, ptr %zIn, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr10, ptr %zIn, align 8
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp11 = icmp uge ptr %15, %16
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end5
  br label %for.end

if.end14:                                         ; preds = %if.end5
  %17 = load i32, ptr %nH, align 4
  %mul15 = mul i32 %17, 33
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %19 to i32
  %add18 = add i32 %mul15, %conv17
  store i32 %add18, ptr %nH, align 4
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr19, ptr %zIn, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp20 = icmp uge ptr %21, %22
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  br label %for.end

if.end23:                                         ; preds = %if.end14
  %23 = load i32, ptr %nH, align 4
  %mul24 = mul i32 %23, 33
  %24 = load ptr, ptr %zIn, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %25 to i32
  %add27 = add i32 %mul24, %conv26
  store i32 %add27, ptr %nH, align 4
  %26 = load ptr, ptr %zIn, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr28, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then22, %if.then13, %if.then4, %if.then
  %27 = load i32, ptr %nH, align 4
  ret i32 %27
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
