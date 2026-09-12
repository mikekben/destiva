; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_book_decode(ptr noundef %book, ptr noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %packed_entry = alloca i64, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %book.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %call = call i64 @decode_packed_entry_number(ptr noundef %0, ptr noundef %1)
  store i64 %call, ptr %packed_entry, align 8
  %2 = load i64, ptr %packed_entry, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %book.addr, align 8
  %dec_index = getelementptr inbounds nuw %struct.codebook, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %dec_index, align 8
  %5 = load i64, ptr %packed_entry, align 8
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %5
  %6 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %6 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %packed_entry, align 8
  store i64 %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
declare hidden i64 @decode_packed_entry_number(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
