; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @Systrcpy(ptr noundef %zDest, i32 noundef %nDestLen, ptr noundef %zSrc, i32 noundef %nLen) #0 {
entry:
  %zDest.addr = alloca ptr, align 8
  %nDestLen.addr = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zBuf = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %zDest, ptr %zDest.addr, align 8
  store i32 %nDestLen, ptr %nDestLen.addr, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %zDest.addr, align 8
  store ptr %0, ptr %zBuf, align 8
  %1 = load ptr, ptr %zSrc.addr, align 8
  store ptr %1, ptr %zIn, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ule i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zSrc.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %3)
  store i32 %call, ptr %nLen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %zBuf, align 8
  %5 = load i32, ptr %nDestLen.addr, align 4
  %sub = sub i32 %5, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end32, %if.end
  %6 = load ptr, ptr %zBuf, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp uge ptr %6, %7
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %8 = load i32, ptr %nLen.addr, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end4:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx5, align 1
  %11 = load ptr, ptr %zBuf, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 0
  store i8 %10, ptr %arrayidx6, align 1
  %12 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zBuf, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr7, ptr %zBuf, align 8
  %14 = load i32, ptr %nLen.addr, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %nLen.addr, align 4
  %15 = load ptr, ptr %zBuf, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp8 = icmp uge ptr %15, %16
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end4
  %17 = load i32, ptr %nLen.addr, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false9, %if.end4
  br label %for.end

if.end12:                                         ; preds = %lor.lhs.false9
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx13, align 1
  %20 = load ptr, ptr %zBuf, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 %19, ptr %arrayidx14, align 1
  %21 = load ptr, ptr %zIn, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr15, ptr %zIn, align 8
  %22 = load ptr, ptr %zBuf, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %zBuf, align 8
  %23 = load i32, ptr %nLen.addr, align 4
  %dec17 = add i32 %23, -1
  store i32 %dec17, ptr %nLen.addr, align 4
  %24 = load ptr, ptr %zBuf, align 8
  %25 = load ptr, ptr %zEnd, align 8
  %cmp18 = icmp uge ptr %24, %25
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end12
  %26 = load i32, ptr %nLen.addr, align 4
  %cmp20 = icmp eq i32 %26, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %if.end12
  br label %for.end

if.end22:                                         ; preds = %lor.lhs.false19
  %27 = load ptr, ptr %zIn, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx23, align 1
  %29 = load ptr, ptr %zBuf, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %29, i64 0
  store i8 %28, ptr %arrayidx24, align 1
  %30 = load ptr, ptr %zIn, align 8
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr25, ptr %zIn, align 8
  %31 = load ptr, ptr %zBuf, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr26, ptr %zBuf, align 8
  %32 = load i32, ptr %nLen.addr, align 4
  %dec27 = add i32 %32, -1
  store i32 %dec27, ptr %nLen.addr, align 4
  %33 = load ptr, ptr %zBuf, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp28 = icmp uge ptr %33, %34
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end22
  %35 = load i32, ptr %nLen.addr, align 4
  %cmp30 = icmp eq i32 %35, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false29, %if.end22
  br label %for.end

if.end32:                                         ; preds = %lor.lhs.false29
  %36 = load ptr, ptr %zIn, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx33, align 1
  %38 = load ptr, ptr %zBuf, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %38, i64 0
  store i8 %37, ptr %arrayidx34, align 1
  %39 = load ptr, ptr %zIn, align 8
  %incdec.ptr35 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr35, ptr %zIn, align 8
  %40 = load ptr, ptr %zBuf, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr36, ptr %zBuf, align 8
  %41 = load i32, ptr %nLen.addr, align 4
  %dec37 = add i32 %41, -1
  store i32 %dec37, ptr %nLen.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then31, %if.then21, %if.then11, %if.then3
  %42 = load ptr, ptr %zBuf, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %42, i64 0
  store i8 0, ptr %arrayidx38, align 1
  %43 = load ptr, ptr %zBuf, align 8
  %44 = load ptr, ptr %zDest.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv
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
