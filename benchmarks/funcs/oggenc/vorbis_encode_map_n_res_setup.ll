; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_mode = type { i32, i32, i32, i32 }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_mapping_template = type { ptr, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_residue_template = type { i32, i32, ptr, ptr, ptr, ptr, ptr }

@_mode_template = external hidden global [2 x %struct.vorbis_info_mode], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_map_n_res_setup(ptr noundef %vi, double noundef %s, ptr noundef %maps) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %maps.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %is = alloca i32, align 4
  %modes = alloca i32, align 4
  %map = alloca ptr, align 8
  %mode = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store ptr %maps, ptr %maps.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load double, ptr %s.addr, align 8
  %conv = fptosi double %2 to i32
  store i32 %conv, ptr %is, align 4
  store i32 2, ptr %modes, align 4
  %3 = load ptr, ptr %maps.addr, align 8
  %4 = load i32, ptr %is, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.vorbis_mapping_template, ptr %3, i64 %idxprom
  %map1 = getelementptr inbounds nuw %struct.vorbis_mapping_template, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %map1, align 8
  store ptr %5, ptr %map, align 8
  store ptr @_mode_template, ptr %mode, align 8
  %6 = load ptr, ptr %maps.addr, align 8
  %7 = load i32, ptr %is, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct.vorbis_mapping_template, ptr %6, i64 %idxprom2
  %res4 = getelementptr inbounds nuw %struct.vorbis_mapping_template, ptr %arrayidx3, i32 0, i32 1
  %8 = load ptr, ptr %res4, align 8
  store ptr %8, ptr %res, align 8
  %9 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %10 = load i64, ptr %arrayidx5, align 8
  %11 = load ptr, ptr %ci, align 8
  %blocksizes6 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i64], ptr %blocksizes6, i64 0, i64 1
  %12 = load i64, ptr %arrayidx7, align 8
  %cmp = icmp eq i64 %10, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %modes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %if.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %modes, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 3208) #3
  %15 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %15, i32 0, i32 9
  %16 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom11
  store ptr %call, ptr %arrayidx12, align 8
  %call13 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #3
  %17 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %17, i32 0, i32 7
  %18 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom14
  store ptr %call13, ptr %arrayidx15, align 8
  %19 = load ptr, ptr %ci, align 8
  %mode_param16 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [64 x ptr], ptr %mode_param16, i64 0, i64 %idxprom17
  %21 = load ptr, ptr %arrayidx18, align 8
  %22 = load ptr, ptr %mode, align 8
  %23 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info_mode, ptr %22, i64 %idx.ext
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %add.ptr, i64 16, i1 false)
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %ci, align 8
  %modes19 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %modes19, align 8
  %cmp20 = icmp sge i32 %24, %26
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %add = add nsw i32 %27, 1
  %28 = load ptr, ptr %ci, align 8
  %modes23 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %28, i32 0, i32 1
  store i32 %add, ptr %modes23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body
  %29 = load ptr, ptr %ci, align 8
  %map_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [64 x i32], ptr %map_type, i64 0, i64 %idxprom25
  store i32 0, ptr %arrayidx26, align 4
  %31 = load ptr, ptr %ci, align 8
  %map_param27 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %31, i32 0, i32 9
  %32 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds [64 x ptr], ptr %map_param27, i64 0, i64 %idxprom28
  %33 = load ptr, ptr %arrayidx29, align 8
  %34 = load ptr, ptr %map, align 8
  %35 = load i32, ptr %i, align 4
  %idx.ext30 = sext i32 %35 to i64
  %add.ptr31 = getelementptr inbounds %struct.vorbis_info_mapping0, ptr %34, i64 %idx.ext30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 4 %add.ptr31, i64 3208, i1 false)
  %36 = load i32, ptr %i, align 4
  %37 = load ptr, ptr %ci, align 8
  %maps32 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %maps32, align 4
  %cmp33 = icmp sge i32 %36, %38
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end24
  %39 = load i32, ptr %i, align 4
  %add36 = add nsw i32 %39, 1
  %40 = load ptr, ptr %ci, align 8
  %maps37 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %40, i32 0, i32 2
  store i32 %add36, ptr %maps37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end24
  store i32 0, ptr %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %if.end38
  %41 = load i32, ptr %j, align 4
  %42 = load ptr, ptr %map, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds %struct.vorbis_info_mapping0, ptr %42, i64 %idxprom40
  %submaps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %arrayidx41, i32 0, i32 0
  %44 = load i32, ptr %submaps, align 4
  %cmp42 = icmp slt i32 %41, %44
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond39
  %45 = load ptr, ptr %vi.addr, align 8
  %46 = load ptr, ptr %map, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds %struct.vorbis_info_mapping0, ptr %46, i64 %idxprom45
  %residuesubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %arrayidx46, i32 0, i32 3
  %48 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %48 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr %residuesubmap, i64 0, i64 %idxprom47
  %49 = load i32, ptr %arrayidx48, align 4
  %50 = load i32, ptr %i, align 4
  %51 = load ptr, ptr %res, align 8
  %52 = load ptr, ptr %map, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds %struct.vorbis_info_mapping0, ptr %52, i64 %idxprom49
  %residuesubmap51 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %arrayidx50, i32 0, i32 3
  %54 = load i32, ptr %j, align 4
  %idxprom52 = sext i32 %54 to i64
  %arrayidx53 = getelementptr inbounds [16 x i32], ptr %residuesubmap51, i64 0, i64 %idxprom52
  %55 = load i32, ptr %arrayidx53, align 4
  %idx.ext54 = sext i32 %55 to i64
  %add.ptr55 = getelementptr inbounds %struct.vorbis_residue_template, ptr %51, i64 %idx.ext54
  call void @vorbis_encode_residue_setup(ptr noundef %45, i32 noundef %49, i32 noundef %50, ptr noundef %add.ptr55)
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %56 = load i32, ptr %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond39, !llvm.loop !6

for.end:                                          ; preds = %for.cond39
  br label %for.inc56

for.inc56:                                        ; preds = %for.end
  %57 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %57, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end58:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_residue_setup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
