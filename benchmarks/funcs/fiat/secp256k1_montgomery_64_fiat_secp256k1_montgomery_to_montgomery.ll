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
define dso_local void @fiat_secp256k1_montgomery_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
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
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  %x53 = alloca i64, align 8
  %x54 = alloca i64, align 8
  %x55 = alloca i64, align 8
  %x56 = alloca i64, align 8
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i8, align 1
  %x69 = alloca i64, align 8
  %x70 = alloca i8, align 1
  %x71 = alloca i64, align 8
  %x72 = alloca i8, align 1
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i8, align 1
  %x97 = alloca i64, align 8
  %x98 = alloca i8, align 1
  %x99 = alloca i64, align 8
  %x100 = alloca i8, align 1
  %x101 = alloca i64, align 8
  %x102 = alloca i8, align 1
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i8, align 1
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i8, align 1
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x134 = alloca i8, align 1
  %x135 = alloca i64, align 8
  %x136 = alloca i8, align 1
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i8, align 1
  %x141 = alloca i64, align 8
  %x142 = alloca i8, align 1
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
  %x150 = alloca i8, align 1
  %x151 = alloca i64, align 8
  %x152 = alloca i8, align 1
  %x153 = alloca i64, align 8
  %x154 = alloca i8, align 1
  %x155 = alloca i64, align 8
  %x156 = alloca i8, align 1
  %x157 = alloca i64, align 8
  %x158 = alloca i8, align 1
  %x159 = alloca i64, align 8
  %x160 = alloca i64, align 8
  %x161 = alloca i64, align 8
  %x162 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 1
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 3
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef 8392367050913)
  %9 = load i64, ptr %x6, align 8
  %10 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext 0, i64 noundef %9, i64 noundef %10)
  %11 = load i64, ptr %x5, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %11, i64 noundef -2866531139136965327)
  %12 = load i64, ptr %x9, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %12, i64 noundef -1)
  %13 = load i64, ptr %x9, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %13, i64 noundef -1)
  %14 = load i64, ptr %x9, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x15, ptr noundef %x16, i64 noundef %14, i64 noundef -1)
  %15 = load i64, ptr %x9, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x17, ptr noundef %x18, i64 noundef %15, i64 noundef -4294968273)
  %16 = load i64, ptr %x18, align 8
  %17 = load i64, ptr %x15, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext 0, i64 noundef %16, i64 noundef %17)
  %18 = load i8, ptr %x20, align 1
  %19 = load i64, ptr %x16, align 8
  %20 = load i64, ptr %x13, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %18, i64 noundef %19, i64 noundef %20)
  %21 = load i8, ptr %x22, align 1
  %22 = load i64, ptr %x14, align 8
  %23 = load i64, ptr %x11, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %21, i64 noundef %22, i64 noundef %23)
  %24 = load i64, ptr %x5, align 8
  %25 = load i64, ptr %x17, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x26, align 1
  %27 = load i64, ptr %x7, align 8
  %28 = load i64, ptr %x19, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x28, align 1
  %30 = load i8, ptr %x8, align 1
  %conv = zext i8 %30 to i64
  %31 = load i64, ptr %x21, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %29, i64 noundef %conv, i64 noundef %31)
  %32 = load i8, ptr %x30, align 1
  %33 = load i64, ptr %x23, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %32, i64 noundef 0, i64 noundef %33)
  %34 = load i8, ptr %x32, align 1
  %35 = load i8, ptr %x24, align 1
  %conv4 = zext i8 %35 to i64
  %36 = load i64, ptr %x12, align 8
  %add = add i64 %conv4, %36
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %34, i64 noundef 0, i64 noundef %add)
  %37 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x35, ptr noundef %x36, i64 noundef %37, i64 noundef 8392367050913)
  %38 = load i64, ptr %x36, align 8
  %39 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext 0, i64 noundef %38, i64 noundef %39)
  %40 = load i64, ptr %x27, align 8
  %41 = load i64, ptr %x35, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext 0, i64 noundef %40, i64 noundef %41)
  %42 = load i8, ptr %x40, align 1
  %43 = load i64, ptr %x29, align 8
  %44 = load i64, ptr %x37, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %42, i64 noundef %43, i64 noundef %44)
  %45 = load i8, ptr %x42, align 1
  %46 = load i64, ptr %x31, align 8
  %47 = load i8, ptr %x38, align 1
  %conv5 = zext i8 %47 to i64
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %45, i64 noundef %46, i64 noundef %conv5)
  %48 = load i8, ptr %x44, align 1
  %49 = load i64, ptr %x33, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %48, i64 noundef %49, i64 noundef 0)
  %50 = load i64, ptr %x39, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %50, i64 noundef -2866531139136965327)
  %51 = load i64, ptr %x47, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x49, ptr noundef %x50, i64 noundef %51, i64 noundef -1)
  %52 = load i64, ptr %x47, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x51, ptr noundef %x52, i64 noundef %52, i64 noundef -1)
  %53 = load i64, ptr %x47, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x53, ptr noundef %x54, i64 noundef %53, i64 noundef -1)
  %54 = load i64, ptr %x47, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x55, ptr noundef %x56, i64 noundef %54, i64 noundef -4294968273)
  %55 = load i64, ptr %x56, align 8
  %56 = load i64, ptr %x53, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i64 noundef %55, i64 noundef %56)
  %57 = load i8, ptr %x58, align 1
  %58 = load i64, ptr %x54, align 8
  %59 = load i64, ptr %x51, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %57, i64 noundef %58, i64 noundef %59)
  %60 = load i8, ptr %x60, align 1
  %61 = load i64, ptr %x52, align 8
  %62 = load i64, ptr %x49, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %60, i64 noundef %61, i64 noundef %62)
  %63 = load i64, ptr %x39, align 8
  %64 = load i64, ptr %x55, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext 0, i64 noundef %63, i64 noundef %64)
  %65 = load i8, ptr %x64, align 1
  %66 = load i64, ptr %x41, align 8
  %67 = load i64, ptr %x57, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %65, i64 noundef %66, i64 noundef %67)
  %68 = load i8, ptr %x66, align 1
  %69 = load i64, ptr %x43, align 8
  %70 = load i64, ptr %x59, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %68, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x68, align 1
  %72 = load i64, ptr %x45, align 8
  %73 = load i64, ptr %x61, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x70, align 1
  %75 = load i8, ptr %x46, align 1
  %conv6 = zext i8 %75 to i64
  %76 = load i8, ptr %x34, align 1
  %conv7 = zext i8 %76 to i64
  %add8 = add i64 %conv6, %conv7
  %77 = load i8, ptr %x62, align 1
  %conv9 = zext i8 %77 to i64
  %78 = load i64, ptr %x50, align 8
  %add10 = add i64 %conv9, %78
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %74, i64 noundef %add8, i64 noundef %add10)
  %79 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %79, i64 noundef 8392367050913)
  %80 = load i64, ptr %x74, align 8
  %81 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext 0, i64 noundef %80, i64 noundef %81)
  %82 = load i64, ptr %x65, align 8
  %83 = load i64, ptr %x73, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %82, i64 noundef %83)
  %84 = load i8, ptr %x78, align 1
  %85 = load i64, ptr %x67, align 8
  %86 = load i64, ptr %x75, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %84, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x80, align 1
  %88 = load i64, ptr %x69, align 8
  %89 = load i8, ptr %x76, align 1
  %conv11 = zext i8 %89 to i64
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %87, i64 noundef %88, i64 noundef %conv11)
  %90 = load i8, ptr %x82, align 1
  %91 = load i64, ptr %x71, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %90, i64 noundef %91, i64 noundef 0)
  %92 = load i64, ptr %x77, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x85, ptr noundef %x86, i64 noundef %92, i64 noundef -2866531139136965327)
  %93 = load i64, ptr %x85, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x87, ptr noundef %x88, i64 noundef %93, i64 noundef -1)
  %94 = load i64, ptr %x85, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x89, ptr noundef %x90, i64 noundef %94, i64 noundef -1)
  %95 = load i64, ptr %x85, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x91, ptr noundef %x92, i64 noundef %95, i64 noundef -1)
  %96 = load i64, ptr %x85, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x93, ptr noundef %x94, i64 noundef %96, i64 noundef -4294968273)
  %97 = load i64, ptr %x94, align 8
  %98 = load i64, ptr %x91, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext 0, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x96, align 1
  %100 = load i64, ptr %x92, align 8
  %101 = load i64, ptr %x89, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %99, i64 noundef %100, i64 noundef %101)
  %102 = load i8, ptr %x98, align 1
  %103 = load i64, ptr %x90, align 8
  %104 = load i64, ptr %x87, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %102, i64 noundef %103, i64 noundef %104)
  %105 = load i64, ptr %x77, align 8
  %106 = load i64, ptr %x93, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext 0, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x102, align 1
  %108 = load i64, ptr %x79, align 8
  %109 = load i64, ptr %x95, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x104, align 1
  %111 = load i64, ptr %x81, align 8
  %112 = load i64, ptr %x97, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %110, i64 noundef %111, i64 noundef %112)
  %113 = load i8, ptr %x106, align 1
  %114 = load i64, ptr %x83, align 8
  %115 = load i64, ptr %x99, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %113, i64 noundef %114, i64 noundef %115)
  %116 = load i8, ptr %x108, align 1
  %117 = load i8, ptr %x84, align 1
  %conv12 = zext i8 %117 to i64
  %118 = load i8, ptr %x72, align 1
  %conv13 = zext i8 %118 to i64
  %add14 = add i64 %conv12, %conv13
  %119 = load i8, ptr %x100, align 1
  %conv15 = zext i8 %119 to i64
  %120 = load i64, ptr %x88, align 8
  %add16 = add i64 %conv15, %120
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %116, i64 noundef %add14, i64 noundef %add16)
  %121 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x111, ptr noundef %x112, i64 noundef %121, i64 noundef 8392367050913)
  %122 = load i64, ptr %x112, align 8
  %123 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext 0, i64 noundef %122, i64 noundef %123)
  %124 = load i64, ptr %x103, align 8
  %125 = load i64, ptr %x111, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x116, align 1
  %127 = load i64, ptr %x105, align 8
  %128 = load i64, ptr %x113, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x118, align 1
  %130 = load i64, ptr %x107, align 8
  %131 = load i8, ptr %x114, align 1
  %conv17 = zext i8 %131 to i64
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %conv17)
  %132 = load i8, ptr %x120, align 1
  %133 = load i64, ptr %x109, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %132, i64 noundef %133, i64 noundef 0)
  %134 = load i64, ptr %x115, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %134, i64 noundef -2866531139136965327)
  %135 = load i64, ptr %x123, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x125, ptr noundef %x126, i64 noundef %135, i64 noundef -1)
  %136 = load i64, ptr %x123, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x127, ptr noundef %x128, i64 noundef %136, i64 noundef -1)
  %137 = load i64, ptr %x123, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x129, ptr noundef %x130, i64 noundef %137, i64 noundef -1)
  %138 = load i64, ptr %x123, align 8
  call void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef %x131, ptr noundef %x132, i64 noundef %138, i64 noundef -4294968273)
  %139 = load i64, ptr %x132, align 8
  %140 = load i64, ptr %x129, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext 0, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x134, align 1
  %142 = load i64, ptr %x130, align 8
  %143 = load i64, ptr %x127, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i8, ptr %x136, align 1
  %145 = load i64, ptr %x128, align 8
  %146 = load i64, ptr %x125, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %144, i64 noundef %145, i64 noundef %146)
  %147 = load i64, ptr %x115, align 8
  %148 = load i64, ptr %x131, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext 0, i64 noundef %147, i64 noundef %148)
  %149 = load i8, ptr %x140, align 1
  %150 = load i64, ptr %x117, align 8
  %151 = load i64, ptr %x133, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %149, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x142, align 1
  %153 = load i64, ptr %x119, align 8
  %154 = load i64, ptr %x135, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x144, align 1
  %156 = load i64, ptr %x121, align 8
  %157 = load i64, ptr %x137, align 8
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x146, align 1
  %159 = load i8, ptr %x122, align 1
  %conv18 = zext i8 %159 to i64
  %160 = load i8, ptr %x110, align 1
  %conv19 = zext i8 %160 to i64
  %add20 = add i64 %conv18, %conv19
  %161 = load i8, ptr %x138, align 1
  %conv21 = zext i8 %161 to i64
  %162 = load i64, ptr %x126, align 8
  %add22 = add i64 %conv21, %162
  call void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %158, i64 noundef %add20, i64 noundef %add22)
  %163 = load i64, ptr %x141, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext 0, i64 noundef %163, i64 noundef -4294968273)
  %164 = load i8, ptr %x150, align 1
  %165 = load i64, ptr %x143, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %164, i64 noundef %165, i64 noundef -1)
  %166 = load i8, ptr %x152, align 1
  %167 = load i64, ptr %x145, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %166, i64 noundef %167, i64 noundef -1)
  %168 = load i8, ptr %x154, align 1
  %169 = load i64, ptr %x147, align 8
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %168, i64 noundef %169, i64 noundef -1)
  %170 = load i8, ptr %x156, align 1
  %171 = load i8, ptr %x148, align 1
  %conv23 = zext i8 %171 to i64
  call void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %170, i64 noundef %conv23, i64 noundef 0)
  %172 = load i8, ptr %x158, align 1
  %173 = load i64, ptr %x149, align 8
  %174 = load i64, ptr %x141, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x159, i8 noundef zeroext %172, i64 noundef %173, i64 noundef %174)
  %175 = load i8, ptr %x158, align 1
  %176 = load i64, ptr %x151, align 8
  %177 = load i64, ptr %x143, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x160, i8 noundef zeroext %175, i64 noundef %176, i64 noundef %177)
  %178 = load i8, ptr %x158, align 1
  %179 = load i64, ptr %x153, align 8
  %180 = load i64, ptr %x145, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x161, i8 noundef zeroext %178, i64 noundef %179, i64 noundef %180)
  %181 = load i8, ptr %x158, align 1
  %182 = load i64, ptr %x155, align 8
  %183 = load i64, ptr %x147, align 8
  call void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef %x162, i8 noundef zeroext %181, i64 noundef %182, i64 noundef %183)
  %184 = load i64, ptr %x159, align 8
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %185, i64 0
  store i64 %184, ptr %arrayidx24, align 8
  %186 = load i64, ptr %x160, align 8
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %187, i64 1
  store i64 %186, ptr %arrayidx25, align 8
  %188 = load i64, ptr %x161, align 8
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %189, i64 2
  store i64 %188, ptr %arrayidx26, align 8
  %190 = load i64, ptr %x162, align 8
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %191, i64 3
  store i64 %190, ptr %arrayidx27, align 8
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
