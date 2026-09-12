; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

@mask = external hidden global [33 x i64], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpack_look(ptr noundef %b, i32 noundef %bits) #0 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load i32, ptr %bits.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %m, align 8
  %2 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %endbit, align 8
  %4 = load i32, ptr %bits.addr, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %bits.addr, align 4
  %5 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %endbyte, align 8
  %add1 = add nsw i64 %6, 4
  %7 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %7, i32 0, i32 4
  %8 = load i64, ptr %storage, align 8
  %cmp = icmp sge i64 %add1, %8
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %b.addr, align 8
  %endbyte2 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %endbyte2, align 8
  %mul = mul nsw i64 %10, 8
  %11 = load i32, ptr %bits.addr, align 4
  %conv = sext i32 %11 to i64
  %add3 = add nsw i64 %mul, %conv
  %12 = load ptr, ptr %b.addr, align 8
  %storage4 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %12, i32 0, i32 4
  %13 = load i64, ptr %storage4, align 8
  %mul5 = mul nsw i64 %13, 8
  %cmp6 = icmp sgt i64 %add3, %mul5
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %14 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %ptr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %17 = load ptr, ptr %b.addr, align 8
  %endbit12 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %endbit12, align 8
  %shr = ashr i32 %conv11, %18
  %conv13 = sext i32 %shr to i64
  store i64 %conv13, ptr %ret, align 8
  %19 = load i32, ptr %bits.addr, align 4
  %cmp14 = icmp sgt i32 %19, 8
  br i1 %cmp14, label %if.then16, label %if.end59

if.then16:                                        ; preds = %if.end9
  %20 = load ptr, ptr %b.addr, align 8
  %ptr17 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %ptr17, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  %23 = load ptr, ptr %b.addr, align 8
  %endbit20 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %endbit20, align 8
  %sub = sub nsw i32 8, %24
  %shl = shl i32 %conv19, %sub
  %conv21 = sext i32 %shl to i64
  %25 = load i64, ptr %ret, align 8
  %or = or i64 %25, %conv21
  store i64 %or, ptr %ret, align 8
  %26 = load i32, ptr %bits.addr, align 4
  %cmp22 = icmp sgt i32 %26, 16
  br i1 %cmp22, label %if.then24, label %if.end58

if.then24:                                        ; preds = %if.then16
  %27 = load ptr, ptr %b.addr, align 8
  %ptr25 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %ptr25, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %29 to i32
  %30 = load ptr, ptr %b.addr, align 8
  %endbit28 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %endbit28, align 8
  %sub29 = sub nsw i32 16, %31
  %shl30 = shl i32 %conv27, %sub29
  %conv31 = sext i32 %shl30 to i64
  %32 = load i64, ptr %ret, align 8
  %or32 = or i64 %32, %conv31
  store i64 %or32, ptr %ret, align 8
  %33 = load i32, ptr %bits.addr, align 4
  %cmp33 = icmp sgt i32 %33, 24
  br i1 %cmp33, label %if.then35, label %if.end57

if.then35:                                        ; preds = %if.then24
  %34 = load ptr, ptr %b.addr, align 8
  %ptr36 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %ptr36, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %35, i64 3
  %36 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %36 to i32
  %37 = load ptr, ptr %b.addr, align 8
  %endbit39 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %endbit39, align 8
  %sub40 = sub nsw i32 24, %38
  %shl41 = shl i32 %conv38, %sub40
  %conv42 = sext i32 %shl41 to i64
  %39 = load i64, ptr %ret, align 8
  %or43 = or i64 %39, %conv42
  store i64 %or43, ptr %ret, align 8
  %40 = load i32, ptr %bits.addr, align 4
  %cmp44 = icmp sgt i32 %40, 32
  br i1 %cmp44, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.then35
  %41 = load ptr, ptr %b.addr, align 8
  %endbit46 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %endbit46, align 8
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then47, label %if.end56

if.then47:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %b.addr, align 8
  %ptr48 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %ptr48, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %44, i64 4
  %45 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %45 to i32
  %46 = load ptr, ptr %b.addr, align 8
  %endbit51 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %endbit51, align 8
  %sub52 = sub nsw i32 32, %47
  %shl53 = shl i32 %conv50, %sub52
  %conv54 = sext i32 %shl53 to i64
  %48 = load i64, ptr %ret, align 8
  %or55 = or i64 %48, %conv54
  store i64 %or55, ptr %ret, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then47, %land.lhs.true, %if.then35
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then24
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then16
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end9
  %49 = load i64, ptr %m, align 8
  %50 = load i64, ptr %ret, align 8
  %and = and i64 %49, %50
  store i64 %and, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end59, %if.then8
  %51 = load i64, ptr %retval, align 8
  ret i64 %51
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
