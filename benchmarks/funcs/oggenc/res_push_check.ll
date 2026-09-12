; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @res_push_check(ptr noundef %state, i64 noundef %srclen) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %srclen.addr = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %srclen, ptr %srclen.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %poolfill = getelementptr inbounds nuw %struct.res_state, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %poolfill, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %taps = getelementptr inbounds nuw %struct.res_state, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %taps, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %state.addr, align 8
  %taps1 = getelementptr inbounds nuw %struct.res_state, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %taps1, align 4
  %6 = load ptr, ptr %state.addr, align 8
  %poolfill2 = getelementptr inbounds nuw %struct.res_state, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %poolfill2, align 8
  %sub = sub i32 %5, %7
  %conv = zext i32 %sub to i64
  %8 = load i64, ptr %srclen.addr, align 8
  %sub3 = sub i64 %8, %conv
  store i64 %sub3, ptr %srclen.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr %srclen.addr, align 8
  %10 = load ptr, ptr %state.addr, align 8
  %outfreq = getelementptr inbounds nuw %struct.res_state, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %outfreq, align 8
  %conv4 = zext i32 %11 to i64
  %mul = mul i64 %9, %conv4
  %12 = load ptr, ptr %state.addr, align 8
  %offset = getelementptr inbounds nuw %struct.res_state, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %offset, align 4
  %conv5 = sext i32 %13 to i64
  %sub6 = sub i64 %mul, %conv5
  %14 = load ptr, ptr %state.addr, align 8
  %infreq = getelementptr inbounds nuw %struct.res_state, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %infreq, align 4
  %conv7 = zext i32 %15 to i64
  %add = add i64 %sub6, %conv7
  %sub8 = sub i64 %add, 1
  %16 = load ptr, ptr %state.addr, align 8
  %infreq9 = getelementptr inbounds nuw %struct.res_state, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %infreq9, align 4
  %conv10 = zext i32 %17 to i64
  %div = udiv i64 %sub8, %conv10
  %conv11 = trunc i64 %div to i32
  ret i32 %conv11
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
