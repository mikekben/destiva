; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_book_encode(ptr noundef %book, i32 noundef %a, ptr noundef %b) #0 {
entry:
  %book.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store ptr %book, ptr %book.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load ptr, ptr %book.addr, align 8
  %codelist = getelementptr inbounds nuw %struct.codebook, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %codelist, align 8
  %3 = load i32, ptr %a.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %4 to i64
  %5 = load ptr, ptr %book.addr, align 8
  %c = getelementptr inbounds nuw %struct.codebook, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %c, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %lengthlist, align 8
  %8 = load i32, ptr %a.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i64, ptr %7, i64 %idxprom1
  %9 = load i64, ptr %arrayidx2, align 8
  %conv3 = trunc i64 %9 to i32
  call void @oggpack_write(ptr noundef %0, i64 noundef %conv, i32 noundef %conv3)
  %10 = load ptr, ptr %book.addr, align 8
  %c4 = getelementptr inbounds nuw %struct.codebook, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %c4, align 8
  %lengthlist5 = getelementptr inbounds nuw %struct.static_codebook, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %lengthlist5, align 8
  %13 = load i32, ptr %a.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i64, ptr %12, i64 %idxprom6
  %14 = load i64, ptr %arrayidx7, align 8
  %conv8 = trunc i64 %14 to i32
  ret i32 %conv8
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
