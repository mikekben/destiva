; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_addcarryx_u26(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_subborrowx_u26(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_addcarryx_u25(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_subborrowx_u25(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  %x34 = alloca i32, align 4
  %x35 = alloca i8, align 1
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i8, align 1
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i8, align 1
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i32, align 4
  %x61 = alloca i8, align 1
  %x62 = alloca i8, align 1
  %x63 = alloca i32, align 4
  %x64 = alloca i8, align 1
  %x65 = alloca i32, align 4
  %x66 = alloca i8, align 1
  %x67 = alloca i32, align 4
  %x68 = alloca i8, align 1
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i32, align 4
  %x73 = alloca i8, align 1
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i8, align 1
  %x77 = alloca i32, align 4
  %x78 = alloca i8, align 1
  %x79 = alloca i32, align 4
  %x80 = alloca i8, align 1
  %x81 = alloca i32, align 4
  %x82 = alloca i8, align 1
  %x83 = alloca i8, align 1
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i8, align 1
  %x90 = alloca i32, align 4
  %x91 = alloca i8, align 1
  %x92 = alloca i32, align 4
  %x93 = alloca i8, align 1
  %x94 = alloca i32, align 4
  %x95 = alloca i8, align 1
  %x96 = alloca i8, align 1
  %x97 = alloca i32, align 4
  %x98 = alloca i8, align 1
  %x99 = alloca i32, align 4
  %x100 = alloca i8, align 1
  %x101 = alloca i32, align 4
  %x102 = alloca i8, align 1
  %x103 = alloca i8, align 1
  %x104 = alloca i32, align 4
  %x105 = alloca i8, align 1
  %x106 = alloca i32, align 4
  %x107 = alloca i8, align 1
  %x108 = alloca i32, align 4
  %x109 = alloca i8, align 1
  %x110 = alloca i8, align 1
  %x111 = alloca i32, align 4
  %x112 = alloca i8, align 1
  %x113 = alloca i32, align 4
  %x114 = alloca i8, align 1
  %x115 = alloca i32, align 4
  %x116 = alloca i8, align 1
  %x117 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef 67108845)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef %4, i32 noundef 33554431)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 67108863)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef %10, i32 noundef 33554431)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef %13, i32 noundef 67108863)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx5, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i32 noundef %16, i32 noundef 33554431)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx6, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i32 noundef %19, i32 noundef 67108863)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx7, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i32 noundef %22, i32 noundef 33554431)
  %23 = load i8, ptr %x16, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx8, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %23, i32 noundef %25, i32 noundef 67108863)
  %26 = load i8, ptr %x18, align 1
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx9, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %26, i32 noundef %28, i32 noundef 33554431)
  %29 = load i8, ptr %x20, align 1
  call void @fiat_25519_cmovznz_u32(ptr noundef %x21, i8 noundef zeroext %29, i32 noundef 0, i32 noundef -1)
  %30 = load i32, ptr %x1, align 4
  %31 = load i32, ptr %x21, align 4
  %and = and i32 %31, 67108845
  call void @fiat_25519_addcarryx_u26(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i32 noundef %30, i32 noundef %and)
  %32 = load i8, ptr %x23, align 1
  %33 = load i32, ptr %x3, align 4
  %34 = load i32, ptr %x21, align 4
  %and10 = and i32 %34, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i32, ptr %x5, align 4
  %37 = load i32, ptr %x21, align 4
  %and11 = and i32 %37, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %and11)
  %38 = load i8, ptr %x27, align 1
  %39 = load i32, ptr %x7, align 4
  %40 = load i32, ptr %x21, align 4
  %and12 = and i32 %40, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %and12)
  %41 = load i8, ptr %x29, align 1
  %42 = load i32, ptr %x9, align 4
  %43 = load i32, ptr %x21, align 4
  %and13 = and i32 %43, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %and13)
  %44 = load i8, ptr %x31, align 1
  %45 = load i32, ptr %x11, align 4
  %46 = load i32, ptr %x21, align 4
  %and14 = and i32 %46, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %and14)
  %47 = load i8, ptr %x33, align 1
  %48 = load i32, ptr %x13, align 4
  %49 = load i32, ptr %x21, align 4
  %and15 = and i32 %49, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %47, i32 noundef %48, i32 noundef %and15)
  %50 = load i8, ptr %x35, align 1
  %51 = load i32, ptr %x15, align 4
  %52 = load i32, ptr %x21, align 4
  %and16 = and i32 %52, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %50, i32 noundef %51, i32 noundef %and16)
  %53 = load i8, ptr %x37, align 1
  %54 = load i32, ptr %x17, align 4
  %55 = load i32, ptr %x21, align 4
  %and17 = and i32 %55, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %and17)
  %56 = load i8, ptr %x39, align 1
  %57 = load i32, ptr %x19, align 4
  %58 = load i32, ptr %x21, align 4
  %and18 = and i32 %58, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %and18)
  %59 = load i32, ptr %x40, align 4
  %shl = shl i32 %59, 6
  store i32 %shl, ptr %x42, align 4
  %60 = load i32, ptr %x38, align 4
  %shl19 = shl i32 %60, 4
  store i32 %shl19, ptr %x43, align 4
  %61 = load i32, ptr %x36, align 4
  %shl20 = shl i32 %61, 3
  store i32 %shl20, ptr %x44, align 4
  %62 = load i32, ptr %x34, align 4
  %mul = mul i32 %62, 2
  store i32 %mul, ptr %x45, align 4
  %63 = load i32, ptr %x30, align 4
  %shl21 = shl i32 %63, 6
  store i32 %shl21, ptr %x46, align 4
  %64 = load i32, ptr %x28, align 4
  %shl22 = shl i32 %64, 5
  store i32 %shl22, ptr %x47, align 4
  %65 = load i32, ptr %x26, align 4
  %shl23 = shl i32 %65, 3
  store i32 %shl23, ptr %x48, align 4
  %66 = load i32, ptr %x24, align 4
  %shl24 = shl i32 %66, 2
  store i32 %shl24, ptr %x49, align 4
  %67 = load i32, ptr %x22, align 4
  %and25 = and i32 %67, 255
  %conv = trunc i32 %and25 to i8
  store i8 %conv, ptr %x50, align 1
  %68 = load i32, ptr %x22, align 4
  %shr = lshr i32 %68, 8
  store i32 %shr, ptr %x51, align 4
  %69 = load i32, ptr %x51, align 4
  %and26 = and i32 %69, 255
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, ptr %x52, align 1
  %70 = load i32, ptr %x51, align 4
  %shr28 = lshr i32 %70, 8
  store i32 %shr28, ptr %x53, align 4
  %71 = load i32, ptr %x53, align 4
  %and29 = and i32 %71, 255
  %conv30 = trunc i32 %and29 to i8
  store i8 %conv30, ptr %x54, align 1
  %72 = load i32, ptr %x53, align 4
  %shr31 = lshr i32 %72, 8
  %conv32 = trunc i32 %shr31 to i8
  store i8 %conv32, ptr %x55, align 1
  %73 = load i32, ptr %x49, align 4
  %74 = load i8, ptr %x55, align 1
  %conv33 = zext i8 %74 to i32
  %add = add i32 %73, %conv33
  store i32 %add, ptr %x56, align 4
  %75 = load i32, ptr %x56, align 4
  %and34 = and i32 %75, 255
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, ptr %x57, align 1
  %76 = load i32, ptr %x56, align 4
  %shr36 = lshr i32 %76, 8
  store i32 %shr36, ptr %x58, align 4
  %77 = load i32, ptr %x58, align 4
  %and37 = and i32 %77, 255
  %conv38 = trunc i32 %and37 to i8
  store i8 %conv38, ptr %x59, align 1
  %78 = load i32, ptr %x58, align 4
  %shr39 = lshr i32 %78, 8
  store i32 %shr39, ptr %x60, align 4
  %79 = load i32, ptr %x60, align 4
  %and40 = and i32 %79, 255
  %conv41 = trunc i32 %and40 to i8
  store i8 %conv41, ptr %x61, align 1
  %80 = load i32, ptr %x60, align 4
  %shr42 = lshr i32 %80, 8
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, ptr %x62, align 1
  %81 = load i32, ptr %x48, align 4
  %82 = load i8, ptr %x62, align 1
  %conv44 = zext i8 %82 to i32
  %add45 = add i32 %81, %conv44
  store i32 %add45, ptr %x63, align 4
  %83 = load i32, ptr %x63, align 4
  %and46 = and i32 %83, 255
  %conv47 = trunc i32 %and46 to i8
  store i8 %conv47, ptr %x64, align 1
  %84 = load i32, ptr %x63, align 4
  %shr48 = lshr i32 %84, 8
  store i32 %shr48, ptr %x65, align 4
  %85 = load i32, ptr %x65, align 4
  %and49 = and i32 %85, 255
  %conv50 = trunc i32 %and49 to i8
  store i8 %conv50, ptr %x66, align 1
  %86 = load i32, ptr %x65, align 4
  %shr51 = lshr i32 %86, 8
  store i32 %shr51, ptr %x67, align 4
  %87 = load i32, ptr %x67, align 4
  %and52 = and i32 %87, 255
  %conv53 = trunc i32 %and52 to i8
  store i8 %conv53, ptr %x68, align 1
  %88 = load i32, ptr %x67, align 4
  %shr54 = lshr i32 %88, 8
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, ptr %x69, align 1
  %89 = load i32, ptr %x47, align 4
  %90 = load i8, ptr %x69, align 1
  %conv56 = zext i8 %90 to i32
  %add57 = add i32 %89, %conv56
  store i32 %add57, ptr %x70, align 4
  %91 = load i32, ptr %x70, align 4
  %and58 = and i32 %91, 255
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, ptr %x71, align 1
  %92 = load i32, ptr %x70, align 4
  %shr60 = lshr i32 %92, 8
  store i32 %shr60, ptr %x72, align 4
  %93 = load i32, ptr %x72, align 4
  %and61 = and i32 %93, 255
  %conv62 = trunc i32 %and61 to i8
  store i8 %conv62, ptr %x73, align 1
  %94 = load i32, ptr %x72, align 4
  %shr63 = lshr i32 %94, 8
  store i32 %shr63, ptr %x74, align 4
  %95 = load i32, ptr %x74, align 4
  %and64 = and i32 %95, 255
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, ptr %x75, align 1
  %96 = load i32, ptr %x74, align 4
  %shr66 = lshr i32 %96, 8
  %conv67 = trunc i32 %shr66 to i8
  store i8 %conv67, ptr %x76, align 1
  %97 = load i32, ptr %x46, align 4
  %98 = load i8, ptr %x76, align 1
  %conv68 = zext i8 %98 to i32
  %add69 = add i32 %97, %conv68
  store i32 %add69, ptr %x77, align 4
  %99 = load i32, ptr %x77, align 4
  %and70 = and i32 %99, 255
  %conv71 = trunc i32 %and70 to i8
  store i8 %conv71, ptr %x78, align 1
  %100 = load i32, ptr %x77, align 4
  %shr72 = lshr i32 %100, 8
  store i32 %shr72, ptr %x79, align 4
  %101 = load i32, ptr %x79, align 4
  %and73 = and i32 %101, 255
  %conv74 = trunc i32 %and73 to i8
  store i8 %conv74, ptr %x80, align 1
  %102 = load i32, ptr %x79, align 4
  %shr75 = lshr i32 %102, 8
  store i32 %shr75, ptr %x81, align 4
  %103 = load i32, ptr %x81, align 4
  %and76 = and i32 %103, 255
  %conv77 = trunc i32 %and76 to i8
  store i8 %conv77, ptr %x82, align 1
  %104 = load i32, ptr %x81, align 4
  %shr78 = lshr i32 %104, 8
  %conv79 = trunc i32 %shr78 to i8
  store i8 %conv79, ptr %x83, align 1
  %105 = load i32, ptr %x32, align 4
  %and80 = and i32 %105, 255
  %conv81 = trunc i32 %and80 to i8
  store i8 %conv81, ptr %x84, align 1
  %106 = load i32, ptr %x32, align 4
  %shr82 = lshr i32 %106, 8
  store i32 %shr82, ptr %x85, align 4
  %107 = load i32, ptr %x85, align 4
  %and83 = and i32 %107, 255
  %conv84 = trunc i32 %and83 to i8
  store i8 %conv84, ptr %x86, align 1
  %108 = load i32, ptr %x85, align 4
  %shr85 = lshr i32 %108, 8
  store i32 %shr85, ptr %x87, align 4
  %109 = load i32, ptr %x87, align 4
  %and86 = and i32 %109, 255
  %conv87 = trunc i32 %and86 to i8
  store i8 %conv87, ptr %x88, align 1
  %110 = load i32, ptr %x87, align 4
  %shr88 = lshr i32 %110, 8
  %conv89 = trunc i32 %shr88 to i8
  store i8 %conv89, ptr %x89, align 1
  %111 = load i32, ptr %x45, align 4
  %112 = load i8, ptr %x89, align 1
  %conv90 = zext i8 %112 to i32
  %add91 = add i32 %111, %conv90
  store i32 %add91, ptr %x90, align 4
  %113 = load i32, ptr %x90, align 4
  %and92 = and i32 %113, 255
  %conv93 = trunc i32 %and92 to i8
  store i8 %conv93, ptr %x91, align 1
  %114 = load i32, ptr %x90, align 4
  %shr94 = lshr i32 %114, 8
  store i32 %shr94, ptr %x92, align 4
  %115 = load i32, ptr %x92, align 4
  %and95 = and i32 %115, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, ptr %x93, align 1
  %116 = load i32, ptr %x92, align 4
  %shr97 = lshr i32 %116, 8
  store i32 %shr97, ptr %x94, align 4
  %117 = load i32, ptr %x94, align 4
  %and98 = and i32 %117, 255
  %conv99 = trunc i32 %and98 to i8
  store i8 %conv99, ptr %x95, align 1
  %118 = load i32, ptr %x94, align 4
  %shr100 = lshr i32 %118, 8
  %conv101 = trunc i32 %shr100 to i8
  store i8 %conv101, ptr %x96, align 1
  %119 = load i32, ptr %x44, align 4
  %120 = load i8, ptr %x96, align 1
  %conv102 = zext i8 %120 to i32
  %add103 = add i32 %119, %conv102
  store i32 %add103, ptr %x97, align 4
  %121 = load i32, ptr %x97, align 4
  %and104 = and i32 %121, 255
  %conv105 = trunc i32 %and104 to i8
  store i8 %conv105, ptr %x98, align 1
  %122 = load i32, ptr %x97, align 4
  %shr106 = lshr i32 %122, 8
  store i32 %shr106, ptr %x99, align 4
  %123 = load i32, ptr %x99, align 4
  %and107 = and i32 %123, 255
  %conv108 = trunc i32 %and107 to i8
  store i8 %conv108, ptr %x100, align 1
  %124 = load i32, ptr %x99, align 4
  %shr109 = lshr i32 %124, 8
  store i32 %shr109, ptr %x101, align 4
  %125 = load i32, ptr %x101, align 4
  %and110 = and i32 %125, 255
  %conv111 = trunc i32 %and110 to i8
  store i8 %conv111, ptr %x102, align 1
  %126 = load i32, ptr %x101, align 4
  %shr112 = lshr i32 %126, 8
  %conv113 = trunc i32 %shr112 to i8
  store i8 %conv113, ptr %x103, align 1
  %127 = load i32, ptr %x43, align 4
  %128 = load i8, ptr %x103, align 1
  %conv114 = zext i8 %128 to i32
  %add115 = add i32 %127, %conv114
  store i32 %add115, ptr %x104, align 4
  %129 = load i32, ptr %x104, align 4
  %and116 = and i32 %129, 255
  %conv117 = trunc i32 %and116 to i8
  store i8 %conv117, ptr %x105, align 1
  %130 = load i32, ptr %x104, align 4
  %shr118 = lshr i32 %130, 8
  store i32 %shr118, ptr %x106, align 4
  %131 = load i32, ptr %x106, align 4
  %and119 = and i32 %131, 255
  %conv120 = trunc i32 %and119 to i8
  store i8 %conv120, ptr %x107, align 1
  %132 = load i32, ptr %x106, align 4
  %shr121 = lshr i32 %132, 8
  store i32 %shr121, ptr %x108, align 4
  %133 = load i32, ptr %x108, align 4
  %and122 = and i32 %133, 255
  %conv123 = trunc i32 %and122 to i8
  store i8 %conv123, ptr %x109, align 1
  %134 = load i32, ptr %x108, align 4
  %shr124 = lshr i32 %134, 8
  %conv125 = trunc i32 %shr124 to i8
  store i8 %conv125, ptr %x110, align 1
  %135 = load i32, ptr %x42, align 4
  %136 = load i8, ptr %x110, align 1
  %conv126 = zext i8 %136 to i32
  %add127 = add i32 %135, %conv126
  store i32 %add127, ptr %x111, align 4
  %137 = load i32, ptr %x111, align 4
  %and128 = and i32 %137, 255
  %conv129 = trunc i32 %and128 to i8
  store i8 %conv129, ptr %x112, align 1
  %138 = load i32, ptr %x111, align 4
  %shr130 = lshr i32 %138, 8
  store i32 %shr130, ptr %x113, align 4
  %139 = load i32, ptr %x113, align 4
  %and131 = and i32 %139, 255
  %conv132 = trunc i32 %and131 to i8
  store i8 %conv132, ptr %x114, align 1
  %140 = load i32, ptr %x113, align 4
  %shr133 = lshr i32 %140, 8
  store i32 %shr133, ptr %x115, align 4
  %141 = load i32, ptr %x115, align 4
  %and134 = and i32 %141, 255
  %conv135 = trunc i32 %and134 to i8
  store i8 %conv135, ptr %x116, align 1
  %142 = load i32, ptr %x115, align 4
  %shr136 = lshr i32 %142, 8
  %conv137 = trunc i32 %shr136 to i8
  store i8 %conv137, ptr %x117, align 1
  %143 = load i8, ptr %x50, align 1
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %144, i64 0
  store i8 %143, ptr %arrayidx138, align 1
  %145 = load i8, ptr %x52, align 1
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 %145, ptr %arrayidx139, align 1
  %147 = load i8, ptr %x54, align 1
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %147, ptr %arrayidx140, align 1
  %149 = load i8, ptr %x57, align 1
  %150 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %150, i64 3
  store i8 %149, ptr %arrayidx141, align 1
  %151 = load i8, ptr %x59, align 1
  %152 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %152, i64 4
  store i8 %151, ptr %arrayidx142, align 1
  %153 = load i8, ptr %x61, align 1
  %154 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %154, i64 5
  store i8 %153, ptr %arrayidx143, align 1
  %155 = load i8, ptr %x64, align 1
  %156 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %156, i64 6
  store i8 %155, ptr %arrayidx144, align 1
  %157 = load i8, ptr %x66, align 1
  %158 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %158, i64 7
  store i8 %157, ptr %arrayidx145, align 1
  %159 = load i8, ptr %x68, align 1
  %160 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %160, i64 8
  store i8 %159, ptr %arrayidx146, align 1
  %161 = load i8, ptr %x71, align 1
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %162, i64 9
  store i8 %161, ptr %arrayidx147, align 1
  %163 = load i8, ptr %x73, align 1
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %164, i64 10
  store i8 %163, ptr %arrayidx148, align 1
  %165 = load i8, ptr %x75, align 1
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %166, i64 11
  store i8 %165, ptr %arrayidx149, align 1
  %167 = load i8, ptr %x78, align 1
  %168 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %168, i64 12
  store i8 %167, ptr %arrayidx150, align 1
  %169 = load i8, ptr %x80, align 1
  %170 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %170, i64 13
  store i8 %169, ptr %arrayidx151, align 1
  %171 = load i8, ptr %x82, align 1
  %172 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %172, i64 14
  store i8 %171, ptr %arrayidx152, align 1
  %173 = load i8, ptr %x83, align 1
  %174 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %174, i64 15
  store i8 %173, ptr %arrayidx153, align 1
  %175 = load i8, ptr %x84, align 1
  %176 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %176, i64 16
  store i8 %175, ptr %arrayidx154, align 1
  %177 = load i8, ptr %x86, align 1
  %178 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %178, i64 17
  store i8 %177, ptr %arrayidx155, align 1
  %179 = load i8, ptr %x88, align 1
  %180 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %180, i64 18
  store i8 %179, ptr %arrayidx156, align 1
  %181 = load i8, ptr %x91, align 1
  %182 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %182, i64 19
  store i8 %181, ptr %arrayidx157, align 1
  %183 = load i8, ptr %x93, align 1
  %184 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %184, i64 20
  store i8 %183, ptr %arrayidx158, align 1
  %185 = load i8, ptr %x95, align 1
  %186 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %186, i64 21
  store i8 %185, ptr %arrayidx159, align 1
  %187 = load i8, ptr %x98, align 1
  %188 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %188, i64 22
  store i8 %187, ptr %arrayidx160, align 1
  %189 = load i8, ptr %x100, align 1
  %190 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %190, i64 23
  store i8 %189, ptr %arrayidx161, align 1
  %191 = load i8, ptr %x102, align 1
  %192 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %192, i64 24
  store i8 %191, ptr %arrayidx162, align 1
  %193 = load i8, ptr %x105, align 1
  %194 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %194, i64 25
  store i8 %193, ptr %arrayidx163, align 1
  %195 = load i8, ptr %x107, align 1
  %196 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %196, i64 26
  store i8 %195, ptr %arrayidx164, align 1
  %197 = load i8, ptr %x109, align 1
  %198 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %198, i64 27
  store i8 %197, ptr %arrayidx165, align 1
  %199 = load i8, ptr %x112, align 1
  %200 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %200, i64 28
  store i8 %199, ptr %arrayidx166, align 1
  %201 = load i8, ptr %x114, align 1
  %202 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %202, i64 29
  store i8 %201, ptr %arrayidx167, align 1
  %203 = load i8, ptr %x116, align 1
  %204 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %204, i64 30
  store i8 %203, ptr %arrayidx168, align 1
  %205 = load i8, ptr %x117, align 1
  %206 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %206, i64 31
  store i8 %205, ptr %arrayidx169, align 1
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
