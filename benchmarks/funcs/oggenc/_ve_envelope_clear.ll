; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @_ve_envelope_clear(ptr noundef %e) #2 {
entry:
  %e.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  %0 = load ptr, ptr %e.addr, align 8
  %mdct = getelementptr inbounds nuw %struct.envelope_lookup, ptr %0, i32 0, i32 4
  call void @mdct_clear(ptr noundef %mdct)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %e.addr, align 8
  %band = getelementptr inbounds nuw %struct.envelope_lookup, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.envelope_band], ptr %band, i64 0, i64 %idxprom
  %window = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx, i32 0, i32 2
  %4 = load ptr, ptr %window, align 8
  call void @free(ptr noundef %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %e.addr, align 8
  %mdct_win = getelementptr inbounds nuw %struct.envelope_lookup, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %mdct_win, align 8
  call void @free(ptr noundef %7) #3
  %8 = load ptr, ptr %e.addr, align 8
  %filter = getelementptr inbounds nuw %struct.envelope_lookup, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %filter, align 8
  call void @free(ptr noundef %9) #3
  %10 = load ptr, ptr %e.addr, align 8
  %mark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %mark, align 8
  call void @free(ptr noundef %11) #3
  %12 = load ptr, ptr %e.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 280, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_clear(ptr noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
