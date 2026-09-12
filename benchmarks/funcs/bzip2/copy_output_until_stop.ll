; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @copy_output_until_stop(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %progress_out = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 0, ptr %progress_out, align 1
  br label %while.body

while.body:                                       ; preds = %if.end19, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %strm, align 8
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %avail_out, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %s.addr, align 8
  %state_out_pos = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 20
  %4 = load i32, ptr %state_out_pos, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %numZ = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 19
  %6 = load i32, ptr %numZ, align 4
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  store i8 1, ptr %progress_out, align 1
  %7 = load ptr, ptr %s.addr, align 8
  %zbits = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %zbits, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %state_out_pos4 = getelementptr inbounds nuw %struct.EState, ptr %9, i32 0, i32 20
  %10 = load i32, ptr %state_out_pos4, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  %12 = load ptr, ptr %s.addr, align 8
  %strm5 = getelementptr inbounds nuw %struct.EState, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %strm5, align 8
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %next_out, align 8
  store i8 %11, ptr %14, align 1
  %15 = load ptr, ptr %s.addr, align 8
  %state_out_pos6 = getelementptr inbounds nuw %struct.EState, ptr %15, i32 0, i32 20
  %16 = load i32, ptr %state_out_pos6, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %state_out_pos6, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %strm7 = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %strm7, align 8
  %avail_out8 = getelementptr inbounds nuw %struct.bz_stream, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %avail_out8, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %avail_out8, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %strm9 = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %strm9, align 8
  %next_out10 = getelementptr inbounds nuw %struct.bz_stream, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %next_out10, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %next_out10, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %strm11 = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %strm11, align 8
  %total_out_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %total_out_lo32, align 4
  %inc12 = add i32 %25, 1
  store i32 %inc12, ptr %total_out_lo32, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %strm13 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %strm13, align 8
  %total_out_lo3214 = getelementptr inbounds nuw %struct.bz_stream, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %total_out_lo3214, align 4
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end3
  %29 = load ptr, ptr %s.addr, align 8
  %strm17 = getelementptr inbounds nuw %struct.EState, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %strm17, align 8
  %total_out_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %total_out_hi32, align 8
  %inc18 = add i32 %31, 1
  store i32 %inc18, ptr %total_out_hi32, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end3
  br label %while.body

while.end:                                        ; preds = %if.then2, %if.then
  %32 = load i8, ptr %progress_out, align 1
  ret i8 %32
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
