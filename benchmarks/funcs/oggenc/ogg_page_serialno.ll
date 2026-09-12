; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_page_serialno(ptr noundef %og) #0 {
entry:
  %og.addr = alloca ptr, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %og.addr, align 8
  %header = getelementptr inbounds nuw %struct.ogg_page, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %header, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 14
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load ptr, ptr %og.addr, align 8
  %header1 = getelementptr inbounds nuw %struct.ogg_page, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %header1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 15
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %6 = load ptr, ptr %og.addr, align 8
  %header4 = getelementptr inbounds nuw %struct.ogg_page, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %header4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 16
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %shl7 = shl i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %9 = load ptr, ptr %og.addr, align 8
  %header9 = getelementptr inbounds nuw %struct.ogg_page, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %header9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 17
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %shl12 = shl i32 %conv11, 24
  %or13 = or i32 %or8, %shl12
  ret i32 %or13
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
