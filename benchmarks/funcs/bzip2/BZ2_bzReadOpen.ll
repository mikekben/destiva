; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompressInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BZ2_bzReadOpen(ptr noundef %bzerror, ptr noundef %f, i32 noundef %verbosity, i32 noundef %small, ptr noundef %unused, i32 noundef %nUnused) #0 {
entry:
  %retval = alloca ptr, align 8
  %bzerror.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %unused.addr = alloca ptr, align 8
  %nUnused.addr = alloca i32, align 4
  %bzf = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  store ptr %unused, ptr %unused.addr, align 8
  store i32 %nUnused, ptr %nUnused.addr, align 4
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
  br i1 %cmp4, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, ptr %small.addr, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, ptr %small.addr, align 4
  %cmp6 = icmp ne i32 %6, 1
  br i1 %cmp6, label %if.then21, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %8 = load i32, ptr %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %8, 4
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %9 = load ptr, ptr %unused.addr, align 8
  %cmp12 = icmp eq ptr %9, null
  br i1 %cmp12, label %land.lhs.true13, label %lor.lhs.false15

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %10 = load i32, ptr %nUnused.addr, align 4
  %cmp14 = icmp ne i32 %10, 0
  br i1 %cmp14, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true13, %lor.lhs.false11
  %11 = load ptr, ptr %unused.addr, align 8
  %cmp16 = icmp ne ptr %11, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end29

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %12 = load i32, ptr %nUnused.addr, align 4
  %cmp18 = icmp slt i32 %12, 0
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %13 = load i32, ptr %nUnused.addr, align 4
  %cmp20 = icmp sgt i32 %13, 5000
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true17, %land.lhs.true13, %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %if.end3
  %14 = load ptr, ptr %bzerror.addr, align 8
  %cmp22 = icmp ne ptr %14, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %15 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  %16 = load ptr, ptr %bzf, align 8
  %cmp25 = icmp ne ptr %16, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %17 = load ptr, ptr %bzf, align 8
  %lastErr27 = getelementptr inbounds nuw %struct.bzFile, ptr %17, i32 0, i32 5
  store i32 -2, ptr %lastErr27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store ptr null, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %lor.lhs.false19, %lor.lhs.false15
  %18 = load ptr, ptr %f.addr, align 8
  %call = call i32 @ferror(ptr noundef %18) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end29
  %19 = load ptr, ptr %bzerror.addr, align 8
  %cmp31 = icmp ne ptr %19, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  %20 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %20, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %21 = load ptr, ptr %bzf, align 8
  %cmp34 = icmp ne ptr %21, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %22 = load ptr, ptr %bzf, align 8
  %lastErr36 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 -6, ptr %lastErr36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end29
  %call39 = call noalias ptr @malloc(i64 noundef 5104) #4
  store ptr %call39, ptr %bzf, align 8
  %23 = load ptr, ptr %bzf, align 8
  %cmp40 = icmp eq ptr %23, null
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end38
  %24 = load ptr, ptr %bzerror.addr, align 8
  %cmp42 = icmp ne ptr %24, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then41
  %25 = load ptr, ptr %bzerror.addr, align 8
  store i32 -3, ptr %25, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then41
  %26 = load ptr, ptr %bzf, align 8
  %cmp45 = icmp ne ptr %26, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end44
  %27 = load ptr, ptr %bzf, align 8
  %lastErr47 = getelementptr inbounds nuw %struct.bzFile, ptr %27, i32 0, i32 5
  store i32 -3, ptr %lastErr47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  store ptr null, ptr %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.end38
  %28 = load ptr, ptr %bzerror.addr, align 8
  %cmp50 = icmp ne ptr %28, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %29 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %29, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %30 = load ptr, ptr %bzf, align 8
  %cmp53 = icmp ne ptr %30, null
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %31 = load ptr, ptr %bzf, align 8
  %lastErr55 = getelementptr inbounds nuw %struct.bzFile, ptr %31, i32 0, i32 5
  store i32 0, ptr %lastErr55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %32 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds nuw %struct.bzFile, ptr %32, i32 0, i32 6
  store i8 0, ptr %initialisedOk, align 4
  %33 = load ptr, ptr %f.addr, align 8
  %34 = load ptr, ptr %bzf, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %34, i32 0, i32 0
  store ptr %33, ptr %handle, align 8
  %35 = load ptr, ptr %bzf, align 8
  %bufN = getelementptr inbounds nuw %struct.bzFile, ptr %35, i32 0, i32 2
  store i32 0, ptr %bufN, align 8
  %36 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %36, i32 0, i32 3
  store i8 0, ptr %writing, align 4
  %37 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %37, i32 0, i32 4
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %38 = load ptr, ptr %bzf, align 8
  %strm57 = getelementptr inbounds nuw %struct.bzFile, ptr %38, i32 0, i32 4
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %strm57, i32 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %39 = load ptr, ptr %bzf, align 8
  %strm58 = getelementptr inbounds nuw %struct.bzFile, ptr %39, i32 0, i32 4
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %strm58, i32 0, i32 11
  store ptr null, ptr %opaque, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end56
  %40 = load i32, ptr %nUnused.addr, align 4
  %cmp59 = icmp sgt i32 %40, 0
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load ptr, ptr %unused.addr, align 8
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr %bzf, align 8
  %buf = getelementptr inbounds nuw %struct.bzFile, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %bzf, align 8
  %bufN60 = getelementptr inbounds nuw %struct.bzFile, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %bufN60, align 8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %42, ptr %arrayidx, align 1
  %46 = load ptr, ptr %bzf, align 8
  %bufN61 = getelementptr inbounds nuw %struct.bzFile, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %bufN61, align 8
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %bufN61, align 8
  %48 = load ptr, ptr %unused.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %add.ptr, ptr %unused.addr, align 8
  %49 = load i32, ptr %nUnused.addr, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %nUnused.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %50 = load ptr, ptr %bzf, align 8
  %strm62 = getelementptr inbounds nuw %struct.bzFile, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %verbosity.addr, align 4
  %52 = load i32, ptr %small.addr, align 4
  %call63 = call i32 @BZ2_bzDecompressInit(ptr noundef %strm62, i32 noundef %51, i32 noundef %52)
  store i32 %call63, ptr %ret, align 4
  %53 = load i32, ptr %ret, align 4
  %cmp64 = icmp ne i32 %53, 0
  br i1 %cmp64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %while.end
  %54 = load ptr, ptr %bzerror.addr, align 8
  %cmp66 = icmp ne ptr %54, null
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then65
  %55 = load i32, ptr %ret, align 4
  %56 = load ptr, ptr %bzerror.addr, align 8
  store i32 %55, ptr %56, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then65
  %57 = load ptr, ptr %bzf, align 8
  %cmp69 = icmp ne ptr %57, null
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end68
  %58 = load i32, ptr %ret, align 4
  %59 = load ptr, ptr %bzf, align 8
  %lastErr71 = getelementptr inbounds nuw %struct.bzFile, ptr %59, i32 0, i32 5
  store i32 %58, ptr %lastErr71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  %60 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %60) #3
  store ptr null, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %while.end
  %61 = load ptr, ptr %bzf, align 8
  %bufN74 = getelementptr inbounds nuw %struct.bzFile, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %bufN74, align 8
  %63 = load ptr, ptr %bzf, align 8
  %strm75 = getelementptr inbounds nuw %struct.bzFile, ptr %63, i32 0, i32 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm75, i32 0, i32 1
  store i32 %62, ptr %avail_in, align 8
  %64 = load ptr, ptr %bzf, align 8
  %buf76 = getelementptr inbounds nuw %struct.bzFile, ptr %64, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %buf76, i64 0, i64 0
  %65 = load ptr, ptr %bzf, align 8
  %strm77 = getelementptr inbounds nuw %struct.bzFile, ptr %65, i32 0, i32 4
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm77, i32 0, i32 0
  store ptr %arraydecay, ptr %next_in, align 8
  %66 = load ptr, ptr %bzf, align 8
  %initialisedOk78 = getelementptr inbounds nuw %struct.bzFile, ptr %66, i32 0, i32 6
  store i8 1, ptr %initialisedOk78, align 4
  %67 = load ptr, ptr %bzf, align 8
  store ptr %67, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.end72, %if.end48, %if.end37, %if.end28
  %68 = load ptr, ptr %retval, align 8
  ret ptr %68
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
