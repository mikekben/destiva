; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.scaler = type { ptr, ptr, i32, float }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @clear_scaler(ptr noundef %opt) #1 {
entry:
  %opt.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  %0 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %readdata, align 8
  store ptr %1, ptr %d, align 8
  %2 = load ptr, ptr %d, align 8
  %real_reader = getelementptr inbounds nuw %struct.scaler, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %real_reader, align 8
  %4 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %4, i32 0, i32 2
  store ptr %3, ptr %read_samples, align 8
  %5 = load ptr, ptr %d, align 8
  %real_readdata = getelementptr inbounds nuw %struct.scaler, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %real_readdata, align 8
  %7 = load ptr, ptr %opt.addr, align 8
  %readdata1 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %7, i32 0, i32 7
  store ptr %6, ptr %readdata1, align 8
  %8 = load ptr, ptr %d, align 8
  call void @free(ptr noundef %8) #2
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
