; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @res_push_max_input(ptr noundef %state, i64 noundef %maxoutput) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %maxoutput.addr = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %maxoutput, ptr %maxoutput.addr, align 8
  %0 = load i64, ptr %maxoutput.addr, align 8
  %1 = load ptr, ptr %state.addr, align 8
  %infreq = getelementptr inbounds nuw %struct.res_state, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %infreq, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %0, %conv
  %3 = load ptr, ptr %state.addr, align 8
  %outfreq = getelementptr inbounds nuw %struct.res_state, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %outfreq, align 8
  %conv1 = zext i32 %4 to i64
  %div = udiv i64 %mul, %conv1
  %conv2 = trunc i64 %div to i32
  ret i32 %conv2
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
