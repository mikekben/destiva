; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_montgomery_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_montgomery_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
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
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
  %x33 = alloca i8, align 1
  %x34 = alloca i64, align 8
  %x35 = alloca i8, align 1
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i64, align 8
  %x53 = alloca i8, align 1
  %x54 = alloca i64, align 8
  %x55 = alloca i8, align 1
  %x56 = alloca i64, align 8
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i8, align 1
  %x60 = alloca i64, align 8
  %x61 = alloca i8, align 1
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
  %x74 = alloca i64, align 8
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
  %x91 = alloca i8, align 1
  %x92 = alloca i64, align 8
  %x93 = alloca i8, align 1
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
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i8, align 1
  %x116 = alloca i64, align 8
  %x117 = alloca i8, align 1
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i8, align 1
  %x124 = alloca i64, align 8
  %x125 = alloca i8, align 1
  %x126 = alloca i64, align 8
  %x127 = alloca i8, align 1
  %x128 = alloca i64, align 8
  %x129 = alloca i8, align 1
  %x130 = alloca i64, align 8
  %x131 = alloca i8, align 1
  %x132 = alloca i64, align 8
  %x133 = alloca i8, align 1
  %x134 = alloca i64, align 8
  %x135 = alloca i8, align 1
  %x136 = alloca i64, align 8
  %x137 = alloca i8, align 1
  %x138 = alloca i64, align 8
  %x139 = alloca i8, align 1
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -2866531139136965327)
  %3 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef -1)
  %4 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef -1)
  %5 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef -1)
  %6 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %6, i64 noundef -4294968273)
  %7 = load i64, ptr %x11, align 8
  %8 = load i64, ptr %x8, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef %7, i64 noundef %8)
  %9 = load i8, ptr %x13, align 1
  %10 = load i64, ptr %x9, align 8
  %11 = load i64, ptr %x6, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %9, i64 noundef %10, i64 noundef %11)
  %12 = load i8, ptr %x15, align 1
  %13 = load i64, ptr %x7, align 8
  %14 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %12, i64 noundef %13, i64 noundef %14)
  %15 = load i64, ptr %x1, align 8
  %16 = load i64, ptr %x10, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x19, align 1
  %18 = load i64, ptr %x12, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %17, i64 noundef 0, i64 noundef %18)
  %19 = load i8, ptr %x21, align 1
  %20 = load i64, ptr %x14, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %19, i64 noundef 0, i64 noundef %20)
  %21 = load i8, ptr %x23, align 1
  %22 = load i64, ptr %x16, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %21, i64 noundef 0, i64 noundef %22)
  %23 = load i8, ptr %x25, align 1
  %24 = load i8, ptr %x17, align 1
  %conv = zext i8 %24 to i64
  %25 = load i64, ptr %x5, align 8
  %add = add i64 %conv, %25
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %23, i64 noundef 0, i64 noundef %add)
  %26 = load i64, ptr %x20, align 8
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %27, i64 1
  %28 = load i64, ptr %arrayidx1, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %26, i64 noundef %28)
  %29 = load i8, ptr %x29, align 1
  %30 = load i64, ptr %x22, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %29, i64 noundef %30, i64 noundef 0)
  %31 = load i8, ptr %x31, align 1
  %32 = load i64, ptr %x24, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %31, i64 noundef %32, i64 noundef 0)
  %33 = load i8, ptr %x33, align 1
  %34 = load i64, ptr %x26, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %33, i64 noundef %34, i64 noundef 0)
  %35 = load i64, ptr %x28, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %35, i64 noundef -2866531139136965327)
  %36 = load i64, ptr %x36, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %36, i64 noundef -1)
  %37 = load i64, ptr %x36, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %37, i64 noundef -1)
  %38 = load i64, ptr %x36, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %38, i64 noundef -1)
  %39 = load i64, ptr %x36, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x44, ptr noundef %x45, i64 noundef %39, i64 noundef -4294968273)
  %40 = load i64, ptr %x45, align 8
  %41 = load i64, ptr %x42, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i64 noundef %40, i64 noundef %41)
  %42 = load i8, ptr %x47, align 1
  %43 = load i64, ptr %x43, align 8
  %44 = load i64, ptr %x40, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %42, i64 noundef %43, i64 noundef %44)
  %45 = load i8, ptr %x49, align 1
  %46 = load i64, ptr %x41, align 8
  %47 = load i64, ptr %x38, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %45, i64 noundef %46, i64 noundef %47)
  %48 = load i64, ptr %x28, align 8
  %49 = load i64, ptr %x44, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i64 noundef %48, i64 noundef %49)
  %50 = load i8, ptr %x53, align 1
  %51 = load i64, ptr %x30, align 8
  %52 = load i64, ptr %x46, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %52)
  %53 = load i8, ptr %x55, align 1
  %54 = load i64, ptr %x32, align 8
  %55 = load i64, ptr %x48, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %53, i64 noundef %54, i64 noundef %55)
  %56 = load i8, ptr %x57, align 1
  %57 = load i64, ptr %x34, align 8
  %58 = load i64, ptr %x50, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %56, i64 noundef %57, i64 noundef %58)
  %59 = load i8, ptr %x59, align 1
  %60 = load i8, ptr %x35, align 1
  %conv2 = zext i8 %60 to i64
  %61 = load i8, ptr %x27, align 1
  %conv3 = zext i8 %61 to i64
  %add4 = add i64 %conv2, %conv3
  %62 = load i8, ptr %x51, align 1
  %conv5 = zext i8 %62 to i64
  %63 = load i64, ptr %x39, align 8
  %add6 = add i64 %conv5, %63
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %59, i64 noundef %add4, i64 noundef %add6)
  %64 = load i64, ptr %x54, align 8
  %65 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %65, i64 2
  %66 = load i64, ptr %arrayidx7, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i64 noundef %64, i64 noundef %66)
  %67 = load i8, ptr %x63, align 1
  %68 = load i64, ptr %x56, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %67, i64 noundef %68, i64 noundef 0)
  %69 = load i8, ptr %x65, align 1
  %70 = load i64, ptr %x58, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %69, i64 noundef %70, i64 noundef 0)
  %71 = load i8, ptr %x67, align 1
  %72 = load i64, ptr %x60, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %71, i64 noundef %72, i64 noundef 0)
  %73 = load i64, ptr %x62, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %73, i64 noundef -2866531139136965327)
  %74 = load i64, ptr %x70, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %74, i64 noundef -1)
  %75 = load i64, ptr %x70, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x74, ptr noundef %x75, i64 noundef %75, i64 noundef -1)
  %76 = load i64, ptr %x70, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x76, ptr noundef %x77, i64 noundef %76, i64 noundef -1)
  %77 = load i64, ptr %x70, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x78, ptr noundef %x79, i64 noundef %77, i64 noundef -4294968273)
  %78 = load i64, ptr %x79, align 8
  %79 = load i64, ptr %x76, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x81, align 1
  %81 = load i64, ptr %x77, align 8
  %82 = load i64, ptr %x74, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x83, align 1
  %84 = load i64, ptr %x75, align 8
  %85 = load i64, ptr %x72, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i64, ptr %x62, align 8
  %87 = load i64, ptr %x78, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x87, align 1
  %89 = load i64, ptr %x64, align 8
  %90 = load i64, ptr %x80, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x89, align 1
  %92 = load i64, ptr %x66, align 8
  %93 = load i64, ptr %x82, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x91, align 1
  %95 = load i64, ptr %x68, align 8
  %96 = load i64, ptr %x84, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %94, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x93, align 1
  %98 = load i8, ptr %x69, align 1
  %conv8 = zext i8 %98 to i64
  %99 = load i8, ptr %x61, align 1
  %conv9 = zext i8 %99 to i64
  %add10 = add i64 %conv8, %conv9
  %100 = load i8, ptr %x85, align 1
  %conv11 = zext i8 %100 to i64
  %101 = load i64, ptr %x73, align 8
  %add12 = add i64 %conv11, %101
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %97, i64 noundef %add10, i64 noundef %add12)
  %102 = load i64, ptr %x88, align 8
  %103 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %103, i64 3
  %104 = load i64, ptr %arrayidx13, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i64 noundef %102, i64 noundef %104)
  %105 = load i8, ptr %x97, align 1
  %106 = load i64, ptr %x90, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %105, i64 noundef %106, i64 noundef 0)
  %107 = load i8, ptr %x99, align 1
  %108 = load i64, ptr %x92, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %107, i64 noundef %108, i64 noundef 0)
  %109 = load i8, ptr %x101, align 1
  %110 = load i64, ptr %x94, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %109, i64 noundef %110, i64 noundef 0)
  %111 = load i64, ptr %x96, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x104, ptr noundef %x105, i64 noundef %111, i64 noundef -2866531139136965327)
  %112 = load i64, ptr %x104, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %112, i64 noundef -1)
  %113 = load i64, ptr %x104, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %113, i64 noundef -1)
  %114 = load i64, ptr %x104, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %114, i64 noundef -1)
  %115 = load i64, ptr %x104, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %115, i64 noundef -4294968273)
  %116 = load i64, ptr %x113, align 8
  %117 = load i64, ptr %x110, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext 0, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x115, align 1
  %119 = load i64, ptr %x111, align 8
  %120 = load i64, ptr %x108, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x117, align 1
  %122 = load i64, ptr %x109, align 8
  %123 = load i64, ptr %x106, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %121, i64 noundef %122, i64 noundef %123)
  %124 = load i64, ptr %x96, align 8
  %125 = load i64, ptr %x112, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x121, align 1
  %127 = load i64, ptr %x98, align 8
  %128 = load i64, ptr %x114, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x123, align 1
  %130 = load i64, ptr %x100, align 8
  %131 = load i64, ptr %x116, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x125, align 1
  %133 = load i64, ptr %x102, align 8
  %134 = load i64, ptr %x118, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x127, align 1
  %136 = load i8, ptr %x103, align 1
  %conv14 = zext i8 %136 to i64
  %137 = load i8, ptr %x95, align 1
  %conv15 = zext i8 %137 to i64
  %add16 = add i64 %conv14, %conv15
  %138 = load i8, ptr %x119, align 1
  %conv17 = zext i8 %138 to i64
  %139 = load i64, ptr %x107, align 8
  %add18 = add i64 %conv17, %139
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %135, i64 noundef %add16, i64 noundef %add18)
  %140 = load i64, ptr %x122, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext 0, i64 noundef %140, i64 noundef -4294968273)
  %141 = load i8, ptr %x131, align 1
  %142 = load i64, ptr %x124, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %141, i64 noundef %142, i64 noundef -1)
  %143 = load i8, ptr %x133, align 1
  %144 = load i64, ptr %x126, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %143, i64 noundef %144, i64 noundef -1)
  %145 = load i8, ptr %x135, align 1
  %146 = load i64, ptr %x128, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %145, i64 noundef %146, i64 noundef -1)
  %147 = load i8, ptr %x137, align 1
  %148 = load i8, ptr %x129, align 1
  %conv19 = zext i8 %148 to i64
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %147, i64 noundef %conv19, i64 noundef 0)
  %149 = load i8, ptr %x139, align 1
  %150 = load i64, ptr %x130, align 8
  %151 = load i64, ptr %x122, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x140, i8 noundef zeroext %149, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x139, align 1
  %153 = load i64, ptr %x132, align 8
  %154 = load i64, ptr %x124, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x141, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x139, align 1
  %156 = load i64, ptr %x134, align 8
  %157 = load i64, ptr %x126, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x142, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x139, align 1
  %159 = load i64, ptr %x136, align 8
  %160 = load i64, ptr %x128, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x143, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i64, ptr %x140, align 8
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %162, i64 0
  store i64 %161, ptr %arrayidx20, align 8
  %163 = load i64, ptr %x141, align 8
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %164, i64 1
  store i64 %163, ptr %arrayidx21, align 8
  %165 = load i64, ptr %x142, align 8
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %166, i64 2
  store i64 %165, ptr %arrayidx22, align 8
  %167 = load i64, ptr %x143, align 8
  %168 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %168, i64 3
  store i64 %167, ptr %arrayidx23, align 8
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
