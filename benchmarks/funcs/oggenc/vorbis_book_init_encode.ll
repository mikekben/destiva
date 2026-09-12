; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_make_words(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_book_unquantize(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_book_init_encode(ptr noundef %c, ptr noundef %s) #1 {
entry:
  %c.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %c.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 80, i1 false)
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %c.addr, align 8
  %c1 = getelementptr inbounds nuw %struct.codebook, ptr %2, i32 0, i32 3
  store ptr %1, ptr %c1, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %entries, align 8
  %5 = load ptr, ptr %c.addr, align 8
  %entries2 = getelementptr inbounds nuw %struct.codebook, ptr %5, i32 0, i32 1
  store i64 %4, ptr %entries2, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %entries3 = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %entries3, align 8
  %8 = load ptr, ptr %c.addr, align 8
  %used_entries = getelementptr inbounds nuw %struct.codebook, ptr %8, i32 0, i32 2
  store i64 %7, ptr %used_entries, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %dim, align 8
  %11 = load ptr, ptr %c.addr, align 8
  %dim4 = getelementptr inbounds nuw %struct.codebook, ptr %11, i32 0, i32 0
  store i64 %10, ptr %dim4, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %lengthlist, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %entries5 = getelementptr inbounds nuw %struct.static_codebook, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %entries5, align 8
  %call = call ptr @_make_words(ptr noundef %13, i64 noundef %15, i64 noundef 0)
  %16 = load ptr, ptr %c.addr, align 8
  %codelist = getelementptr inbounds nuw %struct.codebook, ptr %16, i32 0, i32 5
  store ptr %call, ptr %codelist, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %entries6 = getelementptr inbounds nuw %struct.static_codebook, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %entries6, align 8
  %conv = trunc i64 %19 to i32
  %call7 = call ptr @_book_unquantize(ptr noundef %17, i32 noundef %conv, ptr noundef null)
  %20 = load ptr, ptr %c.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %20, i32 0, i32 4
  store ptr %call7, ptr %valuelist, align 8
  ret i32 0
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
