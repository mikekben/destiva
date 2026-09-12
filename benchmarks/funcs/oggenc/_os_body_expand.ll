; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @_os_body_expand(ptr noundef %os, i32 noundef %needed) #1 {
entry:
  %os.addr = alloca ptr, align 8
  %needed.addr = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store i32 %needed, ptr %needed.addr, align 4
  %0 = load ptr, ptr %os.addr, align 8
  %body_storage = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %body_storage, align 8
  %2 = load ptr, ptr %os.addr, align 8
  %body_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %body_fill, align 8
  %4 = load i32, ptr %needed.addr, align 4
  %conv = sext i32 %4 to i64
  %add = add nsw i64 %3, %conv
  %cmp = icmp sle i64 %1, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %needed.addr, align 4
  %add2 = add nsw i32 %5, 1024
  %conv3 = sext i32 %add2 to i64
  %6 = load ptr, ptr %os.addr, align 8
  %body_storage4 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %body_storage4, align 8
  %add5 = add nsw i64 %7, %conv3
  store i64 %add5, ptr %body_storage4, align 8
  %8 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %body_data, align 8
  %10 = load ptr, ptr %os.addr, align 8
  %body_storage6 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %body_storage6, align 8
  %mul = mul i64 %11, 1
  %call = call ptr @realloc(ptr noundef %9, i64 noundef %mul) #2
  %12 = load ptr, ptr %os.addr, align 8
  %body_data7 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %12, i32 0, i32 0
  store ptr %call, ptr %body_data7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
