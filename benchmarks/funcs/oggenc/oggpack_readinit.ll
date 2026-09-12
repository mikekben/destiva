; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_readinit(ptr noundef %b, ptr noundef %buf, i32 noundef %bytes) #1 {
entry:
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %bytes, ptr %bytes.addr, align 4
  %0 = load ptr, ptr %b.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false)
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %2, i32 0, i32 3
  store ptr %1, ptr %ptr, align 8
  %3 = load ptr, ptr %b.addr, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %3, i32 0, i32 2
  store ptr %1, ptr %buffer, align 8
  %4 = load i32, ptr %bytes.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %5, i32 0, i32 4
  store i64 %conv, ptr %storage, align 8
  ret void
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
