; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.77 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_ratio(i64 noundef %num, i64 noundef %den, ptr noundef %file) #1 {
entry:
  %num.addr = alloca i64, align 8, !mymd !6
  %den.addr = alloca i64, align 8, !mymd !7
  %file.addr = alloca ptr, align 8, !mymd !8
  store i64 %num, ptr %num.addr, align 8, !mymd !9
  store i64 %den, ptr %den.addr, align 8, !mymd !10
  store ptr %file, ptr %file.addr, align 8, !mymd !11
  %0 = load ptr, ptr %file.addr, align 8, !mymd !12
  %1 = load i64, ptr %den.addr, align 8, !mymd !13
  %cmp = icmp eq i64 %1, 0, !mymd !14
  br i1 %cmp, label %cond.true, label %cond.false, !mymd !15

cond.true:                                        ; preds = %entry
  br label %cond.end, !mymd !16

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %num.addr, align 8, !mymd !17
  %conv = sitofp i64 %2 to double, !mymd !18
  %mul = fmul double 1.000000e+02, %conv, !mymd !19
  %3 = load i64, ptr %den.addr, align 8, !mymd !20
  %conv1 = sitofp i64 %3 to double, !mymd !21
  %div = fdiv double %mul, %conv1, !mymd !22
  br label %cond.end, !mymd !23

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ], !mymd !24
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.77, double noundef %cond) #2, !mymd !25
  ret void, !mymd !26
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10500"}
!7 = !{!"10501"}
!8 = !{!"10502"}
!9 = !{!"10503"}
!10 = !{!"10504"}
!11 = !{!"10505"}
!12 = !{!"10506"}
!13 = !{!"10507"}
!14 = !{!"10508"}
!15 = !{!"10509"}
!16 = !{!"10510"}
!17 = !{!"10511"}
!18 = !{!"10512"}
!19 = !{!"10513"}
!20 = !{!"10514"}
!21 = !{!"10515"}
!22 = !{!"10516"}
!23 = !{!"10517"}
!24 = !{!"10518"}
!25 = !{!"10519"}
!26 = !{!"10520"}
