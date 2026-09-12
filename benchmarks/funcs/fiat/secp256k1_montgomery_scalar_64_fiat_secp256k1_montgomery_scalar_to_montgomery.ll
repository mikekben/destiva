; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_montgomery_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_secp256k1_montgomery_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_montgomery_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
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
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
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
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i8, align 1
  %x91 = alloca i64, align 8
  %x92 = alloca i8, align 1
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
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
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i8, align 1
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
  %x140 = alloca i8, align 1
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i64, align 8
  %x145 = alloca i64, align 8
  %x146 = alloca i64, align 8
  %x147 = alloca i64, align 8
  %x148 = alloca i64, align 8
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
  %x164 = alloca i64, align 8
  %x165 = alloca i64, align 8
  %x166 = alloca i64, align 8
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
  %x172 = alloca i64, align 8
  %x173 = alloca i64, align 8
  %x174 = alloca i8, align 1
  %x175 = alloca i64, align 8
  %x176 = alloca i8, align 1
  %x177 = alloca i64, align 8
  %x178 = alloca i8, align 1
  %x179 = alloca i64, align 8
  %x180 = alloca i8, align 1
  %x181 = alloca i64, align 8
  %x182 = alloca i8, align 1
  %x183 = alloca i64, align 8
  %x184 = alloca i8, align 1
  %x185 = alloca i64, align 8
  %x186 = alloca i8, align 1
  %x187 = alloca i64, align 8
  %x188 = alloca i8, align 1
  %x189 = alloca i64, align 8
  %x190 = alloca i8, align 1
  %x191 = alloca i64, align 8
  %x192 = alloca i8, align 1
  %x193 = alloca i64, align 8
  %x194 = alloca i8, align 1
  %x195 = alloca i64, align 8
  %x196 = alloca i8, align 1
  %x197 = alloca i64, align 8
  %x198 = alloca i8, align 1
  %x199 = alloca i64, align 8
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i64, align 8
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
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef -7104678183822779451)
  %9 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %9, i64 noundef -1830724362361305146)
  %10 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %10, i64 noundef 8364476168144746616)
  %11 = load i64, ptr %x4, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %11, i64 noundef -8544188223573208768)
  %12 = load i64, ptr %x12, align 8
  %13 = load i64, ptr %x9, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x14, align 1
  %15 = load i64, ptr %x10, align 8
  %16 = load i64, ptr %x7, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x16, align 1
  %18 = load i64, ptr %x8, align 8
  %19 = load i64, ptr %x5, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i64, ptr %x11, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x19, ptr noundef %x20, i64 noundef %20, i64 noundef 5408259542528602431)
  %21 = load i64, ptr %x19, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x21, ptr noundef %x22, i64 noundef %21, i64 noundef -1)
  %22 = load i64, ptr %x19, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x23, ptr noundef %x24, i64 noundef %22, i64 noundef -2)
  %23 = load i64, ptr %x19, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x25, ptr noundef %x26, i64 noundef %23, i64 noundef -4994812053365940165)
  %24 = load i64, ptr %x19, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x27, ptr noundef %x28, i64 noundef %24, i64 noundef -4624529908474429119)
  %25 = load i64, ptr %x28, align 8
  %26 = load i64, ptr %x25, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext 0, i64 noundef %25, i64 noundef %26)
  %27 = load i8, ptr %x30, align 1
  %28 = load i64, ptr %x26, align 8
  %29 = load i64, ptr %x23, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %27, i64 noundef %28, i64 noundef %29)
  %30 = load i8, ptr %x32, align 1
  %31 = load i64, ptr %x24, align 8
  %32 = load i64, ptr %x21, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %30, i64 noundef %31, i64 noundef %32)
  %33 = load i64, ptr %x11, align 8
  %34 = load i64, ptr %x27, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext 0, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x36, align 1
  %36 = load i64, ptr %x13, align 8
  %37 = load i64, ptr %x29, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i8, ptr %x38, align 1
  %39 = load i64, ptr %x15, align 8
  %40 = load i64, ptr %x31, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x40, align 1
  %42 = load i64, ptr %x17, align 8
  %43 = load i64, ptr %x33, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x42, align 1
  %45 = load i8, ptr %x18, align 1
  %conv = zext i8 %45 to i64
  %46 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %46
  %47 = load i8, ptr %x34, align 1
  %conv4 = zext i8 %47 to i64
  %48 = load i64, ptr %x22, align 8
  %add5 = add i64 %conv4, %48
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %44, i64 noundef %add, i64 noundef %add5)
  %49 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %49, i64 noundef -7104678183822779451)
  %50 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %50, i64 noundef -1830724362361305146)
  %51 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x49, ptr noundef %x50, i64 noundef %51, i64 noundef 8364476168144746616)
  %52 = load i64, ptr %x1, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x51, ptr noundef %x52, i64 noundef %52, i64 noundef -8544188223573208768)
  %53 = load i64, ptr %x52, align 8
  %54 = load i64, ptr %x49, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x54, align 1
  %56 = load i64, ptr %x50, align 8
  %57 = load i64, ptr %x47, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x56, align 1
  %59 = load i64, ptr %x48, align 8
  %60 = load i64, ptr %x45, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i64, ptr %x37, align 8
  %62 = load i64, ptr %x51, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext 0, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x60, align 1
  %64 = load i64, ptr %x39, align 8
  %65 = load i64, ptr %x53, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %63, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x62, align 1
  %67 = load i64, ptr %x41, align 8
  %68 = load i64, ptr %x55, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x64, align 1
  %70 = load i64, ptr %x43, align 8
  %71 = load i64, ptr %x57, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i64, ptr %x59, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x67, ptr noundef %x68, i64 noundef %72, i64 noundef 5408259542528602431)
  %73 = load i64, ptr %x67, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %73, i64 noundef -1)
  %74 = load i64, ptr %x67, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %74, i64 noundef -2)
  %75 = load i64, ptr %x67, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %75, i64 noundef -4994812053365940165)
  %76 = load i64, ptr %x67, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x75, ptr noundef %x76, i64 noundef %76, i64 noundef -4624529908474429119)
  %77 = load i64, ptr %x76, align 8
  %78 = load i64, ptr %x73, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x78, align 1
  %80 = load i64, ptr %x74, align 8
  %81 = load i64, ptr %x71, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x80, align 1
  %83 = load i64, ptr %x72, align 8
  %84 = load i64, ptr %x69, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i64, ptr %x59, align 8
  %86 = load i64, ptr %x75, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext 0, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x84, align 1
  %88 = load i64, ptr %x61, align 8
  %89 = load i64, ptr %x77, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %87, i64 noundef %88, i64 noundef %89)
  %90 = load i8, ptr %x86, align 1
  %91 = load i64, ptr %x63, align 8
  %92 = load i64, ptr %x79, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %90, i64 noundef %91, i64 noundef %92)
  %93 = load i8, ptr %x88, align 1
  %94 = load i64, ptr %x65, align 8
  %95 = load i64, ptr %x81, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %93, i64 noundef %94, i64 noundef %95)
  %96 = load i8, ptr %x90, align 1
  %97 = load i8, ptr %x66, align 1
  %conv6 = zext i8 %97 to i64
  %98 = load i8, ptr %x44, align 1
  %conv7 = zext i8 %98 to i64
  %add8 = add i64 %conv6, %conv7
  %99 = load i8, ptr %x58, align 1
  %conv9 = zext i8 %99 to i64
  %100 = load i64, ptr %x46, align 8
  %add10 = add i64 %conv9, %100
  %add11 = add i64 %add8, %add10
  %101 = load i8, ptr %x82, align 1
  %conv12 = zext i8 %101 to i64
  %102 = load i64, ptr %x70, align 8
  %add13 = add i64 %conv12, %102
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %96, i64 noundef %add11, i64 noundef %add13)
  %103 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x93, ptr noundef %x94, i64 noundef %103, i64 noundef -7104678183822779451)
  %104 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x95, ptr noundef %x96, i64 noundef %104, i64 noundef -1830724362361305146)
  %105 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x97, ptr noundef %x98, i64 noundef %105, i64 noundef 8364476168144746616)
  %106 = load i64, ptr %x2, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x99, ptr noundef %x100, i64 noundef %106, i64 noundef -8544188223573208768)
  %107 = load i64, ptr %x100, align 8
  %108 = load i64, ptr %x97, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x102, align 1
  %110 = load i64, ptr %x98, align 8
  %111 = load i64, ptr %x95, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x104, align 1
  %113 = load i64, ptr %x96, align 8
  %114 = load i64, ptr %x93, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i64, ptr %x85, align 8
  %116 = load i64, ptr %x99, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i64 noundef %115, i64 noundef %116)
  %117 = load i8, ptr %x108, align 1
  %118 = load i64, ptr %x87, align 8
  %119 = load i64, ptr %x101, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %117, i64 noundef %118, i64 noundef %119)
  %120 = load i8, ptr %x110, align 1
  %121 = load i64, ptr %x89, align 8
  %122 = load i64, ptr %x103, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %120, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x112, align 1
  %124 = load i64, ptr %x91, align 8
  %125 = load i64, ptr %x105, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %123, i64 noundef %124, i64 noundef %125)
  %126 = load i64, ptr %x107, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x115, ptr noundef %x116, i64 noundef %126, i64 noundef 5408259542528602431)
  %127 = load i64, ptr %x115, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %127, i64 noundef -1)
  %128 = load i64, ptr %x115, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %128, i64 noundef -2)
  %129 = load i64, ptr %x115, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x121, ptr noundef %x122, i64 noundef %129, i64 noundef -4994812053365940165)
  %130 = load i64, ptr %x115, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %130, i64 noundef -4624529908474429119)
  %131 = load i64, ptr %x124, align 8
  %132 = load i64, ptr %x121, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %131, i64 noundef %132)
  %133 = load i8, ptr %x126, align 1
  %134 = load i64, ptr %x122, align 8
  %135 = load i64, ptr %x119, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %133, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x128, align 1
  %137 = load i64, ptr %x120, align 8
  %138 = load i64, ptr %x117, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i64, ptr %x107, align 8
  %140 = load i64, ptr %x123, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x132, align 1
  %142 = load i64, ptr %x109, align 8
  %143 = load i64, ptr %x125, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i8, ptr %x134, align 1
  %145 = load i64, ptr %x111, align 8
  %146 = load i64, ptr %x127, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %144, i64 noundef %145, i64 noundef %146)
  %147 = load i8, ptr %x136, align 1
  %148 = load i64, ptr %x113, align 8
  %149 = load i64, ptr %x129, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %147, i64 noundef %148, i64 noundef %149)
  %150 = load i8, ptr %x138, align 1
  %151 = load i8, ptr %x114, align 1
  %conv14 = zext i8 %151 to i64
  %152 = load i8, ptr %x92, align 1
  %conv15 = zext i8 %152 to i64
  %add16 = add i64 %conv14, %conv15
  %153 = load i8, ptr %x106, align 1
  %conv17 = zext i8 %153 to i64
  %154 = load i64, ptr %x94, align 8
  %add18 = add i64 %conv17, %154
  %add19 = add i64 %add16, %add18
  %155 = load i8, ptr %x130, align 1
  %conv20 = zext i8 %155 to i64
  %156 = load i64, ptr %x118, align 8
  %add21 = add i64 %conv20, %156
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %150, i64 noundef %add19, i64 noundef %add21)
  %157 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %157, i64 noundef -7104678183822779451)
  %158 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x143, ptr noundef %x144, i64 noundef %158, i64 noundef -1830724362361305146)
  %159 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x145, ptr noundef %x146, i64 noundef %159, i64 noundef 8364476168144746616)
  %160 = load i64, ptr %x3, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x147, ptr noundef %x148, i64 noundef %160, i64 noundef -8544188223573208768)
  %161 = load i64, ptr %x148, align 8
  %162 = load i64, ptr %x145, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext 0, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x150, align 1
  %164 = load i64, ptr %x146, align 8
  %165 = load i64, ptr %x143, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %163, i64 noundef %164, i64 noundef %165)
  %166 = load i8, ptr %x152, align 1
  %167 = load i64, ptr %x144, align 8
  %168 = load i64, ptr %x141, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %166, i64 noundef %167, i64 noundef %168)
  %169 = load i64, ptr %x133, align 8
  %170 = load i64, ptr %x147, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext 0, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x156, align 1
  %172 = load i64, ptr %x135, align 8
  %173 = load i64, ptr %x149, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x158, align 1
  %175 = load i64, ptr %x137, align 8
  %176 = load i64, ptr %x151, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i8, ptr %x160, align 1
  %178 = load i64, ptr %x139, align 8
  %179 = load i64, ptr %x153, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %179)
  %180 = load i64, ptr %x155, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x163, ptr noundef %x164, i64 noundef %180, i64 noundef 5408259542528602431)
  %181 = load i64, ptr %x163, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x165, ptr noundef %x166, i64 noundef %181, i64 noundef -1)
  %182 = load i64, ptr %x163, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x167, ptr noundef %x168, i64 noundef %182, i64 noundef -2)
  %183 = load i64, ptr %x163, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x169, ptr noundef %x170, i64 noundef %183, i64 noundef -4994812053365940165)
  %184 = load i64, ptr %x163, align 8
  call void @fiat_secp256k1_montgomery_scalar_mulx_u64(ptr noundef %x171, ptr noundef %x172, i64 noundef %184, i64 noundef -4624529908474429119)
  %185 = load i64, ptr %x172, align 8
  %186 = load i64, ptr %x169, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext 0, i64 noundef %185, i64 noundef %186)
  %187 = load i8, ptr %x174, align 1
  %188 = load i64, ptr %x170, align 8
  %189 = load i64, ptr %x167, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %187, i64 noundef %188, i64 noundef %189)
  %190 = load i8, ptr %x176, align 1
  %191 = load i64, ptr %x168, align 8
  %192 = load i64, ptr %x165, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %190, i64 noundef %191, i64 noundef %192)
  %193 = load i64, ptr %x155, align 8
  %194 = load i64, ptr %x171, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext 0, i64 noundef %193, i64 noundef %194)
  %195 = load i8, ptr %x180, align 1
  %196 = load i64, ptr %x157, align 8
  %197 = load i64, ptr %x173, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %195, i64 noundef %196, i64 noundef %197)
  %198 = load i8, ptr %x182, align 1
  %199 = load i64, ptr %x159, align 8
  %200 = load i64, ptr %x175, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %198, i64 noundef %199, i64 noundef %200)
  %201 = load i8, ptr %x184, align 1
  %202 = load i64, ptr %x161, align 8
  %203 = load i64, ptr %x177, align 8
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %201, i64 noundef %202, i64 noundef %203)
  %204 = load i8, ptr %x186, align 1
  %205 = load i8, ptr %x162, align 1
  %conv22 = zext i8 %205 to i64
  %206 = load i8, ptr %x140, align 1
  %conv23 = zext i8 %206 to i64
  %add24 = add i64 %conv22, %conv23
  %207 = load i8, ptr %x154, align 1
  %conv25 = zext i8 %207 to i64
  %208 = load i64, ptr %x142, align 8
  %add26 = add i64 %conv25, %208
  %add27 = add i64 %add24, %add26
  %209 = load i8, ptr %x178, align 1
  %conv28 = zext i8 %209 to i64
  %210 = load i64, ptr %x166, align 8
  %add29 = add i64 %conv28, %210
  call void @fiat_secp256k1_montgomery_scalar_addcarryx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %204, i64 noundef %add27, i64 noundef %add29)
  %211 = load i64, ptr %x181, align 8
  call void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext 0, i64 noundef %211, i64 noundef -4624529908474429119)
  %212 = load i8, ptr %x190, align 1
  %213 = load i64, ptr %x183, align 8
  call void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %212, i64 noundef %213, i64 noundef -4994812053365940165)
  %214 = load i8, ptr %x192, align 1
  %215 = load i64, ptr %x185, align 8
  call void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %214, i64 noundef %215, i64 noundef -2)
  %216 = load i8, ptr %x194, align 1
  %217 = load i64, ptr %x187, align 8
  call void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %216, i64 noundef %217, i64 noundef -1)
  %218 = load i8, ptr %x196, align 1
  %219 = load i8, ptr %x188, align 1
  %conv30 = zext i8 %219 to i64
  call void @fiat_secp256k1_montgomery_scalar_subborrowx_u64(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %218, i64 noundef %conv30, i64 noundef 0)
  %220 = load i8, ptr %x198, align 1
  %221 = load i64, ptr %x189, align 8
  %222 = load i64, ptr %x181, align 8
  call void @fiat_secp256k1_montgomery_scalar_cmovznz_u64(ptr noundef %x199, i8 noundef zeroext %220, i64 noundef %221, i64 noundef %222)
  %223 = load i8, ptr %x198, align 1
  %224 = load i64, ptr %x191, align 8
  %225 = load i64, ptr %x183, align 8
  call void @fiat_secp256k1_montgomery_scalar_cmovznz_u64(ptr noundef %x200, i8 noundef zeroext %223, i64 noundef %224, i64 noundef %225)
  %226 = load i8, ptr %x198, align 1
  %227 = load i64, ptr %x193, align 8
  %228 = load i64, ptr %x185, align 8
  call void @fiat_secp256k1_montgomery_scalar_cmovznz_u64(ptr noundef %x201, i8 noundef zeroext %226, i64 noundef %227, i64 noundef %228)
  %229 = load i8, ptr %x198, align 1
  %230 = load i64, ptr %x195, align 8
  %231 = load i64, ptr %x187, align 8
  call void @fiat_secp256k1_montgomery_scalar_cmovznz_u64(ptr noundef %x202, i8 noundef zeroext %229, i64 noundef %230, i64 noundef %231)
  %232 = load i64, ptr %x199, align 8
  %233 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %233, i64 0
  store i64 %232, ptr %arrayidx31, align 8
  %234 = load i64, ptr %x200, align 8
  %235 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %235, i64 1
  store i64 %234, ptr %arrayidx32, align 8
  %236 = load i64, ptr %x201, align 8
  %237 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %237, i64 2
  store i64 %236, ptr %arrayidx33, align 8
  %238 = load i64, ptr %x202, align 8
  %239 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %239, i64 3
  store i64 %238, ptr %arrayidx34, align 8
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
