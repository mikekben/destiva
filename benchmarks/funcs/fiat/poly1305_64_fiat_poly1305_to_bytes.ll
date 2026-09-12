; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_addcarryx_u44(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_subborrowx_u44(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_addcarryx_u43(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_subborrowx_u43(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_poly1305_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i64, align 8
  %x9 = alloca i8, align 1
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
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
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i8, align 1
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_poly1305_subborrowx_u44(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 17592186044411)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_poly1305_subborrowx_u43(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 8796093022207)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_poly1305_subborrowx_u43(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 8796093022207)
  %8 = load i8, ptr %x6, align 1
  call void @fiat_poly1305_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef 0, i64 noundef -1)
  %9 = load i64, ptr %x1, align 8
  %10 = load i64, ptr %x7, align 8
  %and = and i64 %10, 17592186044411
  call void @fiat_poly1305_addcarryx_u44(ptr noundef %x8, ptr noundef %x9, i8 noundef zeroext 0, i64 noundef %9, i64 noundef %and)
  %11 = load i8, ptr %x9, align 1
  %12 = load i64, ptr %x3, align 8
  %13 = load i64, ptr %x7, align 8
  %and3 = and i64 %13, 8796093022207
  call void @fiat_poly1305_addcarryx_u43(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext %11, i64 noundef %12, i64 noundef %and3)
  %14 = load i8, ptr %x11, align 1
  %15 = load i64, ptr %x5, align 8
  %16 = load i64, ptr %x7, align 8
  %and4 = and i64 %16, 8796093022207
  call void @fiat_poly1305_addcarryx_u43(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %and4)
  %17 = load i64, ptr %x12, align 8
  %shl = shl i64 %17, 7
  store i64 %shl, ptr %x14, align 8
  %18 = load i64, ptr %x10, align 8
  %shl5 = shl i64 %18, 4
  store i64 %shl5, ptr %x15, align 8
  %19 = load i64, ptr %x8, align 8
  %and6 = and i64 %19, 255
  %conv = trunc i64 %and6 to i8
  store i8 %conv, ptr %x16, align 1
  %20 = load i64, ptr %x8, align 8
  %shr = lshr i64 %20, 8
  store i64 %shr, ptr %x17, align 8
  %21 = load i64, ptr %x17, align 8
  %and7 = and i64 %21, 255
  %conv8 = trunc i64 %and7 to i8
  store i8 %conv8, ptr %x18, align 1
  %22 = load i64, ptr %x17, align 8
  %shr9 = lshr i64 %22, 8
  store i64 %shr9, ptr %x19, align 8
  %23 = load i64, ptr %x19, align 8
  %and10 = and i64 %23, 255
  %conv11 = trunc i64 %and10 to i8
  store i8 %conv11, ptr %x20, align 1
  %24 = load i64, ptr %x19, align 8
  %shr12 = lshr i64 %24, 8
  store i64 %shr12, ptr %x21, align 8
  %25 = load i64, ptr %x21, align 8
  %and13 = and i64 %25, 255
  %conv14 = trunc i64 %and13 to i8
  store i8 %conv14, ptr %x22, align 1
  %26 = load i64, ptr %x21, align 8
  %shr15 = lshr i64 %26, 8
  store i64 %shr15, ptr %x23, align 8
  %27 = load i64, ptr %x23, align 8
  %and16 = and i64 %27, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x24, align 1
  %28 = load i64, ptr %x23, align 8
  %shr18 = lshr i64 %28, 8
  %conv19 = trunc i64 %shr18 to i8
  store i8 %conv19, ptr %x25, align 1
  %29 = load i64, ptr %x15, align 8
  %30 = load i8, ptr %x25, align 1
  %conv20 = zext i8 %30 to i64
  %add = add i64 %29, %conv20
  store i64 %add, ptr %x26, align 8
  %31 = load i64, ptr %x26, align 8
  %and21 = and i64 %31, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x27, align 1
  %32 = load i64, ptr %x26, align 8
  %shr23 = lshr i64 %32, 8
  store i64 %shr23, ptr %x28, align 8
  %33 = load i64, ptr %x28, align 8
  %and24 = and i64 %33, 255
  %conv25 = trunc i64 %and24 to i8
  store i8 %conv25, ptr %x29, align 1
  %34 = load i64, ptr %x28, align 8
  %shr26 = lshr i64 %34, 8
  store i64 %shr26, ptr %x30, align 8
  %35 = load i64, ptr %x30, align 8
  %and27 = and i64 %35, 255
  %conv28 = trunc i64 %and27 to i8
  store i8 %conv28, ptr %x31, align 1
  %36 = load i64, ptr %x30, align 8
  %shr29 = lshr i64 %36, 8
  store i64 %shr29, ptr %x32, align 8
  %37 = load i64, ptr %x32, align 8
  %and30 = and i64 %37, 255
  %conv31 = trunc i64 %and30 to i8
  store i8 %conv31, ptr %x33, align 1
  %38 = load i64, ptr %x32, align 8
  %shr32 = lshr i64 %38, 8
  store i64 %shr32, ptr %x34, align 8
  %39 = load i64, ptr %x34, align 8
  %and33 = and i64 %39, 255
  %conv34 = trunc i64 %and33 to i8
  store i8 %conv34, ptr %x35, align 1
  %40 = load i64, ptr %x34, align 8
  %shr35 = lshr i64 %40, 8
  %conv36 = trunc i64 %shr35 to i8
  store i8 %conv36, ptr %x36, align 1
  %41 = load i64, ptr %x14, align 8
  %42 = load i8, ptr %x36, align 1
  %conv37 = zext i8 %42 to i64
  %add38 = add i64 %41, %conv37
  store i64 %add38, ptr %x37, align 8
  %43 = load i64, ptr %x37, align 8
  %and39 = and i64 %43, 255
  %conv40 = trunc i64 %and39 to i8
  store i8 %conv40, ptr %x38, align 1
  %44 = load i64, ptr %x37, align 8
  %shr41 = lshr i64 %44, 8
  store i64 %shr41, ptr %x39, align 8
  %45 = load i64, ptr %x39, align 8
  %and42 = and i64 %45, 255
  %conv43 = trunc i64 %and42 to i8
  store i8 %conv43, ptr %x40, align 1
  %46 = load i64, ptr %x39, align 8
  %shr44 = lshr i64 %46, 8
  store i64 %shr44, ptr %x41, align 8
  %47 = load i64, ptr %x41, align 8
  %and45 = and i64 %47, 255
  %conv46 = trunc i64 %and45 to i8
  store i8 %conv46, ptr %x42, align 1
  %48 = load i64, ptr %x41, align 8
  %shr47 = lshr i64 %48, 8
  store i64 %shr47, ptr %x43, align 8
  %49 = load i64, ptr %x43, align 8
  %and48 = and i64 %49, 255
  %conv49 = trunc i64 %and48 to i8
  store i8 %conv49, ptr %x44, align 1
  %50 = load i64, ptr %x43, align 8
  %shr50 = lshr i64 %50, 8
  store i64 %shr50, ptr %x45, align 8
  %51 = load i64, ptr %x45, align 8
  %and51 = and i64 %51, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x46, align 1
  %52 = load i64, ptr %x45, align 8
  %shr53 = lshr i64 %52, 8
  store i64 %shr53, ptr %x47, align 8
  %53 = load i64, ptr %x47, align 8
  %and54 = and i64 %53, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x48, align 1
  %54 = load i64, ptr %x47, align 8
  %shr56 = lshr i64 %54, 8
  %conv57 = trunc i64 %shr56 to i8
  store i8 %conv57, ptr %x49, align 1
  %55 = load i8, ptr %x16, align 1
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %56, i64 0
  store i8 %55, ptr %arrayidx58, align 1
  %57 = load i8, ptr %x18, align 1
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %57, ptr %arrayidx59, align 1
  %59 = load i8, ptr %x20, align 1
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %60, i64 2
  store i8 %59, ptr %arrayidx60, align 1
  %61 = load i8, ptr %x22, align 1
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %62, i64 3
  store i8 %61, ptr %arrayidx61, align 1
  %63 = load i8, ptr %x24, align 1
  %64 = load ptr, ptr %out1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %64, i64 4
  store i8 %63, ptr %arrayidx62, align 1
  %65 = load i8, ptr %x27, align 1
  %66 = load ptr, ptr %out1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %66, i64 5
  store i8 %65, ptr %arrayidx63, align 1
  %67 = load i8, ptr %x29, align 1
  %68 = load ptr, ptr %out1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %68, i64 6
  store i8 %67, ptr %arrayidx64, align 1
  %69 = load i8, ptr %x31, align 1
  %70 = load ptr, ptr %out1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %70, i64 7
  store i8 %69, ptr %arrayidx65, align 1
  %71 = load i8, ptr %x33, align 1
  %72 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %72, i64 8
  store i8 %71, ptr %arrayidx66, align 1
  %73 = load i8, ptr %x35, align 1
  %74 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %74, i64 9
  store i8 %73, ptr %arrayidx67, align 1
  %75 = load i8, ptr %x38, align 1
  %76 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %76, i64 10
  store i8 %75, ptr %arrayidx68, align 1
  %77 = load i8, ptr %x40, align 1
  %78 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %78, i64 11
  store i8 %77, ptr %arrayidx69, align 1
  %79 = load i8, ptr %x42, align 1
  %80 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %80, i64 12
  store i8 %79, ptr %arrayidx70, align 1
  %81 = load i8, ptr %x44, align 1
  %82 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %82, i64 13
  store i8 %81, ptr %arrayidx71, align 1
  %83 = load i8, ptr %x46, align 1
  %84 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %84, i64 14
  store i8 %83, ptr %arrayidx72, align 1
  %85 = load i8, ptr %x48, align 1
  %86 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %86, i64 15
  store i8 %85, ptr %arrayidx73, align 1
  %87 = load i8, ptr %x49, align 1
  %88 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %88, i64 16
  store i8 %87, ptr %arrayidx74, align 1
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
