; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_addcarryx_u51(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_subborrowx_u51(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i8, align 1
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
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
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
  %x91 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 2251799813685229)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 2251799813685247)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 2251799813685247)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef %10, i64 noundef 2251799813685247)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef %13, i64 noundef 2251799813685247)
  %14 = load i8, ptr %x10, align 1
  call void @fiat_25519_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %14, i64 noundef 0, i64 noundef -1)
  %15 = load i64, ptr %x1, align 8
  %16 = load i64, ptr %x11, align 8
  %and = and i64 %16, 2251799813685229
  call void @fiat_25519_addcarryx_u51(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef %15, i64 noundef %and)
  %17 = load i8, ptr %x13, align 1
  %18 = load i64, ptr %x3, align 8
  %19 = load i64, ptr %x11, align 8
  %and5 = and i64 %19, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %and5)
  %20 = load i8, ptr %x15, align 1
  %21 = load i64, ptr %x5, align 8
  %22 = load i64, ptr %x11, align 8
  %and6 = and i64 %22, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %and6)
  %23 = load i8, ptr %x17, align 1
  %24 = load i64, ptr %x7, align 8
  %25 = load i64, ptr %x11, align 8
  %and7 = and i64 %25, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %and7)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x9, align 8
  %28 = load i64, ptr %x11, align 8
  %and8 = and i64 %28, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %and8)
  %29 = load i64, ptr %x20, align 8
  %shl = shl i64 %29, 4
  store i64 %shl, ptr %x22, align 8
  %30 = load i64, ptr %x18, align 8
  %mul = mul i64 %30, 2
  store i64 %mul, ptr %x23, align 8
  %31 = load i64, ptr %x16, align 8
  %shl9 = shl i64 %31, 6
  store i64 %shl9, ptr %x24, align 8
  %32 = load i64, ptr %x14, align 8
  %shl10 = shl i64 %32, 3
  store i64 %shl10, ptr %x25, align 8
  %33 = load i64, ptr %x12, align 8
  %and11 = and i64 %33, 255
  %conv = trunc i64 %and11 to i8
  store i8 %conv, ptr %x26, align 1
  %34 = load i64, ptr %x12, align 8
  %shr = lshr i64 %34, 8
  store i64 %shr, ptr %x27, align 8
  %35 = load i64, ptr %x27, align 8
  %and12 = and i64 %35, 255
  %conv13 = trunc i64 %and12 to i8
  store i8 %conv13, ptr %x28, align 1
  %36 = load i64, ptr %x27, align 8
  %shr14 = lshr i64 %36, 8
  store i64 %shr14, ptr %x29, align 8
  %37 = load i64, ptr %x29, align 8
  %and15 = and i64 %37, 255
  %conv16 = trunc i64 %and15 to i8
  store i8 %conv16, ptr %x30, align 1
  %38 = load i64, ptr %x29, align 8
  %shr17 = lshr i64 %38, 8
  store i64 %shr17, ptr %x31, align 8
  %39 = load i64, ptr %x31, align 8
  %and18 = and i64 %39, 255
  %conv19 = trunc i64 %and18 to i8
  store i8 %conv19, ptr %x32, align 1
  %40 = load i64, ptr %x31, align 8
  %shr20 = lshr i64 %40, 8
  store i64 %shr20, ptr %x33, align 8
  %41 = load i64, ptr %x33, align 8
  %and21 = and i64 %41, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x34, align 1
  %42 = load i64, ptr %x33, align 8
  %shr23 = lshr i64 %42, 8
  store i64 %shr23, ptr %x35, align 8
  %43 = load i64, ptr %x35, align 8
  %and24 = and i64 %43, 255
  %conv25 = trunc i64 %and24 to i8
  store i8 %conv25, ptr %x36, align 1
  %44 = load i64, ptr %x35, align 8
  %shr26 = lshr i64 %44, 8
  %conv27 = trunc i64 %shr26 to i8
  store i8 %conv27, ptr %x37, align 1
  %45 = load i64, ptr %x25, align 8
  %46 = load i8, ptr %x37, align 1
  %conv28 = zext i8 %46 to i64
  %add = add i64 %45, %conv28
  store i64 %add, ptr %x38, align 8
  %47 = load i64, ptr %x38, align 8
  %and29 = and i64 %47, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x39, align 1
  %48 = load i64, ptr %x38, align 8
  %shr31 = lshr i64 %48, 8
  store i64 %shr31, ptr %x40, align 8
  %49 = load i64, ptr %x40, align 8
  %and32 = and i64 %49, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x41, align 1
  %50 = load i64, ptr %x40, align 8
  %shr34 = lshr i64 %50, 8
  store i64 %shr34, ptr %x42, align 8
  %51 = load i64, ptr %x42, align 8
  %and35 = and i64 %51, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x43, align 1
  %52 = load i64, ptr %x42, align 8
  %shr37 = lshr i64 %52, 8
  store i64 %shr37, ptr %x44, align 8
  %53 = load i64, ptr %x44, align 8
  %and38 = and i64 %53, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x45, align 1
  %54 = load i64, ptr %x44, align 8
  %shr40 = lshr i64 %54, 8
  store i64 %shr40, ptr %x46, align 8
  %55 = load i64, ptr %x46, align 8
  %and41 = and i64 %55, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x47, align 1
  %56 = load i64, ptr %x46, align 8
  %shr43 = lshr i64 %56, 8
  store i64 %shr43, ptr %x48, align 8
  %57 = load i64, ptr %x48, align 8
  %and44 = and i64 %57, 255
  %conv45 = trunc i64 %and44 to i8
  store i8 %conv45, ptr %x49, align 1
  %58 = load i64, ptr %x48, align 8
  %shr46 = lshr i64 %58, 8
  %conv47 = trunc i64 %shr46 to i8
  store i8 %conv47, ptr %x50, align 1
  %59 = load i64, ptr %x24, align 8
  %60 = load i8, ptr %x50, align 1
  %conv48 = zext i8 %60 to i64
  %add49 = add i64 %59, %conv48
  store i64 %add49, ptr %x51, align 8
  %61 = load i64, ptr %x51, align 8
  %and50 = and i64 %61, 255
  %conv51 = trunc i64 %and50 to i8
  store i8 %conv51, ptr %x52, align 1
  %62 = load i64, ptr %x51, align 8
  %shr52 = lshr i64 %62, 8
  store i64 %shr52, ptr %x53, align 8
  %63 = load i64, ptr %x53, align 8
  %and53 = and i64 %63, 255
  %conv54 = trunc i64 %and53 to i8
  store i8 %conv54, ptr %x54, align 1
  %64 = load i64, ptr %x53, align 8
  %shr55 = lshr i64 %64, 8
  store i64 %shr55, ptr %x55, align 8
  %65 = load i64, ptr %x55, align 8
  %and56 = and i64 %65, 255
  %conv57 = trunc i64 %and56 to i8
  store i8 %conv57, ptr %x56, align 1
  %66 = load i64, ptr %x55, align 8
  %shr58 = lshr i64 %66, 8
  store i64 %shr58, ptr %x57, align 8
  %67 = load i64, ptr %x57, align 8
  %and59 = and i64 %67, 255
  %conv60 = trunc i64 %and59 to i8
  store i8 %conv60, ptr %x58, align 1
  %68 = load i64, ptr %x57, align 8
  %shr61 = lshr i64 %68, 8
  store i64 %shr61, ptr %x59, align 8
  %69 = load i64, ptr %x59, align 8
  %and62 = and i64 %69, 255
  %conv63 = trunc i64 %and62 to i8
  store i8 %conv63, ptr %x60, align 1
  %70 = load i64, ptr %x59, align 8
  %shr64 = lshr i64 %70, 8
  store i64 %shr64, ptr %x61, align 8
  %71 = load i64, ptr %x61, align 8
  %and65 = and i64 %71, 255
  %conv66 = trunc i64 %and65 to i8
  store i8 %conv66, ptr %x62, align 1
  %72 = load i64, ptr %x61, align 8
  %shr67 = lshr i64 %72, 8
  store i64 %shr67, ptr %x63, align 8
  %73 = load i64, ptr %x63, align 8
  %and68 = and i64 %73, 255
  %conv69 = trunc i64 %and68 to i8
  store i8 %conv69, ptr %x64, align 1
  %74 = load i64, ptr %x63, align 8
  %shr70 = lshr i64 %74, 8
  %conv71 = trunc i64 %shr70 to i8
  store i8 %conv71, ptr %x65, align 1
  %75 = load i64, ptr %x23, align 8
  %76 = load i8, ptr %x65, align 1
  %conv72 = zext i8 %76 to i64
  %add73 = add i64 %75, %conv72
  store i64 %add73, ptr %x66, align 8
  %77 = load i64, ptr %x66, align 8
  %and74 = and i64 %77, 255
  %conv75 = trunc i64 %and74 to i8
  store i8 %conv75, ptr %x67, align 1
  %78 = load i64, ptr %x66, align 8
  %shr76 = lshr i64 %78, 8
  store i64 %shr76, ptr %x68, align 8
  %79 = load i64, ptr %x68, align 8
  %and77 = and i64 %79, 255
  %conv78 = trunc i64 %and77 to i8
  store i8 %conv78, ptr %x69, align 1
  %80 = load i64, ptr %x68, align 8
  %shr79 = lshr i64 %80, 8
  store i64 %shr79, ptr %x70, align 8
  %81 = load i64, ptr %x70, align 8
  %and80 = and i64 %81, 255
  %conv81 = trunc i64 %and80 to i8
  store i8 %conv81, ptr %x71, align 1
  %82 = load i64, ptr %x70, align 8
  %shr82 = lshr i64 %82, 8
  store i64 %shr82, ptr %x72, align 8
  %83 = load i64, ptr %x72, align 8
  %and83 = and i64 %83, 255
  %conv84 = trunc i64 %and83 to i8
  store i8 %conv84, ptr %x73, align 1
  %84 = load i64, ptr %x72, align 8
  %shr85 = lshr i64 %84, 8
  store i64 %shr85, ptr %x74, align 8
  %85 = load i64, ptr %x74, align 8
  %and86 = and i64 %85, 255
  %conv87 = trunc i64 %and86 to i8
  store i8 %conv87, ptr %x75, align 1
  %86 = load i64, ptr %x74, align 8
  %shr88 = lshr i64 %86, 8
  store i64 %shr88, ptr %x76, align 8
  %87 = load i64, ptr %x76, align 8
  %and89 = and i64 %87, 255
  %conv90 = trunc i64 %and89 to i8
  store i8 %conv90, ptr %x77, align 1
  %88 = load i64, ptr %x76, align 8
  %shr91 = lshr i64 %88, 8
  %conv92 = trunc i64 %shr91 to i8
  store i8 %conv92, ptr %x78, align 1
  %89 = load i64, ptr %x22, align 8
  %90 = load i8, ptr %x78, align 1
  %conv93 = zext i8 %90 to i64
  %add94 = add i64 %89, %conv93
  store i64 %add94, ptr %x79, align 8
  %91 = load i64, ptr %x79, align 8
  %and95 = and i64 %91, 255
  %conv96 = trunc i64 %and95 to i8
  store i8 %conv96, ptr %x80, align 1
  %92 = load i64, ptr %x79, align 8
  %shr97 = lshr i64 %92, 8
  store i64 %shr97, ptr %x81, align 8
  %93 = load i64, ptr %x81, align 8
  %and98 = and i64 %93, 255
  %conv99 = trunc i64 %and98 to i8
  store i8 %conv99, ptr %x82, align 1
  %94 = load i64, ptr %x81, align 8
  %shr100 = lshr i64 %94, 8
  store i64 %shr100, ptr %x83, align 8
  %95 = load i64, ptr %x83, align 8
  %and101 = and i64 %95, 255
  %conv102 = trunc i64 %and101 to i8
  store i8 %conv102, ptr %x84, align 1
  %96 = load i64, ptr %x83, align 8
  %shr103 = lshr i64 %96, 8
  store i64 %shr103, ptr %x85, align 8
  %97 = load i64, ptr %x85, align 8
  %and104 = and i64 %97, 255
  %conv105 = trunc i64 %and104 to i8
  store i8 %conv105, ptr %x86, align 1
  %98 = load i64, ptr %x85, align 8
  %shr106 = lshr i64 %98, 8
  store i64 %shr106, ptr %x87, align 8
  %99 = load i64, ptr %x87, align 8
  %and107 = and i64 %99, 255
  %conv108 = trunc i64 %and107 to i8
  store i8 %conv108, ptr %x88, align 1
  %100 = load i64, ptr %x87, align 8
  %shr109 = lshr i64 %100, 8
  store i64 %shr109, ptr %x89, align 8
  %101 = load i64, ptr %x89, align 8
  %and110 = and i64 %101, 255
  %conv111 = trunc i64 %and110 to i8
  store i8 %conv111, ptr %x90, align 1
  %102 = load i64, ptr %x89, align 8
  %shr112 = lshr i64 %102, 8
  %conv113 = trunc i64 %shr112 to i8
  store i8 %conv113, ptr %x91, align 1
  %103 = load i8, ptr %x26, align 1
  %104 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %104, i64 0
  store i8 %103, ptr %arrayidx114, align 1
  %105 = load i8, ptr %x28, align 1
  %106 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %106, i64 1
  store i8 %105, ptr %arrayidx115, align 1
  %107 = load i8, ptr %x30, align 1
  %108 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %108, i64 2
  store i8 %107, ptr %arrayidx116, align 1
  %109 = load i8, ptr %x32, align 1
  %110 = load ptr, ptr %out1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %110, i64 3
  store i8 %109, ptr %arrayidx117, align 1
  %111 = load i8, ptr %x34, align 1
  %112 = load ptr, ptr %out1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %112, i64 4
  store i8 %111, ptr %arrayidx118, align 1
  %113 = load i8, ptr %x36, align 1
  %114 = load ptr, ptr %out1.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %114, i64 5
  store i8 %113, ptr %arrayidx119, align 1
  %115 = load i8, ptr %x39, align 1
  %116 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %116, i64 6
  store i8 %115, ptr %arrayidx120, align 1
  %117 = load i8, ptr %x41, align 1
  %118 = load ptr, ptr %out1.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %118, i64 7
  store i8 %117, ptr %arrayidx121, align 1
  %119 = load i8, ptr %x43, align 1
  %120 = load ptr, ptr %out1.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %120, i64 8
  store i8 %119, ptr %arrayidx122, align 1
  %121 = load i8, ptr %x45, align 1
  %122 = load ptr, ptr %out1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %122, i64 9
  store i8 %121, ptr %arrayidx123, align 1
  %123 = load i8, ptr %x47, align 1
  %124 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %124, i64 10
  store i8 %123, ptr %arrayidx124, align 1
  %125 = load i8, ptr %x49, align 1
  %126 = load ptr, ptr %out1.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %126, i64 11
  store i8 %125, ptr %arrayidx125, align 1
  %127 = load i8, ptr %x52, align 1
  %128 = load ptr, ptr %out1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %128, i64 12
  store i8 %127, ptr %arrayidx126, align 1
  %129 = load i8, ptr %x54, align 1
  %130 = load ptr, ptr %out1.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %130, i64 13
  store i8 %129, ptr %arrayidx127, align 1
  %131 = load i8, ptr %x56, align 1
  %132 = load ptr, ptr %out1.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %132, i64 14
  store i8 %131, ptr %arrayidx128, align 1
  %133 = load i8, ptr %x58, align 1
  %134 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %134, i64 15
  store i8 %133, ptr %arrayidx129, align 1
  %135 = load i8, ptr %x60, align 1
  %136 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %136, i64 16
  store i8 %135, ptr %arrayidx130, align 1
  %137 = load i8, ptr %x62, align 1
  %138 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %138, i64 17
  store i8 %137, ptr %arrayidx131, align 1
  %139 = load i8, ptr %x64, align 1
  %140 = load ptr, ptr %out1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %140, i64 18
  store i8 %139, ptr %arrayidx132, align 1
  %141 = load i8, ptr %x67, align 1
  %142 = load ptr, ptr %out1.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %142, i64 19
  store i8 %141, ptr %arrayidx133, align 1
  %143 = load i8, ptr %x69, align 1
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %144, i64 20
  store i8 %143, ptr %arrayidx134, align 1
  %145 = load i8, ptr %x71, align 1
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %146, i64 21
  store i8 %145, ptr %arrayidx135, align 1
  %147 = load i8, ptr %x73, align 1
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %148, i64 22
  store i8 %147, ptr %arrayidx136, align 1
  %149 = load i8, ptr %x75, align 1
  %150 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %150, i64 23
  store i8 %149, ptr %arrayidx137, align 1
  %151 = load i8, ptr %x77, align 1
  %152 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %152, i64 24
  store i8 %151, ptr %arrayidx138, align 1
  %153 = load i8, ptr %x80, align 1
  %154 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %154, i64 25
  store i8 %153, ptr %arrayidx139, align 1
  %155 = load i8, ptr %x82, align 1
  %156 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %156, i64 26
  store i8 %155, ptr %arrayidx140, align 1
  %157 = load i8, ptr %x84, align 1
  %158 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %158, i64 27
  store i8 %157, ptr %arrayidx141, align 1
  %159 = load i8, ptr %x86, align 1
  %160 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %160, i64 28
  store i8 %159, ptr %arrayidx142, align 1
  %161 = load i8, ptr %x88, align 1
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %162, i64 29
  store i8 %161, ptr %arrayidx143, align 1
  %163 = load i8, ptr %x90, align 1
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %164, i64 30
  store i8 %163, ptr %arrayidx144, align 1
  %165 = load i8, ptr %x91, align 1
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %166, i64 31
  store i8 %165, ptr %arrayidx145, align 1
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
