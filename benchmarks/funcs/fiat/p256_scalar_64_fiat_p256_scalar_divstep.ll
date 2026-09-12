; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_scalar_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %out4.addr = alloca ptr, align 8
  %out5.addr = alloca ptr, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %arg4.addr = alloca ptr, align 8
  %arg5.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i8, align 1
  %x4 = alloca i64, align 8
  %x5 = alloca i8, align 1
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i8, align 1
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  %x53 = alloca i64, align 8
  %x54 = alloca i8, align 1
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i8, align 1
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i8, align 1
  %x68 = alloca i64, align 8
  %x69 = alloca i8, align 1
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i8, align 1
  %x82 = alloca i64, align 8
  %x83 = alloca i8, align 1
  %x84 = alloca i64, align 8
  %x85 = alloca i8, align 1
  %x86 = alloca i64, align 8
  %x87 = alloca i8, align 1
  %x88 = alloca i64, align 8
  %x89 = alloca i8, align 1
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i8, align 1
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i8, align 1
  %x104 = alloca i64, align 8
  %x105 = alloca i8, align 1
  %x106 = alloca i64, align 8
  %x107 = alloca i8, align 1
  %x108 = alloca i64, align 8
  %x109 = alloca i8, align 1
  %x110 = alloca i64, align 8
  %x111 = alloca i8, align 1
  %x112 = alloca i64, align 8
  %x113 = alloca i8, align 1
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store ptr %out3, ptr %out3.addr, align 8
  store ptr %out4, ptr %out4.addr, align 8
  store ptr %out5, ptr %out5.addr, align 8
  store i64 %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  store ptr %arg4, ptr %arg4.addr, align 8
  store ptr %arg5, ptr %arg5.addr, align 8
  %0 = load i64, ptr %arg1.addr, align 8
  %not = xor i64 %0, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
  %1 = load i64, ptr %x1, align 8
  %shr = lshr i64 %1, 63
  %conv = trunc i64 %shr to i8
  %conv1 = zext i8 %conv to i32
  %2 = load ptr, ptr %arg3.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx, align 8
  %and = and i64 %3, 1
  %conv2 = trunc i64 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv1, %conv3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %x3, align 1
  %4 = load i64, ptr %arg1.addr, align 8
  %not6 = xor i64 %4, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %33, i64 0
  %34 = load i64, ptr %arrayidx17, align 8
  %not18 = xor i64 %34, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not18)
  %35 = load i8, ptr %x13, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %36, i64 1
  %37 = load i64, ptr %arrayidx19, align 8
  %not20 = xor i64 %37, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %35, i64 noundef 0, i64 noundef %not20)
  %38 = load i8, ptr %x15, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %39, i64 2
  %40 = load i64, ptr %arrayidx21, align 8
  %not22 = xor i64 %40, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %38, i64 noundef 0, i64 noundef %not22)
  %41 = load i8, ptr %x17, align 1
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %42, i64 3
  %43 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %43, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %41, i64 noundef 0, i64 noundef %not24)
  %44 = load i8, ptr %x19, align 1
  %45 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %45, i64 4
  %46 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %46, -1
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %44, i64 noundef 0, i64 noundef %not26)
  %47 = load i8, ptr %x3, align 1
  %48 = load ptr, ptr %arg3.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx27, align 8
  %50 = load i64, ptr %x12, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x22, i8 noundef zeroext %47, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x3, align 1
  %52 = load ptr, ptr %arg3.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %52, i64 1
  %53 = load i64, ptr %arrayidx28, align 8
  %54 = load i64, ptr %x14, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x23, i8 noundef zeroext %51, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x3, align 1
  %56 = load ptr, ptr %arg3.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx29, align 8
  %58 = load i64, ptr %x16, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x24, i8 noundef zeroext %55, i64 noundef %57, i64 noundef %58)
  %59 = load i8, ptr %x3, align 1
  %60 = load ptr, ptr %arg3.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %60, i64 3
  %61 = load i64, ptr %arrayidx30, align 8
  %62 = load i64, ptr %x18, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x25, i8 noundef zeroext %59, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x3, align 1
  %64 = load ptr, ptr %arg3.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %64, i64 4
  %65 = load i64, ptr %arrayidx31, align 8
  %66 = load i64, ptr %x20, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x26, i8 noundef zeroext %63, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x3, align 1
  %68 = load ptr, ptr %arg4.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %68, i64 0
  %69 = load i64, ptr %arrayidx32, align 8
  %70 = load ptr, ptr %arg5.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %70, i64 0
  %71 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x27, i8 noundef zeroext %67, i64 noundef %69, i64 noundef %71)
  %72 = load i8, ptr %x3, align 1
  %73 = load ptr, ptr %arg4.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %73, i64 1
  %74 = load i64, ptr %arrayidx34, align 8
  %75 = load ptr, ptr %arg5.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %75, i64 1
  %76 = load i64, ptr %arrayidx35, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x28, i8 noundef zeroext %72, i64 noundef %74, i64 noundef %76)
  %77 = load i8, ptr %x3, align 1
  %78 = load ptr, ptr %arg4.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %78, i64 2
  %79 = load i64, ptr %arrayidx36, align 8
  %80 = load ptr, ptr %arg5.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %80, i64 2
  %81 = load i64, ptr %arrayidx37, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x29, i8 noundef zeroext %77, i64 noundef %79, i64 noundef %81)
  %82 = load i8, ptr %x3, align 1
  %83 = load ptr, ptr %arg4.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %83, i64 3
  %84 = load i64, ptr %arrayidx38, align 8
  %85 = load ptr, ptr %arg5.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %85, i64 3
  %86 = load i64, ptr %arrayidx39, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x30, i8 noundef zeroext %82, i64 noundef %84, i64 noundef %86)
  %87 = load i64, ptr %x27, align 8
  %88 = load i64, ptr %x27, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext 0, i64 noundef %87, i64 noundef %88)
  %89 = load i8, ptr %x32, align 1
  %90 = load i64, ptr %x28, align 8
  %91 = load i64, ptr %x28, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %89, i64 noundef %90, i64 noundef %91)
  %92 = load i8, ptr %x34, align 1
  %93 = load i64, ptr %x29, align 8
  %94 = load i64, ptr %x29, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %92, i64 noundef %93, i64 noundef %94)
  %95 = load i8, ptr %x36, align 1
  %96 = load i64, ptr %x30, align 8
  %97 = load i64, ptr %x30, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %95, i64 noundef %96, i64 noundef %97)
  %98 = load i64, ptr %x31, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext 0, i64 noundef %98, i64 noundef -884452912994769583)
  %99 = load i8, ptr %x40, align 1
  %100 = load i64, ptr %x33, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %99, i64 noundef %100, i64 noundef -4834901526196019580)
  %101 = load i8, ptr %x42, align 1
  %102 = load i64, ptr %x35, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %101, i64 noundef %102, i64 noundef -1)
  %103 = load i8, ptr %x44, align 1
  %104 = load i64, ptr %x37, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %103, i64 noundef %104, i64 noundef -4294967296)
  %105 = load i8, ptr %x46, align 1
  %106 = load i8, ptr %x38, align 1
  %conv40 = zext i8 %106 to i64
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %105, i64 noundef %conv40, i64 noundef 0)
  %107 = load ptr, ptr %arg4.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %107, i64 3
  %108 = load i64, ptr %arrayidx41, align 8
  store i64 %108, ptr %x49, align 8
  %109 = load ptr, ptr %arg4.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %109, i64 2
  %110 = load i64, ptr %arrayidx42, align 8
  store i64 %110, ptr %x50, align 8
  %111 = load ptr, ptr %arg4.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %111, i64 1
  %112 = load i64, ptr %arrayidx43, align 8
  store i64 %112, ptr %x51, align 8
  %113 = load ptr, ptr %arg4.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %113, i64 0
  %114 = load i64, ptr %arrayidx44, align 8
  store i64 %114, ptr %x52, align 8
  %115 = load i64, ptr %x52, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %115)
  %116 = load i8, ptr %x54, align 1
  %117 = load i64, ptr %x51, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %116, i64 noundef 0, i64 noundef %117)
  %118 = load i8, ptr %x56, align 1
  %119 = load i64, ptr %x50, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %118, i64 noundef 0, i64 noundef %119)
  %120 = load i8, ptr %x58, align 1
  %121 = load i64, ptr %x49, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %120, i64 noundef 0, i64 noundef %121)
  %122 = load i8, ptr %x60, align 1
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x61, i8 noundef zeroext %122, i64 noundef 0, i64 noundef -1)
  %123 = load i64, ptr %x53, align 8
  %124 = load i64, ptr %x61, align 8
  %and45 = and i64 %124, -884452912994769583
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i64 noundef %123, i64 noundef %and45)
  %125 = load i8, ptr %x63, align 1
  %126 = load i64, ptr %x55, align 8
  %127 = load i64, ptr %x61, align 8
  %and46 = and i64 %127, -4834901526196019580
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %and46)
  %128 = load i8, ptr %x65, align 1
  %129 = load i64, ptr %x57, align 8
  %130 = load i64, ptr %x61, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %128, i64 noundef %129, i64 noundef %130)
  %131 = load i8, ptr %x67, align 1
  %132 = load i64, ptr %x59, align 8
  %133 = load i64, ptr %x61, align 8
  %and47 = and i64 %133, -4294967296
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %131, i64 noundef %132, i64 noundef %and47)
  %134 = load i8, ptr %x3, align 1
  %135 = load ptr, ptr %arg5.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %135, i64 0
  %136 = load i64, ptr %arrayidx48, align 8
  %137 = load i64, ptr %x62, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x70, i8 noundef zeroext %134, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x3, align 1
  %139 = load ptr, ptr %arg5.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %139, i64 1
  %140 = load i64, ptr %arrayidx49, align 8
  %141 = load i64, ptr %x64, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x71, i8 noundef zeroext %138, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x3, align 1
  %143 = load ptr, ptr %arg5.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %143, i64 2
  %144 = load i64, ptr %arrayidx50, align 8
  %145 = load i64, ptr %x66, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x72, i8 noundef zeroext %142, i64 noundef %144, i64 noundef %145)
  %146 = load i8, ptr %x3, align 1
  %147 = load ptr, ptr %arg5.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %147, i64 3
  %148 = load i64, ptr %arrayidx51, align 8
  %149 = load i64, ptr %x68, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x73, i8 noundef zeroext %146, i64 noundef %148, i64 noundef %149)
  %150 = load i64, ptr %x22, align 8
  %and52 = and i64 %150, 1
  %conv53 = trunc i64 %and52 to i8
  store i8 %conv53, ptr %x74, align 1
  %151 = load i8, ptr %x74, align 1
  %152 = load i64, ptr %x7, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x75, i8 noundef zeroext %151, i64 noundef 0, i64 noundef %152)
  %153 = load i8, ptr %x74, align 1
  %154 = load i64, ptr %x8, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x76, i8 noundef zeroext %153, i64 noundef 0, i64 noundef %154)
  %155 = load i8, ptr %x74, align 1
  %156 = load i64, ptr %x9, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x77, i8 noundef zeroext %155, i64 noundef 0, i64 noundef %156)
  %157 = load i8, ptr %x74, align 1
  %158 = load i64, ptr %x10, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x78, i8 noundef zeroext %157, i64 noundef 0, i64 noundef %158)
  %159 = load i8, ptr %x74, align 1
  %160 = load i64, ptr %x11, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x79, i8 noundef zeroext %159, i64 noundef 0, i64 noundef %160)
  %161 = load i64, ptr %x22, align 8
  %162 = load i64, ptr %x75, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x81, align 1
  %164 = load i64, ptr %x23, align 8
  %165 = load i64, ptr %x76, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %163, i64 noundef %164, i64 noundef %165)
  %166 = load i8, ptr %x83, align 1
  %167 = load i64, ptr %x24, align 8
  %168 = load i64, ptr %x77, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %166, i64 noundef %167, i64 noundef %168)
  %169 = load i8, ptr %x85, align 1
  %170 = load i64, ptr %x25, align 8
  %171 = load i64, ptr %x78, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %169, i64 noundef %170, i64 noundef %171)
  %172 = load i8, ptr %x87, align 1
  %173 = load i64, ptr %x26, align 8
  %174 = load i64, ptr %x79, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %172, i64 noundef %173, i64 noundef %174)
  %175 = load i8, ptr %x74, align 1
  %176 = load i64, ptr %x27, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x90, i8 noundef zeroext %175, i64 noundef 0, i64 noundef %176)
  %177 = load i8, ptr %x74, align 1
  %178 = load i64, ptr %x28, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x91, i8 noundef zeroext %177, i64 noundef 0, i64 noundef %178)
  %179 = load i8, ptr %x74, align 1
  %180 = load i64, ptr %x29, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x92, i8 noundef zeroext %179, i64 noundef 0, i64 noundef %180)
  %181 = load i8, ptr %x74, align 1
  %182 = load i64, ptr %x30, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x93, i8 noundef zeroext %181, i64 noundef 0, i64 noundef %182)
  %183 = load i64, ptr %x70, align 8
  %184 = load i64, ptr %x90, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext 0, i64 noundef %183, i64 noundef %184)
  %185 = load i8, ptr %x95, align 1
  %186 = load i64, ptr %x71, align 8
  %187 = load i64, ptr %x91, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %185, i64 noundef %186, i64 noundef %187)
  %188 = load i8, ptr %x97, align 1
  %189 = load i64, ptr %x72, align 8
  %190 = load i64, ptr %x92, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %188, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x99, align 1
  %192 = load i64, ptr %x73, align 8
  %193 = load i64, ptr %x93, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i64, ptr %x94, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext 0, i64 noundef %194, i64 noundef -884452912994769583)
  %195 = load i8, ptr %x103, align 1
  %196 = load i64, ptr %x96, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %195, i64 noundef %196, i64 noundef -4834901526196019580)
  %197 = load i8, ptr %x105, align 1
  %198 = load i64, ptr %x98, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %197, i64 noundef %198, i64 noundef -1)
  %199 = load i8, ptr %x107, align 1
  %200 = load i64, ptr %x100, align 8
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %199, i64 noundef %200, i64 noundef -4294967296)
  %201 = load i8, ptr %x109, align 1
  %202 = load i8, ptr %x101, align 1
  %conv54 = zext i8 %202 to i64
  call void @fiat_p256_scalar_subborrowx_u64(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %201, i64 noundef %conv54, i64 noundef 0)
  %203 = load i64, ptr %x6, align 8
  call void @fiat_p256_scalar_addcarryx_u64(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext 0, i64 noundef %203, i64 noundef 1)
  %204 = load i64, ptr %x80, align 8
  %shr55 = lshr i64 %204, 1
  %205 = load i64, ptr %x82, align 8
  %shl = shl i64 %205, 63
  %and56 = and i64 %shl, -1
  %or = or i64 %shr55, %and56
  store i64 %or, ptr %x114, align 8
  %206 = load i64, ptr %x82, align 8
  %shr57 = lshr i64 %206, 1
  %207 = load i64, ptr %x84, align 8
  %shl58 = shl i64 %207, 63
  %and59 = and i64 %shl58, -1
  %or60 = or i64 %shr57, %and59
  store i64 %or60, ptr %x115, align 8
  %208 = load i64, ptr %x84, align 8
  %shr61 = lshr i64 %208, 1
  %209 = load i64, ptr %x86, align 8
  %shl62 = shl i64 %209, 63
  %and63 = and i64 %shl62, -1
  %or64 = or i64 %shr61, %and63
  store i64 %or64, ptr %x116, align 8
  %210 = load i64, ptr %x86, align 8
  %shr65 = lshr i64 %210, 1
  %211 = load i64, ptr %x88, align 8
  %shl66 = shl i64 %211, 63
  %and67 = and i64 %shl66, -1
  %or68 = or i64 %shr65, %and67
  store i64 %or68, ptr %x117, align 8
  %212 = load i64, ptr %x88, align 8
  %and69 = and i64 %212, -9223372036854775808
  %213 = load i64, ptr %x88, align 8
  %shr70 = lshr i64 %213, 1
  %or71 = or i64 %and69, %shr70
  store i64 %or71, ptr %x118, align 8
  %214 = load i8, ptr %x48, align 1
  %215 = load i64, ptr %x39, align 8
  %216 = load i64, ptr %x31, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x119, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x48, align 1
  %218 = load i64, ptr %x41, align 8
  %219 = load i64, ptr %x33, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x120, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x48, align 1
  %221 = load i64, ptr %x43, align 8
  %222 = load i64, ptr %x35, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x121, i8 noundef zeroext %220, i64 noundef %221, i64 noundef %222)
  %223 = load i8, ptr %x48, align 1
  %224 = load i64, ptr %x45, align 8
  %225 = load i64, ptr %x37, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x122, i8 noundef zeroext %223, i64 noundef %224, i64 noundef %225)
  %226 = load i8, ptr %x111, align 1
  %227 = load i64, ptr %x102, align 8
  %228 = load i64, ptr %x94, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x123, i8 noundef zeroext %226, i64 noundef %227, i64 noundef %228)
  %229 = load i8, ptr %x111, align 1
  %230 = load i64, ptr %x104, align 8
  %231 = load i64, ptr %x96, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x124, i8 noundef zeroext %229, i64 noundef %230, i64 noundef %231)
  %232 = load i8, ptr %x111, align 1
  %233 = load i64, ptr %x106, align 8
  %234 = load i64, ptr %x98, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x125, i8 noundef zeroext %232, i64 noundef %233, i64 noundef %234)
  %235 = load i8, ptr %x111, align 1
  %236 = load i64, ptr %x108, align 8
  %237 = load i64, ptr %x100, align 8
  call void @fiat_p256_scalar_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %235, i64 noundef %236, i64 noundef %237)
  %238 = load i64, ptr %x112, align 8
  %239 = load ptr, ptr %out1.addr, align 8
  store i64 %238, ptr %239, align 8
  %240 = load i64, ptr %x7, align 8
  %241 = load ptr, ptr %out2.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %241, i64 0
  store i64 %240, ptr %arrayidx72, align 8
  %242 = load i64, ptr %x8, align 8
  %243 = load ptr, ptr %out2.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %243, i64 1
  store i64 %242, ptr %arrayidx73, align 8
  %244 = load i64, ptr %x9, align 8
  %245 = load ptr, ptr %out2.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %245, i64 2
  store i64 %244, ptr %arrayidx74, align 8
  %246 = load i64, ptr %x10, align 8
  %247 = load ptr, ptr %out2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %247, i64 3
  store i64 %246, ptr %arrayidx75, align 8
  %248 = load i64, ptr %x11, align 8
  %249 = load ptr, ptr %out2.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %249, i64 4
  store i64 %248, ptr %arrayidx76, align 8
  %250 = load i64, ptr %x114, align 8
  %251 = load ptr, ptr %out3.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %251, i64 0
  store i64 %250, ptr %arrayidx77, align 8
  %252 = load i64, ptr %x115, align 8
  %253 = load ptr, ptr %out3.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %253, i64 1
  store i64 %252, ptr %arrayidx78, align 8
  %254 = load i64, ptr %x116, align 8
  %255 = load ptr, ptr %out3.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, ptr %255, i64 2
  store i64 %254, ptr %arrayidx79, align 8
  %256 = load i64, ptr %x117, align 8
  %257 = load ptr, ptr %out3.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %257, i64 3
  store i64 %256, ptr %arrayidx80, align 8
  %258 = load i64, ptr %x118, align 8
  %259 = load ptr, ptr %out3.addr, align 8
  %arrayidx81 = getelementptr inbounds i64, ptr %259, i64 4
  store i64 %258, ptr %arrayidx81, align 8
  %260 = load i64, ptr %x119, align 8
  %261 = load ptr, ptr %out4.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %261, i64 0
  store i64 %260, ptr %arrayidx82, align 8
  %262 = load i64, ptr %x120, align 8
  %263 = load ptr, ptr %out4.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %263, i64 1
  store i64 %262, ptr %arrayidx83, align 8
  %264 = load i64, ptr %x121, align 8
  %265 = load ptr, ptr %out4.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %265, i64 2
  store i64 %264, ptr %arrayidx84, align 8
  %266 = load i64, ptr %x122, align 8
  %267 = load ptr, ptr %out4.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %267, i64 3
  store i64 %266, ptr %arrayidx85, align 8
  %268 = load i64, ptr %x123, align 8
  %269 = load ptr, ptr %out5.addr, align 8
  %arrayidx86 = getelementptr inbounds i64, ptr %269, i64 0
  store i64 %268, ptr %arrayidx86, align 8
  %270 = load i64, ptr %x124, align 8
  %271 = load ptr, ptr %out5.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %271, i64 1
  store i64 %270, ptr %arrayidx87, align 8
  %272 = load i64, ptr %x125, align 8
  %273 = load ptr, ptr %out5.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %273, i64 2
  store i64 %272, ptr %arrayidx88, align 8
  %274 = load i64, ptr %x126, align 8
  %275 = load ptr, ptr %out5.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %275, i64 3
  store i64 %274, ptr %arrayidx89, align 8
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
