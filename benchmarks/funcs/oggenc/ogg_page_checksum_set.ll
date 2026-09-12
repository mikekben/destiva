; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }

@crc_lookup = external hidden global [256 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local void @ogg_page_checksum_set(ptr noundef %og) #0 {
entry:
  %og.addr = alloca ptr, align 8
  %crc_reg = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %og.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %crc_reg, align 4
  %1 = load ptr, ptr %og.addr, align 8
  %header = getelementptr inbounds nuw %struct.ogg_page, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %header, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 22
  store i8 0, ptr %arrayidx, align 1
  %3 = load ptr, ptr %og.addr, align 8
  %header1 = getelementptr inbounds nuw %struct.ogg_page, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %header1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 23
  store i8 0, ptr %arrayidx2, align 1
  %5 = load ptr, ptr %og.addr, align 8
  %header3 = getelementptr inbounds nuw %struct.ogg_page, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %header3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 24
  store i8 0, ptr %arrayidx4, align 1
  %7 = load ptr, ptr %og.addr, align 8
  %header5 = getelementptr inbounds nuw %struct.ogg_page, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %header5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 25
  store i8 0, ptr %arrayidx6, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, ptr %i, align 4
  %conv = sext i32 %9 to i64
  %10 = load ptr, ptr %og.addr, align 8
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %header_len, align 8
  %cmp = icmp slt i64 %conv, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %crc_reg, align 4
  %shl = shl i32 %12, 8
  %13 = load i32, ptr %crc_reg, align 4
  %shr = lshr i32 %13, 24
  %and = and i32 %shr, 255
  %14 = load ptr, ptr %og.addr, align 8
  %header8 = getelementptr inbounds nuw %struct.ogg_page, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %header8, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %17 to i32
  %xor = xor i32 %and, %conv10
  %idxprom11 = zext i32 %xor to i64
  %arrayidx12 = getelementptr inbounds nuw [256 x i32], ptr @crc_lookup, i64 0, i64 %idxprom11
  %18 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %shl, %18
  store i32 %xor13, ptr %crc_reg, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %for.end
  %20 = load i32, ptr %i, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load ptr, ptr %og.addr, align 8
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %21, i32 0, i32 3
  %22 = load i64, ptr %body_len, align 8
  %cmp16 = icmp slt i64 %conv15, %22
  br i1 %cmp16, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond14
  %23 = load i32, ptr %crc_reg, align 4
  %shl19 = shl i32 %23, 8
  %24 = load i32, ptr %crc_reg, align 4
  %shr20 = lshr i32 %24, 24
  %and21 = and i32 %shr20, 255
  %25 = load ptr, ptr %og.addr, align 8
  %body = getelementptr inbounds nuw %struct.ogg_page, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %body, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %26, i64 %idxprom22
  %28 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  %xor25 = xor i32 %and21, %conv24
  %idxprom26 = zext i32 %xor25 to i64
  %arrayidx27 = getelementptr inbounds nuw [256 x i32], ptr @crc_lookup, i64 0, i64 %idxprom26
  %29 = load i32, ptr %arrayidx27, align 4
  %xor28 = xor i32 %shl19, %29
  store i32 %xor28, ptr %crc_reg, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body18
  %30 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end31:                                        ; preds = %for.cond14
  %31 = load i32, ptr %crc_reg, align 4
  %and32 = and i32 %31, 255
  %conv33 = trunc i32 %and32 to i8
  %32 = load ptr, ptr %og.addr, align 8
  %header34 = getelementptr inbounds nuw %struct.ogg_page, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %header34, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 22
  store i8 %conv33, ptr %arrayidx35, align 1
  %34 = load i32, ptr %crc_reg, align 4
  %shr36 = lshr i32 %34, 8
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i8
  %35 = load ptr, ptr %og.addr, align 8
  %header39 = getelementptr inbounds nuw %struct.ogg_page, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %header39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %36, i64 23
  store i8 %conv38, ptr %arrayidx40, align 1
  %37 = load i32, ptr %crc_reg, align 4
  %shr41 = lshr i32 %37, 16
  %and42 = and i32 %shr41, 255
  %conv43 = trunc i32 %and42 to i8
  %38 = load ptr, ptr %og.addr, align 8
  %header44 = getelementptr inbounds nuw %struct.ogg_page, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %header44, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %39, i64 24
  store i8 %conv43, ptr %arrayidx45, align 1
  %40 = load i32, ptr %crc_reg, align 4
  %shr46 = lshr i32 %40, 24
  %and47 = and i32 %shr46, 255
  %conv48 = trunc i32 %and47 to i8
  %41 = load ptr, ptr %og.addr, align 8
  %header49 = getelementptr inbounds nuw %struct.ogg_page, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %header49, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %42, i64 25
  store i8 %conv48, ptr %arrayidx50, align 1
  br label %if.end

if.end:                                           ; preds = %for.end31, %entry
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
