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
define dso_local void @fiat_sm2_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
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
  %x55 = alloca i8, align 1
  %x56 = alloca i64, align 8
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
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
  %x81 = alloca i8, align 1
  %x82 = alloca i64, align 8
  %x83 = alloca i8, align 1
  %x84 = alloca i64, align 8
  %x85 = alloca i8, align 1
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
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
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i8, align 1
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -4294967297)
  %3 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef -1)
  %4 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef -4294967296)
  %5 = load i64, ptr %x1, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef -1)
  %6 = load i64, ptr %x9, align 8
  %7 = load i64, ptr %x6, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x11, align 1
  %9 = load i64, ptr %x7, align 8
  %10 = load i64, ptr %x4, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %8, i64 noundef %9, i64 noundef %10)
  %11 = load i8, ptr %x13, align 1
  %12 = load i64, ptr %x5, align 8
  %13 = load i64, ptr %x2, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %11, i64 noundef %12, i64 noundef %13)
  %14 = load i64, ptr %x1, align 8
  %15 = load i64, ptr %x8, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %14, i64 noundef %15)
  %16 = load i8, ptr %x17, align 1
  %17 = load i64, ptr %x10, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %16, i64 noundef 0, i64 noundef %17)
  %18 = load i8, ptr %x19, align 1
  %19 = load i64, ptr %x12, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %18, i64 noundef 0, i64 noundef %19)
  %20 = load i8, ptr %x21, align 1
  %21 = load i64, ptr %x14, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %20, i64 noundef 0, i64 noundef %21)
  %22 = load i64, ptr %x18, align 8
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %23, i64 1
  %24 = load i64, ptr %arrayidx1, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext 0, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %x25, align 1
  %26 = load i64, ptr %x20, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %25, i64 noundef %26, i64 noundef 0)
  %27 = load i8, ptr %x27, align 1
  %28 = load i64, ptr %x22, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %27, i64 noundef %28, i64 noundef 0)
  %29 = load i64, ptr %x24, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x30, ptr noundef %x31, i64 noundef %29, i64 noundef -4294967297)
  %30 = load i64, ptr %x24, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x32, ptr noundef %x33, i64 noundef %30, i64 noundef -1)
  %31 = load i64, ptr %x24, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %31, i64 noundef -4294967296)
  %32 = load i64, ptr %x24, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %32, i64 noundef -1)
  %33 = load i64, ptr %x37, align 8
  %34 = load i64, ptr %x34, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext 0, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x39, align 1
  %36 = load i64, ptr %x35, align 8
  %37 = load i64, ptr %x32, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i8, ptr %x41, align 1
  %39 = load i64, ptr %x33, align 8
  %40 = load i64, ptr %x30, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i64, ptr %x24, align 8
  %42 = load i64, ptr %x36, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x45, align 1
  %44 = load i64, ptr %x26, align 8
  %45 = load i64, ptr %x38, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x47, align 1
  %47 = load i64, ptr %x28, align 8
  %48 = load i64, ptr %x40, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x49, align 1
  %50 = load i8, ptr %x29, align 1
  %conv = zext i8 %50 to i64
  %51 = load i8, ptr %x23, align 1
  %conv2 = zext i8 %51 to i64
  %52 = load i8, ptr %x15, align 1
  %conv3 = zext i8 %52 to i64
  %53 = load i64, ptr %x3, align 8
  %add = add i64 %conv3, %53
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %54 = load i64, ptr %x42, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %49, i64 noundef %add5, i64 noundef %54)
  %55 = load i64, ptr %x46, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx6, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i64 noundef %55, i64 noundef %57)
  %58 = load i8, ptr %x53, align 1
  %59 = load i64, ptr %x48, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %58, i64 noundef %59, i64 noundef 0)
  %60 = load i8, ptr %x55, align 1
  %61 = load i64, ptr %x50, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %60, i64 noundef %61, i64 noundef 0)
  %62 = load i64, ptr %x52, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x58, ptr noundef %x59, i64 noundef %62, i64 noundef -4294967297)
  %63 = load i64, ptr %x52, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x60, ptr noundef %x61, i64 noundef %63, i64 noundef -1)
  %64 = load i64, ptr %x52, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x62, ptr noundef %x63, i64 noundef %64, i64 noundef -4294967296)
  %65 = load i64, ptr %x52, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x64, ptr noundef %x65, i64 noundef %65, i64 noundef -1)
  %66 = load i64, ptr %x65, align 8
  %67 = load i64, ptr %x62, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i64 noundef %66, i64 noundef %67)
  %68 = load i8, ptr %x67, align 1
  %69 = load i64, ptr %x63, align 8
  %70 = load i64, ptr %x60, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %68, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x69, align 1
  %72 = load i64, ptr %x61, align 8
  %73 = load i64, ptr %x58, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i64, ptr %x52, align 8
  %75 = load i64, ptr %x64, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i8, ptr %x73, align 1
  %77 = load i64, ptr %x54, align 8
  %78 = load i64, ptr %x66, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %76, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x75, align 1
  %80 = load i64, ptr %x56, align 8
  %81 = load i64, ptr %x68, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x77, align 1
  %83 = load i8, ptr %x57, align 1
  %conv7 = zext i8 %83 to i64
  %84 = load i8, ptr %x51, align 1
  %conv8 = zext i8 %84 to i64
  %85 = load i8, ptr %x43, align 1
  %conv9 = zext i8 %85 to i64
  %86 = load i64, ptr %x31, align 8
  %add10 = add i64 %conv9, %86
  %add11 = add i64 %conv8, %add10
  %add12 = add i64 %conv7, %add11
  %87 = load i64, ptr %x70, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %82, i64 noundef %add12, i64 noundef %87)
  %88 = load i64, ptr %x74, align 8
  %89 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %89, i64 3
  %90 = load i64, ptr %arrayidx13, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %88, i64 noundef %90)
  %91 = load i8, ptr %x81, align 1
  %92 = load i64, ptr %x76, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %91, i64 noundef %92, i64 noundef 0)
  %93 = load i8, ptr %x83, align 1
  %94 = load i64, ptr %x78, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %93, i64 noundef %94, i64 noundef 0)
  %95 = load i64, ptr %x80, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %95, i64 noundef -4294967297)
  %96 = load i64, ptr %x80, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %96, i64 noundef -1)
  %97 = load i64, ptr %x80, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %97, i64 noundef -4294967296)
  %98 = load i64, ptr %x80, align 8
  call void @fiat_sm2_mulx_u64(ptr noundef %x92, ptr noundef %x93, i64 noundef %98, i64 noundef -1)
  %99 = load i64, ptr %x93, align 8
  %100 = load i64, ptr %x90, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext 0, i64 noundef %99, i64 noundef %100)
  %101 = load i8, ptr %x95, align 1
  %102 = load i64, ptr %x91, align 8
  %103 = load i64, ptr %x88, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %101, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x97, align 1
  %105 = load i64, ptr %x89, align 8
  %106 = load i64, ptr %x86, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i64, ptr %x80, align 8
  %108 = load i64, ptr %x92, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x101, align 1
  %110 = load i64, ptr %x82, align 8
  %111 = load i64, ptr %x94, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x103, align 1
  %113 = load i64, ptr %x84, align 8
  %114 = load i64, ptr %x96, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x105, align 1
  %116 = load i8, ptr %x85, align 1
  %conv14 = zext i8 %116 to i64
  %117 = load i8, ptr %x79, align 1
  %conv15 = zext i8 %117 to i64
  %118 = load i8, ptr %x71, align 1
  %conv16 = zext i8 %118 to i64
  %119 = load i64, ptr %x59, align 8
  %add17 = add i64 %conv16, %119
  %add18 = add i64 %conv15, %add17
  %add19 = add i64 %conv14, %add18
  %120 = load i64, ptr %x98, align 8
  call void @fiat_sm2_addcarryx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %115, i64 noundef %add19, i64 noundef %120)
  %121 = load i8, ptr %x107, align 1
  %conv20 = zext i8 %121 to i64
  %122 = load i8, ptr %x99, align 1
  %conv21 = zext i8 %122 to i64
  %123 = load i64, ptr %x87, align 8
  %add22 = add i64 %conv21, %123
  %add23 = add i64 %conv20, %add22
  store i64 %add23, ptr %x108, align 8
  %124 = load i64, ptr %x102, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext 0, i64 noundef %124, i64 noundef -1)
  %125 = load i8, ptr %x110, align 1
  %126 = load i64, ptr %x104, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %125, i64 noundef %126, i64 noundef -4294967296)
  %127 = load i8, ptr %x112, align 1
  %128 = load i64, ptr %x106, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %127, i64 noundef %128, i64 noundef -1)
  %129 = load i8, ptr %x114, align 1
  %130 = load i64, ptr %x108, align 8
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %129, i64 noundef %130, i64 noundef -4294967297)
  %131 = load i8, ptr %x116, align 1
  call void @fiat_sm2_subborrowx_u64(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %131, i64 noundef 0, i64 noundef 0)
  %132 = load i8, ptr %x118, align 1
  %133 = load i64, ptr %x109, align 8
  %134 = load i64, ptr %x102, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x119, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x118, align 1
  %136 = load i64, ptr %x111, align 8
  %137 = load i64, ptr %x104, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x120, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x118, align 1
  %139 = load i64, ptr %x113, align 8
  %140 = load i64, ptr %x106, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x121, i8 noundef zeroext %138, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x118, align 1
  %142 = load i64, ptr %x115, align 8
  %143 = load i64, ptr %x108, align 8
  call void @fiat_sm2_cmovznz_u64(ptr noundef %x122, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i64, ptr %x119, align 8
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %145, i64 0
  store i64 %144, ptr %arrayidx24, align 8
  %146 = load i64, ptr %x120, align 8
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %147, i64 1
  store i64 %146, ptr %arrayidx25, align 8
  %148 = load i64, ptr %x121, align 8
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %149, i64 2
  store i64 %148, ptr %arrayidx26, align 8
  %150 = load i64, ptr %x122, align 8
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %151, i64 3
  store i64 %150, ptr %arrayidx27, align 8
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
