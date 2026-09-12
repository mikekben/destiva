; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@bytes_in = external dso_local global i64, align 8
@bytes_out = external dso_local global i64, align 8

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_buf(i32 noundef, ptr noundef, i32 noundef) #0

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @read_error() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @copy(i32 noundef %in, i32 noundef %out) #0 {
entry:
  %in.addr = alloca i32, align 4, !mymd !6
  %out.addr = alloca i32, align 4, !mymd !7
  store i32 %in, ptr %in.addr, align 4, !mymd !8
  store i32 %out, ptr %out.addr, align 4, !mymd !9
  %call = call ptr @__errno_location() #3, !mymd !10
  store i32 0, ptr %call, align 4, !mymd !11
  br label %while.cond, !mymd !12

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @insize, align 4, !mymd !13
  %cmp = icmp ne i32 %0, 0, !mymd !14
  br i1 %cmp, label %land.rhs, label %land.end, !mymd !15

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr @insize, align 4, !mymd !16
  %cmp1 = icmp ne i32 %1, -1, !mymd !17
  br label %land.end, !mymd !18

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !mymd !19
  br i1 %2, label %while.body, label %while.end, !mymd !20

while.body:                                       ; preds = %land.end
  %3 = load i32, ptr %out.addr, align 4, !mymd !21
  %4 = load i32, ptr @insize, align 4, !mymd !22
  call void @write_buf(i32 noundef %3, ptr noundef @inbuf, i32 noundef %4), !mymd !23
  %5 = load i32, ptr @insize, align 4, !mymd !24
  %conv = zext i32 %5 to i64, !mymd !25
  %6 = load i64, ptr @bytes_out, align 8, !mymd !26
  %add = add nsw i64 %6, %conv, !mymd !27
  store i64 %add, ptr @bytes_out, align 8, !mymd !28
  %7 = load i32, ptr %in.addr, align 4, !mymd !29
  %call2 = call i64 @read(i32 noundef %7, ptr noundef @inbuf, i64 noundef 32768), !mymd !30
  %conv3 = trunc i64 %call2 to i32, !mymd !31
  store i32 %conv3, ptr @insize, align 4, !mymd !32
  br label %while.cond, !llvm.loop !33, !mymd !35

while.end:                                        ; preds = %land.end
  %8 = load i32, ptr @insize, align 4, !mymd !36
  %cmp4 = icmp eq i32 %8, -1, !mymd !37
  br i1 %cmp4, label %if.then, label %if.end, !mymd !38

if.then:                                          ; preds = %while.end
  call void @read_error(), !mymd !39
  br label %if.end, !mymd !40

if.end:                                           ; preds = %if.then, %while.end
  %9 = load i64, ptr @bytes_out, align 8, !mymd !41
  store i64 %9, ptr @bytes_in, align 8, !mymd !42
  ret i32 0, !mymd !43
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10330"}
!7 = !{!"10331"}
!8 = !{!"10332"}
!9 = !{!"10333"}
!10 = !{!"10334"}
!11 = !{!"10335"}
!12 = !{!"10336"}
!13 = !{!"10337"}
!14 = !{!"10338"}
!15 = !{!"10339"}
!16 = !{!"10340"}
!17 = !{!"10341"}
!18 = !{!"10342"}
!19 = !{!"10343"}
!20 = !{!"10344"}
!21 = !{!"10345"}
!22 = !{!"10346"}
!23 = !{!"10347"}
!24 = !{!"10348"}
!25 = !{!"10349"}
!26 = !{!"10350"}
!27 = !{!"10351"}
!28 = !{!"10352"}
!29 = !{!"10353"}
!30 = !{!"10354"}
!31 = !{!"10355"}
!32 = !{!"10356"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"10357"}
!36 = !{!"10358"}
!37 = !{!"10359"}
!38 = !{!"10360"}
!39 = !{!"10361"}
!40 = !{!"10362"}
!41 = !{!"10363"}
!42 = !{!"10364"}
!43 = !{!"10365"}
