; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_reset(ptr noundef %os) #0 {
entry:
  %os.addr = alloca ptr, align 8
  store ptr %os, ptr %os.addr, align 8
  %0 = load ptr, ptr %os.addr, align 8
  %body_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %0, i32 0, i32 2
  store i64 0, ptr %body_fill, align 8
  %1 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %1, i32 0, i32 3
  store i64 0, ptr %body_returned, align 8
  %2 = load ptr, ptr %os.addr, align 8
  %lacing_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 7
  store i64 0, ptr %lacing_fill, align 8
  %3 = load ptr, ptr %os.addr, align 8
  %lacing_packet = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %3, i32 0, i32 8
  store i64 0, ptr %lacing_packet, align 8
  %4 = load ptr, ptr %os.addr, align 8
  %lacing_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %4, i32 0, i32 9
  store i64 0, ptr %lacing_returned, align 8
  %5 = load ptr, ptr %os.addr, align 8
  %header_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %5, i32 0, i32 11
  store i32 0, ptr %header_fill, align 4
  %6 = load ptr, ptr %os.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %6, i32 0, i32 12
  store i32 0, ptr %e_o_s, align 8
  %7 = load ptr, ptr %os.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %7, i32 0, i32 13
  store i32 0, ptr %b_o_s, align 4
  %8 = load ptr, ptr %os.addr, align 8
  %pageno = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %8, i32 0, i32 15
  store i64 -1, ptr %pageno, align 8
  %9 = load ptr, ptr %os.addr, align 8
  %packetno = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %9, i32 0, i32 16
  store i64 0, ptr %packetno, align 8
  %10 = load ptr, ptr %os.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %10, i32 0, i32 17
  store i64 0, ptr %granulepos, align 8
  ret i32 0
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
