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
define dso_local void @fiat_p224_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x11 = alloca i8, align 1
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
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i8, align 1
  %x38 = alloca i64, align 8
  %x39 = alloca i8, align 1
  %x40 = alloca i64, align 8
  %x41 = alloca i8, align 1
  %x42 = alloca i64, align 8
  %x43 = alloca i8, align 1
  %x44 = alloca i64, align 8
  %x45 = alloca i8, align 1
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i64, align 8
  %x53 = alloca i8, align 1
  %x54 = alloca i64, align 8
  %x55 = alloca i64, align 8
  %x56 = alloca i64, align 8
  %x57 = alloca i64, align 8
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
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
  %x71 = alloca i8, align 1
  %x72 = alloca i64, align 8
  %x73 = alloca i8, align 1
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i8, align 1
  %x78 = alloca i64, align 8
  %x79 = alloca i8, align 1
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -1)
  %3 = load i64, ptr %x2, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef 4294967295)
  %4 = load i64, ptr %x2, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef -1)
  %5 = load i64, ptr %x2, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef -4294967296)
  %6 = load i64, ptr %x9, align 8
  %7 = load i64, ptr %x6, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x11, align 1
  %9 = load i64, ptr %x7, align 8
  %10 = load i64, ptr %x4, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %8, i64 noundef %9, i64 noundef %10)
  %11 = load i64, ptr %x1, align 8
  %12 = load i64, ptr %x2, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef %11, i64 noundef %12)
  %13 = load i8, ptr %x15, align 1
  %14 = load i64, ptr %x8, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %13, i64 noundef 0, i64 noundef %14)
  %15 = load i8, ptr %x17, align 1
  %16 = load i64, ptr %x10, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %15, i64 noundef 0, i64 noundef %16)
  %17 = load i8, ptr %x19, align 1
  %18 = load i64, ptr %x12, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %17, i64 noundef 0, i64 noundef %18)
  %19 = load i64, ptr %x16, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %20, i64 1
  %21 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i64 noundef %19, i64 noundef %21)
  %22 = load i8, ptr %x23, align 1
  %23 = load i64, ptr %x18, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %22, i64 noundef %23, i64 noundef 0)
  %24 = load i8, ptr %x25, align 1
  %25 = load i64, ptr %x20, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %24, i64 noundef %25, i64 noundef 0)
  %26 = load i64, ptr %x22, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x28, ptr noundef %x29, i64 noundef %26, i64 noundef -1)
  %27 = load i64, ptr %x28, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x30, ptr noundef %x31, i64 noundef %27, i64 noundef 4294967295)
  %28 = load i64, ptr %x28, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x32, ptr noundef %x33, i64 noundef %28, i64 noundef -1)
  %29 = load i64, ptr %x28, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %29, i64 noundef -4294967296)
  %30 = load i64, ptr %x35, align 8
  %31 = load i64, ptr %x32, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x37, align 1
  %33 = load i64, ptr %x33, align 8
  %34 = load i64, ptr %x30, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i64, ptr %x22, align 8
  %36 = load i64, ptr %x28, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext 0, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x41, align 1
  %38 = load i64, ptr %x24, align 8
  %39 = load i64, ptr %x34, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x43, align 1
  %41 = load i64, ptr %x26, align 8
  %42 = load i64, ptr %x36, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x45, align 1
  %44 = load i8, ptr %x27, align 1
  %conv = zext i8 %44 to i64
  %45 = load i8, ptr %x21, align 1
  %conv2 = zext i8 %45 to i64
  %46 = load i8, ptr %x13, align 1
  %conv3 = zext i8 %46 to i64
  %47 = load i64, ptr %x5, align 8
  %add = add i64 %conv3, %47
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %48 = load i64, ptr %x38, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %43, i64 noundef %add5, i64 noundef %48)
  %49 = load i64, ptr %x42, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %50, i64 2
  %51 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext 0, i64 noundef %49, i64 noundef %51)
  %52 = load i8, ptr %x49, align 1
  %53 = load i64, ptr %x44, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %52, i64 noundef %53, i64 noundef 0)
  %54 = load i8, ptr %x51, align 1
  %55 = load i64, ptr %x46, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %54, i64 noundef %55, i64 noundef 0)
  %56 = load i64, ptr %x48, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x54, ptr noundef %x55, i64 noundef %56, i64 noundef -1)
  %57 = load i64, ptr %x54, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x56, ptr noundef %x57, i64 noundef %57, i64 noundef 4294967295)
  %58 = load i64, ptr %x54, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x58, ptr noundef %x59, i64 noundef %58, i64 noundef -1)
  %59 = load i64, ptr %x54, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x60, ptr noundef %x61, i64 noundef %59, i64 noundef -4294967296)
  %60 = load i64, ptr %x61, align 8
  %61 = load i64, ptr %x58, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i64 noundef %60, i64 noundef %61)
  %62 = load i8, ptr %x63, align 1
  %63 = load i64, ptr %x59, align 8
  %64 = load i64, ptr %x56, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %62, i64 noundef %63, i64 noundef %64)
  %65 = load i64, ptr %x48, align 8
  %66 = load i64, ptr %x54, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x67, align 1
  %68 = load i64, ptr %x50, align 8
  %69 = load i64, ptr %x60, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %67, i64 noundef %68, i64 noundef %69)
  %70 = load i8, ptr %x69, align 1
  %71 = load i64, ptr %x52, align 8
  %72 = load i64, ptr %x62, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %70, i64 noundef %71, i64 noundef %72)
  %73 = load i8, ptr %x71, align 1
  %74 = load i8, ptr %x53, align 1
  %conv7 = zext i8 %74 to i64
  %75 = load i8, ptr %x47, align 1
  %conv8 = zext i8 %75 to i64
  %76 = load i8, ptr %x39, align 1
  %conv9 = zext i8 %76 to i64
  %77 = load i64, ptr %x31, align 8
  %add10 = add i64 %conv9, %77
  %add11 = add i64 %conv8, %add10
  %add12 = add i64 %conv7, %add11
  %78 = load i64, ptr %x64, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %73, i64 noundef %add12, i64 noundef %78)
  %79 = load i64, ptr %x68, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %80, i64 3
  %81 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %79, i64 noundef %81)
  %82 = load i8, ptr %x75, align 1
  %83 = load i64, ptr %x70, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %82, i64 noundef %83, i64 noundef 0)
  %84 = load i8, ptr %x77, align 1
  %85 = load i64, ptr %x72, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %84, i64 noundef %85, i64 noundef 0)
  %86 = load i64, ptr %x74, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x80, ptr noundef %x81, i64 noundef %86, i64 noundef -1)
  %87 = load i64, ptr %x80, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x82, ptr noundef %x83, i64 noundef %87, i64 noundef 4294967295)
  %88 = load i64, ptr %x80, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x84, ptr noundef %x85, i64 noundef %88, i64 noundef -1)
  %89 = load i64, ptr %x80, align 8
  call void @fiat_p224_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %89, i64 noundef -4294967296)
  %90 = load i64, ptr %x87, align 8
  %91 = load i64, ptr %x84, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext 0, i64 noundef %90, i64 noundef %91)
  %92 = load i8, ptr %x89, align 1
  %93 = load i64, ptr %x85, align 8
  %94 = load i64, ptr %x82, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %92, i64 noundef %93, i64 noundef %94)
  %95 = load i64, ptr %x74, align 8
  %96 = load i64, ptr %x80, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x93, align 1
  %98 = load i64, ptr %x76, align 8
  %99 = load i64, ptr %x86, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %99)
  %100 = load i8, ptr %x95, align 1
  %101 = load i64, ptr %x78, align 8
  %102 = load i64, ptr %x88, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x97, align 1
  %104 = load i8, ptr %x79, align 1
  %conv14 = zext i8 %104 to i64
  %105 = load i8, ptr %x73, align 1
  %conv15 = zext i8 %105 to i64
  %106 = load i8, ptr %x65, align 1
  %conv16 = zext i8 %106 to i64
  %107 = load i64, ptr %x57, align 8
  %add17 = add i64 %conv16, %107
  %add18 = add i64 %conv15, %add17
  %add19 = add i64 %conv14, %add18
  %108 = load i64, ptr %x90, align 8
  call void @fiat_p224_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %103, i64 noundef %add19, i64 noundef %108)
  %109 = load i8, ptr %x99, align 1
  %conv20 = zext i8 %109 to i64
  %110 = load i8, ptr %x91, align 1
  %conv21 = zext i8 %110 to i64
  %111 = load i64, ptr %x83, align 8
  %add22 = add i64 %conv21, %111
  %add23 = add i64 %conv20, %add22
  store i64 %add23, ptr %x100, align 8
  %112 = load i64, ptr %x94, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext 0, i64 noundef %112, i64 noundef 1)
  %113 = load i8, ptr %x102, align 1
  %114 = load i64, ptr %x96, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %113, i64 noundef %114, i64 noundef -4294967296)
  %115 = load i8, ptr %x104, align 1
  %116 = load i64, ptr %x98, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %115, i64 noundef %116, i64 noundef -1)
  %117 = load i8, ptr %x106, align 1
  %118 = load i64, ptr %x100, align 8
  call void @fiat_p224_subborrowx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %117, i64 noundef %118, i64 noundef 4294967295)
  %119 = load i8, ptr %x108, align 1
  call void @fiat_p224_subborrowx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %119, i64 noundef 0, i64 noundef 0)
  %120 = load i8, ptr %x110, align 1
  %121 = load i64, ptr %x101, align 8
  %122 = load i64, ptr %x94, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x111, i8 noundef zeroext %120, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x110, align 1
  %124 = load i64, ptr %x103, align 8
  %125 = load i64, ptr %x96, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x112, i8 noundef zeroext %123, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x110, align 1
  %127 = load i64, ptr %x105, align 8
  %128 = load i64, ptr %x98, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x113, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x110, align 1
  %130 = load i64, ptr %x107, align 8
  %131 = load i64, ptr %x100, align 8
  call void @fiat_p224_cmovznz_u64(ptr noundef %x114, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i64, ptr %x111, align 8
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %133, i64 0
  store i64 %132, ptr %arrayidx24, align 8
  %134 = load i64, ptr %x112, align 8
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %135, i64 1
  store i64 %134, ptr %arrayidx25, align 8
  %136 = load i64, ptr %x113, align 8
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %137, i64 2
  store i64 %136, ptr %arrayidx26, align 8
  %138 = load i64, ptr %x114, align 8
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %139, i64 3
  store i64 %138, ptr %arrayidx27, align 8
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
