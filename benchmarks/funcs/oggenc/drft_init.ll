; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drft_lookup = type { i32, ptr, ptr }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @drft_init(ptr noundef %l, i32 noundef %n) #1 {
entry:
  %l.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load ptr, ptr %l.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.drft_lookup, ptr %1, i32 0, i32 0
  store i32 %0, ptr %n1, align 8
  %2 = load i32, ptr %n.addr, align 4
  %mul = mul nsw i32 3, %2
  %conv = sext i32 %mul to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #2
  %3 = load ptr, ptr %l.addr, align 8
  %trigcache = getelementptr inbounds nuw %struct.drft_lookup, ptr %3, i32 0, i32 1
  store ptr %call, ptr %trigcache, align 8
  %call2 = call noalias ptr @calloc(i64 noundef 32, i64 noundef 4) #2
  %4 = load ptr, ptr %l.addr, align 8
  %splitcache = getelementptr inbounds nuw %struct.drft_lookup, ptr %4, i32 0, i32 2
  store ptr %call2, ptr %splitcache, align 8
  %5 = load i32, ptr %n.addr, align 4
  %6 = load ptr, ptr %l.addr, align 8
  %trigcache3 = getelementptr inbounds nuw %struct.drft_lookup, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %trigcache3, align 8
  %8 = load ptr, ptr %l.addr, align 8
  %splitcache4 = getelementptr inbounds nuw %struct.drft_lookup, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %splitcache4, align 8
  call void @fdrffti(i32 noundef %5, ptr noundef %7, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @fdrffti(i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
