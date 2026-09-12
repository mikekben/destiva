; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompressEnd(ptr noundef) #0

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzReadClose(ptr noundef %bzerror, ptr noundef %b) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  store ptr %0, ptr %bzf, align 8
  %1 = load ptr, ptr %bzerror.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %bzf, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %4, i32 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %bzf, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %bzerror.addr, align 8
  %cmp6 = icmp ne ptr %6, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %7 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %8 = load ptr, ptr %bzf, align 8
  %cmp9 = icmp ne ptr %8, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr %bzf, align 8
  %lastErr11 = getelementptr inbounds nuw %struct.bzFile, ptr %9, i32 0, i32 5
  store i32 0, ptr %lastErr11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %return

if.end13:                                         ; preds = %if.end3
  %10 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %10, i32 0, i32 3
  %11 = load i8, ptr %writing, align 4
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end13
  %12 = load ptr, ptr %bzerror.addr, align 8
  %cmp15 = icmp ne ptr %12, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %13 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %13, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %14 = load ptr, ptr %bzf, align 8
  %cmp18 = icmp ne ptr %14, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %15 = load ptr, ptr %bzf, align 8
  %lastErr20 = getelementptr inbounds nuw %struct.bzFile, ptr %15, i32 0, i32 5
  store i32 -1, ptr %lastErr20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  br label %return

if.end22:                                         ; preds = %if.end13
  %16 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds nuw %struct.bzFile, ptr %16, i32 0, i32 6
  %17 = load i8, ptr %initialisedOk, align 4
  %tobool23 = icmp ne i8 %17, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %18 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %18, i32 0, i32 4
  %call = call i32 @BZ2_bzDecompressEnd(ptr noundef %strm)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %19 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %19) #2
  br label %return

return:                                           ; preds = %if.end25, %if.end21, %if.end12
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
