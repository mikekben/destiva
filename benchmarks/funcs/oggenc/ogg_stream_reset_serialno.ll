; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_reset_serialno(ptr noundef %os, i32 noundef %serialno) #0 {
entry:
  %os.addr = alloca ptr, align 8
  %serialno.addr = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store i32 %serialno, ptr %serialno.addr, align 4
  %0 = load ptr, ptr %os.addr, align 8
  %call = call i32 @ogg_stream_reset(ptr noundef %0)
  %1 = load i32, ptr %serialno.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %os.addr, align 8
  %serialno1 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 14
  store i64 %conv, ptr %serialno1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
