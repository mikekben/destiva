; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_solinas_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_curve25519_solinas_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_curve25519_solinas_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_curve25519_solinas_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x12 = alloca i8, align 1
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
  %x37 = alloca i8, align 1
  %x38 = alloca i64, align 8
  %x39 = alloca i8, align 1
  %x40 = alloca i64, align 8
  %x41 = alloca i8, align 1
  %x42 = alloca i64, align 8
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
  %x80 = alloca i64, align 8
  %x81 = alloca i8, align 1
  %x82 = alloca i64, align 8
  %x83 = alloca i8, align 1
  %x84 = alloca i64, align 8
  %x85 = alloca i8, align 1
  %x86 = alloca i64, align 8
  %x87 = alloca i8, align 1
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
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
  %x101 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 3
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x1, ptr noundef %x2, i64 noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 0
  %5 = load i64, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x3, ptr noundef %x4, i64 noundef %5, i64 noundef %7)
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 0
  %9 = load i64, ptr %arrayidx4, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %arrayidx5, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %9, i64 noundef %11)
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx6, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %14, i64 2
  %15 = load i64, ptr %arrayidx7, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %13, i64 noundef %15)
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx8, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %18, i64 1
  %19 = load i64, ptr %arrayidx9, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x6, align 8
  %21 = load i64, ptr %x3, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x12, align 1
  %23 = load i64, ptr %x4, align 8
  %24 = load i64, ptr %x1, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x14, align 1
  %26 = load i64, ptr %x2, align 8
  %27 = load i64, ptr %x9, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x16, align 1
  %29 = load i64, ptr %x10, align 8
  %30 = load i64, ptr %x7, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %28, i64 noundef %29, i64 noundef %30)
  %31 = load i8, ptr %x18, align 1
  %conv = zext i8 %31 to i64
  %32 = load i64, ptr %x8, align 8
  %add = add i64 %conv, %32
  store i64 %add, ptr %x19, align 8
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %33, i64 1
  %34 = load i64, ptr %arrayidx10, align 8
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %35, i64 2
  %36 = load i64, ptr %arrayidx11, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %34, i64 noundef %36)
  %37 = load i64, ptr %x13, align 8
  %38 = load i64, ptr %x20, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i64 noundef %37, i64 noundef %38)
  %39 = load i8, ptr %x23, align 1
  %40 = load i64, ptr %x15, align 8
  %41 = load i64, ptr %x21, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %39, i64 noundef %40, i64 noundef %41)
  %42 = load i8, ptr %x25, align 1
  %43 = load i64, ptr %x17, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %42, i64 noundef %43, i64 noundef 0)
  %44 = load i8, ptr %x27, align 1
  %45 = load i64, ptr %x19, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %44, i64 noundef %45, i64 noundef 0)
  %46 = load i64, ptr %x5, align 8
  %47 = load i64, ptr %x5, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext 0, i64 noundef %46, i64 noundef %47)
  %48 = load i8, ptr %x31, align 1
  %49 = load i64, ptr %x11, align 8
  %50 = load i64, ptr %x11, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %48, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x33, align 1
  %52 = load i64, ptr %x22, align 8
  %53 = load i64, ptr %x22, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %51, i64 noundef %52, i64 noundef %53)
  %54 = load i8, ptr %x35, align 1
  %55 = load i64, ptr %x24, align 8
  %56 = load i64, ptr %x24, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %54, i64 noundef %55, i64 noundef %56)
  %57 = load i8, ptr %x37, align 1
  %58 = load i64, ptr %x26, align 8
  %59 = load i64, ptr %x26, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %57, i64 noundef %58, i64 noundef %59)
  %60 = load i8, ptr %x39, align 1
  %61 = load i64, ptr %x28, align 8
  %62 = load i64, ptr %x28, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %60, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x41, align 1
  %conv12 = zext i8 %63 to i64
  %64 = load i8, ptr %x29, align 1
  %conv13 = zext i8 %64 to i64
  %add14 = add i64 %conv12, %conv13
  %65 = load i8, ptr %x29, align 1
  %conv15 = zext i8 %65 to i64
  %add16 = add i64 %add14, %conv15
  store i64 %add16, ptr %x42, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %66, i64 3
  %67 = load i64, ptr %arrayidx17, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %68, i64 3
  %69 = load i64, ptr %arrayidx18, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %67, i64 noundef %69)
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %70, i64 2
  %71 = load i64, ptr %arrayidx19, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %72, i64 2
  %73 = load i64, ptr %arrayidx20, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %71, i64 noundef %73)
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %74, i64 1
  %75 = load i64, ptr %arrayidx21, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %76, i64 1
  %77 = load i64, ptr %arrayidx22, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %75, i64 noundef %77)
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %78, i64 0
  %79 = load i64, ptr %arrayidx23, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %80, i64 0
  %81 = load i64, ptr %arrayidx24, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x49, ptr noundef %x50, i64 noundef %79, i64 noundef %81)
  %82 = load i64, ptr %x30, align 8
  %83 = load i64, ptr %x50, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i64 noundef %82, i64 noundef %83)
  %84 = load i8, ptr %x52, align 1
  %85 = load i64, ptr %x32, align 8
  %86 = load i64, ptr %x47, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %84, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x54, align 1
  %88 = load i64, ptr %x34, align 8
  %89 = load i64, ptr %x48, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %87, i64 noundef %88, i64 noundef %89)
  %90 = load i8, ptr %x56, align 1
  %91 = load i64, ptr %x36, align 8
  %92 = load i64, ptr %x45, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %90, i64 noundef %91, i64 noundef %92)
  %93 = load i8, ptr %x58, align 1
  %94 = load i64, ptr %x38, align 8
  %95 = load i64, ptr %x46, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %93, i64 noundef %94, i64 noundef %95)
  %96 = load i8, ptr %x60, align 1
  %97 = load i64, ptr %x40, align 8
  %98 = load i64, ptr %x43, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %96, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x62, align 1
  %100 = load i64, ptr %x42, align 8
  %101 = load i64, ptr %x44, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %99, i64 noundef %100, i64 noundef %101)
  %102 = load i64, ptr %x63, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x65, ptr noundef %x66, i64 noundef 38, i64 noundef %102)
  %103 = load i64, ptr %x61, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x67, ptr noundef %x68, i64 noundef 38, i64 noundef %103)
  %104 = load i64, ptr %x59, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef 38, i64 noundef %104)
  %105 = load i64, ptr %x57, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef 38, i64 noundef %105)
  %106 = load i64, ptr %x51, align 8
  %107 = load i64, ptr %x69, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i64 noundef %106, i64 noundef %107)
  %108 = load i8, ptr %x74, align 1
  %109 = load i64, ptr %x53, align 8
  %110 = load i64, ptr %x67, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %108, i64 noundef %109, i64 noundef %110)
  %111 = load i8, ptr %x76, align 1
  %112 = load i64, ptr %x55, align 8
  %113 = load i64, ptr %x65, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %111, i64 noundef %112, i64 noundef %113)
  %114 = load i8, ptr %x78, align 1
  %conv25 = zext i8 %114 to i64
  %115 = load i64, ptr %x66, align 8
  %add26 = add i64 %conv25, %115
  store i64 %add26, ptr %x79, align 8
  %116 = load i64, ptr %x49, align 8
  %117 = load i64, ptr %x71, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x81, align 1
  %119 = load i64, ptr %x73, align 8
  %120 = load i64, ptr %x72, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x83, align 1
  %122 = load i64, ptr %x75, align 8
  %123 = load i64, ptr %x70, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %121, i64 noundef %122, i64 noundef %123)
  %124 = load i8, ptr %x85, align 1
  %125 = load i64, ptr %x77, align 8
  %126 = load i64, ptr %x68, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %124, i64 noundef %125, i64 noundef %126)
  %127 = load i8, ptr %x87, align 1
  %conv27 = zext i8 %127 to i64
  %128 = load i64, ptr %x79, align 8
  %add28 = add i64 %conv27, %128
  store i64 %add28, ptr %x88, align 8
  %129 = load i64, ptr %x88, align 8
  call void @fiat_curve25519_solinas_mulx_u64(ptr noundef %x89, ptr noundef %x90, i64 noundef 38, i64 noundef %129)
  %130 = load i64, ptr %x80, align 8
  %131 = load i64, ptr %x89, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext 0, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x92, align 1
  %133 = load i64, ptr %x82, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %132, i64 noundef %133, i64 noundef 0)
  %134 = load i8, ptr %x94, align 1
  %135 = load i64, ptr %x84, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %134, i64 noundef %135, i64 noundef 0)
  %136 = load i8, ptr %x96, align 1
  %137 = load i64, ptr %x86, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %136, i64 noundef %137, i64 noundef 0)
  %138 = load i8, ptr %x98, align 1
  call void @fiat_curve25519_solinas_cmovznz_u64(ptr noundef %x99, i8 noundef zeroext %138, i64 noundef 0, i64 noundef 38)
  %139 = load i64, ptr %x99, align 8
  %140 = load i64, ptr %x91, align 8
  call void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext 0, i64 noundef %139, i64 noundef %140)
  %141 = load i64, ptr %x100, align 8
  %142 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %142, i64 0
  store i64 %141, ptr %arrayidx29, align 8
  %143 = load i64, ptr %x93, align 8
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %144, i64 1
  store i64 %143, ptr %arrayidx30, align 8
  %145 = load i64, ptr %x95, align 8
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %146, i64 2
  store i64 %145, ptr %arrayidx31, align 8
  %147 = load i64, ptr %x97, align 8
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %148, i64 3
  store i64 %147, ptr %arrayidx32, align 8
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
