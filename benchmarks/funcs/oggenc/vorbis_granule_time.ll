; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local double @vorbis_granule_time(ptr noundef %v, i64 noundef %granulepos) #0 {
entry:
  %retval = alloca double, align 8
  %v.addr = alloca ptr, align 8
  %granulepos.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store i64 %granulepos, ptr %granulepos.addr, align 8
  %0 = load i64, ptr %granulepos.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %granulepos.addr, align 8
  %conv = sitofp i64 %1 to double
  %2 = load ptr, ptr %v.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %vi, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %rate, align 8
  %conv1 = sitofp i64 %4 to double
  %div = fdiv double %conv, %conv1
  store double %div, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store double -1.000000e+00, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load double, ptr %retval, align 8
  ret double %5
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
