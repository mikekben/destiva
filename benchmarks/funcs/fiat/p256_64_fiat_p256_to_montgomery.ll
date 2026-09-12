; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x13 = alloca i64, align 8
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
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
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
  %x53 = alloca i64, align 8
  %x54 = alloca i8, align 1
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i8, align 1
  %x69 = alloca i64, align 8
  %x70 = alloca i8, align 1
  %x71 = alloca i64, align 8
  %x72 = alloca i8, align 1
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i8, align 1
  %x91 = alloca i64, align 8
  %x92 = alloca i8, align 1
  %x93 = alloca i64, align 8
  %x94 = alloca i8, align 1
  %x95 = alloca i64, align 8
  %x96 = alloca i8, align 1
  %x97 = alloca i64, align 8
  %x98 = alloca i8, align 1
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i8, align 1
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i8, align 1
  %x127 = alloca i64, align 8
  %x128 = alloca i8, align 1
  %x129 = alloca i64, align 8
  %x130 = alloca i8, align 1
  %x131 = alloca i64, align 8
  %x132 = alloca i8, align 1
  %x133 = alloca i64, align 8
  %x134 = alloca i8, align 1
  %x135 = alloca i64, align 8
  %x136 = alloca i8, align 1
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i64, align 8
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
  %x160 = alloca i8, align 1
  %x161 = alloca i64, align 8
  %x162 = alloca i8, align 1
  %x163 = alloca i64, align 8
  %x164 = alloca i8, align 1
  %x165 = alloca i64, align 8
  %x166 = alloca i8, align 1
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
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
  call void @fiat_p256_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef 21474836477)
  %9 = load i64, ptr %x4, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %9, i64 noundef -2)
  %10 = load i64, ptr %x4, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %10, i64 noundef -17179869185)
  %11 = load i64, ptr %x4, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %11, i64 noundef 3)
  %12 = load i64, ptr %x12, align 8
  %13 = load i64, ptr %x9, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x14, align 1
  %15 = load i64, ptr %x10, align 8
  %16 = load i64, ptr %x7, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x16, align 1
  %18 = load i64, ptr %x8, align 8
  %19 = load i64, ptr %x5, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x19, ptr noundef %x20, i64 noundef %20, i64 noundef -4294967295)
  %21 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x21, ptr noundef %x22, i64 noundef %21, i64 noundef 4294967295)
  %22 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x23, ptr noundef %x24, i64 noundef %22, i64 noundef -1)
  %23 = load i64, ptr %x24, align 8
  %24 = load i64, ptr %x21, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i64 noundef %23, i64 noundef %24)
  %25 = load i64, ptr %x11, align 8
  %26 = load i64, ptr %x23, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext 0, i64 noundef %25, i64 noundef %26)
  %27 = load i8, ptr %x28, align 1
  %28 = load i64, ptr %x13, align 8
  %29 = load i64, ptr %x25, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %27, i64 noundef %28, i64 noundef %29)
  %30 = load i8, ptr %x30, align 1
  %31 = load i64, ptr %x15, align 8
  %32 = load i8, ptr %x26, align 1
  %conv = zext i8 %32 to i64
  %33 = load i64, ptr %x22, align 8
  %add = add i64 %conv, %33
  call void @fiat_p256_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %30, i64 noundef %31, i64 noundef %add)
  %34 = load i8, ptr %x32, align 1
  %35 = load i64, ptr %x17, align 8
  %36 = load i64, ptr %x19, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %34, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x34, align 1
  %38 = load i8, ptr %x18, align 1
  %conv4 = zext i8 %38 to i64
  %39 = load i64, ptr %x6, align 8
  %add5 = add i64 %conv4, %39
  %40 = load i64, ptr %x20, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %37, i64 noundef %add5, i64 noundef %40)
  %41 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x37, ptr noundef %x38, i64 noundef %41, i64 noundef 21474836477)
  %42 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x39, ptr noundef %x40, i64 noundef %42, i64 noundef -2)
  %43 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %43, i64 noundef -17179869185)
  %44 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %44, i64 noundef 3)
  %45 = load i64, ptr %x44, align 8
  %46 = load i64, ptr %x41, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext 0, i64 noundef %45, i64 noundef %46)
  %47 = load i8, ptr %x46, align 1
  %48 = load i64, ptr %x42, align 8
  %49 = load i64, ptr %x39, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %47, i64 noundef %48, i64 noundef %49)
  %50 = load i8, ptr %x48, align 1
  %51 = load i64, ptr %x40, align 8
  %52 = load i64, ptr %x37, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %52)
  %53 = load i64, ptr %x29, align 8
  %54 = load i64, ptr %x43, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x52, align 1
  %56 = load i64, ptr %x31, align 8
  %57 = load i64, ptr %x45, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x54, align 1
  %59 = load i64, ptr %x33, align 8
  %60 = load i64, ptr %x47, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x56, align 1
  %62 = load i64, ptr %x35, align 8
  %63 = load i64, ptr %x49, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i64, ptr %x51, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x59, ptr noundef %x60, i64 noundef %64, i64 noundef -4294967295)
  %65 = load i64, ptr %x51, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x61, ptr noundef %x62, i64 noundef %65, i64 noundef 4294967295)
  %66 = load i64, ptr %x51, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x63, ptr noundef %x64, i64 noundef %66, i64 noundef -1)
  %67 = load i64, ptr %x64, align 8
  %68 = load i64, ptr %x61, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext 0, i64 noundef %67, i64 noundef %68)
  %69 = load i64, ptr %x51, align 8
  %70 = load i64, ptr %x63, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext 0, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x68, align 1
  %72 = load i64, ptr %x53, align 8
  %73 = load i64, ptr %x65, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x70, align 1
  %75 = load i64, ptr %x55, align 8
  %76 = load i8, ptr %x66, align 1
  %conv6 = zext i8 %76 to i64
  %77 = load i64, ptr %x62, align 8
  %add7 = add i64 %conv6, %77
  call void @fiat_p256_addcarryx_u64(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %add7)
  %78 = load i8, ptr %x72, align 1
  %79 = load i64, ptr %x57, align 8
  %80 = load i64, ptr %x59, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %78, i64 noundef %79, i64 noundef %80)
  %81 = load i8, ptr %x74, align 1
  %82 = load i8, ptr %x58, align 1
  %conv8 = zext i8 %82 to i64
  %83 = load i8, ptr %x36, align 1
  %conv9 = zext i8 %83 to i64
  %add10 = add i64 %conv8, %conv9
  %84 = load i8, ptr %x50, align 1
  %conv11 = zext i8 %84 to i64
  %85 = load i64, ptr %x38, align 8
  %add12 = add i64 %conv11, %85
  %add13 = add i64 %add10, %add12
  %86 = load i64, ptr %x60, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %81, i64 noundef %add13, i64 noundef %86)
  %87 = load i64, ptr %x2, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %87, i64 noundef 21474836477)
  %88 = load i64, ptr %x2, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x79, ptr noundef %x80, i64 noundef %88, i64 noundef -2)
  %89 = load i64, ptr %x2, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x81, ptr noundef %x82, i64 noundef %89, i64 noundef -17179869185)
  %90 = load i64, ptr %x2, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x83, ptr noundef %x84, i64 noundef %90, i64 noundef 3)
  %91 = load i64, ptr %x84, align 8
  %92 = load i64, ptr %x81, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext 0, i64 noundef %91, i64 noundef %92)
  %93 = load i8, ptr %x86, align 1
  %94 = load i64, ptr %x82, align 8
  %95 = load i64, ptr %x79, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %93, i64 noundef %94, i64 noundef %95)
  %96 = load i8, ptr %x88, align 1
  %97 = load i64, ptr %x80, align 8
  %98 = load i64, ptr %x77, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %96, i64 noundef %97, i64 noundef %98)
  %99 = load i64, ptr %x69, align 8
  %100 = load i64, ptr %x83, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext 0, i64 noundef %99, i64 noundef %100)
  %101 = load i8, ptr %x92, align 1
  %102 = load i64, ptr %x71, align 8
  %103 = load i64, ptr %x85, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %101, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x94, align 1
  %105 = load i64, ptr %x73, align 8
  %106 = load i64, ptr %x87, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x96, align 1
  %108 = load i64, ptr %x75, align 8
  %109 = load i64, ptr %x89, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i64, ptr %x91, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x99, ptr noundef %x100, i64 noundef %110, i64 noundef -4294967295)
  %111 = load i64, ptr %x91, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x101, ptr noundef %x102, i64 noundef %111, i64 noundef 4294967295)
  %112 = load i64, ptr %x91, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x103, ptr noundef %x104, i64 noundef %112, i64 noundef -1)
  %113 = load i64, ptr %x104, align 8
  %114 = load i64, ptr %x101, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext 0, i64 noundef %113, i64 noundef %114)
  %115 = load i64, ptr %x91, align 8
  %116 = load i64, ptr %x103, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i64 noundef %115, i64 noundef %116)
  %117 = load i8, ptr %x108, align 1
  %118 = load i64, ptr %x93, align 8
  %119 = load i64, ptr %x105, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %117, i64 noundef %118, i64 noundef %119)
  %120 = load i8, ptr %x110, align 1
  %121 = load i64, ptr %x95, align 8
  %122 = load i8, ptr %x106, align 1
  %conv14 = zext i8 %122 to i64
  %123 = load i64, ptr %x102, align 8
  %add15 = add i64 %conv14, %123
  call void @fiat_p256_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %120, i64 noundef %121, i64 noundef %add15)
  %124 = load i8, ptr %x112, align 1
  %125 = load i64, ptr %x97, align 8
  %126 = load i64, ptr %x99, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %124, i64 noundef %125, i64 noundef %126)
  %127 = load i8, ptr %x114, align 1
  %128 = load i8, ptr %x98, align 1
  %conv16 = zext i8 %128 to i64
  %129 = load i8, ptr %x76, align 1
  %conv17 = zext i8 %129 to i64
  %add18 = add i64 %conv16, %conv17
  %130 = load i8, ptr %x90, align 1
  %conv19 = zext i8 %130 to i64
  %131 = load i64, ptr %x78, align 8
  %add20 = add i64 %conv19, %131
  %add21 = add i64 %add18, %add20
  %132 = load i64, ptr %x100, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %127, i64 noundef %add21, i64 noundef %132)
  %133 = load i64, ptr %x3, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %133, i64 noundef 21474836477)
  %134 = load i64, ptr %x3, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %134, i64 noundef -2)
  %135 = load i64, ptr %x3, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x121, ptr noundef %x122, i64 noundef %135, i64 noundef -17179869185)
  %136 = load i64, ptr %x3, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %136, i64 noundef 3)
  %137 = load i64, ptr %x124, align 8
  %138 = load i64, ptr %x121, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x126, align 1
  %140 = load i64, ptr %x122, align 8
  %141 = load i64, ptr %x119, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x128, align 1
  %143 = load i64, ptr %x120, align 8
  %144 = load i64, ptr %x117, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i64, ptr %x109, align 8
  %146 = load i64, ptr %x123, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %145, i64 noundef %146)
  %147 = load i8, ptr %x132, align 1
  %148 = load i64, ptr %x111, align 8
  %149 = load i64, ptr %x125, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %147, i64 noundef %148, i64 noundef %149)
  %150 = load i8, ptr %x134, align 1
  %151 = load i64, ptr %x113, align 8
  %152 = load i64, ptr %x127, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %150, i64 noundef %151, i64 noundef %152)
  %153 = load i8, ptr %x136, align 1
  %154 = load i64, ptr %x115, align 8
  %155 = load i64, ptr %x129, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %153, i64 noundef %154, i64 noundef %155)
  %156 = load i64, ptr %x131, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %156, i64 noundef -4294967295)
  %157 = load i64, ptr %x131, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %157, i64 noundef 4294967295)
  %158 = load i64, ptr %x131, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x143, ptr noundef %x144, i64 noundef %158, i64 noundef -1)
  %159 = load i64, ptr %x144, align 8
  %160 = load i64, ptr %x141, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext 0, i64 noundef %159, i64 noundef %160)
  %161 = load i64, ptr %x131, align 8
  %162 = load i64, ptr %x143, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext 0, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x148, align 1
  %164 = load i64, ptr %x133, align 8
  %165 = load i64, ptr %x145, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %163, i64 noundef %164, i64 noundef %165)
  %166 = load i8, ptr %x150, align 1
  %167 = load i64, ptr %x135, align 8
  %168 = load i8, ptr %x146, align 1
  %conv22 = zext i8 %168 to i64
  %169 = load i64, ptr %x142, align 8
  %add23 = add i64 %conv22, %169
  call void @fiat_p256_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %166, i64 noundef %167, i64 noundef %add23)
  %170 = load i8, ptr %x152, align 1
  %171 = load i64, ptr %x137, align 8
  %172 = load i64, ptr %x139, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %170, i64 noundef %171, i64 noundef %172)
  %173 = load i8, ptr %x154, align 1
  %174 = load i8, ptr %x138, align 1
  %conv24 = zext i8 %174 to i64
  %175 = load i8, ptr %x116, align 1
  %conv25 = zext i8 %175 to i64
  %add26 = add i64 %conv24, %conv25
  %176 = load i8, ptr %x130, align 1
  %conv27 = zext i8 %176 to i64
  %177 = load i64, ptr %x118, align 8
  %add28 = add i64 %conv27, %177
  %add29 = add i64 %add26, %add28
  %178 = load i64, ptr %x140, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %173, i64 noundef %add29, i64 noundef %178)
  %179 = load i64, ptr %x149, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext 0, i64 noundef %179, i64 noundef -1)
  %180 = load i8, ptr %x158, align 1
  %181 = load i64, ptr %x151, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %180, i64 noundef %181, i64 noundef 4294967295)
  %182 = load i8, ptr %x160, align 1
  %183 = load i64, ptr %x153, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %182, i64 noundef %183, i64 noundef 0)
  %184 = load i8, ptr %x162, align 1
  %185 = load i64, ptr %x155, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %184, i64 noundef %185, i64 noundef -4294967295)
  %186 = load i8, ptr %x164, align 1
  %187 = load i8, ptr %x156, align 1
  %conv30 = zext i8 %187 to i64
  call void @fiat_p256_subborrowx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %186, i64 noundef %conv30, i64 noundef 0)
  %188 = load i8, ptr %x166, align 1
  %189 = load i64, ptr %x157, align 8
  %190 = load i64, ptr %x149, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x167, i8 noundef zeroext %188, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x166, align 1
  %192 = load i64, ptr %x159, align 8
  %193 = load i64, ptr %x151, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x168, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i8, ptr %x166, align 1
  %195 = load i64, ptr %x161, align 8
  %196 = load i64, ptr %x153, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x169, i8 noundef zeroext %194, i64 noundef %195, i64 noundef %196)
  %197 = load i8, ptr %x166, align 1
  %198 = load i64, ptr %x163, align 8
  %199 = load i64, ptr %x155, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x170, i8 noundef zeroext %197, i64 noundef %198, i64 noundef %199)
  %200 = load i64, ptr %x167, align 8
  %201 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %201, i64 0
  store i64 %200, ptr %arrayidx31, align 8
  %202 = load i64, ptr %x168, align 8
  %203 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %203, i64 1
  store i64 %202, ptr %arrayidx32, align 8
  %204 = load i64, ptr %x169, align 8
  %205 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %205, i64 2
  store i64 %204, ptr %arrayidx33, align 8
  %206 = load i64, ptr %x170, align 8
  %207 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %207, i64 3
  store i64 %206, ptr %arrayidx34, align 8
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
