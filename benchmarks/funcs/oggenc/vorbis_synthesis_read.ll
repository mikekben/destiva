; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_read(ptr noundef %v, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %pcm_returned = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %pcm_returned, align 8
  %3 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %2, %3
  %4 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %pcm_current, align 4
  %cmp = icmp sgt i32 %add, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, ptr %n.addr, align 4
  %7 = load ptr, ptr %v.addr, align 8
  %pcm_returned1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %pcm_returned1, align 8
  %add2 = add nsw i32 %8, %6
  store i32 %add2, ptr %pcm_returned1, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
