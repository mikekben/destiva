; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
  %x39 = alloca i32, align 4
  %x40 = alloca i8, align 1
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i32, align 4
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i32, align 4
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx3, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 4
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 5
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 5
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i32 noundef %26, i32 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 6
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 6
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %x14, align 1
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 7
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38)
  %39 = load i8, ptr %x16, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %40, i64 8
  %41 = load i32, ptr %arrayidx16, align 4
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %42, i64 8
  %43 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %39, i32 noundef %41, i32 noundef %43)
  %44 = load i8, ptr %x18, align 1
  %45 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %45, i64 9
  %46 = load i32, ptr %arrayidx18, align 4
  %47 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %47, i64 9
  %48 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %44, i32 noundef %46, i32 noundef %48)
  %49 = load i8, ptr %x20, align 1
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %50, i64 10
  %51 = load i32, ptr %arrayidx20, align 4
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %52, i64 10
  %53 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %49, i32 noundef %51, i32 noundef %53)
  %54 = load i8, ptr %x22, align 1
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %55, i64 11
  %56 = load i32, ptr %arrayidx22, align 4
  %57 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %57, i64 11
  %58 = load i32, ptr %arrayidx23, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %54, i32 noundef %56, i32 noundef %58)
  %59 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %59, i32 noundef -859494029)
  %60 = load i8, ptr %x26, align 1
  %61 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %60, i32 noundef %61, i32 noundef -320071318)
  %62 = load i8, ptr %x28, align 1
  %63 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %62, i32 noundef %63, i32 noundef 1219536762)
  %64 = load i8, ptr %x30, align 1
  %65 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %64, i32 noundef %65, i32 noundef 1478102450)
  %66 = load i8, ptr %x32, align 1
  %67 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %66, i32 noundef %67, i32 noundef -197710369)
  %68 = load i8, ptr %x34, align 1
  %69 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %68, i32 noundef %69, i32 noundef -949793407)
  %70 = load i8, ptr %x36, align 1
  %71 = load i32, ptr %x13, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %70, i32 noundef %71, i32 noundef -1)
  %72 = load i8, ptr %x38, align 1
  %73 = load i32, ptr %x15, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %72, i32 noundef %73, i32 noundef -1)
  %74 = load i8, ptr %x40, align 1
  %75 = load i32, ptr %x17, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %74, i32 noundef %75, i32 noundef -1)
  %76 = load i8, ptr %x42, align 1
  %77 = load i32, ptr %x19, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %76, i32 noundef %77, i32 noundef -1)
  %78 = load i8, ptr %x44, align 1
  %79 = load i32, ptr %x21, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %78, i32 noundef %79, i32 noundef -1)
  %80 = load i8, ptr %x46, align 1
  %81 = load i32, ptr %x23, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %80, i32 noundef %81, i32 noundef -1)
  %82 = load i8, ptr %x48, align 1
  %83 = load i8, ptr %x24, align 1
  %conv = zext i8 %83 to i32
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %82, i32 noundef %conv, i32 noundef 0)
  %84 = load i8, ptr %x50, align 1
  %85 = load i32, ptr %x25, align 4
  %86 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x51, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x50, align 1
  %88 = load i32, ptr %x27, align 4
  %89 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x52, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x50, align 1
  %91 = load i32, ptr %x29, align 4
  %92 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x53, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i8, ptr %x50, align 1
  %94 = load i32, ptr %x31, align 4
  %95 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x54, i8 noundef zeroext %93, i32 noundef %94, i32 noundef %95)
  %96 = load i8, ptr %x50, align 1
  %97 = load i32, ptr %x33, align 4
  %98 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x55, i8 noundef zeroext %96, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x50, align 1
  %100 = load i32, ptr %x35, align 4
  %101 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x56, i8 noundef zeroext %99, i32 noundef %100, i32 noundef %101)
  %102 = load i8, ptr %x50, align 1
  %103 = load i32, ptr %x37, align 4
  %104 = load i32, ptr %x13, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x57, i8 noundef zeroext %102, i32 noundef %103, i32 noundef %104)
  %105 = load i8, ptr %x50, align 1
  %106 = load i32, ptr %x39, align 4
  %107 = load i32, ptr %x15, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x58, i8 noundef zeroext %105, i32 noundef %106, i32 noundef %107)
  %108 = load i8, ptr %x50, align 1
  %109 = load i32, ptr %x41, align 4
  %110 = load i32, ptr %x17, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x59, i8 noundef zeroext %108, i32 noundef %109, i32 noundef %110)
  %111 = load i8, ptr %x50, align 1
  %112 = load i32, ptr %x43, align 4
  %113 = load i32, ptr %x19, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x60, i8 noundef zeroext %111, i32 noundef %112, i32 noundef %113)
  %114 = load i8, ptr %x50, align 1
  %115 = load i32, ptr %x45, align 4
  %116 = load i32, ptr %x21, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x61, i8 noundef zeroext %114, i32 noundef %115, i32 noundef %116)
  %117 = load i8, ptr %x50, align 1
  %118 = load i32, ptr %x47, align 4
  %119 = load i32, ptr %x23, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x62, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119)
  %120 = load i32, ptr %x51, align 4
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %121, i64 0
  store i32 %120, ptr %arrayidx24, align 4
  %122 = load i32, ptr %x52, align 4
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %123, i64 1
  store i32 %122, ptr %arrayidx25, align 4
  %124 = load i32, ptr %x53, align 4
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %125, i64 2
  store i32 %124, ptr %arrayidx26, align 4
  %126 = load i32, ptr %x54, align 4
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %127, i64 3
  store i32 %126, ptr %arrayidx27, align 4
  %128 = load i32, ptr %x55, align 4
  %129 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %129, i64 4
  store i32 %128, ptr %arrayidx28, align 4
  %130 = load i32, ptr %x56, align 4
  %131 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %131, i64 5
  store i32 %130, ptr %arrayidx29, align 4
  %132 = load i32, ptr %x57, align 4
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %133, i64 6
  store i32 %132, ptr %arrayidx30, align 4
  %134 = load i32, ptr %x58, align 4
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %135, i64 7
  store i32 %134, ptr %arrayidx31, align 4
  %136 = load i32, ptr %x59, align 4
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %137, i64 8
  store i32 %136, ptr %arrayidx32, align 4
  %138 = load i32, ptr %x60, align 4
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %139, i64 9
  store i32 %138, ptr %arrayidx33, align 4
  %140 = load i32, ptr %x61, align 4
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %141, i64 10
  store i32 %140, ptr %arrayidx34, align 4
  %142 = load i32, ptr %x62, align 4
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %143, i64 11
  store i32 %142, ptr %arrayidx35, align 4
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
