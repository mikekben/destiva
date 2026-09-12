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
define dso_local void @fiat_p384_scalar_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x43 = alloca i8, align 1
  %x44 = alloca i32, align 4
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx3, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 4
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 5
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 5
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i32 noundef %26, i32 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 6
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 6
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %x14, align 1
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 7
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38)
  %39 = load i8, ptr %x16, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %40, i64 8
  %41 = load i32, ptr %arrayidx16, align 4
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %42, i64 8
  %43 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %39, i32 noundef %41, i32 noundef %43)
  %44 = load i8, ptr %x18, align 1
  %45 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %45, i64 9
  %46 = load i32, ptr %arrayidx18, align 4
  %47 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %47, i64 9
  %48 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %44, i32 noundef %46, i32 noundef %48)
  %49 = load i8, ptr %x20, align 1
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %50, i64 10
  %51 = load i32, ptr %arrayidx20, align 4
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %52, i64 10
  %53 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %49, i32 noundef %51, i32 noundef %53)
  %54 = load i8, ptr %x22, align 1
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %55, i64 11
  %56 = load i32, ptr %arrayidx22, align 4
  %57 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %57, i64 11
  %58 = load i32, ptr %arrayidx23, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %54, i32 noundef %56, i32 noundef %58)
  %59 = load i8, ptr %x24, align 1
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x25, i8 noundef zeroext %59, i32 noundef 0, i32 noundef -1)
  %60 = load i32, ptr %x1, align 4
  %61 = load i32, ptr %x25, align 4
  %and = and i32 %61, -859494029
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i32 noundef %60, i32 noundef %and)
  %62 = load i8, ptr %x27, align 1
  %63 = load i32, ptr %x3, align 4
  %64 = load i32, ptr %x25, align 4
  %and24 = and i32 %64, -320071318
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %and24)
  %65 = load i8, ptr %x29, align 1
  %66 = load i32, ptr %x5, align 4
  %67 = load i32, ptr %x25, align 4
  %and25 = and i32 %67, 1219536762
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %and25)
  %68 = load i8, ptr %x31, align 1
  %69 = load i32, ptr %x7, align 4
  %70 = load i32, ptr %x25, align 4
  %and26 = and i32 %70, 1478102450
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %and26)
  %71 = load i8, ptr %x33, align 1
  %72 = load i32, ptr %x9, align 4
  %73 = load i32, ptr %x25, align 4
  %and27 = and i32 %73, -197710369
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %and27)
  %74 = load i8, ptr %x35, align 1
  %75 = load i32, ptr %x11, align 4
  %76 = load i32, ptr %x25, align 4
  %and28 = and i32 %76, -949793407
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %and28)
  %77 = load i8, ptr %x37, align 1
  %78 = load i32, ptr %x13, align 4
  %79 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x39, align 1
  %81 = load i32, ptr %x15, align 4
  %82 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x41, align 1
  %84 = load i32, ptr %x17, align 4
  %85 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x43, align 1
  %87 = load i32, ptr %x19, align 4
  %88 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x45, align 1
  %90 = load i32, ptr %x21, align 4
  %91 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x47, align 1
  %93 = load i32, ptr %x23, align 4
  %94 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i32, ptr %x26, align 4
  %96 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %96, i64 0
  store i32 %95, ptr %arrayidx29, align 4
  %97 = load i32, ptr %x28, align 4
  %98 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %97, ptr %arrayidx30, align 4
  %99 = load i32, ptr %x30, align 4
  %100 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %100, i64 2
  store i32 %99, ptr %arrayidx31, align 4
  %101 = load i32, ptr %x32, align 4
  %102 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %102, i64 3
  store i32 %101, ptr %arrayidx32, align 4
  %103 = load i32, ptr %x34, align 4
  %104 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %104, i64 4
  store i32 %103, ptr %arrayidx33, align 4
  %105 = load i32, ptr %x36, align 4
  %106 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %106, i64 5
  store i32 %105, ptr %arrayidx34, align 4
  %107 = load i32, ptr %x38, align 4
  %108 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %108, i64 6
  store i32 %107, ptr %arrayidx35, align 4
  %109 = load i32, ptr %x40, align 4
  %110 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %110, i64 7
  store i32 %109, ptr %arrayidx36, align 4
  %111 = load i32, ptr %x42, align 4
  %112 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %112, i64 8
  store i32 %111, ptr %arrayidx37, align 4
  %113 = load i32, ptr %x44, align 4
  %114 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %114, i64 9
  store i32 %113, ptr %arrayidx38, align 4
  %115 = load i32, ptr %x46, align 4
  %116 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %116, i64 10
  store i32 %115, ptr %arrayidx39, align 4
  %117 = load i32, ptr %x48, align 4
  %118 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %118, i64 11
  store i32 %117, ptr %arrayidx40, align 4
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
