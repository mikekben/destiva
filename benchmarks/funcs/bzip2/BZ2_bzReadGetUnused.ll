; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzReadGetUnused(ptr noundef %bzerror, ptr noundef %b, ptr noundef %unused, ptr noundef %nUnused) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %nUnused.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  store ptr %nUnused, ptr %nUnused.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  store ptr %0, ptr %bzf, align 8
  %1 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bzerror.addr, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load ptr, ptr %bzf, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %5, i32 0, i32 5
  store i32 -2, ptr %lastErr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %return

if.end6:                                          ; preds = %entry
  %6 = load ptr, ptr %bzf, align 8
  %lastErr7 = getelementptr inbounds nuw %struct.bzFile, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %lastErr7, align 8
  %cmp8 = icmp ne i32 %7, 4
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr %bzerror.addr, align 8
  %cmp10 = icmp ne ptr %8, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %9 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %9, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %10 = load ptr, ptr %bzf, align 8
  %cmp13 = icmp ne ptr %10, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %bzf, align 8
  %lastErr15 = getelementptr inbounds nuw %struct.bzFile, ptr %11, i32 0, i32 5
  store i32 -1, ptr %lastErr15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  br label %return

if.end17:                                         ; preds = %if.end6
  %12 = load ptr, ptr %unused.addr, align 8
  %cmp18 = icmp eq ptr %12, null
  br i1 %cmp18, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %13 = load ptr, ptr %nUnused.addr, align 8
  %cmp19 = icmp eq ptr %13, null
  br i1 %cmp19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %lor.lhs.false, %if.end17
  %14 = load ptr, ptr %bzerror.addr, align 8
  %cmp21 = icmp ne ptr %14, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  %15 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %16 = load ptr, ptr %bzf, align 8
  %cmp24 = icmp ne ptr %16, null
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  %17 = load ptr, ptr %bzf, align 8
  %lastErr26 = getelementptr inbounds nuw %struct.bzFile, ptr %17, i32 0, i32 5
  store i32 -2, ptr %lastErr26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %bzerror.addr, align 8
  %cmp29 = icmp ne ptr %18, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %19 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %19, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %20 = load ptr, ptr %bzf, align 8
  %cmp32 = icmp ne ptr %20, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %21 = load ptr, ptr %bzf, align 8
  %lastErr34 = getelementptr inbounds nuw %struct.bzFile, ptr %21, i32 0, i32 5
  store i32 0, ptr %lastErr34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  %22 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 1
  %23 = load i32, ptr %avail_in, align 8
  %24 = load ptr, ptr %nUnused.addr, align 8
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %bzf, align 8
  %strm36 = getelementptr inbounds nuw %struct.bzFile, ptr %25, i32 0, i32 4
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm36, i32 0, i32 0
  %26 = load ptr, ptr %next_in, align 8
  %27 = load ptr, ptr %unused.addr, align 8
  store ptr %26, ptr %27, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.end27, %if.end16, %if.end5
  ret void
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
