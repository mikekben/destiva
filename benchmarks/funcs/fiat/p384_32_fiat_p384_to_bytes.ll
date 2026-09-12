; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i8, align 1
  %x14 = alloca i32, align 4
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i8, align 1
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i8, align 1
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i8, align 1
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  %x34 = alloca i32, align 4
  %x35 = alloca i8, align 1
  %x36 = alloca i8, align 1
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i8, align 1
  %x43 = alloca i8, align 1
  %x44 = alloca i32, align 4
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i8, align 1
  %x49 = alloca i8, align 1
  %x50 = alloca i32, align 4
  %x51 = alloca i8, align 1
  %x52 = alloca i32, align 4
  %x53 = alloca i8, align 1
  %x54 = alloca i8, align 1
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i8, align 1
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i8, align 1
  %x61 = alloca i8, align 1
  %x62 = alloca i32, align 4
  %x63 = alloca i8, align 1
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i8, align 1
  %x67 = alloca i8, align 1
  %x68 = alloca i32, align 4
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i8, align 1
  %x73 = alloca i8, align 1
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i32, align 4
  %x77 = alloca i8, align 1
  %x78 = alloca i8, align 1
  %x79 = alloca i8, align 1
  %x80 = alloca i32, align 4
  %x81 = alloca i8, align 1
  %x82 = alloca i32, align 4
  %x83 = alloca i8, align 1
  %x84 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 11
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 10
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 9
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 8
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 7
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 6
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 5
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 4
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx8, align 4
  store i32 %17, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 2
  %19 = load i32, ptr %arrayidx9, align 4
  store i32 %19, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 1
  %21 = load i32, ptr %arrayidx10, align 4
  store i32 %21, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx11, align 4
  store i32 %23, ptr %x12, align 4
  %24 = load i32, ptr %x12, align 4
  %and = and i32 %24, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %x13, align 1
  %25 = load i32, ptr %x12, align 4
  %shr = lshr i32 %25, 8
  store i32 %shr, ptr %x14, align 4
  %26 = load i32, ptr %x14, align 4
  %and12 = and i32 %26, 255
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, ptr %x15, align 1
  %27 = load i32, ptr %x14, align 4
  %shr14 = lshr i32 %27, 8
  store i32 %shr14, ptr %x16, align 4
  %28 = load i32, ptr %x16, align 4
  %and15 = and i32 %28, 255
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %x17, align 1
  %29 = load i32, ptr %x16, align 4
  %shr17 = lshr i32 %29, 8
  %conv18 = trunc i32 %shr17 to i8
  store i8 %conv18, ptr %x18, align 1
  %30 = load i32, ptr %x11, align 4
  %and19 = and i32 %30, 255
  %conv20 = trunc i32 %and19 to i8
  store i8 %conv20, ptr %x19, align 1
  %31 = load i32, ptr %x11, align 4
  %shr21 = lshr i32 %31, 8
  store i32 %shr21, ptr %x20, align 4
  %32 = load i32, ptr %x20, align 4
  %and22 = and i32 %32, 255
  %conv23 = trunc i32 %and22 to i8
  store i8 %conv23, ptr %x21, align 1
  %33 = load i32, ptr %x20, align 4
  %shr24 = lshr i32 %33, 8
  store i32 %shr24, ptr %x22, align 4
  %34 = load i32, ptr %x22, align 4
  %and25 = and i32 %34, 255
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, ptr %x23, align 1
  %35 = load i32, ptr %x22, align 4
  %shr27 = lshr i32 %35, 8
  %conv28 = trunc i32 %shr27 to i8
  store i8 %conv28, ptr %x24, align 1
  %36 = load i32, ptr %x10, align 4
  %and29 = and i32 %36, 255
  %conv30 = trunc i32 %and29 to i8
  store i8 %conv30, ptr %x25, align 1
  %37 = load i32, ptr %x10, align 4
  %shr31 = lshr i32 %37, 8
  store i32 %shr31, ptr %x26, align 4
  %38 = load i32, ptr %x26, align 4
  %and32 = and i32 %38, 255
  %conv33 = trunc i32 %and32 to i8
  store i8 %conv33, ptr %x27, align 1
  %39 = load i32, ptr %x26, align 4
  %shr34 = lshr i32 %39, 8
  store i32 %shr34, ptr %x28, align 4
  %40 = load i32, ptr %x28, align 4
  %and35 = and i32 %40, 255
  %conv36 = trunc i32 %and35 to i8
  store i8 %conv36, ptr %x29, align 1
  %41 = load i32, ptr %x28, align 4
  %shr37 = lshr i32 %41, 8
  %conv38 = trunc i32 %shr37 to i8
  store i8 %conv38, ptr %x30, align 1
  %42 = load i32, ptr %x9, align 4
  %and39 = and i32 %42, 255
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, ptr %x31, align 1
  %43 = load i32, ptr %x9, align 4
  %shr41 = lshr i32 %43, 8
  store i32 %shr41, ptr %x32, align 4
  %44 = load i32, ptr %x32, align 4
  %and42 = and i32 %44, 255
  %conv43 = trunc i32 %and42 to i8
  store i8 %conv43, ptr %x33, align 1
  %45 = load i32, ptr %x32, align 4
  %shr44 = lshr i32 %45, 8
  store i32 %shr44, ptr %x34, align 4
  %46 = load i32, ptr %x34, align 4
  %and45 = and i32 %46, 255
  %conv46 = trunc i32 %and45 to i8
  store i8 %conv46, ptr %x35, align 1
  %47 = load i32, ptr %x34, align 4
  %shr47 = lshr i32 %47, 8
  %conv48 = trunc i32 %shr47 to i8
  store i8 %conv48, ptr %x36, align 1
  %48 = load i32, ptr %x8, align 4
  %and49 = and i32 %48, 255
  %conv50 = trunc i32 %and49 to i8
  store i8 %conv50, ptr %x37, align 1
  %49 = load i32, ptr %x8, align 4
  %shr51 = lshr i32 %49, 8
  store i32 %shr51, ptr %x38, align 4
  %50 = load i32, ptr %x38, align 4
  %and52 = and i32 %50, 255
  %conv53 = trunc i32 %and52 to i8
  store i8 %conv53, ptr %x39, align 1
  %51 = load i32, ptr %x38, align 4
  %shr54 = lshr i32 %51, 8
  store i32 %shr54, ptr %x40, align 4
  %52 = load i32, ptr %x40, align 4
  %and55 = and i32 %52, 255
  %conv56 = trunc i32 %and55 to i8
  store i8 %conv56, ptr %x41, align 1
  %53 = load i32, ptr %x40, align 4
  %shr57 = lshr i32 %53, 8
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, ptr %x42, align 1
  %54 = load i32, ptr %x7, align 4
  %and59 = and i32 %54, 255
  %conv60 = trunc i32 %and59 to i8
  store i8 %conv60, ptr %x43, align 1
  %55 = load i32, ptr %x7, align 4
  %shr61 = lshr i32 %55, 8
  store i32 %shr61, ptr %x44, align 4
  %56 = load i32, ptr %x44, align 4
  %and62 = and i32 %56, 255
  %conv63 = trunc i32 %and62 to i8
  store i8 %conv63, ptr %x45, align 1
  %57 = load i32, ptr %x44, align 4
  %shr64 = lshr i32 %57, 8
  store i32 %shr64, ptr %x46, align 4
  %58 = load i32, ptr %x46, align 4
  %and65 = and i32 %58, 255
  %conv66 = trunc i32 %and65 to i8
  store i8 %conv66, ptr %x47, align 1
  %59 = load i32, ptr %x46, align 4
  %shr67 = lshr i32 %59, 8
  %conv68 = trunc i32 %shr67 to i8
  store i8 %conv68, ptr %x48, align 1
  %60 = load i32, ptr %x6, align 4
  %and69 = and i32 %60, 255
  %conv70 = trunc i32 %and69 to i8
  store i8 %conv70, ptr %x49, align 1
  %61 = load i32, ptr %x6, align 4
  %shr71 = lshr i32 %61, 8
  store i32 %shr71, ptr %x50, align 4
  %62 = load i32, ptr %x50, align 4
  %and72 = and i32 %62, 255
  %conv73 = trunc i32 %and72 to i8
  store i8 %conv73, ptr %x51, align 1
  %63 = load i32, ptr %x50, align 4
  %shr74 = lshr i32 %63, 8
  store i32 %shr74, ptr %x52, align 4
  %64 = load i32, ptr %x52, align 4
  %and75 = and i32 %64, 255
  %conv76 = trunc i32 %and75 to i8
  store i8 %conv76, ptr %x53, align 1
  %65 = load i32, ptr %x52, align 4
  %shr77 = lshr i32 %65, 8
  %conv78 = trunc i32 %shr77 to i8
  store i8 %conv78, ptr %x54, align 1
  %66 = load i32, ptr %x5, align 4
  %and79 = and i32 %66, 255
  %conv80 = trunc i32 %and79 to i8
  store i8 %conv80, ptr %x55, align 1
  %67 = load i32, ptr %x5, align 4
  %shr81 = lshr i32 %67, 8
  store i32 %shr81, ptr %x56, align 4
  %68 = load i32, ptr %x56, align 4
  %and82 = and i32 %68, 255
  %conv83 = trunc i32 %and82 to i8
  store i8 %conv83, ptr %x57, align 1
  %69 = load i32, ptr %x56, align 4
  %shr84 = lshr i32 %69, 8
  store i32 %shr84, ptr %x58, align 4
  %70 = load i32, ptr %x58, align 4
  %and85 = and i32 %70, 255
  %conv86 = trunc i32 %and85 to i8
  store i8 %conv86, ptr %x59, align 1
  %71 = load i32, ptr %x58, align 4
  %shr87 = lshr i32 %71, 8
  %conv88 = trunc i32 %shr87 to i8
  store i8 %conv88, ptr %x60, align 1
  %72 = load i32, ptr %x4, align 4
  %and89 = and i32 %72, 255
  %conv90 = trunc i32 %and89 to i8
  store i8 %conv90, ptr %x61, align 1
  %73 = load i32, ptr %x4, align 4
  %shr91 = lshr i32 %73, 8
  store i32 %shr91, ptr %x62, align 4
  %74 = load i32, ptr %x62, align 4
  %and92 = and i32 %74, 255
  %conv93 = trunc i32 %and92 to i8
  store i8 %conv93, ptr %x63, align 1
  %75 = load i32, ptr %x62, align 4
  %shr94 = lshr i32 %75, 8
  store i32 %shr94, ptr %x64, align 4
  %76 = load i32, ptr %x64, align 4
  %and95 = and i32 %76, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, ptr %x65, align 1
  %77 = load i32, ptr %x64, align 4
  %shr97 = lshr i32 %77, 8
  %conv98 = trunc i32 %shr97 to i8
  store i8 %conv98, ptr %x66, align 1
  %78 = load i32, ptr %x3, align 4
  %and99 = and i32 %78, 255
  %conv100 = trunc i32 %and99 to i8
  store i8 %conv100, ptr %x67, align 1
  %79 = load i32, ptr %x3, align 4
  %shr101 = lshr i32 %79, 8
  store i32 %shr101, ptr %x68, align 4
  %80 = load i32, ptr %x68, align 4
  %and102 = and i32 %80, 255
  %conv103 = trunc i32 %and102 to i8
  store i8 %conv103, ptr %x69, align 1
  %81 = load i32, ptr %x68, align 4
  %shr104 = lshr i32 %81, 8
  store i32 %shr104, ptr %x70, align 4
  %82 = load i32, ptr %x70, align 4
  %and105 = and i32 %82, 255
  %conv106 = trunc i32 %and105 to i8
  store i8 %conv106, ptr %x71, align 1
  %83 = load i32, ptr %x70, align 4
  %shr107 = lshr i32 %83, 8
  %conv108 = trunc i32 %shr107 to i8
  store i8 %conv108, ptr %x72, align 1
  %84 = load i32, ptr %x2, align 4
  %and109 = and i32 %84, 255
  %conv110 = trunc i32 %and109 to i8
  store i8 %conv110, ptr %x73, align 1
  %85 = load i32, ptr %x2, align 4
  %shr111 = lshr i32 %85, 8
  store i32 %shr111, ptr %x74, align 4
  %86 = load i32, ptr %x74, align 4
  %and112 = and i32 %86, 255
  %conv113 = trunc i32 %and112 to i8
  store i8 %conv113, ptr %x75, align 1
  %87 = load i32, ptr %x74, align 4
  %shr114 = lshr i32 %87, 8
  store i32 %shr114, ptr %x76, align 4
  %88 = load i32, ptr %x76, align 4
  %and115 = and i32 %88, 255
  %conv116 = trunc i32 %and115 to i8
  store i8 %conv116, ptr %x77, align 1
  %89 = load i32, ptr %x76, align 4
  %shr117 = lshr i32 %89, 8
  %conv118 = trunc i32 %shr117 to i8
  store i8 %conv118, ptr %x78, align 1
  %90 = load i32, ptr %x1, align 4
  %and119 = and i32 %90, 255
  %conv120 = trunc i32 %and119 to i8
  store i8 %conv120, ptr %x79, align 1
  %91 = load i32, ptr %x1, align 4
  %shr121 = lshr i32 %91, 8
  store i32 %shr121, ptr %x80, align 4
  %92 = load i32, ptr %x80, align 4
  %and122 = and i32 %92, 255
  %conv123 = trunc i32 %and122 to i8
  store i8 %conv123, ptr %x81, align 1
  %93 = load i32, ptr %x80, align 4
  %shr124 = lshr i32 %93, 8
  store i32 %shr124, ptr %x82, align 4
  %94 = load i32, ptr %x82, align 4
  %and125 = and i32 %94, 255
  %conv126 = trunc i32 %and125 to i8
  store i8 %conv126, ptr %x83, align 1
  %95 = load i32, ptr %x82, align 4
  %shr127 = lshr i32 %95, 8
  %conv128 = trunc i32 %shr127 to i8
  store i8 %conv128, ptr %x84, align 1
  %96 = load i8, ptr %x13, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %97, i64 0
  store i8 %96, ptr %arrayidx129, align 1
  %98 = load i8, ptr %x15, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %98, ptr %arrayidx130, align 1
  %100 = load i8, ptr %x17, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %101, i64 2
  store i8 %100, ptr %arrayidx131, align 1
  %102 = load i8, ptr %x18, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %103, i64 3
  store i8 %102, ptr %arrayidx132, align 1
  %104 = load i8, ptr %x19, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %105, i64 4
  store i8 %104, ptr %arrayidx133, align 1
  %106 = load i8, ptr %x21, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %107, i64 5
  store i8 %106, ptr %arrayidx134, align 1
  %108 = load i8, ptr %x23, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %109, i64 6
  store i8 %108, ptr %arrayidx135, align 1
  %110 = load i8, ptr %x24, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %111, i64 7
  store i8 %110, ptr %arrayidx136, align 1
  %112 = load i8, ptr %x25, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %113, i64 8
  store i8 %112, ptr %arrayidx137, align 1
  %114 = load i8, ptr %x27, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %115, i64 9
  store i8 %114, ptr %arrayidx138, align 1
  %116 = load i8, ptr %x29, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %117, i64 10
  store i8 %116, ptr %arrayidx139, align 1
  %118 = load i8, ptr %x30, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %119, i64 11
  store i8 %118, ptr %arrayidx140, align 1
  %120 = load i8, ptr %x31, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %121, i64 12
  store i8 %120, ptr %arrayidx141, align 1
  %122 = load i8, ptr %x33, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %123, i64 13
  store i8 %122, ptr %arrayidx142, align 1
  %124 = load i8, ptr %x35, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %125, i64 14
  store i8 %124, ptr %arrayidx143, align 1
  %126 = load i8, ptr %x36, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %127, i64 15
  store i8 %126, ptr %arrayidx144, align 1
  %128 = load i8, ptr %x37, align 1
  %129 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %129, i64 16
  store i8 %128, ptr %arrayidx145, align 1
  %130 = load i8, ptr %x39, align 1
  %131 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %131, i64 17
  store i8 %130, ptr %arrayidx146, align 1
  %132 = load i8, ptr %x41, align 1
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %133, i64 18
  store i8 %132, ptr %arrayidx147, align 1
  %134 = load i8, ptr %x42, align 1
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %135, i64 19
  store i8 %134, ptr %arrayidx148, align 1
  %136 = load i8, ptr %x43, align 1
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %137, i64 20
  store i8 %136, ptr %arrayidx149, align 1
  %138 = load i8, ptr %x45, align 1
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %139, i64 21
  store i8 %138, ptr %arrayidx150, align 1
  %140 = load i8, ptr %x47, align 1
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %141, i64 22
  store i8 %140, ptr %arrayidx151, align 1
  %142 = load i8, ptr %x48, align 1
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %143, i64 23
  store i8 %142, ptr %arrayidx152, align 1
  %144 = load i8, ptr %x49, align 1
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %145, i64 24
  store i8 %144, ptr %arrayidx153, align 1
  %146 = load i8, ptr %x51, align 1
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %147, i64 25
  store i8 %146, ptr %arrayidx154, align 1
  %148 = load i8, ptr %x53, align 1
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %149, i64 26
  store i8 %148, ptr %arrayidx155, align 1
  %150 = load i8, ptr %x54, align 1
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %151, i64 27
  store i8 %150, ptr %arrayidx156, align 1
  %152 = load i8, ptr %x55, align 1
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %153, i64 28
  store i8 %152, ptr %arrayidx157, align 1
  %154 = load i8, ptr %x57, align 1
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %155, i64 29
  store i8 %154, ptr %arrayidx158, align 1
  %156 = load i8, ptr %x59, align 1
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %157, i64 30
  store i8 %156, ptr %arrayidx159, align 1
  %158 = load i8, ptr %x60, align 1
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %159, i64 31
  store i8 %158, ptr %arrayidx160, align 1
  %160 = load i8, ptr %x61, align 1
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %161, i64 32
  store i8 %160, ptr %arrayidx161, align 1
  %162 = load i8, ptr %x63, align 1
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %163, i64 33
  store i8 %162, ptr %arrayidx162, align 1
  %164 = load i8, ptr %x65, align 1
  %165 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %165, i64 34
  store i8 %164, ptr %arrayidx163, align 1
  %166 = load i8, ptr %x66, align 1
  %167 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %167, i64 35
  store i8 %166, ptr %arrayidx164, align 1
  %168 = load i8, ptr %x67, align 1
  %169 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %169, i64 36
  store i8 %168, ptr %arrayidx165, align 1
  %170 = load i8, ptr %x69, align 1
  %171 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %171, i64 37
  store i8 %170, ptr %arrayidx166, align 1
  %172 = load i8, ptr %x71, align 1
  %173 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %173, i64 38
  store i8 %172, ptr %arrayidx167, align 1
  %174 = load i8, ptr %x72, align 1
  %175 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %175, i64 39
  store i8 %174, ptr %arrayidx168, align 1
  %176 = load i8, ptr %x73, align 1
  %177 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %177, i64 40
  store i8 %176, ptr %arrayidx169, align 1
  %178 = load i8, ptr %x75, align 1
  %179 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %179, i64 41
  store i8 %178, ptr %arrayidx170, align 1
  %180 = load i8, ptr %x77, align 1
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %181, i64 42
  store i8 %180, ptr %arrayidx171, align 1
  %182 = load i8, ptr %x78, align 1
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %183, i64 43
  store i8 %182, ptr %arrayidx172, align 1
  %184 = load i8, ptr %x79, align 1
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %185, i64 44
  store i8 %184, ptr %arrayidx173, align 1
  %186 = load i8, ptr %x81, align 1
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %187, i64 45
  store i8 %186, ptr %arrayidx174, align 1
  %188 = load i8, ptr %x83, align 1
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %189, i64 46
  store i8 %188, ptr %arrayidx175, align 1
  %190 = load i8, ptr %x84, align 1
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %191, i64 47
  store i8 %190, ptr %arrayidx176, align 1
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
