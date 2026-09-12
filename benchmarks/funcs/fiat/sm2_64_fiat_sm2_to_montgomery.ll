; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
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
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
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
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
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
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i8, align 1
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
  %x124 = alloca i8, align 1
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
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
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
  %x158 = alloca i64, align 8
  %x159 = alloca i64, align 8
  %x160 = alloca i64, align 8
  %x161 = alloca i64, align 8
  %x162 = alloca i64, align 8
  %x163 = alloca i64, align 8
  %x164 = alloca i64, align 8
  %x165 = alloca i64, align 8
  %x166 = alloca i8, align 1
  %x167 = alloca i64, align 8
  %x168 = alloca i8, align 1
  %x169 = alloca i64, align 8
  %x170 = alloca i8, align 1
  %x171 = alloca i64, align 8
  %x172 = alloca i8, align 1
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
  %x192 = alloca i64, align 8
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
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
  call void @fiat_sm2_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef 17179869186)
  %9 = load i64, ptr %x4, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %9, i64 noundef 4294967297)
  %10 = load i64, ptr %x4, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %10, i64 noundef 12884901887)
  %11 = load i64, ptr %x4, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %11, i64 noundef 8589934595)
  %12 = load i64, ptr %x12, align 8
  %13 = load i64, ptr %x9, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x14, align 1
  %15 = load i64, ptr %x10, align 8
  %16 = load i64, ptr %x7, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x16, align 1
  %18 = load i64, ptr %x8, align 8
  %19 = load i64, ptr %x5, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i64, ptr %x11, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x19, ptr noundef %x20, i64 noundef %20, i64 noundef -4294967297)
  %21 = load i64, ptr %x11, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x21, ptr noundef %x22, i64 noundef %21, i64 noundef -1)
  %22 = load i64, ptr %x11, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x23, ptr noundef %x24, i64 noundef %22, i64 noundef -4294967296)
  %23 = load i64, ptr %x11, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x25, ptr noundef %x26, i64 noundef %23, i64 noundef -1)
  %24 = load i64, ptr %x26, align 8
  %25 = load i64, ptr %x23, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext 0, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x28, align 1
  %27 = load i64, ptr %x24, align 8
  %28 = load i64, ptr %x21, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x30, align 1
  %30 = load i64, ptr %x22, align 8
  %31 = load i64, ptr %x19, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %31)
  %32 = load i64, ptr %x11, align 8
  %33 = load i64, ptr %x25, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext 0, i64 noundef %32, i64 noundef %33)
  %34 = load i8, ptr %x34, align 1
  %35 = load i64, ptr %x13, align 8
  %36 = load i64, ptr %x27, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %34, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x36, align 1
  %38 = load i64, ptr %x15, align 8
  %39 = load i64, ptr %x29, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x38, align 1
  %41 = load i64, ptr %x17, align 8
  %42 = load i64, ptr %x31, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x40, align 1
  %44 = load i8, ptr %x18, align 1
  %conv = zext i8 %44 to i64
  %45 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %45
  %46 = load i8, ptr %x32, align 1
  %conv4 = zext i8 %46 to i64
  %47 = load i64, ptr %x20, align 8
  %add5 = add i64 %conv4, %47
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %43, i64 noundef %add, i64 noundef %add5)
  %48 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %48, i64 noundef 17179869186)
  %49 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %49, i64 noundef 4294967297)
  %50 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %50, i64 noundef 12884901887)
  %51 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x49, ptr noundef %x50, i64 noundef %51, i64 noundef 8589934595)
  %52 = load i64, ptr %x50, align 8
  %53 = load i64, ptr %x47, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i64 noundef %52, i64 noundef %53)
  %54 = load i8, ptr %x52, align 1
  %55 = load i64, ptr %x48, align 8
  %56 = load i64, ptr %x45, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %54, i64 noundef %55, i64 noundef %56)
  %57 = load i8, ptr %x54, align 1
  %58 = load i64, ptr %x46, align 8
  %59 = load i64, ptr %x43, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %57, i64 noundef %58, i64 noundef %59)
  %60 = load i64, ptr %x35, align 8
  %61 = load i64, ptr %x49, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i64 noundef %60, i64 noundef %61)
  %62 = load i8, ptr %x58, align 1
  %63 = load i64, ptr %x37, align 8
  %64 = load i64, ptr %x51, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %62, i64 noundef %63, i64 noundef %64)
  %65 = load i8, ptr %x60, align 1
  %66 = load i64, ptr %x39, align 8
  %67 = load i64, ptr %x53, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %65, i64 noundef %66, i64 noundef %67)
  %68 = load i8, ptr %x62, align 1
  %69 = load i64, ptr %x41, align 8
  %70 = load i64, ptr %x55, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %68, i64 noundef %69, i64 noundef %70)
  %71 = load i64, ptr %x57, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x65, ptr noundef %x66, i64 noundef %71, i64 noundef -4294967297)
  %72 = load i64, ptr %x57, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x67, ptr noundef %x68, i64 noundef %72, i64 noundef -1)
  %73 = load i64, ptr %x57, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %73, i64 noundef -4294967296)
  %74 = load i64, ptr %x57, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %74, i64 noundef -1)
  %75 = load i64, ptr %x72, align 8
  %76 = load i64, ptr %x69, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x74, align 1
  %78 = load i64, ptr %x70, align 8
  %79 = load i64, ptr %x67, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x76, align 1
  %81 = load i64, ptr %x68, align 8
  %82 = load i64, ptr %x65, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i64, ptr %x57, align 8
  %84 = load i64, ptr %x71, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext 0, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x80, align 1
  %86 = load i64, ptr %x59, align 8
  %87 = load i64, ptr %x73, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %85, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x82, align 1
  %89 = load i64, ptr %x61, align 8
  %90 = load i64, ptr %x75, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x84, align 1
  %92 = load i64, ptr %x63, align 8
  %93 = load i64, ptr %x77, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x86, align 1
  %95 = load i8, ptr %x64, align 1
  %conv6 = zext i8 %95 to i64
  %96 = load i8, ptr %x42, align 1
  %conv7 = zext i8 %96 to i64
  %add8 = add i64 %conv6, %conv7
  %97 = load i8, ptr %x56, align 1
  %conv9 = zext i8 %97 to i64
  %98 = load i64, ptr %x44, align 8
  %add10 = add i64 %conv9, %98
  %add11 = add i64 %add8, %add10
  %99 = load i8, ptr %x78, align 1
  %conv12 = zext i8 %99 to i64
  %100 = load i64, ptr %x66, align 8
  %add13 = add i64 %conv12, %100
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %94, i64 noundef %add11, i64 noundef %add13)
  %101 = load i64, ptr %x2, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x89, ptr noundef %x90, i64 noundef %101, i64 noundef 17179869186)
  %102 = load i64, ptr %x2, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x91, ptr noundef %x92, i64 noundef %102, i64 noundef 4294967297)
  %103 = load i64, ptr %x2, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x93, ptr noundef %x94, i64 noundef %103, i64 noundef 12884901887)
  %104 = load i64, ptr %x2, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x95, ptr noundef %x96, i64 noundef %104, i64 noundef 8589934595)
  %105 = load i64, ptr %x96, align 8
  %106 = load i64, ptr %x93, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext 0, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x98, align 1
  %108 = load i64, ptr %x94, align 8
  %109 = load i64, ptr %x91, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x100, align 1
  %111 = load i64, ptr %x92, align 8
  %112 = load i64, ptr %x89, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %110, i64 noundef %111, i64 noundef %112)
  %113 = load i64, ptr %x81, align 8
  %114 = load i64, ptr %x95, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x104, align 1
  %116 = load i64, ptr %x83, align 8
  %117 = load i64, ptr %x97, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %115, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x106, align 1
  %119 = load i64, ptr %x85, align 8
  %120 = load i64, ptr %x99, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x108, align 1
  %122 = load i64, ptr %x87, align 8
  %123 = load i64, ptr %x101, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %121, i64 noundef %122, i64 noundef %123)
  %124 = load i64, ptr %x103, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x111, ptr noundef %x112, i64 noundef %124, i64 noundef -4294967297)
  %125 = load i64, ptr %x103, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %125, i64 noundef -1)
  %126 = load i64, ptr %x103, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x115, ptr noundef %x116, i64 noundef %126, i64 noundef -4294967296)
  %127 = load i64, ptr %x103, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %127, i64 noundef -1)
  %128 = load i64, ptr %x118, align 8
  %129 = load i64, ptr %x115, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext 0, i64 noundef %128, i64 noundef %129)
  %130 = load i8, ptr %x120, align 1
  %131 = load i64, ptr %x116, align 8
  %132 = load i64, ptr %x113, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %130, i64 noundef %131, i64 noundef %132)
  %133 = load i8, ptr %x122, align 1
  %134 = load i64, ptr %x114, align 8
  %135 = load i64, ptr %x111, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %133, i64 noundef %134, i64 noundef %135)
  %136 = load i64, ptr %x103, align 8
  %137 = load i64, ptr %x117, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x126, align 1
  %139 = load i64, ptr %x105, align 8
  %140 = load i64, ptr %x119, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %138, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x128, align 1
  %142 = load i64, ptr %x107, align 8
  %143 = load i64, ptr %x121, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i8, ptr %x130, align 1
  %145 = load i64, ptr %x109, align 8
  %146 = load i64, ptr %x123, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %144, i64 noundef %145, i64 noundef %146)
  %147 = load i8, ptr %x132, align 1
  %148 = load i8, ptr %x110, align 1
  %conv14 = zext i8 %148 to i64
  %149 = load i8, ptr %x88, align 1
  %conv15 = zext i8 %149 to i64
  %add16 = add i64 %conv14, %conv15
  %150 = load i8, ptr %x102, align 1
  %conv17 = zext i8 %150 to i64
  %151 = load i64, ptr %x90, align 8
  %add18 = add i64 %conv17, %151
  %add19 = add i64 %add16, %add18
  %152 = load i8, ptr %x124, align 1
  %conv20 = zext i8 %152 to i64
  %153 = load i64, ptr %x112, align 8
  %add21 = add i64 %conv20, %153
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %147, i64 noundef %add19, i64 noundef %add21)
  %154 = load i64, ptr %x3, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x135, ptr noundef %x136, i64 noundef %154, i64 noundef 17179869186)
  %155 = load i64, ptr %x3, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x137, ptr noundef %x138, i64 noundef %155, i64 noundef 4294967297)
  %156 = load i64, ptr %x3, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %156, i64 noundef 12884901887)
  %157 = load i64, ptr %x3, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %157, i64 noundef 8589934595)
  %158 = load i64, ptr %x142, align 8
  %159 = load i64, ptr %x139, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i64 noundef %158, i64 noundef %159)
  %160 = load i8, ptr %x144, align 1
  %161 = load i64, ptr %x140, align 8
  %162 = load i64, ptr %x137, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %160, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x146, align 1
  %164 = load i64, ptr %x138, align 8
  %165 = load i64, ptr %x135, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %163, i64 noundef %164, i64 noundef %165)
  %166 = load i64, ptr %x127, align 8
  %167 = load i64, ptr %x141, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext 0, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x150, align 1
  %169 = load i64, ptr %x129, align 8
  %170 = load i64, ptr %x143, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x152, align 1
  %172 = load i64, ptr %x131, align 8
  %173 = load i64, ptr %x145, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x154, align 1
  %175 = load i64, ptr %x133, align 8
  %176 = load i64, ptr %x147, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i64, ptr %x149, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x157, ptr noundef %x158, i64 noundef %177, i64 noundef -4294967297)
  %178 = load i64, ptr %x149, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x159, ptr noundef %x160, i64 noundef %178, i64 noundef -1)
  %179 = load i64, ptr %x149, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x161, ptr noundef %x162, i64 noundef %179, i64 noundef -4294967296)
  %180 = load i64, ptr %x149, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x163, ptr noundef %x164, i64 noundef %180, i64 noundef -1)
  %181 = load i64, ptr %x164, align 8
  %182 = load i64, ptr %x161, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext 0, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x166, align 1
  %184 = load i64, ptr %x162, align 8
  %185 = load i64, ptr %x159, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x168, align 1
  %187 = load i64, ptr %x160, align 8
  %188 = load i64, ptr %x157, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i64, ptr %x149, align 8
  %190 = load i64, ptr %x163, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext 0, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x172, align 1
  %192 = load i64, ptr %x151, align 8
  %193 = load i64, ptr %x165, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i8, ptr %x174, align 1
  %195 = load i64, ptr %x153, align 8
  %196 = load i64, ptr %x167, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %194, i64 noundef %195, i64 noundef %196)
  %197 = load i8, ptr %x176, align 1
  %198 = load i64, ptr %x155, align 8
  %199 = load i64, ptr %x169, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %197, i64 noundef %198, i64 noundef %199)
  %200 = load i8, ptr %x178, align 1
  %201 = load i8, ptr %x156, align 1
  %conv22 = zext i8 %201 to i64
  %202 = load i8, ptr %x134, align 1
  %conv23 = zext i8 %202 to i64
  %add24 = add i64 %conv22, %conv23
  %203 = load i8, ptr %x148, align 1
  %conv25 = zext i8 %203 to i64
  %204 = load i64, ptr %x136, align 8
  %add26 = add i64 %conv25, %204
  %add27 = add i64 %add24, %add26
  %205 = load i8, ptr %x170, align 1
  %conv28 = zext i8 %205 to i64
  %206 = load i64, ptr %x158, align 8
  %add29 = add i64 %conv28, %206
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %200, i64 noundef %add27, i64 noundef %add29)
  %207 = load i64, ptr %x173, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext 0, i64 noundef %207, i64 noundef -1)
  %208 = load i8, ptr %x182, align 1
  %209 = load i64, ptr %x175, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %208, i64 noundef %209, i64 noundef -4294967296)
  %210 = load i8, ptr %x184, align 1
  %211 = load i64, ptr %x177, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %210, i64 noundef %211, i64 noundef -1)
  %212 = load i8, ptr %x186, align 1
  %213 = load i64, ptr %x179, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %212, i64 noundef %213, i64 noundef -4294967297)
  %214 = load i8, ptr %x188, align 1
  %215 = load i8, ptr %x180, align 1
  %conv30 = zext i8 %215 to i64
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %214, i64 noundef %conv30, i64 noundef 0)
  %216 = load i8, ptr %x190, align 1
  %217 = load i64, ptr %x181, align 8
  %218 = load i64, ptr %x173, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x191, i8 noundef zeroext %216, i64 noundef %217, i64 noundef %218)
  %219 = load i8, ptr %x190, align 1
  %220 = load i64, ptr %x183, align 8
  %221 = load i64, ptr %x175, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %219, i64 noundef %220, i64 noundef %221)
  %222 = load i8, ptr %x190, align 1
  %223 = load i64, ptr %x185, align 8
  %224 = load i64, ptr %x177, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %222, i64 noundef %223, i64 noundef %224)
  %225 = load i8, ptr %x190, align 1
  %226 = load i64, ptr %x187, align 8
  %227 = load i64, ptr %x179, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %225, i64 noundef %226, i64 noundef %227)
  %228 = load i64, ptr %x191, align 8
  %229 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %229, i64 0
  store i64 %228, ptr %arrayidx31, align 8
  %230 = load i64, ptr %x192, align 8
  %231 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %231, i64 1
  store i64 %230, ptr %arrayidx32, align 8
  %232 = load i64, ptr %x193, align 8
  %233 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %233, i64 2
  store i64 %232, ptr %arrayidx33, align 8
  %234 = load i64, ptr %x194, align 8
  %235 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %235, i64 3
  store i64 %234, ptr %arrayidx34, align 8
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
