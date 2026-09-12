; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@hufts = external dso_local global i32, align 4
@bb = external dso_local global i64, align 8
@bk = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_window() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_block(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inflate() #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %e = alloca i32, align 4, !mymd !7
  %r = alloca i32, align 4, !mymd !8
  %h = alloca i32, align 4, !mymd !9
  store i32 0, ptr @outcnt, align 4, !mymd !10
  store i32 0, ptr @bk, align 4, !mymd !11
  store i64 0, ptr @bb, align 8, !mymd !12
  store i32 0, ptr %h, align 4, !mymd !13
  br label %do.body, !mymd !14

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, ptr @hufts, align 4, !mymd !15
  %call = call i32 @inflate_block(ptr noundef %e), !mymd !16
  store i32 %call, ptr %r, align 4, !mymd !17
  %cmp = icmp ne i32 %call, 0, !mymd !18
  br i1 %cmp, label %if.then, label %if.end, !mymd !19

if.then:                                          ; preds = %do.body
  %0 = load i32, ptr %r, align 4, !mymd !20
  store i32 %0, ptr %retval, align 4, !mymd !21
  br label %return, !mymd !22

if.end:                                           ; preds = %do.body
  %1 = load i32, ptr @hufts, align 4, !mymd !23
  %2 = load i32, ptr %h, align 4, !mymd !24
  %cmp1 = icmp ugt i32 %1, %2, !mymd !25
  br i1 %cmp1, label %if.then2, label %if.end3, !mymd !26

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr @hufts, align 4, !mymd !27
  store i32 %3, ptr %h, align 4, !mymd !28
  br label %if.end3, !mymd !29

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.cond, !mymd !30

do.cond:                                          ; preds = %if.end3
  %4 = load i32, ptr %e, align 4, !mymd !31
  %tobool = icmp ne i32 %4, 0, !mymd !32
  %lnot = xor i1 %tobool, true, !mymd !33
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !34, !mymd !36

do.end:                                           ; preds = %do.cond
  br label %while.cond, !mymd !37

while.cond:                                       ; preds = %while.body, %do.end
  %5 = load i32, ptr @bk, align 4, !mymd !38
  %cmp4 = icmp uge i32 %5, 8, !mymd !39
  br i1 %cmp4, label %while.body, label %while.end, !mymd !40

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr @bk, align 4, !mymd !41
  %sub = sub i32 %6, 8, !mymd !42
  store i32 %sub, ptr @bk, align 4, !mymd !43
  %7 = load i32, ptr @inptr, align 4, !mymd !44
  %dec = add i32 %7, -1, !mymd !45
  store i32 %dec, ptr @inptr, align 4, !mymd !46
  br label %while.cond, !llvm.loop !47, !mymd !48

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr @outcnt, align 4, !mymd !49
  store i32 %8, ptr @outcnt, align 4, !mymd !50
  call void @flush_window(), !mymd !51
  store i32 0, ptr %retval, align 4, !mymd !52
  br label %return, !mymd !53

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, ptr %retval, align 4, !mymd !54
  ret i32 %9, !mymd !55
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"7449"}
!7 = !{!"7450"}
!8 = !{!"7451"}
!9 = !{!"7452"}
!10 = !{!"7453"}
!11 = !{!"7454"}
!12 = !{!"7455"}
!13 = !{!"7456"}
!14 = !{!"7457"}
!15 = !{!"7458"}
!16 = !{!"7459"}
!17 = !{!"7460"}
!18 = !{!"7461"}
!19 = !{!"7462"}
!20 = !{!"7463"}
!21 = !{!"7464"}
!22 = !{!"7465"}
!23 = !{!"7466"}
!24 = !{!"7467"}
!25 = !{!"7468"}
!26 = !{!"7469"}
!27 = !{!"7470"}
!28 = !{!"7471"}
!29 = !{!"7472"}
!30 = !{!"7473"}
!31 = !{!"7474"}
!32 = !{!"7475"}
!33 = !{!"7476"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"7477"}
!37 = !{!"7478"}
!38 = !{!"7479"}
!39 = !{!"7480"}
!40 = !{!"7481"}
!41 = !{!"7482"}
!42 = !{!"7483"}
!43 = !{!"7484"}
!44 = !{!"7485"}
!45 = !{!"7486"}
!46 = !{!"7487"}
!47 = distinct !{!47, !35}
!48 = !{!"7488"}
!49 = !{!"7489"}
!50 = !{!"7490"}
!51 = !{!"7491"}
!52 = !{!"7492"}
!53 = !{!"7493"}
!54 = !{!"7494"}
!55 = !{!"7495"}
