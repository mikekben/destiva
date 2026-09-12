; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x9 = alloca i8, align 1
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
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
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
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
  %x59 = alloca i8, align 1
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
  %x77 = alloca i64, align 8
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
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -4294967295)
  %3 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef 4294967295)
  %4 = load i64, ptr %x1, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef -1)
  %5 = load i64, ptr %x7, align 8
  %6 = load i64, ptr %x4, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x8, ptr noundef %x9, i8 noundef zeroext 0, i64 noundef %5, i64 noundef %6)
  %7 = load i64, ptr %x1, align 8
  %8 = load i64, ptr %x6, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %7, i64 noundef %8)
  %9 = load i8, ptr %x11, align 1
  %10 = load i64, ptr %x8, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %9, i64 noundef 0, i64 noundef %10)
  %11 = load i64, ptr %x12, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %12, i64 1
  %13 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x14, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x16, ptr noundef %x17, i64 noundef %14, i64 noundef -4294967295)
  %15 = load i64, ptr %x14, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %15, i64 noundef 4294967295)
  %16 = load i64, ptr %x14, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %16, i64 noundef -1)
  %17 = load i64, ptr %x21, align 8
  %18 = load i64, ptr %x18, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i64 noundef %17, i64 noundef %18)
  %19 = load i64, ptr %x14, align 8
  %20 = load i64, ptr %x20, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext 0, i64 noundef %19, i64 noundef %20)
  %21 = load i8, ptr %x25, align 1
  %22 = load i8, ptr %x15, align 1
  %conv = zext i8 %22 to i64
  %23 = load i8, ptr %x13, align 1
  %conv2 = zext i8 %23 to i64
  %24 = load i8, ptr %x9, align 1
  %conv3 = zext i8 %24 to i64
  %25 = load i64, ptr %x5, align 8
  %add = add i64 %conv3, %25
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %26 = load i64, ptr %x22, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %21, i64 noundef %add5, i64 noundef %26)
  %27 = load i8, ptr %x27, align 1
  %28 = load i64, ptr %x2, align 8
  %29 = load i8, ptr %x23, align 1
  %conv6 = zext i8 %29 to i64
  %30 = load i64, ptr %x19, align 8
  %add7 = add i64 %conv6, %30
  call void @fiat_p256_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %27, i64 noundef %28, i64 noundef %add7)
  %31 = load i8, ptr %x29, align 1
  %32 = load i64, ptr %x3, align 8
  %33 = load i64, ptr %x16, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %31, i64 noundef %32, i64 noundef %33)
  %34 = load i64, ptr %x26, align 8
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %35, i64 2
  %36 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %36)
  %37 = load i8, ptr %x33, align 1
  %38 = load i64, ptr %x28, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %37, i64 noundef %38, i64 noundef 0)
  %39 = load i8, ptr %x35, align 1
  %40 = load i64, ptr %x30, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %39, i64 noundef %40, i64 noundef 0)
  %41 = load i64, ptr %x32, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %41, i64 noundef -4294967295)
  %42 = load i64, ptr %x32, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %42, i64 noundef 4294967295)
  %43 = load i64, ptr %x32, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %43, i64 noundef -1)
  %44 = load i64, ptr %x43, align 8
  %45 = load i64, ptr %x40, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i64 noundef %44, i64 noundef %45)
  %46 = load i64, ptr %x32, align 8
  %47 = load i64, ptr %x42, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i64 noundef %46, i64 noundef %47)
  %48 = load i8, ptr %x47, align 1
  %49 = load i64, ptr %x34, align 8
  %50 = load i64, ptr %x44, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %48, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x49, align 1
  %52 = load i64, ptr %x36, align 8
  %53 = load i8, ptr %x45, align 1
  %conv9 = zext i8 %53 to i64
  %54 = load i64, ptr %x41, align 8
  %add10 = add i64 %conv9, %54
  call void @fiat_p256_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %51, i64 noundef %52, i64 noundef %add10)
  %55 = load i8, ptr %x51, align 1
  %56 = load i8, ptr %x37, align 1
  %conv11 = zext i8 %56 to i64
  %57 = load i8, ptr %x31, align 1
  %conv12 = zext i8 %57 to i64
  %58 = load i64, ptr %x17, align 8
  %add13 = add i64 %conv12, %58
  %add14 = add i64 %conv11, %add13
  %59 = load i64, ptr %x38, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %55, i64 noundef %add14, i64 noundef %59)
  %60 = load i64, ptr %x48, align 8
  %61 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %61, i64 3
  %62 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext 0, i64 noundef %60, i64 noundef %62)
  %63 = load i8, ptr %x55, align 1
  %64 = load i64, ptr %x50, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %63, i64 noundef %64, i64 noundef 0)
  %65 = load i8, ptr %x57, align 1
  %66 = load i64, ptr %x52, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %65, i64 noundef %66, i64 noundef 0)
  %67 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x60, ptr noundef %x61, i64 noundef %67, i64 noundef -4294967295)
  %68 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x62, ptr noundef %x63, i64 noundef %68, i64 noundef 4294967295)
  %69 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x64, ptr noundef %x65, i64 noundef %69, i64 noundef -1)
  %70 = load i64, ptr %x65, align 8
  %71 = load i64, ptr %x62, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i64 noundef %70, i64 noundef %71)
  %72 = load i64, ptr %x54, align 8
  %73 = load i64, ptr %x64, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext 0, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x69, align 1
  %75 = load i64, ptr %x56, align 8
  %76 = load i64, ptr %x66, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x71, align 1
  %78 = load i64, ptr %x58, align 8
  %79 = load i8, ptr %x67, align 1
  %conv16 = zext i8 %79 to i64
  %80 = load i64, ptr %x63, align 8
  %add17 = add i64 %conv16, %80
  call void @fiat_p256_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %add17)
  %81 = load i8, ptr %x73, align 1
  %82 = load i8, ptr %x59, align 1
  %conv18 = zext i8 %82 to i64
  %83 = load i8, ptr %x53, align 1
  %conv19 = zext i8 %83 to i64
  %84 = load i64, ptr %x39, align 8
  %add20 = add i64 %conv19, %84
  %add21 = add i64 %conv18, %add20
  %85 = load i64, ptr %x60, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %81, i64 noundef %add21, i64 noundef %85)
  %86 = load i8, ptr %x75, align 1
  %conv22 = zext i8 %86 to i64
  %87 = load i64, ptr %x61, align 8
  %add23 = add i64 %conv22, %87
  store i64 %add23, ptr %x76, align 8
  %88 = load i64, ptr %x70, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %88, i64 noundef -1)
  %89 = load i8, ptr %x78, align 1
  %90 = load i64, ptr %x72, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %89, i64 noundef %90, i64 noundef 4294967295)
  %91 = load i8, ptr %x80, align 1
  %92 = load i64, ptr %x74, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %91, i64 noundef %92, i64 noundef 0)
  %93 = load i8, ptr %x82, align 1
  %94 = load i64, ptr %x76, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %93, i64 noundef %94, i64 noundef -4294967295)
  %95 = load i8, ptr %x84, align 1
  call void @fiat_p256_subborrowx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %95, i64 noundef 0, i64 noundef 0)
  %96 = load i8, ptr %x86, align 1
  %97 = load i64, ptr %x77, align 8
  %98 = load i64, ptr %x70, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x87, i8 noundef zeroext %96, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x86, align 1
  %100 = load i64, ptr %x79, align 8
  %101 = load i64, ptr %x72, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x88, i8 noundef zeroext %99, i64 noundef %100, i64 noundef %101)
  %102 = load i8, ptr %x86, align 1
  %103 = load i64, ptr %x81, align 8
  %104 = load i64, ptr %x74, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x89, i8 noundef zeroext %102, i64 noundef %103, i64 noundef %104)
  %105 = load i8, ptr %x86, align 1
  %106 = load i64, ptr %x83, align 8
  %107 = load i64, ptr %x76, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x90, i8 noundef zeroext %105, i64 noundef %106, i64 noundef %107)
  %108 = load i64, ptr %x87, align 8
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %109, i64 0
  store i64 %108, ptr %arrayidx24, align 8
  %110 = load i64, ptr %x88, align 8
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %111, i64 1
  store i64 %110, ptr %arrayidx25, align 8
  %112 = load i64, ptr %x89, align 8
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %113, i64 2
  store i64 %112, ptr %arrayidx26, align 8
  %114 = load i64, ptr %x90, align 8
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %115, i64 3
  store i64 %114, ptr %arrayidx27, align 8
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
