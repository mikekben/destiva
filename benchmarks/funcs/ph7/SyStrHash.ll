; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrHash(ptr noundef %pSrc, i32 noundef %nLen) #0 {
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

for.cond:                                         ; preds = %if.end25, %entry
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
  %call = call i32 @tolower(i32 noundef %conv) #2
  %add = add i32 %mul, %call
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
  %call9 = call i32 @tolower(i32 noundef %conv8) #2
  %add10 = add i32 %mul6, %call9
  store i32 %add10, ptr %nH, align 4
  %14 = load ptr, ptr %zIn, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %zIn, align 8
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp12 = icmp uge ptr %15, %16
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end5
  br label %for.end

if.end15:                                         ; preds = %if.end5
  %17 = load i32, ptr %nH, align 4
  %mul16 = mul i32 %17, 33
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %call19 = call i32 @tolower(i32 noundef %conv18) #2
  %add20 = add i32 %mul16, %call19
  store i32 %add20, ptr %nH, align 4
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %zIn, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp22 = icmp uge ptr %21, %22
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end15
  br label %for.end

if.end25:                                         ; preds = %if.end15
  %23 = load i32, ptr %nH, align 4
  %mul26 = mul i32 %23, 33
  %24 = load ptr, ptr %zIn, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %call29 = call i32 @tolower(i32 noundef %conv28) #2
  %add30 = add i32 %mul26, %call29
  store i32 %add30, ptr %nH, align 4
  %26 = load ptr, ptr %zIn, align 8
  %incdec.ptr31 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr31, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then24, %if.then14, %if.then4, %if.then
  %27 = load i32, ptr %nH, align 4
  ret i32 %27
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
