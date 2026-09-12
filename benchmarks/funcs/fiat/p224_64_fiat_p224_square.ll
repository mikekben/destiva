; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
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
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i8, align 1
  %x78 = alloca i64, align 8
  %x79 = alloca i8, align 1
  %x80 = alloca i64, align 8
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
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i8, align 1
  %x104 = alloca i64, align 8
  %x105 = alloca i8, align 1
  %x106 = alloca i64, align 8
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
  %x156 = alloca i64, align 8
  %x157 = alloca i8, align 1
  %x158 = alloca i64, align 8
  %x159 = alloca i8, align 1
  %x160 = alloca i64, align 8
  %x161 = alloca i8, align 1
  %x162 = alloca i64, align 8
  %x163 = alloca i8, align 1
  %x164 = alloca i64, align 8
  %x165 = alloca i8, align 1
  %x166 = alloca i64, align 8
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
  %x172 = alloca i64, align 8
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i8, align 1
  %x176 = alloca i64, align 8
  %x177 = alloca i8, align 1
  %x178 = alloca i64, align 8
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
  %x190 = alloca i64, align 8
  %x191 = alloca i8, align 1
  %x192 = alloca i64, align 8
  %x193 = alloca i8, align 1
  %x194 = alloca i64, align 8
  %x195 = alloca i8, align 1
  %x196 = alloca i64, align 8
  %x197 = alloca i8, align 1
  %x198 = alloca i64, align 8
  %x199 = alloca i8, align 1
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i64, align 8
  %x203 = alloca i64, align 8
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
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef %10)
  %11 = load i64, ptr %x4, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x4, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x4, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x12, align 8
  %21 = load i64, ptr %x9, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x14, align 1
  %23 = load i64, ptr %x10, align 8
  %24 = load i64, ptr %x7, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x16, align 1
  %26 = load i64, ptr %x8, align 8
  %27 = load i64, ptr %x5, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x18, align 1
  %conv = zext i8 %28 to i64
  %29 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %29
  store i64 %add, ptr %x19, align 8
  %30 = load i64, ptr %x11, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %30, i64 noundef -1)
  %31 = load i64, ptr %x20, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %31, i64 noundef 4294967295)
  %32 = load i64, ptr %x20, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %32, i64 noundef -1)
  %33 = load i64, ptr %x20, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x26, ptr noundef %x27, i64 noundef %33, i64 noundef -4294967296)
  %34 = load i64, ptr %x27, align 8
  %35 = load i64, ptr %x24, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %35)
  %36 = load i8, ptr %x29, align 1
  %37 = load i64, ptr %x25, align 8
  %38 = load i64, ptr %x22, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %36, i64 noundef %37, i64 noundef %38)
  %39 = load i8, ptr %x31, align 1
  %conv8 = zext i8 %39 to i64
  %40 = load i64, ptr %x23, align 8
  %add9 = add i64 %conv8, %40
  store i64 %add9, ptr %x32, align 8
  %41 = load i64, ptr %x11, align 8
  %42 = load i64, ptr %x20, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext 0, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x34, align 1
  %44 = load i64, ptr %x13, align 8
  %45 = load i64, ptr %x26, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x36, align 1
  %47 = load i64, ptr %x15, align 8
  %48 = load i64, ptr %x28, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x38, align 1
  %50 = load i64, ptr %x17, align 8
  %51 = load i64, ptr %x30, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i8, ptr %x40, align 1
  %53 = load i64, ptr %x19, align 8
  %54 = load i64, ptr %x32, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %52, i64 noundef %53, i64 noundef %54)
  %55 = load i64, ptr %x1, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %56, i64 3
  %57 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %55, i64 noundef %57)
  %58 = load i64, ptr %x1, align 8
  %59 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %59, i64 2
  %60 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %58, i64 noundef %60)
  %61 = load i64, ptr %x1, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %62, i64 1
  %63 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %61, i64 noundef %63)
  %64 = load i64, ptr %x1, align 8
  %65 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %65, i64 0
  %66 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x49, ptr noundef %x50, i64 noundef %64, i64 noundef %66)
  %67 = load i64, ptr %x50, align 8
  %68 = load i64, ptr %x47, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x52, align 1
  %70 = load i64, ptr %x48, align 8
  %71 = load i64, ptr %x45, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x54, align 1
  %73 = load i64, ptr %x46, align 8
  %74 = load i64, ptr %x43, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %72, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x56, align 1
  %conv14 = zext i8 %75 to i64
  %76 = load i64, ptr %x44, align 8
  %add15 = add i64 %conv14, %76
  store i64 %add15, ptr %x57, align 8
  %77 = load i64, ptr %x35, align 8
  %78 = load i64, ptr %x49, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext 0, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x59, align 1
  %80 = load i64, ptr %x37, align 8
  %81 = load i64, ptr %x51, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x61, align 1
  %83 = load i64, ptr %x39, align 8
  %84 = load i64, ptr %x53, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x63, align 1
  %86 = load i64, ptr %x41, align 8
  %87 = load i64, ptr %x55, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %85, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x65, align 1
  %89 = load i8, ptr %x42, align 1
  %conv16 = zext i8 %89 to i64
  %90 = load i64, ptr %x57, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %88, i64 noundef %conv16, i64 noundef %90)
  %91 = load i64, ptr %x58, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %91, i64 noundef -1)
  %92 = load i64, ptr %x68, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %92, i64 noundef 4294967295)
  %93 = load i64, ptr %x68, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %93, i64 noundef -1)
  %94 = load i64, ptr %x68, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x74, ptr noundef %x75, i64 noundef %94, i64 noundef -4294967296)
  %95 = load i64, ptr %x75, align 8
  %96 = load i64, ptr %x72, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x77, align 1
  %98 = load i64, ptr %x73, align 8
  %99 = load i64, ptr %x70, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %99)
  %100 = load i8, ptr %x79, align 1
  %conv17 = zext i8 %100 to i64
  %101 = load i64, ptr %x71, align 8
  %add18 = add i64 %conv17, %101
  store i64 %add18, ptr %x80, align 8
  %102 = load i64, ptr %x58, align 8
  %103 = load i64, ptr %x68, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext 0, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x82, align 1
  %105 = load i64, ptr %x60, align 8
  %106 = load i64, ptr %x74, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x84, align 1
  %108 = load i64, ptr %x62, align 8
  %109 = load i64, ptr %x76, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x86, align 1
  %111 = load i64, ptr %x64, align 8
  %112 = load i64, ptr %x78, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %110, i64 noundef %111, i64 noundef %112)
  %113 = load i8, ptr %x88, align 1
  %114 = load i64, ptr %x66, align 8
  %115 = load i64, ptr %x80, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %113, i64 noundef %114, i64 noundef %115)
  %116 = load i8, ptr %x90, align 1
  %conv19 = zext i8 %116 to i64
  %117 = load i8, ptr %x67, align 1
  %conv20 = zext i8 %117 to i64
  %add21 = add i64 %conv19, %conv20
  store i64 %add21, ptr %x91, align 8
  %118 = load i64, ptr %x2, align 8
  %119 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %119, i64 3
  %120 = load i64, ptr %arrayidx22, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x92, ptr noundef %x93, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x2, align 8
  %122 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %122, i64 2
  %123 = load i64, ptr %arrayidx23, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x94, ptr noundef %x95, i64 noundef %121, i64 noundef %123)
  %124 = load i64, ptr %x2, align 8
  %125 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %125, i64 1
  %126 = load i64, ptr %arrayidx24, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x96, ptr noundef %x97, i64 noundef %124, i64 noundef %126)
  %127 = load i64, ptr %x2, align 8
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %128, i64 0
  %129 = load i64, ptr %arrayidx25, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x98, ptr noundef %x99, i64 noundef %127, i64 noundef %129)
  %130 = load i64, ptr %x99, align 8
  %131 = load i64, ptr %x96, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext 0, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x101, align 1
  %133 = load i64, ptr %x97, align 8
  %134 = load i64, ptr %x94, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x103, align 1
  %136 = load i64, ptr %x95, align 8
  %137 = load i64, ptr %x92, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x105, align 1
  %conv26 = zext i8 %138 to i64
  %139 = load i64, ptr %x93, align 8
  %add27 = add i64 %conv26, %139
  store i64 %add27, ptr %x106, align 8
  %140 = load i64, ptr %x83, align 8
  %141 = load i64, ptr %x98, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x108, align 1
  %143 = load i64, ptr %x85, align 8
  %144 = load i64, ptr %x100, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x110, align 1
  %146 = load i64, ptr %x87, align 8
  %147 = load i64, ptr %x102, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i8, ptr %x112, align 1
  %149 = load i64, ptr %x89, align 8
  %150 = load i64, ptr %x104, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %148, i64 noundef %149, i64 noundef %150)
  %151 = load i8, ptr %x114, align 1
  %152 = load i64, ptr %x91, align 8
  %153 = load i64, ptr %x106, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %151, i64 noundef %152, i64 noundef %153)
  %154 = load i64, ptr %x107, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %154, i64 noundef -1)
  %155 = load i64, ptr %x117, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %155, i64 noundef 4294967295)
  %156 = load i64, ptr %x117, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x121, ptr noundef %x122, i64 noundef %156, i64 noundef -1)
  %157 = load i64, ptr %x117, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %157, i64 noundef -4294967296)
  %158 = load i64, ptr %x124, align 8
  %159 = load i64, ptr %x121, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %158, i64 noundef %159)
  %160 = load i8, ptr %x126, align 1
  %161 = load i64, ptr %x122, align 8
  %162 = load i64, ptr %x119, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %160, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x128, align 1
  %conv28 = zext i8 %163 to i64
  %164 = load i64, ptr %x120, align 8
  %add29 = add i64 %conv28, %164
  store i64 %add29, ptr %x129, align 8
  %165 = load i64, ptr %x107, align 8
  %166 = load i64, ptr %x117, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext 0, i64 noundef %165, i64 noundef %166)
  %167 = load i8, ptr %x131, align 1
  %168 = load i64, ptr %x109, align 8
  %169 = load i64, ptr %x123, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %167, i64 noundef %168, i64 noundef %169)
  %170 = load i8, ptr %x133, align 1
  %171 = load i64, ptr %x111, align 8
  %172 = load i64, ptr %x125, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %170, i64 noundef %171, i64 noundef %172)
  %173 = load i8, ptr %x135, align 1
  %174 = load i64, ptr %x113, align 8
  %175 = load i64, ptr %x127, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %173, i64 noundef %174, i64 noundef %175)
  %176 = load i8, ptr %x137, align 1
  %177 = load i64, ptr %x115, align 8
  %178 = load i64, ptr %x129, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %176, i64 noundef %177, i64 noundef %178)
  %179 = load i8, ptr %x139, align 1
  %conv30 = zext i8 %179 to i64
  %180 = load i8, ptr %x116, align 1
  %conv31 = zext i8 %180 to i64
  %add32 = add i64 %conv30, %conv31
  store i64 %add32, ptr %x140, align 8
  %181 = load i64, ptr %x3, align 8
  %182 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %182, i64 3
  %183 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %181, i64 noundef %183)
  %184 = load i64, ptr %x3, align 8
  %185 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %185, i64 2
  %186 = load i64, ptr %arrayidx34, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x143, ptr noundef %x144, i64 noundef %184, i64 noundef %186)
  %187 = load i64, ptr %x3, align 8
  %188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %188, i64 1
  %189 = load i64, ptr %arrayidx35, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x145, ptr noundef %x146, i64 noundef %187, i64 noundef %189)
  %190 = load i64, ptr %x3, align 8
  %191 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %191, i64 0
  %192 = load i64, ptr %arrayidx36, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x147, ptr noundef %x148, i64 noundef %190, i64 noundef %192)
  %193 = load i64, ptr %x148, align 8
  %194 = load i64, ptr %x145, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext 0, i64 noundef %193, i64 noundef %194)
  %195 = load i8, ptr %x150, align 1
  %196 = load i64, ptr %x146, align 8
  %197 = load i64, ptr %x143, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %195, i64 noundef %196, i64 noundef %197)
  %198 = load i8, ptr %x152, align 1
  %199 = load i64, ptr %x144, align 8
  %200 = load i64, ptr %x141, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %198, i64 noundef %199, i64 noundef %200)
  %201 = load i8, ptr %x154, align 1
  %conv37 = zext i8 %201 to i64
  %202 = load i64, ptr %x142, align 8
  %add38 = add i64 %conv37, %202
  store i64 %add38, ptr %x155, align 8
  %203 = load i64, ptr %x132, align 8
  %204 = load i64, ptr %x147, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext 0, i64 noundef %203, i64 noundef %204)
  %205 = load i8, ptr %x157, align 1
  %206 = load i64, ptr %x134, align 8
  %207 = load i64, ptr %x149, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %205, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x159, align 1
  %209 = load i64, ptr %x136, align 8
  %210 = load i64, ptr %x151, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %208, i64 noundef %209, i64 noundef %210)
  %211 = load i8, ptr %x161, align 1
  %212 = load i64, ptr %x138, align 8
  %213 = load i64, ptr %x153, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %211, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x163, align 1
  %215 = load i64, ptr %x140, align 8
  %216 = load i64, ptr %x155, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i64, ptr %x156, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %217, i64 noundef -1)
  %218 = load i64, ptr %x166, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x168, ptr noundef %x169, i64 noundef %218, i64 noundef 4294967295)
  %219 = load i64, ptr %x166, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x170, ptr noundef %x171, i64 noundef %219, i64 noundef -1)
  %220 = load i64, ptr %x166, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x172, ptr noundef %x173, i64 noundef %220, i64 noundef -4294967296)
  %221 = load i64, ptr %x173, align 8
  %222 = load i64, ptr %x170, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext 0, i64 noundef %221, i64 noundef %222)
  %223 = load i8, ptr %x175, align 1
  %224 = load i64, ptr %x171, align 8
  %225 = load i64, ptr %x168, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %223, i64 noundef %224, i64 noundef %225)
  %226 = load i8, ptr %x177, align 1
  %conv39 = zext i8 %226 to i64
  %227 = load i64, ptr %x169, align 8
  %add40 = add i64 %conv39, %227
  store i64 %add40, ptr %x178, align 8
  %228 = load i64, ptr %x156, align 8
  %229 = load i64, ptr %x166, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext 0, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x180, align 1
  %231 = load i64, ptr %x158, align 8
  %232 = load i64, ptr %x172, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %230, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x182, align 1
  %234 = load i64, ptr %x160, align 8
  %235 = load i64, ptr %x174, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x184, align 1
  %237 = load i64, ptr %x162, align 8
  %238 = load i64, ptr %x176, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x186, align 1
  %240 = load i64, ptr %x164, align 8
  %241 = load i64, ptr %x178, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i8, ptr %x188, align 1
  %conv41 = zext i8 %242 to i64
  %243 = load i8, ptr %x165, align 1
  %conv42 = zext i8 %243 to i64
  %add43 = add i64 %conv41, %conv42
  store i64 %add43, ptr %x189, align 8
  %244 = load i64, ptr %x181, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext 0, i64 noundef %244, i64 noundef 1)
  %245 = load i8, ptr %x191, align 1
  %246 = load i64, ptr %x183, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %245, i64 noundef %246, i64 noundef -4294967296)
  %247 = load i8, ptr %x193, align 1
  %248 = load i64, ptr %x185, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %247, i64 noundef %248, i64 noundef -1)
  %249 = load i8, ptr %x195, align 1
  %250 = load i64, ptr %x187, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %249, i64 noundef %250, i64 noundef 4294967295)
  %251 = load i8, ptr %x197, align 1
  %252 = load i64, ptr %x189, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %251, i64 noundef %252, i64 noundef 0)
  %253 = load i8, ptr %x199, align 1
  %254 = load i64, ptr %x190, align 8
  %255 = load i64, ptr %x181, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x200, i8 noundef zeroext %253, i64 noundef %254, i64 noundef %255)
  %256 = load i8, ptr %x199, align 1
  %257 = load i64, ptr %x192, align 8
  %258 = load i64, ptr %x183, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x201, i8 noundef zeroext %256, i64 noundef %257, i64 noundef %258)
  %259 = load i8, ptr %x199, align 1
  %260 = load i64, ptr %x194, align 8
  %261 = load i64, ptr %x185, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x202, i8 noundef zeroext %259, i64 noundef %260, i64 noundef %261)
  %262 = load i8, ptr %x199, align 1
  %263 = load i64, ptr %x196, align 8
  %264 = load i64, ptr %x187, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x203, i8 noundef zeroext %262, i64 noundef %263, i64 noundef %264)
  %265 = load i64, ptr %x200, align 8
  %266 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %266, i64 0
  store i64 %265, ptr %arrayidx44, align 8
  %267 = load i64, ptr %x201, align 8
  %268 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %268, i64 1
  store i64 %267, ptr %arrayidx45, align 8
  %269 = load i64, ptr %x202, align 8
  %270 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %270, i64 2
  store i64 %269, ptr %arrayidx46, align 8
  %271 = load i64, ptr %x203, align 8
  %272 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %272, i64 3
  store i64 %271, ptr %arrayidx47, align 8
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
