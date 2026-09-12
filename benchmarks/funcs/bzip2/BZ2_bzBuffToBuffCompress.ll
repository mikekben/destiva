; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompressInit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompress(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompressEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzBuffToBuffCompress(ptr noundef %dest, ptr noundef %destLen, ptr noundef %source, i32 noundef %sourceLen, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %destLen.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %destLen, ptr %destLen.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i32 %sourceLen, ptr %sourceLen.addr, align 4
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
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
  %3 = load i32, ptr %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %4, 9
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %verbosity.addr, align 4
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, ptr %verbosity.addr, align 4
  %cmp11 = icmp sgt i32 %6, 4
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, ptr %workFactor.addr, align 4
  %cmp13 = icmp slt i32 %7, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, ptr %workFactor.addr, align 4
  %cmp15 = icmp sgt i32 %8, 250
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false14
  %9 = load i32, ptr %workFactor.addr, align 4
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  store i32 30, ptr %workFactor.addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 11
  store ptr null, ptr %opaque, align 8
  %10 = load i32, ptr %blockSize100k.addr, align 4
  %11 = load i32, ptr %verbosity.addr, align 4
  %12 = load i32, ptr %workFactor.addr, align 4
  %call = call i32 @BZ2_bzCompressInit(ptr noundef %strm, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call, ptr %ret, align 4
  %13 = load i32, ptr %ret, align 4
  %cmp19 = icmp ne i32 %13, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %14 = load i32, ptr %ret, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end18
  %15 = load ptr, ptr %source.addr, align 8
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 0
  store ptr %15, ptr %next_in, align 8
  %16 = load ptr, ptr %dest.addr, align 8
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 4
  store ptr %16, ptr %next_out, align 8
  %17 = load i32, ptr %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 1
  store i32 %17, ptr %avail_in, align 8
  %18 = load ptr, ptr %destLen.addr, align 8
  %19 = load i32, ptr %18, align 4
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  store i32 %19, ptr %avail_out, align 8
  %call22 = call i32 @BZ2_bzCompress(ptr noundef %strm, i32 noundef 2)
  store i32 %call22, ptr %ret, align 4
  %20 = load i32, ptr %ret, align 4
  %cmp23 = icmp eq i32 %20, 3
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %output_overflow

if.end25:                                         ; preds = %if.end21
  %21 = load i32, ptr %ret, align 4
  %cmp26 = icmp ne i32 %21, 4
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  br label %errhandler

if.end28:                                         ; preds = %if.end25
  %avail_out29 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  %22 = load i32, ptr %avail_out29, align 8
  %23 = load ptr, ptr %destLen.addr, align 8
  %24 = load i32, ptr %23, align 4
  %sub = sub i32 %24, %22
  store i32 %sub, ptr %23, align 4
  %call30 = call i32 @BZ2_bzCompressEnd(ptr noundef %strm)
  store i32 0, ptr %retval, align 4
  br label %return

output_overflow:                                  ; preds = %if.then24
  %call31 = call i32 @BZ2_bzCompressEnd(ptr noundef %strm)
  store i32 -8, ptr %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.then27
  %call32 = call i32 @BZ2_bzCompressEnd(ptr noundef %strm)
  %25 = load i32, ptr %ret, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %output_overflow, %if.end28, %if.then20, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
