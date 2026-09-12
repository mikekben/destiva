; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

@_psy_info_template = external hidden global { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x <{ float, [16 x float] }>], <{ float, [39 x float] }>, float, i32, i32, i32, i32, [4 x i8], double }, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_psyset_setup(ptr noundef %vi, double noundef %s, ptr noundef %nn_start, ptr noundef %nn_partition, ptr noundef %nn_thresh, i32 noundef %block) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %nn_start.addr = alloca ptr, align 8
  %nn_partition.addr = alloca ptr, align 8
  %nn_thresh.addr = alloca ptr, align 8
  %block.addr = alloca i32, align 4
  %ci = alloca ptr, align 8
  %p = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %is = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store ptr %nn_start, ptr %nn_start.addr, align 8
  store ptr %nn_partition, ptr %nn_partition.addr, align 8
  store ptr %nn_thresh, ptr %nn_thresh.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %block.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %p, align 8
  %5 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %6 = load double, ptr %s.addr, align 8
  %conv = fptosi double %6 to i32
  store i32 %conv, ptr %is, align 4
  %7 = load i32, ptr %block.addr, align 4
  %8 = load ptr, ptr %ci, align 8
  %psys = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %psys, align 4
  %cmp = icmp sge i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %block.addr, align 4
  %add = add nsw i32 %10, 1
  %11 = load ptr, ptr %ci, align 8
  %psys3 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 6
  store i32 %add, ptr %psys3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 528) #3
  store ptr %call, ptr %p, align 8
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %ci, align 8
  %psy_param5 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %block.addr, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %psy_param5, i64 0, i64 %idxprom6
  store ptr %13, ptr %arrayidx7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %16 = load ptr, ptr %p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 @_psy_info_template, i64 528, i1 false)
  %17 = load i32, ptr %block.addr, align 4
  %shr = ashr i32 %17, 1
  %18 = load ptr, ptr %p, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %18, i32 0, i32 0
  store i32 %shr, ptr %blockflag, align 8
  %19 = load ptr, ptr %hi, align 8
  %noise_normalize_p = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %19, i32 0, i32 15
  %20 = load i32, ptr %noise_normalize_p, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end8
  %21 = load ptr, ptr %p, align 8
  %normal_channel_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %21, i32 0, i32 18
  store i32 1, ptr %normal_channel_p, align 4
  %22 = load ptr, ptr %p, align 8
  %normal_point_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %22, i32 0, i32 19
  store i32 1, ptr %normal_point_p, align 8
  %23 = load ptr, ptr %nn_start.addr, align 8
  %24 = load i32, ptr %is, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %23, i64 %idxprom11
  %25 = load i32, ptr %arrayidx12, align 4
  %26 = load ptr, ptr %p, align 8
  %normal_start = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %26, i32 0, i32 20
  store i32 %25, ptr %normal_start, align 4
  %27 = load ptr, ptr %nn_partition.addr, align 8
  %28 = load i32, ptr %is, align 4
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %27, i64 %idxprom13
  %29 = load i32, ptr %arrayidx14, align 4
  %30 = load ptr, ptr %p, align 8
  %normal_partition = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %30, i32 0, i32 21
  store i32 %29, ptr %normal_partition, align 8
  %31 = load ptr, ptr %nn_thresh.addr, align 8
  %32 = load i32, ptr %is, align 4
  %idxprom15 = sext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %31, i64 %idxprom15
  %33 = load double, ptr %arrayidx16, align 8
  %34 = load ptr, ptr %p, align 8
  %normal_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %34, i32 0, i32 22
  store double %33, ptr %normal_thresh, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end8
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
