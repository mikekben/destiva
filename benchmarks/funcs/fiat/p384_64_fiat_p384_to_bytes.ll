; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i8, align 1
  %x8 = alloca i64, align 8
  %x9 = alloca i8, align 1
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
  %x20 = alloca i8, align 1
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
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
  %x33 = alloca i8, align 1
  %x34 = alloca i8, align 1
  %x35 = alloca i8, align 1
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
  %x48 = alloca i8, align 1
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
  %x59 = alloca i8, align 1
  %x60 = alloca i64, align 8
  %x61 = alloca i8, align 1
  %x62 = alloca i8, align 1
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
  %x76 = alloca i8, align 1
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
  %x87 = alloca i8, align 1
  %x88 = alloca i64, align 8
  %x89 = alloca i8, align 1
  %x90 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 5
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 4
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 3
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 0
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load i64, ptr %x6, align 8
  %and = and i64 %12, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %x7, align 1
  %13 = load i64, ptr %x6, align 8
  %shr = lshr i64 %13, 8
  store i64 %shr, ptr %x8, align 8
  %14 = load i64, ptr %x8, align 8
  %and6 = and i64 %14, 255
  %conv7 = trunc i64 %and6 to i8
  store i8 %conv7, ptr %x9, align 1
  %15 = load i64, ptr %x8, align 8
  %shr8 = lshr i64 %15, 8
  store i64 %shr8, ptr %x10, align 8
  %16 = load i64, ptr %x10, align 8
  %and9 = and i64 %16, 255
  %conv10 = trunc i64 %and9 to i8
  store i8 %conv10, ptr %x11, align 1
  %17 = load i64, ptr %x10, align 8
  %shr11 = lshr i64 %17, 8
  store i64 %shr11, ptr %x12, align 8
  %18 = load i64, ptr %x12, align 8
  %and12 = and i64 %18, 255
  %conv13 = trunc i64 %and12 to i8
  store i8 %conv13, ptr %x13, align 1
  %19 = load i64, ptr %x12, align 8
  %shr14 = lshr i64 %19, 8
  store i64 %shr14, ptr %x14, align 8
  %20 = load i64, ptr %x14, align 8
  %and15 = and i64 %20, 255
  %conv16 = trunc i64 %and15 to i8
  store i8 %conv16, ptr %x15, align 1
  %21 = load i64, ptr %x14, align 8
  %shr17 = lshr i64 %21, 8
  store i64 %shr17, ptr %x16, align 8
  %22 = load i64, ptr %x16, align 8
  %and18 = and i64 %22, 255
  %conv19 = trunc i64 %and18 to i8
  store i8 %conv19, ptr %x17, align 1
  %23 = load i64, ptr %x16, align 8
  %shr20 = lshr i64 %23, 8
  store i64 %shr20, ptr %x18, align 8
  %24 = load i64, ptr %x18, align 8
  %and21 = and i64 %24, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x19, align 1
  %25 = load i64, ptr %x18, align 8
  %shr23 = lshr i64 %25, 8
  %conv24 = trunc i64 %shr23 to i8
  store i8 %conv24, ptr %x20, align 1
  %26 = load i64, ptr %x5, align 8
  %and25 = and i64 %26, 255
  %conv26 = trunc i64 %and25 to i8
  store i8 %conv26, ptr %x21, align 1
  %27 = load i64, ptr %x5, align 8
  %shr27 = lshr i64 %27, 8
  store i64 %shr27, ptr %x22, align 8
  %28 = load i64, ptr %x22, align 8
  %and28 = and i64 %28, 255
  %conv29 = trunc i64 %and28 to i8
  store i8 %conv29, ptr %x23, align 1
  %29 = load i64, ptr %x22, align 8
  %shr30 = lshr i64 %29, 8
  store i64 %shr30, ptr %x24, align 8
  %30 = load i64, ptr %x24, align 8
  %and31 = and i64 %30, 255
  %conv32 = trunc i64 %and31 to i8
  store i8 %conv32, ptr %x25, align 1
  %31 = load i64, ptr %x24, align 8
  %shr33 = lshr i64 %31, 8
  store i64 %shr33, ptr %x26, align 8
  %32 = load i64, ptr %x26, align 8
  %and34 = and i64 %32, 255
  %conv35 = trunc i64 %and34 to i8
  store i8 %conv35, ptr %x27, align 1
  %33 = load i64, ptr %x26, align 8
  %shr36 = lshr i64 %33, 8
  store i64 %shr36, ptr %x28, align 8
  %34 = load i64, ptr %x28, align 8
  %and37 = and i64 %34, 255
  %conv38 = trunc i64 %and37 to i8
  store i8 %conv38, ptr %x29, align 1
  %35 = load i64, ptr %x28, align 8
  %shr39 = lshr i64 %35, 8
  store i64 %shr39, ptr %x30, align 8
  %36 = load i64, ptr %x30, align 8
  %and40 = and i64 %36, 255
  %conv41 = trunc i64 %and40 to i8
  store i8 %conv41, ptr %x31, align 1
  %37 = load i64, ptr %x30, align 8
  %shr42 = lshr i64 %37, 8
  store i64 %shr42, ptr %x32, align 8
  %38 = load i64, ptr %x32, align 8
  %and43 = and i64 %38, 255
  %conv44 = trunc i64 %and43 to i8
  store i8 %conv44, ptr %x33, align 1
  %39 = load i64, ptr %x32, align 8
  %shr45 = lshr i64 %39, 8
  %conv46 = trunc i64 %shr45 to i8
  store i8 %conv46, ptr %x34, align 1
  %40 = load i64, ptr %x4, align 8
  %and47 = and i64 %40, 255
  %conv48 = trunc i64 %and47 to i8
  store i8 %conv48, ptr %x35, align 1
  %41 = load i64, ptr %x4, align 8
  %shr49 = lshr i64 %41, 8
  store i64 %shr49, ptr %x36, align 8
  %42 = load i64, ptr %x36, align 8
  %and50 = and i64 %42, 255
  %conv51 = trunc i64 %and50 to i8
  store i8 %conv51, ptr %x37, align 1
  %43 = load i64, ptr %x36, align 8
  %shr52 = lshr i64 %43, 8
  store i64 %shr52, ptr %x38, align 8
  %44 = load i64, ptr %x38, align 8
  %and53 = and i64 %44, 255
  %conv54 = trunc i64 %and53 to i8
  store i8 %conv54, ptr %x39, align 1
  %45 = load i64, ptr %x38, align 8
  %shr55 = lshr i64 %45, 8
  store i64 %shr55, ptr %x40, align 8
  %46 = load i64, ptr %x40, align 8
  %and56 = and i64 %46, 255
  %conv57 = trunc i64 %and56 to i8
  store i8 %conv57, ptr %x41, align 1
  %47 = load i64, ptr %x40, align 8
  %shr58 = lshr i64 %47, 8
  store i64 %shr58, ptr %x42, align 8
  %48 = load i64, ptr %x42, align 8
  %and59 = and i64 %48, 255
  %conv60 = trunc i64 %and59 to i8
  store i8 %conv60, ptr %x43, align 1
  %49 = load i64, ptr %x42, align 8
  %shr61 = lshr i64 %49, 8
  store i64 %shr61, ptr %x44, align 8
  %50 = load i64, ptr %x44, align 8
  %and62 = and i64 %50, 255
  %conv63 = trunc i64 %and62 to i8
  store i8 %conv63, ptr %x45, align 1
  %51 = load i64, ptr %x44, align 8
  %shr64 = lshr i64 %51, 8
  store i64 %shr64, ptr %x46, align 8
  %52 = load i64, ptr %x46, align 8
  %and65 = and i64 %52, 255
  %conv66 = trunc i64 %and65 to i8
  store i8 %conv66, ptr %x47, align 1
  %53 = load i64, ptr %x46, align 8
  %shr67 = lshr i64 %53, 8
  %conv68 = trunc i64 %shr67 to i8
  store i8 %conv68, ptr %x48, align 1
  %54 = load i64, ptr %x3, align 8
  %and69 = and i64 %54, 255
  %conv70 = trunc i64 %and69 to i8
  store i8 %conv70, ptr %x49, align 1
  %55 = load i64, ptr %x3, align 8
  %shr71 = lshr i64 %55, 8
  store i64 %shr71, ptr %x50, align 8
  %56 = load i64, ptr %x50, align 8
  %and72 = and i64 %56, 255
  %conv73 = trunc i64 %and72 to i8
  store i8 %conv73, ptr %x51, align 1
  %57 = load i64, ptr %x50, align 8
  %shr74 = lshr i64 %57, 8
  store i64 %shr74, ptr %x52, align 8
  %58 = load i64, ptr %x52, align 8
  %and75 = and i64 %58, 255
  %conv76 = trunc i64 %and75 to i8
  store i8 %conv76, ptr %x53, align 1
  %59 = load i64, ptr %x52, align 8
  %shr77 = lshr i64 %59, 8
  store i64 %shr77, ptr %x54, align 8
  %60 = load i64, ptr %x54, align 8
  %and78 = and i64 %60, 255
  %conv79 = trunc i64 %and78 to i8
  store i8 %conv79, ptr %x55, align 1
  %61 = load i64, ptr %x54, align 8
  %shr80 = lshr i64 %61, 8
  store i64 %shr80, ptr %x56, align 8
  %62 = load i64, ptr %x56, align 8
  %and81 = and i64 %62, 255
  %conv82 = trunc i64 %and81 to i8
  store i8 %conv82, ptr %x57, align 1
  %63 = load i64, ptr %x56, align 8
  %shr83 = lshr i64 %63, 8
  store i64 %shr83, ptr %x58, align 8
  %64 = load i64, ptr %x58, align 8
  %and84 = and i64 %64, 255
  %conv85 = trunc i64 %and84 to i8
  store i8 %conv85, ptr %x59, align 1
  %65 = load i64, ptr %x58, align 8
  %shr86 = lshr i64 %65, 8
  store i64 %shr86, ptr %x60, align 8
  %66 = load i64, ptr %x60, align 8
  %and87 = and i64 %66, 255
  %conv88 = trunc i64 %and87 to i8
  store i8 %conv88, ptr %x61, align 1
  %67 = load i64, ptr %x60, align 8
  %shr89 = lshr i64 %67, 8
  %conv90 = trunc i64 %shr89 to i8
  store i8 %conv90, ptr %x62, align 1
  %68 = load i64, ptr %x2, align 8
  %and91 = and i64 %68, 255
  %conv92 = trunc i64 %and91 to i8
  store i8 %conv92, ptr %x63, align 1
  %69 = load i64, ptr %x2, align 8
  %shr93 = lshr i64 %69, 8
  store i64 %shr93, ptr %x64, align 8
  %70 = load i64, ptr %x64, align 8
  %and94 = and i64 %70, 255
  %conv95 = trunc i64 %and94 to i8
  store i8 %conv95, ptr %x65, align 1
  %71 = load i64, ptr %x64, align 8
  %shr96 = lshr i64 %71, 8
  store i64 %shr96, ptr %x66, align 8
  %72 = load i64, ptr %x66, align 8
  %and97 = and i64 %72, 255
  %conv98 = trunc i64 %and97 to i8
  store i8 %conv98, ptr %x67, align 1
  %73 = load i64, ptr %x66, align 8
  %shr99 = lshr i64 %73, 8
  store i64 %shr99, ptr %x68, align 8
  %74 = load i64, ptr %x68, align 8
  %and100 = and i64 %74, 255
  %conv101 = trunc i64 %and100 to i8
  store i8 %conv101, ptr %x69, align 1
  %75 = load i64, ptr %x68, align 8
  %shr102 = lshr i64 %75, 8
  store i64 %shr102, ptr %x70, align 8
  %76 = load i64, ptr %x70, align 8
  %and103 = and i64 %76, 255
  %conv104 = trunc i64 %and103 to i8
  store i8 %conv104, ptr %x71, align 1
  %77 = load i64, ptr %x70, align 8
  %shr105 = lshr i64 %77, 8
  store i64 %shr105, ptr %x72, align 8
  %78 = load i64, ptr %x72, align 8
  %and106 = and i64 %78, 255
  %conv107 = trunc i64 %and106 to i8
  store i8 %conv107, ptr %x73, align 1
  %79 = load i64, ptr %x72, align 8
  %shr108 = lshr i64 %79, 8
  store i64 %shr108, ptr %x74, align 8
  %80 = load i64, ptr %x74, align 8
  %and109 = and i64 %80, 255
  %conv110 = trunc i64 %and109 to i8
  store i8 %conv110, ptr %x75, align 1
  %81 = load i64, ptr %x74, align 8
  %shr111 = lshr i64 %81, 8
  %conv112 = trunc i64 %shr111 to i8
  store i8 %conv112, ptr %x76, align 1
  %82 = load i64, ptr %x1, align 8
  %and113 = and i64 %82, 255
  %conv114 = trunc i64 %and113 to i8
  store i8 %conv114, ptr %x77, align 1
  %83 = load i64, ptr %x1, align 8
  %shr115 = lshr i64 %83, 8
  store i64 %shr115, ptr %x78, align 8
  %84 = load i64, ptr %x78, align 8
  %and116 = and i64 %84, 255
  %conv117 = trunc i64 %and116 to i8
  store i8 %conv117, ptr %x79, align 1
  %85 = load i64, ptr %x78, align 8
  %shr118 = lshr i64 %85, 8
  store i64 %shr118, ptr %x80, align 8
  %86 = load i64, ptr %x80, align 8
  %and119 = and i64 %86, 255
  %conv120 = trunc i64 %and119 to i8
  store i8 %conv120, ptr %x81, align 1
  %87 = load i64, ptr %x80, align 8
  %shr121 = lshr i64 %87, 8
  store i64 %shr121, ptr %x82, align 8
  %88 = load i64, ptr %x82, align 8
  %and122 = and i64 %88, 255
  %conv123 = trunc i64 %and122 to i8
  store i8 %conv123, ptr %x83, align 1
  %89 = load i64, ptr %x82, align 8
  %shr124 = lshr i64 %89, 8
  store i64 %shr124, ptr %x84, align 8
  %90 = load i64, ptr %x84, align 8
  %and125 = and i64 %90, 255
  %conv126 = trunc i64 %and125 to i8
  store i8 %conv126, ptr %x85, align 1
  %91 = load i64, ptr %x84, align 8
  %shr127 = lshr i64 %91, 8
  store i64 %shr127, ptr %x86, align 8
  %92 = load i64, ptr %x86, align 8
  %and128 = and i64 %92, 255
  %conv129 = trunc i64 %and128 to i8
  store i8 %conv129, ptr %x87, align 1
  %93 = load i64, ptr %x86, align 8
  %shr130 = lshr i64 %93, 8
  store i64 %shr130, ptr %x88, align 8
  %94 = load i64, ptr %x88, align 8
  %and131 = and i64 %94, 255
  %conv132 = trunc i64 %and131 to i8
  store i8 %conv132, ptr %x89, align 1
  %95 = load i64, ptr %x88, align 8
  %shr133 = lshr i64 %95, 8
  %conv134 = trunc i64 %shr133 to i8
  store i8 %conv134, ptr %x90, align 1
  %96 = load i8, ptr %x7, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %97, i64 0
  store i8 %96, ptr %arrayidx135, align 1
  %98 = load i8, ptr %x9, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %98, ptr %arrayidx136, align 1
  %100 = load i8, ptr %x11, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %101, i64 2
  store i8 %100, ptr %arrayidx137, align 1
  %102 = load i8, ptr %x13, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %103, i64 3
  store i8 %102, ptr %arrayidx138, align 1
  %104 = load i8, ptr %x15, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %105, i64 4
  store i8 %104, ptr %arrayidx139, align 1
  %106 = load i8, ptr %x17, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %107, i64 5
  store i8 %106, ptr %arrayidx140, align 1
  %108 = load i8, ptr %x19, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %109, i64 6
  store i8 %108, ptr %arrayidx141, align 1
  %110 = load i8, ptr %x20, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %111, i64 7
  store i8 %110, ptr %arrayidx142, align 1
  %112 = load i8, ptr %x21, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %113, i64 8
  store i8 %112, ptr %arrayidx143, align 1
  %114 = load i8, ptr %x23, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %115, i64 9
  store i8 %114, ptr %arrayidx144, align 1
  %116 = load i8, ptr %x25, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %117, i64 10
  store i8 %116, ptr %arrayidx145, align 1
  %118 = load i8, ptr %x27, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %119, i64 11
  store i8 %118, ptr %arrayidx146, align 1
  %120 = load i8, ptr %x29, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %121, i64 12
  store i8 %120, ptr %arrayidx147, align 1
  %122 = load i8, ptr %x31, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %123, i64 13
  store i8 %122, ptr %arrayidx148, align 1
  %124 = load i8, ptr %x33, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %125, i64 14
  store i8 %124, ptr %arrayidx149, align 1
  %126 = load i8, ptr %x34, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %127, i64 15
  store i8 %126, ptr %arrayidx150, align 1
  %128 = load i8, ptr %x35, align 1
  %129 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %129, i64 16
  store i8 %128, ptr %arrayidx151, align 1
  %130 = load i8, ptr %x37, align 1
  %131 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %131, i64 17
  store i8 %130, ptr %arrayidx152, align 1
  %132 = load i8, ptr %x39, align 1
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %133, i64 18
  store i8 %132, ptr %arrayidx153, align 1
  %134 = load i8, ptr %x41, align 1
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %135, i64 19
  store i8 %134, ptr %arrayidx154, align 1
  %136 = load i8, ptr %x43, align 1
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %137, i64 20
  store i8 %136, ptr %arrayidx155, align 1
  %138 = load i8, ptr %x45, align 1
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %139, i64 21
  store i8 %138, ptr %arrayidx156, align 1
  %140 = load i8, ptr %x47, align 1
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %141, i64 22
  store i8 %140, ptr %arrayidx157, align 1
  %142 = load i8, ptr %x48, align 1
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %143, i64 23
  store i8 %142, ptr %arrayidx158, align 1
  %144 = load i8, ptr %x49, align 1
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %145, i64 24
  store i8 %144, ptr %arrayidx159, align 1
  %146 = load i8, ptr %x51, align 1
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %147, i64 25
  store i8 %146, ptr %arrayidx160, align 1
  %148 = load i8, ptr %x53, align 1
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %149, i64 26
  store i8 %148, ptr %arrayidx161, align 1
  %150 = load i8, ptr %x55, align 1
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %151, i64 27
  store i8 %150, ptr %arrayidx162, align 1
  %152 = load i8, ptr %x57, align 1
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %153, i64 28
  store i8 %152, ptr %arrayidx163, align 1
  %154 = load i8, ptr %x59, align 1
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %155, i64 29
  store i8 %154, ptr %arrayidx164, align 1
  %156 = load i8, ptr %x61, align 1
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %157, i64 30
  store i8 %156, ptr %arrayidx165, align 1
  %158 = load i8, ptr %x62, align 1
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %159, i64 31
  store i8 %158, ptr %arrayidx166, align 1
  %160 = load i8, ptr %x63, align 1
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %161, i64 32
  store i8 %160, ptr %arrayidx167, align 1
  %162 = load i8, ptr %x65, align 1
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %163, i64 33
  store i8 %162, ptr %arrayidx168, align 1
  %164 = load i8, ptr %x67, align 1
  %165 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %165, i64 34
  store i8 %164, ptr %arrayidx169, align 1
  %166 = load i8, ptr %x69, align 1
  %167 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %167, i64 35
  store i8 %166, ptr %arrayidx170, align 1
  %168 = load i8, ptr %x71, align 1
  %169 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %169, i64 36
  store i8 %168, ptr %arrayidx171, align 1
  %170 = load i8, ptr %x73, align 1
  %171 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %171, i64 37
  store i8 %170, ptr %arrayidx172, align 1
  %172 = load i8, ptr %x75, align 1
  %173 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %173, i64 38
  store i8 %172, ptr %arrayidx173, align 1
  %174 = load i8, ptr %x76, align 1
  %175 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %175, i64 39
  store i8 %174, ptr %arrayidx174, align 1
  %176 = load i8, ptr %x77, align 1
  %177 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %177, i64 40
  store i8 %176, ptr %arrayidx175, align 1
  %178 = load i8, ptr %x79, align 1
  %179 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %179, i64 41
  store i8 %178, ptr %arrayidx176, align 1
  %180 = load i8, ptr %x81, align 1
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %181, i64 42
  store i8 %180, ptr %arrayidx177, align 1
  %182 = load i8, ptr %x83, align 1
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %183, i64 43
  store i8 %182, ptr %arrayidx178, align 1
  %184 = load i8, ptr %x85, align 1
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %185, i64 44
  store i8 %184, ptr %arrayidx179, align 1
  %186 = load i8, ptr %x87, align 1
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %187, i64 45
  store i8 %186, ptr %arrayidx180, align 1
  %188 = load i8, ptr %x89, align 1
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %189, i64 46
  store i8 %188, ptr %arrayidx181, align 1
  %190 = load i8, ptr %x90, align 1
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %191, i64 47
  store i8 %190, ptr %arrayidx182, align 1
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
