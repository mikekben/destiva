; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_mode = type { i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_packet_blocksize(ptr noundef %vi, ptr noundef %op) #0 {
entry:
  %retval = alloca i64, align 8
  %vi.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %opb = alloca %struct.oggpack_buffer, align 8
  %mode = alloca i32, align 4
  %modebits = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %packet, align 8
  %4 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes, align 8
  %conv = trunc i64 %5 to i32
  call void @oggpack_readinit(ptr noundef %opb, ptr noundef %3, i32 noundef %conv)
  %call = call i64 @oggpack_read(ptr noundef %opb, i32 noundef 1)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -135, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %modebits, align 4
  %6 = load ptr, ptr %ci, align 8
  %modes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %modes, align 8
  store i32 %7, ptr %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i32, ptr %v, align 4
  %cmp2 = icmp sgt i32 %8, 1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %modebits, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %modebits, align 4
  %10 = load i32, ptr %v, align 4
  %shr = ashr i32 %10, 1
  store i32 %shr, ptr %v, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %modebits, align 4
  %call4 = call i64 @oggpack_read(ptr noundef %opb, i32 noundef %11)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %mode, align 4
  %12 = load i32, ptr %mode, align 4
  %cmp6 = icmp eq i32 %12, -1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i64 -136, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %while.end
  %13 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %mode, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %blockflag, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %idxprom10
  %18 = load i64, ptr %arrayidx11, align 8
  store i64 %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %19 = load i64, ptr %retval, align 8
  ret i64 %19
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_readinit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
