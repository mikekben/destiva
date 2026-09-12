; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifd = external dso_local global i32, align 4
@bytes_in = external dso_local global i64, align 8
@crc = external hidden global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @file_read(ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %buf.addr = alloca ptr, align 8, !mymd !7
  %size.addr = alloca i32, align 4, !mymd !8
  %len = alloca i32, align 4, !mymd !9
  store ptr %buf, ptr %buf.addr, align 8, !mymd !10
  store i32 %size, ptr %size.addr, align 4, !mymd !11
  %0 = load i32, ptr @ifd, align 4, !mymd !12
  %1 = load ptr, ptr %buf.addr, align 8, !mymd !13
  %2 = load i32, ptr %size.addr, align 4, !mymd !14
  %conv = zext i32 %2 to i64, !mymd !15
  %call = call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %conv), !mymd !16
  %conv1 = trunc i64 %call to i32, !mymd !17
  store i32 %conv1, ptr %len, align 4, !mymd !18
  %3 = load i32, ptr %len, align 4, !mymd !19
  %cmp = icmp eq i32 %3, 0, !mymd !20
  br i1 %cmp, label %if.then, label %if.end, !mymd !21

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %len, align 4, !mymd !22
  store i32 %4, ptr %retval, align 4, !mymd !23
  br label %return, !mymd !24

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %len, align 4, !mymd !25
  %cmp3 = icmp eq i32 %5, -1, !mymd !26
  br i1 %cmp3, label %if.then5, label %if.end6, !mymd !27

if.then5:                                         ; preds = %if.end
  call void @read_error(), !mymd !28
  store i32 -1, ptr %retval, align 4, !mymd !29
  br label %return, !mymd !30

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %buf.addr, align 8, !mymd !31
  %7 = load i32, ptr %len, align 4, !mymd !32
  %call7 = call i64 @updcrc(ptr noundef %6, i32 noundef %7), !mymd !33
  store i64 %call7, ptr @crc, align 8, !mymd !34
  %8 = load i32, ptr %len, align 4, !mymd !35
  %conv8 = zext i32 %8 to i64, !mymd !36
  %9 = load i64, ptr @bytes_in, align 8, !mymd !37
  %add = add nsw i64 %9, %conv8, !mymd !38
  store i64 %add, ptr @bytes_in, align 8, !mymd !39
  %10 = load i32, ptr %len, align 4, !mymd !40
  store i32 %10, ptr %retval, align 4, !mymd !41
  br label %return, !mymd !42

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i32, ptr %retval, align 4, !mymd !43
  ret i32 %11, !mymd !44
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @read_error() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @updcrc(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12"}
!7 = !{!"13"}
!8 = !{!"14"}
!9 = !{!"15"}
!10 = !{!"16"}
!11 = !{!"17"}
!12 = !{!"18"}
!13 = !{!"19"}
!14 = !{!"20"}
!15 = !{!"21"}
!16 = !{!"22"}
!17 = !{!"23"}
!18 = !{!"24"}
!19 = !{!"25"}
!20 = !{!"26"}
!21 = !{!"27"}
!22 = !{!"28"}
!23 = !{!"29"}
!24 = !{!"30"}
!25 = !{!"31"}
!26 = !{!"32"}
!27 = !{!"33"}
!28 = !{!"34"}
!29 = !{!"35"}
!30 = !{!"36"}
!31 = !{!"37"}
!32 = !{!"38"}
!33 = !{!"39"}
!34 = !{!"40"}
!35 = !{!"41"}
!36 = !{!"42"}
!37 = !{!"43"}
!38 = !{!"44"}
!39 = !{!"45"}
!40 = !{!"46"}
!41 = !{!"47"}
!42 = !{!"48"}
!43 = !{!"49"}
!44 = !{!"50"}
