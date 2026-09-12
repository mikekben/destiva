; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i64 @ogg_page_granulepos(ptr noundef %og) #0 {
entry:
  %og.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %granulepos = alloca i64, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %og.addr, align 8
  %header = getelementptr inbounds nuw %struct.ogg_page, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %header, align 8
  store ptr %1, ptr %page, align 8
  %2 = load ptr, ptr %page, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 13
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  store i64 %conv1, ptr %granulepos, align 8
  %4 = load i64, ptr %granulepos, align 8
  %shl = shl i64 %4, 8
  %5 = load ptr, ptr %page, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 12
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = sext i32 %and4 to i64
  %or = or i64 %shl, %conv5
  store i64 %or, ptr %granulepos, align 8
  %7 = load i64, ptr %granulepos, align 8
  %shl6 = shl i64 %7, 8
  %8 = load ptr, ptr %page, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 11
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %or11 = or i64 %shl6, %conv10
  store i64 %or11, ptr %granulepos, align 8
  %10 = load i64, ptr %granulepos, align 8
  %shl12 = shl i64 %10, 8
  %11 = load ptr, ptr %page, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 10
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %or17 = or i64 %shl12, %conv16
  store i64 %or17, ptr %granulepos, align 8
  %13 = load i64, ptr %granulepos, align 8
  %shl18 = shl i64 %13, 8
  %14 = load ptr, ptr %page, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 9
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %and21 = and i32 %conv20, 255
  %conv22 = sext i32 %and21 to i64
  %or23 = or i64 %shl18, %conv22
  store i64 %or23, ptr %granulepos, align 8
  %16 = load i64, ptr %granulepos, align 8
  %shl24 = shl i64 %16, 8
  %17 = load ptr, ptr %page, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %and27 = and i32 %conv26, 255
  %conv28 = sext i32 %and27 to i64
  %or29 = or i64 %shl24, %conv28
  store i64 %or29, ptr %granulepos, align 8
  %19 = load i64, ptr %granulepos, align 8
  %shl30 = shl i64 %19, 8
  %20 = load ptr, ptr %page, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %20, i64 7
  %21 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %21 to i32
  %and33 = and i32 %conv32, 255
  %conv34 = sext i32 %and33 to i64
  %or35 = or i64 %shl30, %conv34
  store i64 %or35, ptr %granulepos, align 8
  %22 = load i64, ptr %granulepos, align 8
  %shl36 = shl i64 %22, 8
  %23 = load ptr, ptr %page, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %23, i64 6
  %24 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %24 to i32
  %and39 = and i32 %conv38, 255
  %conv40 = sext i32 %and39 to i64
  %or41 = or i64 %shl36, %conv40
  store i64 %or41, ptr %granulepos, align 8
  %25 = load i64, ptr %granulepos, align 8
  ret i64 %25
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
