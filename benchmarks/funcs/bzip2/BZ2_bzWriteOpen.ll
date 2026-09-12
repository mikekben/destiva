; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompressInit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @BZ2_bzWriteOpen(ptr noundef %bzerror, ptr noundef %f, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca ptr, align 8
  %bzerror.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
  store ptr null, ptr %bzf, align 8
  %0 = load ptr, ptr %bzerror.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %bzf, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %3, i32 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %f.addr, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, ptr %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %if.then16, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %6, 9
  br i1 %cmp7, label %if.then16, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, ptr %workFactor.addr, align 4
  %cmp9 = icmp slt i32 %7, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, ptr %workFactor.addr, align 4
  %cmp11 = icmp sgt i32 %8, 250
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %9 = load i32, ptr %verbosity.addr, align 4
  %cmp13 = icmp slt i32 %9, 0
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %10 = load i32, ptr %verbosity.addr, align 4
  %cmp15 = icmp sgt i32 %10, 4
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %if.end3
  %11 = load ptr, ptr %bzerror.addr, align 8
  %cmp17 = icmp ne ptr %11, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %12 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %12, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %13 = load ptr, ptr %bzf, align 8
  %cmp20 = icmp ne ptr %13, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %14 = load ptr, ptr %bzf, align 8
  %lastErr22 = getelementptr inbounds nuw %struct.bzFile, ptr %14, i32 0, i32 5
  store i32 -2, ptr %lastErr22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %lor.lhs.false14
  %15 = load ptr, ptr %f.addr, align 8
  %call = call i32 @ferror(ptr noundef %15) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end24
  %16 = load ptr, ptr %bzerror.addr, align 8
  %cmp26 = icmp ne ptr %16, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  %17 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %17, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  %18 = load ptr, ptr %bzf, align 8
  %cmp29 = icmp ne ptr %18, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %19 = load ptr, ptr %bzf, align 8
  %lastErr31 = getelementptr inbounds nuw %struct.bzFile, ptr %19, i32 0, i32 5
  store i32 -6, ptr %lastErr31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store ptr null, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end24
  %call34 = call noalias ptr @malloc(i64 noundef 5104) #4
  store ptr %call34, ptr %bzf, align 8
  %20 = load ptr, ptr %bzf, align 8
  %cmp35 = icmp eq ptr %20, null
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %21 = load ptr, ptr %bzerror.addr, align 8
  %cmp37 = icmp ne ptr %21, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then36
  %22 = load ptr, ptr %bzerror.addr, align 8
  store i32 -3, ptr %22, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %23 = load ptr, ptr %bzf, align 8
  %cmp40 = icmp ne ptr %23, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %24 = load ptr, ptr %bzf, align 8
  %lastErr42 = getelementptr inbounds nuw %struct.bzFile, ptr %24, i32 0, i32 5
  store i32 -3, ptr %lastErr42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  store ptr null, ptr %retval, align 8
  br label %return

if.end44:                                         ; preds = %if.end33
  %25 = load ptr, ptr %bzerror.addr, align 8
  %cmp45 = icmp ne ptr %25, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  %26 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %26, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44
  %27 = load ptr, ptr %bzf, align 8
  %cmp48 = icmp ne ptr %27, null
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %28 = load ptr, ptr %bzf, align 8
  %lastErr50 = getelementptr inbounds nuw %struct.bzFile, ptr %28, i32 0, i32 5
  store i32 0, ptr %lastErr50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %29 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds nuw %struct.bzFile, ptr %29, i32 0, i32 6
  store i8 0, ptr %initialisedOk, align 4
  %30 = load ptr, ptr %bzf, align 8
  %bufN = getelementptr inbounds nuw %struct.bzFile, ptr %30, i32 0, i32 2
  store i32 0, ptr %bufN, align 8
  %31 = load ptr, ptr %f.addr, align 8
  %32 = load ptr, ptr %bzf, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %32, i32 0, i32 0
  store ptr %31, ptr %handle, align 8
  %33 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %33, i32 0, i32 3
  store i8 1, ptr %writing, align 4
  %34 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %34, i32 0, i32 4
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %35 = load ptr, ptr %bzf, align 8
  %strm52 = getelementptr inbounds nuw %struct.bzFile, ptr %35, i32 0, i32 4
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %strm52, i32 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %36 = load ptr, ptr %bzf, align 8
  %strm53 = getelementptr inbounds nuw %struct.bzFile, ptr %36, i32 0, i32 4
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %strm53, i32 0, i32 11
  store ptr null, ptr %opaque, align 8
  %37 = load i32, ptr %workFactor.addr, align 4
  %cmp54 = icmp eq i32 %37, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 30, ptr %workFactor.addr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51
  %38 = load ptr, ptr %bzf, align 8
  %strm57 = getelementptr inbounds nuw %struct.bzFile, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %blockSize100k.addr, align 4
  %40 = load i32, ptr %verbosity.addr, align 4
  %41 = load i32, ptr %workFactor.addr, align 4
  %call58 = call i32 @BZ2_bzCompressInit(ptr noundef %strm57, i32 noundef %39, i32 noundef %40, i32 noundef %41)
  store i32 %call58, ptr %ret, align 4
  %42 = load i32, ptr %ret, align 4
  %cmp59 = icmp ne i32 %42, 0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %if.end56
  %43 = load ptr, ptr %bzerror.addr, align 8
  %cmp61 = icmp ne ptr %43, null
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then60
  %44 = load i32, ptr %ret, align 4
  %45 = load ptr, ptr %bzerror.addr, align 8
  store i32 %44, ptr %45, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then60
  %46 = load ptr, ptr %bzf, align 8
  %cmp64 = icmp ne ptr %46, null
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  %47 = load i32, ptr %ret, align 4
  %48 = load ptr, ptr %bzf, align 8
  %lastErr66 = getelementptr inbounds nuw %struct.bzFile, ptr %48, i32 0, i32 5
  store i32 %47, ptr %lastErr66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  %49 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %49) #3
  store ptr null, ptr %retval, align 8
  br label %return

if.end68:                                         ; preds = %if.end56
  %50 = load ptr, ptr %bzf, align 8
  %strm69 = getelementptr inbounds nuw %struct.bzFile, ptr %50, i32 0, i32 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm69, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %51 = load ptr, ptr %bzf, align 8
  %initialisedOk70 = getelementptr inbounds nuw %struct.bzFile, ptr %51, i32 0, i32 6
  store i8 1, ptr %initialisedOk70, align 4
  %52 = load ptr, ptr %bzf, align 8
  store ptr %52, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end68, %if.end67, %if.end43, %if.end32, %if.end23
  %53 = load ptr, ptr %retval, align 8
  ret ptr %53
}

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
