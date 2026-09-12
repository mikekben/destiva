; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompressInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompress(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompressEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %dest, ptr noundef %destLen, ptr noundef %source, i32 noundef %sourceLen, i32 noundef %small, i32 noundef %verbosity) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %destLen.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %destLen, ptr %destLen.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i32 %sourceLen, ptr %sourceLen.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  %0 = load ptr, ptr %dest.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %destLen.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %source.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %small.addr, align 4
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %4 = load i32, ptr %small.addr, align 4
  %cmp6 = icmp ne i32 %4, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %5 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %5, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %6 = load i32, ptr %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %6, 4
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false9
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 11
  store ptr null, ptr %opaque, align 8
  %7 = load i32, ptr %verbosity.addr, align 4
  %8 = load i32, ptr %small.addr, align 4
  %call = call i32 @BZ2_bzDecompressInit(ptr noundef %strm, i32 noundef %7, i32 noundef %8)
  store i32 %call, ptr %ret, align 4
  %9 = load i32, ptr %ret, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %10 = load i32, ptr %ret, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %11 = load ptr, ptr %source.addr, align 8
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 0
  store ptr %11, ptr %next_in, align 8
  %12 = load ptr, ptr %dest.addr, align 8
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 4
  store ptr %12, ptr %next_out, align 8
  %13 = load i32, ptr %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 1
  store i32 %13, ptr %avail_in, align 8
  %14 = load ptr, ptr %destLen.addr, align 8
  %15 = load i32, ptr %14, align 4
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  store i32 %15, ptr %avail_out, align 8
  %call14 = call i32 @BZ2_bzDecompress(ptr noundef %strm)
  store i32 %call14, ptr %ret, align 4
  %16 = load i32, ptr %ret, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %output_overflow_or_eof

if.end17:                                         ; preds = %if.end13
  %17 = load i32, ptr %ret, align 4
  %cmp18 = icmp ne i32 %17, 4
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  br label %errhandler

if.end20:                                         ; preds = %if.end17
  %avail_out21 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  %18 = load i32, ptr %avail_out21, align 8
  %19 = load ptr, ptr %destLen.addr, align 8
  %20 = load i32, ptr %19, align 4
  %sub = sub i32 %20, %18
  store i32 %sub, ptr %19, align 4
  %call22 = call i32 @BZ2_bzDecompressEnd(ptr noundef %strm)
  store i32 0, ptr %retval, align 4
  br label %return

output_overflow_or_eof:                           ; preds = %if.then16
  %avail_out23 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  %21 = load i32, ptr %avail_out23, align 8
  %cmp24 = icmp ugt i32 %21, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %output_overflow_or_eof
  %call26 = call i32 @BZ2_bzDecompressEnd(ptr noundef %strm)
  store i32 -7, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %output_overflow_or_eof
  %call27 = call i32 @BZ2_bzDecompressEnd(ptr noundef %strm)
  store i32 -8, ptr %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.then19
  %call28 = call i32 @BZ2_bzDecompressEnd(ptr noundef %strm)
  %22 = load i32, ptr %ret, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %if.else, %if.then25, %if.end20, %if.then12, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
