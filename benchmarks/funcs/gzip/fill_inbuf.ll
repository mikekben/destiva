; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@ifd = external dso_local global i32, align 4
@bytes_in = external dso_local global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fill_inbuf(i32 noundef %eof_ok) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %eof_ok.addr = alloca i32, align 4, !mymd !7
  %len = alloca i32, align 4, !mymd !8
  store i32 %eof_ok, ptr %eof_ok.addr, align 4, !mymd !9
  store i32 0, ptr @insize, align 4, !mymd !10
  br label %do.body, !mymd !11

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr @ifd, align 4, !mymd !12
  %1 = load i32, ptr @insize, align 4, !mymd !13
  %idx.ext = zext i32 %1 to i64, !mymd !14
  %add.ptr = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext, !mymd !15
  %2 = load i32, ptr @insize, align 4, !mymd !16
  %sub = sub i32 32768, %2, !mymd !17
  %conv = zext i32 %sub to i64, !mymd !18
  %call = call i64 @read(i32 noundef %0, ptr noundef %add.ptr, i64 noundef %conv), !mymd !19
  %conv1 = trunc i64 %call to i32, !mymd !20
  store i32 %conv1, ptr %len, align 4, !mymd !21
  %3 = load i32, ptr %len, align 4, !mymd !22
  %cmp = icmp eq i32 %3, 0, !mymd !23
  br i1 %cmp, label %if.then, label %if.end, !mymd !24

if.then:                                          ; preds = %do.body
  br label %do.end, !mymd !25

if.end:                                           ; preds = %do.body
  %4 = load i32, ptr %len, align 4, !mymd !26
  %cmp3 = icmp eq i32 %4, -1, !mymd !27
  br i1 %cmp3, label %if.then5, label %if.end6, !mymd !28

if.then5:                                         ; preds = %if.end
  call void @read_error(), !mymd !29
  br label %do.end, !mymd !30

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %len, align 4, !mymd !31
  %6 = load i32, ptr @insize, align 4, !mymd !32
  %add = add i32 %6, %5, !mymd !33
  store i32 %add, ptr @insize, align 4, !mymd !34
  br label %do.cond, !mymd !35

do.cond:                                          ; preds = %if.end6
  %7 = load i32, ptr @insize, align 4, !mymd !36
  %cmp7 = icmp ult i32 %7, 32768, !mymd !37
  br i1 %cmp7, label %do.body, label %do.end, !llvm.loop !38, !mymd !40

do.end:                                           ; preds = %do.cond, %if.then5, %if.then
  %8 = load i32, ptr @insize, align 4, !mymd !41
  %cmp9 = icmp eq i32 %8, 0, !mymd !42
  br i1 %cmp9, label %if.then11, label %if.end15, !mymd !43

if.then11:                                        ; preds = %do.end
  %9 = load i32, ptr %eof_ok.addr, align 4, !mymd !44
  %tobool = icmp ne i32 %9, 0, !mymd !45
  br i1 %tobool, label %if.then12, label %if.end13, !mymd !46

if.then12:                                        ; preds = %if.then11
  store i32 -1, ptr %retval, align 4, !mymd !47
  br label %return, !mymd !48

if.end13:                                         ; preds = %if.then11
  call void @flush_window(), !mymd !49
  %call14 = call ptr @__errno_location() #3, !mymd !50
  store i32 0, ptr %call14, align 4, !mymd !51
  call void @read_error(), !mymd !52
  br label %if.end15, !mymd !53

if.end15:                                         ; preds = %if.end13, %do.end
  %10 = load i32, ptr @insize, align 4, !mymd !54
  %conv16 = zext i32 %10 to i64, !mymd !55
  %11 = load i64, ptr @bytes_in, align 8, !mymd !56
  %add17 = add nsw i64 %11, %conv16, !mymd !57
  store i64 %add17, ptr @bytes_in, align 8, !mymd !58
  store i32 1, ptr @inptr, align 4, !mymd !59
  %12 = load i8, ptr @inbuf, align 16, !mymd !60
  %conv18 = zext i8 %12 to i32, !mymd !61
  store i32 %conv18, ptr %retval, align 4, !mymd !62
  br label %return, !mymd !63

return:                                           ; preds = %if.end15, %if.then12
  %13 = load i32, ptr %retval, align 4, !mymd !64
  ret i32 %13, !mymd !65
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_window() #0

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @read_error() #0

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
!6 = !{!"6323"}
!7 = !{!"6324"}
!8 = !{!"6325"}
!9 = !{!"6326"}
!10 = !{!"6327"}
!11 = !{!"6328"}
!12 = !{!"6329"}
!13 = !{!"6330"}
!14 = !{!"6331"}
!15 = !{!"6332"}
!16 = !{!"6333"}
!17 = !{!"6334"}
!18 = !{!"6335"}
!19 = !{!"6336"}
!20 = !{!"6337"}
!21 = !{!"6338"}
!22 = !{!"6339"}
!23 = !{!"6340"}
!24 = !{!"6341"}
!25 = !{!"6342"}
!26 = !{!"6343"}
!27 = !{!"6344"}
!28 = !{!"6345"}
!29 = !{!"6346"}
!30 = !{!"6347"}
!31 = !{!"6348"}
!32 = !{!"6349"}
!33 = !{!"6350"}
!34 = !{!"6351"}
!35 = !{!"6352"}
!36 = !{!"6353"}
!37 = !{!"6354"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"6355"}
!41 = !{!"6356"}
!42 = !{!"6357"}
!43 = !{!"6358"}
!44 = !{!"6359"}
!45 = !{!"6360"}
!46 = !{!"6361"}
!47 = !{!"6362"}
!48 = !{!"6363"}
!49 = !{!"6364"}
!50 = !{!"6365"}
!51 = !{!"6366"}
!52 = !{!"6367"}
!53 = !{!"6368"}
!54 = !{!"6369"}
!55 = !{!"6370"}
!56 = !{!"6371"}
!57 = !{!"6372"}
!58 = !{!"6373"}
!59 = !{!"6374"}
!60 = !{!"6375"}
!61 = !{!"6376"}
!62 = !{!"6377"}
!63 = !{!"6378"}
!64 = !{!"6379"}
!65 = !{!"6380"}
