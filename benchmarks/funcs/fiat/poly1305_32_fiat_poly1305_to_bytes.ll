; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_addcarryx_u26(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_subborrowx_u26(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i8, align 1
  %x14 = alloca i32, align 4
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i8, align 1
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i8, align 1
  %x55 = alloca i32, align 4
  %x56 = alloca i8, align 1
  %x57 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef 67108859)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef %4, i32 noundef 67108863)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 67108863)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef %10, i32 noundef 67108863)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef %13, i32 noundef 67108863)
  %14 = load i8, ptr %x10, align 1
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %14, i32 noundef 0, i32 noundef -1)
  %15 = load i32, ptr %x1, align 4
  %16 = load i32, ptr %x11, align 4
  %and = and i32 %16, 67108859
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i32 noundef %15, i32 noundef %and)
  %17 = load i8, ptr %x13, align 1
  %18 = load i32, ptr %x3, align 4
  %19 = load i32, ptr %x11, align 4
  %and5 = and i32 %19, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i32 noundef %18, i32 noundef %and5)
  %20 = load i8, ptr %x15, align 1
  %21 = load i32, ptr %x5, align 4
  %22 = load i32, ptr %x11, align 4
  %and6 = and i32 %22, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %20, i32 noundef %21, i32 noundef %and6)
  %23 = load i8, ptr %x17, align 1
  %24 = load i32, ptr %x7, align 4
  %25 = load i32, ptr %x11, align 4
  %and7 = and i32 %25, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i32 noundef %24, i32 noundef %and7)
  %26 = load i8, ptr %x19, align 1
  %27 = load i32, ptr %x9, align 4
  %28 = load i32, ptr %x11, align 4
  %and8 = and i32 %28, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %and8)
  %29 = load i32, ptr %x18, align 4
  %shl = shl i32 %29, 6
  store i32 %shl, ptr %x22, align 4
  %30 = load i32, ptr %x16, align 4
  %shl9 = shl i32 %30, 4
  store i32 %shl9, ptr %x23, align 4
  %31 = load i32, ptr %x14, align 4
  %shl10 = shl i32 %31, 2
  store i32 %shl10, ptr %x24, align 4
  %32 = load i32, ptr %x12, align 4
  %and11 = and i32 %32, 255
  %conv = trunc i32 %and11 to i8
  store i8 %conv, ptr %x25, align 1
  %33 = load i32, ptr %x12, align 4
  %shr = lshr i32 %33, 8
  store i32 %shr, ptr %x26, align 4
  %34 = load i32, ptr %x26, align 4
  %and12 = and i32 %34, 255
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, ptr %x27, align 1
  %35 = load i32, ptr %x26, align 4
  %shr14 = lshr i32 %35, 8
  store i32 %shr14, ptr %x28, align 4
  %36 = load i32, ptr %x28, align 4
  %and15 = and i32 %36, 255
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %x29, align 1
  %37 = load i32, ptr %x28, align 4
  %shr17 = lshr i32 %37, 8
  %conv18 = trunc i32 %shr17 to i8
  store i8 %conv18, ptr %x30, align 1
  %38 = load i32, ptr %x24, align 4
  %39 = load i8, ptr %x30, align 1
  %conv19 = zext i8 %39 to i32
  %add = add i32 %38, %conv19
  store i32 %add, ptr %x31, align 4
  %40 = load i32, ptr %x31, align 4
  %and20 = and i32 %40, 255
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, ptr %x32, align 1
  %41 = load i32, ptr %x31, align 4
  %shr22 = lshr i32 %41, 8
  store i32 %shr22, ptr %x33, align 4
  %42 = load i32, ptr %x33, align 4
  %and23 = and i32 %42, 255
  %conv24 = trunc i32 %and23 to i8
  store i8 %conv24, ptr %x34, align 1
  %43 = load i32, ptr %x33, align 4
  %shr25 = lshr i32 %43, 8
  store i32 %shr25, ptr %x35, align 4
  %44 = load i32, ptr %x35, align 4
  %and26 = and i32 %44, 255
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, ptr %x36, align 1
  %45 = load i32, ptr %x35, align 4
  %shr28 = lshr i32 %45, 8
  %conv29 = trunc i32 %shr28 to i8
  store i8 %conv29, ptr %x37, align 1
  %46 = load i32, ptr %x23, align 4
  %47 = load i8, ptr %x37, align 1
  %conv30 = zext i8 %47 to i32
  %add31 = add i32 %46, %conv30
  store i32 %add31, ptr %x38, align 4
  %48 = load i32, ptr %x38, align 4
  %and32 = and i32 %48, 255
  %conv33 = trunc i32 %and32 to i8
  store i8 %conv33, ptr %x39, align 1
  %49 = load i32, ptr %x38, align 4
  %shr34 = lshr i32 %49, 8
  store i32 %shr34, ptr %x40, align 4
  %50 = load i32, ptr %x40, align 4
  %and35 = and i32 %50, 255
  %conv36 = trunc i32 %and35 to i8
  store i8 %conv36, ptr %x41, align 1
  %51 = load i32, ptr %x40, align 4
  %shr37 = lshr i32 %51, 8
  store i32 %shr37, ptr %x42, align 4
  %52 = load i32, ptr %x42, align 4
  %and38 = and i32 %52, 255
  %conv39 = trunc i32 %and38 to i8
  store i8 %conv39, ptr %x43, align 1
  %53 = load i32, ptr %x42, align 4
  %shr40 = lshr i32 %53, 8
  %conv41 = trunc i32 %shr40 to i8
  store i8 %conv41, ptr %x44, align 1
  %54 = load i32, ptr %x22, align 4
  %55 = load i8, ptr %x44, align 1
  %conv42 = zext i8 %55 to i32
  %add43 = add i32 %54, %conv42
  store i32 %add43, ptr %x45, align 4
  %56 = load i32, ptr %x45, align 4
  %and44 = and i32 %56, 255
  %conv45 = trunc i32 %and44 to i8
  store i8 %conv45, ptr %x46, align 1
  %57 = load i32, ptr %x45, align 4
  %shr46 = lshr i32 %57, 8
  store i32 %shr46, ptr %x47, align 4
  %58 = load i32, ptr %x47, align 4
  %and47 = and i32 %58, 255
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, ptr %x48, align 1
  %59 = load i32, ptr %x47, align 4
  %shr49 = lshr i32 %59, 8
  store i32 %shr49, ptr %x49, align 4
  %60 = load i32, ptr %x49, align 4
  %and50 = and i32 %60, 255
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, ptr %x50, align 1
  %61 = load i32, ptr %x49, align 4
  %shr52 = lshr i32 %61, 8
  %conv53 = trunc i32 %shr52 to i8
  store i8 %conv53, ptr %x51, align 1
  %62 = load i32, ptr %x20, align 4
  %and54 = and i32 %62, 255
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, ptr %x52, align 1
  %63 = load i32, ptr %x20, align 4
  %shr56 = lshr i32 %63, 8
  store i32 %shr56, ptr %x53, align 4
  %64 = load i32, ptr %x53, align 4
  %and57 = and i32 %64, 255
  %conv58 = trunc i32 %and57 to i8
  store i8 %conv58, ptr %x54, align 1
  %65 = load i32, ptr %x53, align 4
  %shr59 = lshr i32 %65, 8
  store i32 %shr59, ptr %x55, align 4
  %66 = load i32, ptr %x55, align 4
  %and60 = and i32 %66, 255
  %conv61 = trunc i32 %and60 to i8
  store i8 %conv61, ptr %x56, align 1
  %67 = load i32, ptr %x55, align 4
  %shr62 = lshr i32 %67, 8
  %conv63 = trunc i32 %shr62 to i8
  store i8 %conv63, ptr %x57, align 1
  %68 = load i8, ptr %x25, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %69, i64 0
  store i8 %68, ptr %arrayidx64, align 1
  %70 = load i8, ptr %x27, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %70, ptr %arrayidx65, align 1
  %72 = load i8, ptr %x29, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %73, i64 2
  store i8 %72, ptr %arrayidx66, align 1
  %74 = load i8, ptr %x32, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 %74, ptr %arrayidx67, align 1
  %76 = load i8, ptr %x34, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %77, i64 4
  store i8 %76, ptr %arrayidx68, align 1
  %78 = load i8, ptr %x36, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %79, i64 5
  store i8 %78, ptr %arrayidx69, align 1
  %80 = load i8, ptr %x39, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %81, i64 6
  store i8 %80, ptr %arrayidx70, align 1
  %82 = load i8, ptr %x41, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %83, i64 7
  store i8 %82, ptr %arrayidx71, align 1
  %84 = load i8, ptr %x43, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %85, i64 8
  store i8 %84, ptr %arrayidx72, align 1
  %86 = load i8, ptr %x46, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %87, i64 9
  store i8 %86, ptr %arrayidx73, align 1
  %88 = load i8, ptr %x48, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %89, i64 10
  store i8 %88, ptr %arrayidx74, align 1
  %90 = load i8, ptr %x50, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %91, i64 11
  store i8 %90, ptr %arrayidx75, align 1
  %92 = load i8, ptr %x51, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %93, i64 12
  store i8 %92, ptr %arrayidx76, align 1
  %94 = load i8, ptr %x52, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %95, i64 13
  store i8 %94, ptr %arrayidx77, align 1
  %96 = load i8, ptr %x54, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %97, i64 14
  store i8 %96, ptr %arrayidx78, align 1
  %98 = load i8, ptr %x56, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %99, i64 15
  store i8 %98, ptr %arrayidx79, align 1
  %100 = load i8, ptr %x57, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %101, i64 16
  store i8 %100, ptr %arrayidx80, align 1
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
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
