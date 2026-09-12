; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_table = external hidden constant [256 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SyCrc32Update(i32 noundef %crc32, ptr noundef %pSrc, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %crc32.addr = alloca i32, align 4
  %pSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store i32 %crc32, ptr %crc32.addr, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %pSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  %1 = load ptr, ptr %zIn, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %crc32.addr, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %if.end
  %5 = load ptr, ptr %zIn, align 8
  %6 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp uge ptr %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.cond
  br label %for.end

if.end3:                                          ; preds = %for.cond
  %7 = load i32, ptr %crc32.addr, align 4
  %8 = load ptr, ptr %zIn, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %9 to i32
  %xor = xor i32 %7, %conv
  %and = and i32 %xor, 255
  %idxprom5 = zext i32 %and to i64
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr @crc32_table, i64 0, i64 %idxprom5
  %10 = load i32, ptr %arrayidx6, align 4
  %11 = load i32, ptr %crc32.addr, align 4
  %shr = lshr i32 %11, 8
  %xor7 = xor i32 %10, %shr
  store i32 %xor7, ptr %crc32.addr, align 4
  %12 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zIn, align 8
  %14 = load ptr, ptr %zEnd, align 8
  %cmp8 = icmp uge ptr %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end3
  br label %for.end

if.end11:                                         ; preds = %if.end3
  %15 = load i32, ptr %crc32.addr, align 4
  %16 = load ptr, ptr %zIn, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %17 to i32
  %xor14 = xor i32 %15, %conv13
  %and15 = and i32 %xor14, 255
  %idxprom16 = zext i32 %and15 to i64
  %arrayidx17 = getelementptr inbounds nuw [256 x i32], ptr @crc32_table, i64 0, i64 %idxprom16
  %18 = load i32, ptr %arrayidx17, align 4
  %19 = load i32, ptr %crc32.addr, align 4
  %shr18 = lshr i32 %19, 8
  %xor19 = xor i32 %18, %shr18
  store i32 %xor19, ptr %crc32.addr, align 4
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr20, ptr %zIn, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp21 = icmp uge ptr %21, %22
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end11
  br label %for.end

if.end24:                                         ; preds = %if.end11
  %23 = load i32, ptr %crc32.addr, align 4
  %24 = load ptr, ptr %zIn, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %25 to i32
  %xor27 = xor i32 %23, %conv26
  %and28 = and i32 %xor27, 255
  %idxprom29 = zext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds nuw [256 x i32], ptr @crc32_table, i64 0, i64 %idxprom29
  %26 = load i32, ptr %arrayidx30, align 4
  %27 = load i32, ptr %crc32.addr, align 4
  %shr31 = lshr i32 %27, 8
  %xor32 = xor i32 %26, %shr31
  store i32 %xor32, ptr %crc32.addr, align 4
  %28 = load ptr, ptr %zIn, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr33, ptr %zIn, align 8
  %29 = load ptr, ptr %zIn, align 8
  %30 = load ptr, ptr %zEnd, align 8
  %cmp34 = icmp uge ptr %29, %30
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end24
  br label %for.end

if.end37:                                         ; preds = %if.end24
  %31 = load i32, ptr %crc32.addr, align 4
  %32 = load ptr, ptr %zIn, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %xor40 = xor i32 %31, %conv39
  %and41 = and i32 %xor40, 255
  %idxprom42 = zext i32 %and41 to i64
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr @crc32_table, i64 0, i64 %idxprom42
  %34 = load i32, ptr %arrayidx43, align 4
  %35 = load i32, ptr %crc32.addr, align 4
  %shr44 = lshr i32 %35, 8
  %xor45 = xor i32 %34, %shr44
  store i32 %xor45, ptr %crc32.addr, align 4
  %36 = load ptr, ptr %zIn, align 8
  %incdec.ptr46 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr46, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then36, %if.then23, %if.then10, %if.then2
  %37 = load i32, ptr %crc32.addr, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
