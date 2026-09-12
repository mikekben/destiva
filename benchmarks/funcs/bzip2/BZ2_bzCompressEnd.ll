; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompressEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds nuw %struct.bz_stream, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load ptr, ptr %s, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %strm4 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %strm4, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %cmp5 = icmp ne ptr %5, %6
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %s, align 8
  %arr1 = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %arr1, align 8
  %cmp8 = icmp ne ptr %8, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %bzfree, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %opaque, align 8
  %13 = load ptr, ptr %s, align 8
  %arr110 = getelementptr inbounds nuw %struct.EState, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %arr110, align 8
  call void %10(ptr noundef %12, ptr noundef %14)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %15 = load ptr, ptr %s, align 8
  %arr2 = getelementptr inbounds nuw %struct.EState, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %arr2, align 8
  %cmp12 = icmp ne ptr %16, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %17 = load ptr, ptr %strm.addr, align 8
  %bzfree14 = getelementptr inbounds nuw %struct.bz_stream, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %bzfree14, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %opaque15 = getelementptr inbounds nuw %struct.bz_stream, ptr %19, i32 0, i32 11
  %20 = load ptr, ptr %opaque15, align 8
  %21 = load ptr, ptr %s, align 8
  %arr216 = getelementptr inbounds nuw %struct.EState, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %arr216, align 8
  call void %18(ptr noundef %20, ptr noundef %22)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %23 = load ptr, ptr %s, align 8
  %ftab = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %ftab, align 8
  %cmp18 = icmp ne ptr %24, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %25 = load ptr, ptr %strm.addr, align 8
  %bzfree20 = getelementptr inbounds nuw %struct.bz_stream, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %bzfree20, align 8
  %27 = load ptr, ptr %strm.addr, align 8
  %opaque21 = getelementptr inbounds nuw %struct.bz_stream, ptr %27, i32 0, i32 11
  %28 = load ptr, ptr %opaque21, align 8
  %29 = load ptr, ptr %s, align 8
  %ftab22 = getelementptr inbounds nuw %struct.EState, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %ftab22, align 8
  call void %26(ptr noundef %28, ptr noundef %30)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %31 = load ptr, ptr %strm.addr, align 8
  %bzfree24 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 10
  %32 = load ptr, ptr %bzfree24, align 8
  %33 = load ptr, ptr %strm.addr, align 8
  %opaque25 = getelementptr inbounds nuw %struct.bz_stream, ptr %33, i32 0, i32 11
  %34 = load ptr, ptr %opaque25, align 8
  %35 = load ptr, ptr %strm.addr, align 8
  %state26 = getelementptr inbounds nuw %struct.bz_stream, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %state26, align 8
  call void %32(ptr noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %strm.addr, align 8
  %state27 = getelementptr inbounds nuw %struct.bz_stream, ptr %37, i32 0, i32 8
  store ptr null, ptr %state27, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
