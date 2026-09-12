; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
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
  %x62 = alloca i64, align 8
  %x63 = alloca i8, align 1
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
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
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i8, align 1
  %x91 = alloca i64, align 8
  %x92 = alloca i8, align 1
  %x93 = alloca i64, align 8
  %x94 = alloca i8, align 1
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -3263669768735654373)
  %3 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef 1152921504606846976)
  %4 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef 1503914060200516822)
  %5 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef 6346243789798364141)
  %6 = load i64, ptr %x9, align 8
  %7 = load i64, ptr %x6, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %6, i64 noundef %7)
  %8 = load i64, ptr %x1, align 8
  %9 = load i64, ptr %x8, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef %8, i64 noundef %9)
  %10 = load i8, ptr %x13, align 1
  %11 = load i64, ptr %x10, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %10, i64 noundef 0, i64 noundef %11)
  %12 = load i64, ptr %x14, align 8
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %13, i64 1
  %14 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x16, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %15, i64 noundef -3263669768735654373)
  %16 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %16, i64 noundef 1152921504606846976)
  %17 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %17, i64 noundef 1503914060200516822)
  %18 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %18, i64 noundef 6346243789798364141)
  %19 = load i64, ptr %x25, align 8
  %20 = load i64, ptr %x22, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i64 noundef %19, i64 noundef %20)
  %21 = load i64, ptr %x16, align 8
  %22 = load i64, ptr %x24, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x29, align 1
  %24 = load i8, ptr %x17, align 1
  %conv = zext i8 %24 to i64
  %25 = load i8, ptr %x15, align 1
  %conv2 = zext i8 %25 to i64
  %26 = load i8, ptr %x11, align 1
  %conv3 = zext i8 %26 to i64
  %27 = load i64, ptr %x7, align 8
  %add = add i64 %conv3, %27
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %28 = load i64, ptr %x26, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %23, i64 noundef %add5, i64 noundef %28)
  %29 = load i8, ptr %x31, align 1
  %30 = load i64, ptr %x4, align 8
  %31 = load i8, ptr %x27, align 1
  %conv6 = zext i8 %31 to i64
  %32 = load i64, ptr %x23, align 8
  %add7 = add i64 %conv6, %32
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %add7)
  %33 = load i8, ptr %x33, align 1
  %34 = load i64, ptr %x5, align 8
  %35 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %33, i64 noundef %34, i64 noundef %35)
  %36 = load i64, ptr %x30, align 8
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %37, i64 2
  %38 = load i64, ptr %arrayidx8, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext 0, i64 noundef %36, i64 noundef %38)
  %39 = load i8, ptr %x37, align 1
  %40 = load i64, ptr %x32, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %39, i64 noundef %40, i64 noundef 0)
  %41 = load i8, ptr %x39, align 1
  %42 = load i64, ptr %x34, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %41, i64 noundef %42, i64 noundef 0)
  %43 = load i64, ptr %x36, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %43, i64 noundef -3263669768735654373)
  %44 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x44, ptr noundef %x45, i64 noundef %44, i64 noundef 1152921504606846976)
  %45 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x46, ptr noundef %x47, i64 noundef %45, i64 noundef 1503914060200516822)
  %46 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x48, ptr noundef %x49, i64 noundef %46, i64 noundef 6346243789798364141)
  %47 = load i64, ptr %x49, align 8
  %48 = load i64, ptr %x46, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i64 noundef %47, i64 noundef %48)
  %49 = load i64, ptr %x36, align 8
  %50 = load i64, ptr %x48, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x53, align 1
  %52 = load i64, ptr %x38, align 8
  %53 = load i64, ptr %x50, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %51, i64 noundef %52, i64 noundef %53)
  %54 = load i8, ptr %x55, align 1
  %55 = load i64, ptr %x40, align 8
  %56 = load i8, ptr %x51, align 1
  %conv9 = zext i8 %56 to i64
  %57 = load i64, ptr %x47, align 8
  %add10 = add i64 %conv9, %57
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %54, i64 noundef %55, i64 noundef %add10)
  %58 = load i8, ptr %x57, align 1
  %59 = load i8, ptr %x41, align 1
  %conv11 = zext i8 %59 to i64
  %60 = load i8, ptr %x35, align 1
  %conv12 = zext i8 %60 to i64
  %61 = load i64, ptr %x21, align 8
  %add13 = add i64 %conv12, %61
  %add14 = add i64 %conv11, %add13
  %62 = load i64, ptr %x44, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %58, i64 noundef %add14, i64 noundef %62)
  %63 = load i64, ptr %x54, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %64, i64 3
  %65 = load i64, ptr %arrayidx15, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i64 noundef %63, i64 noundef %65)
  %66 = load i8, ptr %x61, align 1
  %67 = load i64, ptr %x56, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %66, i64 noundef %67, i64 noundef 0)
  %68 = load i8, ptr %x63, align 1
  %69 = load i64, ptr %x58, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %68, i64 noundef %69, i64 noundef 0)
  %70 = load i64, ptr %x60, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %70, i64 noundef -3263669768735654373)
  %71 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %71, i64 noundef 1152921504606846976)
  %72 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %72, i64 noundef 1503914060200516822)
  %73 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %73, i64 noundef 6346243789798364141)
  %74 = load i64, ptr %x73, align 8
  %75 = load i64, ptr %x70, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i64, ptr %x60, align 8
  %77 = load i64, ptr %x72, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i64 noundef %76, i64 noundef %77)
  %78 = load i8, ptr %x77, align 1
  %79 = load i64, ptr %x62, align 8
  %80 = load i64, ptr %x74, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %78, i64 noundef %79, i64 noundef %80)
  %81 = load i8, ptr %x79, align 1
  %82 = load i64, ptr %x64, align 8
  %83 = load i8, ptr %x75, align 1
  %conv16 = zext i8 %83 to i64
  %84 = load i64, ptr %x71, align 8
  %add17 = add i64 %conv16, %84
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %81, i64 noundef %82, i64 noundef %add17)
  %85 = load i8, ptr %x81, align 1
  %86 = load i8, ptr %x65, align 1
  %conv18 = zext i8 %86 to i64
  %87 = load i8, ptr %x59, align 1
  %conv19 = zext i8 %87 to i64
  %88 = load i64, ptr %x45, align 8
  %add20 = add i64 %conv19, %88
  %add21 = add i64 %conv18, %add20
  %89 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %85, i64 noundef %add21, i64 noundef %89)
  %90 = load i8, ptr %x83, align 1
  %conv22 = zext i8 %90 to i64
  %91 = load i64, ptr %x69, align 8
  %add23 = add i64 %conv22, %91
  store i64 %add23, ptr %x84, align 8
  %92 = load i64, ptr %x78, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext 0, i64 noundef %92, i64 noundef 6346243789798364141)
  %93 = load i8, ptr %x86, align 1
  %94 = load i64, ptr %x80, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %93, i64 noundef %94, i64 noundef 1503914060200516822)
  %95 = load i8, ptr %x88, align 1
  %96 = load i64, ptr %x82, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %95, i64 noundef %96, i64 noundef 0)
  %97 = load i8, ptr %x90, align 1
  %98 = load i64, ptr %x84, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %97, i64 noundef %98, i64 noundef 1152921504606846976)
  %99 = load i8, ptr %x92, align 1
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %99, i64 noundef 0, i64 noundef 0)
  %100 = load i8, ptr %x94, align 1
  %101 = load i64, ptr %x85, align 8
  %102 = load i64, ptr %x78, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x95, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x94, align 1
  %104 = load i64, ptr %x87, align 8
  %105 = load i64, ptr %x80, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x96, i8 noundef zeroext %103, i64 noundef %104, i64 noundef %105)
  %106 = load i8, ptr %x94, align 1
  %107 = load i64, ptr %x89, align 8
  %108 = load i64, ptr %x82, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x97, i8 noundef zeroext %106, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x94, align 1
  %110 = load i64, ptr %x91, align 8
  %111 = load i64, ptr %x84, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x98, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i64, ptr %x95, align 8
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 %112, ptr %arrayidx24, align 8
  %114 = load i64, ptr %x96, align 8
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %115, i64 1
  store i64 %114, ptr %arrayidx25, align 8
  %116 = load i64, ptr %x97, align 8
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %117, i64 2
  store i64 %116, ptr %arrayidx26, align 8
  %118 = load i64, ptr %x98, align 8
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %arrayidx27, align 8
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
