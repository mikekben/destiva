; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor1 = type { [65 x i32], [65 x i32], [65 x i32], [63 x i32], [63 x i32], i32, i32, i32, ptr, i64, i64, i64 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

@FLOOR1_fromdB_LOOKUP = external hidden global [256 x float], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @floor1_inverse2(ptr noundef %vb, ptr noundef %in, ptr noundef %memo, ptr noundef %out) #1 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %memo.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %fit_value = alloca ptr, align 8
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %current = alloca i32, align 4
  %hy = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %memo, ptr %memo.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %vi, align 8
  store ptr %2, ptr %info, align 8
  %3 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %vd, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %vi1, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %codec_setup, align 8
  store ptr %6, ptr %ci, align 8
  %7 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %9
  %10 = load i64, ptr %arrayidx, align 8
  %div = sdiv i64 %10, 2
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %n, align 4
  %11 = load ptr, ptr %memo.addr, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %memo.addr, align 8
  store ptr %12, ptr %fit_value, align 8
  store i32 0, ptr %hx, align 4
  store i32 0, ptr %lx, align 4
  %13 = load ptr, ptr %fit_value, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx2, align 4
  %15 = load ptr, ptr %info, align 8
  %mult = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %mult, align 4
  %mul = mul nsw i32 %14, %16
  store i32 %mul, ptr %ly, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load i32, ptr %j, align 4
  %18 = load ptr, ptr %look, align 8
  %posts = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %posts, align 4
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %look, align 8
  %forward_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %j, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx4 = getelementptr inbounds [65 x i32], ptr %forward_index, i64 0, i64 %idxprom
  %22 = load i32, ptr %arrayidx4, align 4
  store i32 %22, ptr %current, align 4
  %23 = load ptr, ptr %fit_value, align 8
  %24 = load i32, ptr %current, align 4
  %idxprom5 = sext i32 %24 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %23, i64 %idxprom5
  %25 = load i32, ptr %arrayidx6, align 4
  %and = and i32 %25, 32767
  store i32 %and, ptr %hy, align 4
  %26 = load i32, ptr %hy, align 4
  %27 = load ptr, ptr %fit_value, align 8
  %28 = load i32, ptr %current, align 4
  %idxprom7 = sext i32 %28 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %27, i64 %idxprom7
  %29 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp eq i32 %26, %29
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body
  %30 = load ptr, ptr %info, align 8
  %mult12 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %mult12, align 4
  %32 = load i32, ptr %hy, align 4
  %mul13 = mul nsw i32 %32, %31
  store i32 %mul13, ptr %hy, align 4
  %33 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %current, align 4
  %idxprom14 = sext i32 %34 to i64
  %arrayidx15 = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 %idxprom14
  %35 = load i32, ptr %arrayidx15, align 4
  store i32 %35, ptr %hx, align 4
  %36 = load i32, ptr %lx, align 4
  %37 = load i32, ptr %hx, align 4
  %38 = load i32, ptr %ly, align 4
  %39 = load i32, ptr %hy, align 4
  %40 = load ptr, ptr %out.addr, align 8
  call void @render_line(i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40)
  %41 = load i32, ptr %hx, align 4
  store i32 %41, ptr %lx, align 4
  %42 = load i32, ptr %hy, align 4
  store i32 %42, ptr %ly, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, ptr %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %44 = load i32, ptr %hx, align 4
  store i32 %44, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.end
  %45 = load i32, ptr %j, align 4
  %46 = load i32, ptr %n, align 4
  %cmp17 = icmp slt i32 %45, %46
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %47 = load i32, ptr %ly, align 4
  %idxprom20 = sext i32 %47 to i64
  %arrayidx21 = getelementptr inbounds [256 x float], ptr @FLOOR1_fromdB_LOOKUP, i64 0, i64 %idxprom20
  %48 = load float, ptr %arrayidx21, align 4
  %49 = load ptr, ptr %out.addr, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %50 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %49, i64 %idxprom22
  %51 = load float, ptr %arrayidx23, align 4
  %mul24 = fmul float %51, %48
  store float %mul24, ptr %arrayidx23, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %52 = load i32, ptr %j, align 4
  %inc26 = add nsw i32 %52, 1
  store i32 %inc26, ptr %j, align 4
  br label %for.cond16, !llvm.loop !8

for.end27:                                        ; preds = %for.cond16
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %entry
  %53 = load ptr, ptr %out.addr, align 8
  %54 = load i32, ptr %n, align 4
  %conv29 = sext i32 %54 to i64
  %mul30 = mul i64 4, %conv29
  call void @llvm.memset.p0.i64(ptr align 4 %53, i8 0, i64 %mul30, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %for.end27
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden void @render_line(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !7}
