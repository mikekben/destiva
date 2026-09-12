; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.alloc_chain = type { ptr, ptr }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @_vorbis_block_alloc(ptr noundef %vb, i64 noundef %bytes) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %link = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store i64 %bytes, ptr %bytes.addr, align 8
  %0 = load i64, ptr %bytes.addr, align 8
  %add = add nsw i64 %0, 7
  %and = and i64 %add, -8
  store i64 %and, ptr %bytes.addr, align 8
  %1 = load i64, ptr %bytes.addr, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %localtop = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 12
  %3 = load i64, ptr %localtop, align 8
  %add1 = add nsw i64 %1, %3
  %4 = load ptr, ptr %vb.addr, align 8
  %localalloc = getelementptr inbounds nuw %struct.vorbis_block, ptr %4, i32 0, i32 13
  %5 = load i64, ptr %localalloc, align 8
  %cmp = icmp sgt i64 %add1, %5
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %vb.addr, align 8
  %localstore = getelementptr inbounds nuw %struct.vorbis_block, ptr %6, i32 0, i32 11
  %7 = load ptr, ptr %localstore, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call noalias ptr @malloc(i64 noundef 16) #2
  store ptr %call, ptr %link, align 8
  %8 = load ptr, ptr %vb.addr, align 8
  %localtop3 = getelementptr inbounds nuw %struct.vorbis_block, ptr %8, i32 0, i32 12
  %9 = load i64, ptr %localtop3, align 8
  %10 = load ptr, ptr %vb.addr, align 8
  %totaluse = getelementptr inbounds nuw %struct.vorbis_block, ptr %10, i32 0, i32 14
  %11 = load i64, ptr %totaluse, align 8
  %add4 = add nsw i64 %11, %9
  store i64 %add4, ptr %totaluse, align 8
  %12 = load ptr, ptr %vb.addr, align 8
  %reap = getelementptr inbounds nuw %struct.vorbis_block, ptr %12, i32 0, i32 15
  %13 = load ptr, ptr %reap, align 8
  %14 = load ptr, ptr %link, align 8
  %next = getelementptr inbounds nuw %struct.alloc_chain, ptr %14, i32 0, i32 1
  store ptr %13, ptr %next, align 8
  %15 = load ptr, ptr %vb.addr, align 8
  %localstore5 = getelementptr inbounds nuw %struct.vorbis_block, ptr %15, i32 0, i32 11
  %16 = load ptr, ptr %localstore5, align 8
  %17 = load ptr, ptr %link, align 8
  %ptr = getelementptr inbounds nuw %struct.alloc_chain, ptr %17, i32 0, i32 0
  store ptr %16, ptr %ptr, align 8
  %18 = load ptr, ptr %link, align 8
  %19 = load ptr, ptr %vb.addr, align 8
  %reap6 = getelementptr inbounds nuw %struct.vorbis_block, ptr %19, i32 0, i32 15
  store ptr %18, ptr %reap6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %20 = load i64, ptr %bytes.addr, align 8
  %21 = load ptr, ptr %vb.addr, align 8
  %localalloc7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %21, i32 0, i32 13
  store i64 %20, ptr %localalloc7, align 8
  %22 = load ptr, ptr %vb.addr, align 8
  %localalloc8 = getelementptr inbounds nuw %struct.vorbis_block, ptr %22, i32 0, i32 13
  %23 = load i64, ptr %localalloc8, align 8
  %call9 = call noalias ptr @malloc(i64 noundef %23) #2
  %24 = load ptr, ptr %vb.addr, align 8
  %localstore10 = getelementptr inbounds nuw %struct.vorbis_block, ptr %24, i32 0, i32 11
  store ptr %call9, ptr %localstore10, align 8
  %25 = load ptr, ptr %vb.addr, align 8
  %localtop11 = getelementptr inbounds nuw %struct.vorbis_block, ptr %25, i32 0, i32 12
  store i64 0, ptr %localtop11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  %26 = load ptr, ptr %vb.addr, align 8
  %localstore13 = getelementptr inbounds nuw %struct.vorbis_block, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %localstore13, align 8
  %28 = load ptr, ptr %vb.addr, align 8
  %localtop14 = getelementptr inbounds nuw %struct.vorbis_block, ptr %28, i32 0, i32 12
  %29 = load i64, ptr %localtop14, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %29
  store ptr %add.ptr, ptr %ret, align 8
  %30 = load i64, ptr %bytes.addr, align 8
  %31 = load ptr, ptr %vb.addr, align 8
  %localtop15 = getelementptr inbounds nuw %struct.vorbis_block, ptr %31, i32 0, i32 12
  %32 = load i64, ptr %localtop15, align 8
  %add16 = add nsw i64 %32, %30
  store i64 %add16, ptr %localtop15, align 8
  %33 = load ptr, ptr %ret, align 8
  ret ptr %33
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
