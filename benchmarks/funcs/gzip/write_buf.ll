; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_buf(i32 noundef %fd, ptr noundef %buf, i32 noundef %cnt) #0 {
entry:
  %fd.addr = alloca i32, align 4, !mymd !6
  %buf.addr = alloca ptr, align 8, !mymd !7
  %cnt.addr = alloca i32, align 4, !mymd !8
  %n = alloca i32, align 4, !mymd !9
  store i32 %fd, ptr %fd.addr, align 4, !mymd !10
  store ptr %buf, ptr %buf.addr, align 8, !mymd !11
  store i32 %cnt, ptr %cnt.addr, align 4, !mymd !12
  br label %while.cond, !mymd !13

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %fd.addr, align 4, !mymd !14
  %1 = load ptr, ptr %buf.addr, align 8, !mymd !15
  %2 = load i32, ptr %cnt.addr, align 4, !mymd !16
  %conv = zext i32 %2 to i64, !mymd !17
  %call = call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %conv), !mymd !18
  %conv1 = trunc i64 %call to i32, !mymd !19
  store i32 %conv1, ptr %n, align 4, !mymd !20
  %3 = load i32, ptr %cnt.addr, align 4, !mymd !21
  %cmp = icmp ne i32 %conv1, %3, !mymd !22
  br i1 %cmp, label %while.body, label %while.end, !mymd !23

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %n, align 4, !mymd !24
  %cmp3 = icmp eq i32 %4, -1, !mymd !25
  br i1 %cmp3, label %if.then, label %if.end, !mymd !26

if.then:                                          ; preds = %while.body
  call void @write_error(), !mymd !27
  br label %if.end, !mymd !28

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, ptr %n, align 4, !mymd !29
  %6 = load i32, ptr %cnt.addr, align 4, !mymd !30
  %sub = sub i32 %6, %5, !mymd !31
  store i32 %sub, ptr %cnt.addr, align 4, !mymd !32
  %7 = load ptr, ptr %buf.addr, align 8, !mymd !33
  %8 = load i32, ptr %n, align 4, !mymd !34
  %idx.ext = zext i32 %8 to i64, !mymd !35
  %add.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %idx.ext, !mymd !36
  store ptr %add.ptr, ptr %buf.addr, align 8, !mymd !37
  br label %while.cond, !llvm.loop !38, !mymd !40

while.end:                                        ; preds = %while.cond
  ret void, !mymd !41
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_error() #0

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
!6 = !{!"8619"}
!7 = !{!"8620"}
!8 = !{!"8621"}
!9 = !{!"8622"}
!10 = !{!"8623"}
!11 = !{!"8624"}
!12 = !{!"8625"}
!13 = !{!"8626"}
!14 = !{!"8627"}
!15 = !{!"8628"}
!16 = !{!"8629"}
!17 = !{!"8630"}
!18 = !{!"8631"}
!19 = !{!"8632"}
!20 = !{!"8633"}
!21 = !{!"8634"}
!22 = !{!"8635"}
!23 = !{!"8636"}
!24 = !{!"8637"}
!25 = !{!"8638"}
!26 = !{!"8639"}
!27 = !{!"8640"}
!28 = !{!"8641"}
!29 = !{!"8642"}
!30 = !{!"8643"}
!31 = !{!"8644"}
!32 = !{!"8645"}
!33 = !{!"8646"}
!34 = !{!"8647"}
!35 = !{!"8648"}
!36 = !{!"8649"}
!37 = !{!"8650"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"8651"}
!41 = !{!"8652"}
