; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @bz_config_ok() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @default_bzalloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @default_bzfree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompressInit(ptr noundef %strm, i32 noundef %verbosity, i32 noundef %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = load i32, ptr %small.addr, align 4
  %cmp3 = icmp ne i32 %1, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end2
  %2 = load i32, ptr %small.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %3 = load i32, ptr %verbosity.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %4 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp sgt i32 %4, 4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %5 = load ptr, ptr %strm.addr, align 8
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %bzalloc, align 8
  %cmp11 = icmp eq ptr %6, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %7 = load ptr, ptr %strm.addr, align 8
  %bzalloc13 = getelementptr inbounds nuw %struct.bz_stream, ptr %7, i32 0, i32 9
  store ptr @default_bzalloc, ptr %bzalloc13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %8 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %bzfree, align 8
  %cmp15 = icmp eq ptr %9, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %10 = load ptr, ptr %strm.addr, align 8
  %bzfree17 = getelementptr inbounds nuw %struct.bz_stream, ptr %10, i32 0, i32 10
  store ptr @default_bzfree, ptr %bzfree17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %11 = load ptr, ptr %strm.addr, align 8
  %bzalloc19 = getelementptr inbounds nuw %struct.bz_stream, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %bzalloc19, align 8
  %13 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %opaque, align 8
  %call20 = call ptr %12(ptr noundef %14, i32 noundef 64144, i32 noundef 1)
  store ptr %call20, ptr %s, align 8
  %15 = load ptr, ptr %s, align 8
  %cmp21 = icmp eq ptr %15, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -3, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %16 = load ptr, ptr %strm.addr, align 8
  %17 = load ptr, ptr %s, align 8
  %strm24 = getelementptr inbounds nuw %struct.DState, ptr %17, i32 0, i32 0
  store ptr %16, ptr %strm24, align 8
  %18 = load ptr, ptr %s, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds nuw %struct.bz_stream, ptr %19, i32 0, i32 8
  store ptr %18, ptr %state, align 8
  %20 = load ptr, ptr %s, align 8
  %state25 = getelementptr inbounds nuw %struct.DState, ptr %20, i32 0, i32 1
  store i32 10, ptr %state25, align 8
  %21 = load ptr, ptr %s, align 8
  %bsLive = getelementptr inbounds nuw %struct.DState, ptr %21, i32 0, i32 8
  store i32 0, ptr %bsLive, align 4
  %22 = load ptr, ptr %s, align 8
  %bsBuff = getelementptr inbounds nuw %struct.DState, ptr %22, i32 0, i32 7
  store i32 0, ptr %bsBuff, align 8
  %23 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds nuw %struct.DState, ptr %23, i32 0, i32 26
  store i32 0, ptr %calculatedCombinedCRC, align 4
  %24 = load ptr, ptr %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %24, i32 0, i32 2
  store i32 0, ptr %total_in_lo32, align 4
  %25 = load ptr, ptr %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %25, i32 0, i32 3
  store i32 0, ptr %total_in_hi32, align 8
  %26 = load ptr, ptr %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %26, i32 0, i32 6
  store i32 0, ptr %total_out_lo32, align 4
  %27 = load ptr, ptr %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %27, i32 0, i32 7
  store i32 0, ptr %total_out_hi32, align 8
  %28 = load i32, ptr %small.addr, align 4
  %conv = trunc i32 %28 to i8
  %29 = load ptr, ptr %s, align 8
  %smallDecompress = getelementptr inbounds nuw %struct.DState, ptr %29, i32 0, i32 10
  store i8 %conv, ptr %smallDecompress, align 4
  %30 = load ptr, ptr %s, align 8
  %ll4 = getelementptr inbounds nuw %struct.DState, ptr %30, i32 0, i32 22
  store ptr null, ptr %ll4, align 8
  %31 = load ptr, ptr %s, align 8
  %ll16 = getelementptr inbounds nuw %struct.DState, ptr %31, i32 0, i32 21
  store ptr null, ptr %ll16, align 8
  %32 = load ptr, ptr %s, align 8
  %tt = getelementptr inbounds nuw %struct.DState, ptr %32, i32 0, i32 20
  store ptr null, ptr %tt, align 8
  %33 = load ptr, ptr %s, align 8
  %currBlockNo = getelementptr inbounds nuw %struct.DState, ptr %33, i32 0, i32 11
  store i32 0, ptr %currBlockNo, align 8
  %34 = load i32, ptr %verbosity.addr, align 4
  %35 = load ptr, ptr %s, align 8
  %verbosity26 = getelementptr inbounds nuw %struct.DState, ptr %35, i32 0, i32 12
  store i32 %34, ptr %verbosity26, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then9, %if.then5, %if.then1, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
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
