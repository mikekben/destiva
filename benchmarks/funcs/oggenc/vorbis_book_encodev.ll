; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_encode(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_book_encodev(ptr noundef %book, i32 noundef %best, ptr noundef %a, ptr noundef %b) #0 {
entry:
  %book.addr = alloca ptr, align 8
  %best.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %dim = alloca i32, align 4
  store ptr %book, ptr %book.addr, align 8
  store i32 %best, ptr %best.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %book.addr, align 8
  %dim1 = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %dim1, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %dim, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k, align 4
  %3 = load i32, ptr %dim, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %valuelist, align 8
  %6 = load i32, ptr %best.addr, align 4
  %7 = load i32, ptr %dim, align 4
  %mul = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %5, i64 %idx.ext
  %8 = load i32, ptr %k, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, ptr %add.ptr, i64 %idxprom
  %9 = load float, ptr %arrayidx, align 4
  %10 = load ptr, ptr %a.addr, align 8
  %11 = load i32, ptr %k, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %10, i64 %idxprom3
  store float %9, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %book.addr, align 8
  %14 = load i32, ptr %best.addr, align 4
  %15 = load ptr, ptr %b.addr, align 8
  %call = call i32 @vorbis_book_encode(ptr noundef %13, i32 noundef %14, ptr noundef %15)
  ret i32 %call
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
