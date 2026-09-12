; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_read(ptr noundef %b, i32 noundef %bits) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load i32, ptr %bits.addr, align 4
  %sub = sub nsw i32 32, %0
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %m, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %endbit, align 8
  %3 = load i32, ptr %bits.addr, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %bits.addr, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %endbyte, align 8
  %add1 = add nsw i64 %5, 4
  %6 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %storage, align 8
  %cmp = icmp sge i64 %add1, %7
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  store i64 -1, ptr %ret, align 8
  %8 = load ptr, ptr %b.addr, align 8
  %endbyte3 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %endbyte3, align 8
  %mul = mul nsw i64 %9, 8
  %10 = load i32, ptr %bits.addr, align 4
  %conv4 = sext i32 %10 to i64
  %add5 = add nsw i64 %mul, %conv4
  %11 = load ptr, ptr %b.addr, align 8
  %storage6 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %storage6, align 8
  %mul7 = mul nsw i64 %12, 8
  %cmp8 = icmp sgt i64 %add5, %mul7
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  br label %overflow

if.end:                                           ; preds = %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %13 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %15 to i32
  %16 = load ptr, ptr %b.addr, align 8
  %endbit13 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %endbit13, align 8
  %add14 = add nsw i32 24, %17
  %shl = shl i32 %conv12, %add14
  %conv15 = sext i32 %shl to i64
  store i64 %conv15, ptr %ret, align 8
  %18 = load i32, ptr %bits.addr, align 4
  %cmp16 = icmp sgt i32 %18, 8
  br i1 %cmp16, label %if.then18, label %if.end61

if.then18:                                        ; preds = %if.end11
  %19 = load ptr, ptr %b.addr, align 8
  %ptr19 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %ptr19, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %22 = load ptr, ptr %b.addr, align 8
  %endbit22 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %endbit22, align 8
  %add23 = add nsw i32 16, %23
  %shl24 = shl i32 %conv21, %add23
  %conv25 = sext i32 %shl24 to i64
  %24 = load i64, ptr %ret, align 8
  %or = or i64 %24, %conv25
  store i64 %or, ptr %ret, align 8
  %25 = load i32, ptr %bits.addr, align 4
  %cmp26 = icmp sgt i32 %25, 16
  br i1 %cmp26, label %if.then28, label %if.end60

if.then28:                                        ; preds = %if.then18
  %26 = load ptr, ptr %b.addr, align 8
  %ptr29 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %ptr29, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %28 to i32
  %29 = load ptr, ptr %b.addr, align 8
  %endbit32 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %endbit32, align 8
  %add33 = add nsw i32 8, %30
  %shl34 = shl i32 %conv31, %add33
  %conv35 = sext i32 %shl34 to i64
  %31 = load i64, ptr %ret, align 8
  %or36 = or i64 %31, %conv35
  store i64 %or36, ptr %ret, align 8
  %32 = load i32, ptr %bits.addr, align 4
  %cmp37 = icmp sgt i32 %32, 24
  br i1 %cmp37, label %if.then39, label %if.end59

if.then39:                                        ; preds = %if.then28
  %33 = load ptr, ptr %b.addr, align 8
  %ptr40 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %ptr40, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %34, i64 3
  %35 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %35 to i32
  %36 = load ptr, ptr %b.addr, align 8
  %endbit43 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %endbit43, align 8
  %shl44 = shl i32 %conv42, %37
  %conv45 = sext i32 %shl44 to i64
  %38 = load i64, ptr %ret, align 8
  %or46 = or i64 %38, %conv45
  store i64 %or46, ptr %ret, align 8
  %39 = load i32, ptr %bits.addr, align 4
  %cmp47 = icmp sgt i32 %39, 32
  br i1 %cmp47, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.then39
  %40 = load ptr, ptr %b.addr, align 8
  %endbit49 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %endbit49, align 8
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then50, label %if.end58

if.then50:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %b.addr, align 8
  %ptr51 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %ptr51, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %43, i64 4
  %44 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %44 to i32
  %45 = load ptr, ptr %b.addr, align 8
  %endbit54 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %endbit54, align 8
  %sub55 = sub nsw i32 8, %46
  %shr = ashr i32 %conv53, %sub55
  %conv56 = sext i32 %shr to i64
  %47 = load i64, ptr %ret, align 8
  %or57 = or i64 %47, %conv56
  store i64 %or57, ptr %ret, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %land.lhs.true, %if.then39
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then28
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then18
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end11
  %48 = load i64, ptr %ret, align 8
  %49 = load i64, ptr %m, align 8
  %shr62 = ashr i64 %49, 1
  %shr63 = lshr i64 %48, %shr62
  %50 = load i64, ptr %m, align 8
  %add64 = add nsw i64 %50, 1
  %shr65 = ashr i64 %add64, 1
  %shr66 = lshr i64 %shr63, %shr65
  store i64 %shr66, ptr %ret, align 8
  br label %overflow

overflow:                                         ; preds = %if.end61, %if.then10
  %51 = load i32, ptr %bits.addr, align 4
  %div = sdiv i32 %51, 8
  %52 = load ptr, ptr %b.addr, align 8
  %ptr67 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %ptr67, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr67, align 8
  %54 = load i32, ptr %bits.addr, align 4
  %div68 = sdiv i32 %54, 8
  %conv69 = sext i32 %div68 to i64
  %55 = load ptr, ptr %b.addr, align 8
  %endbyte70 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %55, i32 0, i32 0
  %56 = load i64, ptr %endbyte70, align 8
  %add71 = add nsw i64 %56, %conv69
  store i64 %add71, ptr %endbyte70, align 8
  %57 = load i32, ptr %bits.addr, align 4
  %and = and i32 %57, 7
  %58 = load ptr, ptr %b.addr, align 8
  %endbit72 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %58, i32 0, i32 1
  store i32 %and, ptr %endbit72, align 8
  %59 = load i64, ptr %ret, align 8
  ret i64 %59
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
