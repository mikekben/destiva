; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_encode(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_encodepart(ptr noundef %opb, ptr noundef %vec, i32 noundef %n, ptr noundef %book, ptr noundef %acc) #0 {
entry:
  %opb.addr = alloca ptr, align 8
  %vec.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %book.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  %dim = alloca i32, align 4
  %step = alloca i32, align 4
  %entry3 = alloca i32, align 4
  store ptr %opb, ptr %opb.addr, align 8
  store ptr %vec, ptr %vec.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %book, ptr %book.addr, align 8
  store ptr %acc, ptr %acc.addr, align 8
  store i32 0, ptr %bits, align 4
  %0 = load ptr, ptr %book.addr, align 8
  %dim1 = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %dim1, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %dim, align 4
  %2 = load i32, ptr %n.addr, align 4
  %3 = load i32, ptr %dim, align 4
  %div = sdiv i32 %2, %3
  store i32 %div, ptr %step, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %step, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %book.addr, align 8
  %7 = load ptr, ptr %vec.addr, align 8
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %dim, align 4
  %mul = mul nsw i32 %8, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %7, i64 %idx.ext
  %call = call i32 @local_book_besterror(ptr noundef %6, ptr noundef %add.ptr)
  store i32 %call, ptr %entry3, align 4
  %10 = load ptr, ptr %book.addr, align 8
  %11 = load i32, ptr %entry3, align 4
  %12 = load ptr, ptr %opb.addr, align 8
  %call4 = call i32 @vorbis_book_encode(ptr noundef %10, i32 noundef %11, ptr noundef %12)
  %13 = load i32, ptr %bits, align 4
  %add = add nsw i32 %13, %call4
  store i32 %add, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %bits, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @local_book_besterror(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
