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
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeinit(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_bitrate_init(ptr noundef %vi, ptr noundef %bm) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %bm.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ci = alloca ptr, align 8
  %bi = alloca ptr, align 8
  %maxlatency = alloca i64, align 8
  %maxpackets = alloca i64, align 8
  %bins = alloca i64, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %bm, ptr %bm.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %bi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 18
  store ptr %bi1, ptr %bi, align 8
  %3 = load ptr, ptr %bm.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 152, i1 false)
  %4 = load ptr, ptr %bi, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end92

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bi, align 8
  %queue_avg_time = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %5, i32 0, i32 0
  %6 = load double, ptr %queue_avg_time, align 8
  %7 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %rate, align 8
  %conv = sitofp i64 %8 to double
  %mul = fmul double %6, %conv
  %conv2 = fptoui double %mul to i32
  %9 = load ptr, ptr %bm.addr, align 8
  %avg_sampledesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %9, i32 0, i32 10
  store i32 %conv2, ptr %avg_sampledesired, align 8
  %10 = load ptr, ptr %bi, align 8
  %queue_avg_time3 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %10, i32 0, i32 0
  %11 = load double, ptr %queue_avg_time3, align 8
  %12 = load ptr, ptr %vi.addr, align 8
  %rate4 = getelementptr inbounds nuw %struct.vorbis_info, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %rate4, align 8
  %conv5 = sitofp i64 %13 to double
  %mul6 = fmul double %11, %conv5
  %14 = load ptr, ptr %bi, align 8
  %queue_avg_center = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %14, i32 0, i32 1
  %15 = load double, ptr %queue_avg_center, align 8
  %mul7 = fmul double %mul6, %15
  %conv8 = fptoui double %mul7 to i32
  %16 = load ptr, ptr %bm.addr, align 8
  %avg_centerdesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %16, i32 0, i32 11
  store i32 %conv8, ptr %avg_centerdesired, align 4
  %17 = load ptr, ptr %bi, align 8
  %queue_minmax_time = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %17, i32 0, i32 2
  %18 = load double, ptr %queue_minmax_time, align 8
  %19 = load ptr, ptr %vi.addr, align 8
  %rate9 = getelementptr inbounds nuw %struct.vorbis_info, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %rate9, align 8
  %conv10 = sitofp i64 %20 to double
  %mul11 = fmul double %18, %conv10
  %conv12 = fptoui double %mul11 to i32
  %21 = load ptr, ptr %bm.addr, align 8
  %minmax_sampledesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %21, i32 0, i32 19
  store i32 %conv12, ptr %minmax_sampledesired, align 8
  %22 = load ptr, ptr %bm.addr, align 8
  %avg_sampledesired13 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %avg_sampledesired13, align 8
  %24 = load ptr, ptr %bm.addr, align 8
  %avg_centerdesired14 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %24, i32 0, i32 11
  %25 = load i32, ptr %avg_centerdesired14, align 4
  %sub = sub i32 %23, %25
  %26 = load ptr, ptr %bm.addr, align 8
  %minmax_sampledesired15 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %26, i32 0, i32 19
  %27 = load i32, ptr %minmax_sampledesired15, align 8
  %cmp = icmp ult i32 %sub, %27
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %28 = load ptr, ptr %bm.addr, align 8
  %minmax_sampledesired17 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %28, i32 0, i32 19
  %29 = load i32, ptr %minmax_sampledesired17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %30 = load ptr, ptr %bm.addr, align 8
  %avg_sampledesired18 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %avg_sampledesired18, align 8
  %32 = load ptr, ptr %bm.addr, align 8
  %avg_centerdesired19 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %32, i32 0, i32 11
  %33 = load i32, ptr %avg_centerdesired19, align 4
  %sub20 = sub i32 %31, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %sub20, %cond.false ]
  %34 = load ptr, ptr %bm.addr, align 8
  %avg_centerdesired21 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %avg_centerdesired21, align 4
  %add = add i32 %cond, %35
  %conv22 = zext i32 %add to i64
  store i64 %conv22, ptr %maxlatency, align 8
  %36 = load i64, ptr %maxlatency, align 8
  %cmp23 = icmp sgt i64 %36, 0
  br i1 %cmp23, label %land.lhs.true, label %if.else85

land.lhs.true:                                    ; preds = %cond.end
  %37 = load ptr, ptr %bi, align 8
  %queue_avgmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %37, i32 0, i32 5
  %38 = load double, ptr %queue_avgmin, align 8
  %cmp25 = fcmp ogt double %38, 0.000000e+00
  br i1 %cmp25, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %39 = load ptr, ptr %bi, align 8
  %queue_avgmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %39, i32 0, i32 6
  %40 = load double, ptr %queue_avgmax, align 8
  %cmp27 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp27, label %if.then35, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %bi, align 8
  %queue_hardmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %41, i32 0, i32 4
  %42 = load double, ptr %queue_hardmax, align 8
  %cmp30 = fcmp ogt double %42, 0.000000e+00
  br i1 %cmp30, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %43 = load ptr, ptr %bi, align 8
  %queue_hardmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %43, i32 0, i32 3
  %44 = load double, ptr %queue_hardmin, align 8
  %cmp33 = fcmp ogt double %44, 0.000000e+00
  br i1 %cmp33, label %if.then35, label %if.else85

if.then35:                                        ; preds = %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false, %land.lhs.true
  %45 = load i64, ptr %maxlatency, align 8
  %46 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %46, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %47 = load i64, ptr %arrayidx, align 8
  %shr = ashr i64 %47, 1
  %div = sdiv i64 %45, %shr
  %add36 = add nsw i64 %div, 3
  store i64 %add36, ptr %maxpackets, align 8
  store i64 15, ptr %bins, align 8
  %48 = load i64, ptr %maxpackets, align 8
  %conv37 = trunc i64 %48 to i32
  %49 = load ptr, ptr %bm.addr, align 8
  %queue_size = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %49, i32 0, i32 2
  store i32 %conv37, ptr %queue_size, align 8
  %50 = load i64, ptr %bins, align 8
  %conv38 = trunc i64 %50 to i32
  %51 = load ptr, ptr %bm.addr, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %51, i32 0, i32 4
  store i32 %conv38, ptr %queue_bins, align 8
  %52 = load i64, ptr %maxpackets, align 8
  %53 = load i64, ptr %bins, align 8
  %mul39 = mul i64 %53, 4
  %call = call noalias ptr @calloc(i64 noundef %52, i64 noundef %mul39) #3
  %54 = load ptr, ptr %bm.addr, align 8
  %queue_binned = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %54, i32 0, i32 0
  store ptr %call, ptr %queue_binned, align 8
  %55 = load i64, ptr %maxpackets, align 8
  %call40 = call noalias ptr @calloc(i64 noundef %55, i64 noundef 4) #3
  %56 = load ptr, ptr %bm.addr, align 8
  %queue_actual = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %56, i32 0, i32 1
  store ptr %call40, ptr %queue_actual, align 8
  %57 = load ptr, ptr %bi, align 8
  %queue_avgmin41 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %57, i32 0, i32 5
  %58 = load double, ptr %queue_avgmin41, align 8
  %cmp42 = fcmp ogt double %58, 0.000000e+00
  br i1 %cmp42, label %land.lhs.true48, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.then35
  %59 = load ptr, ptr %bi, align 8
  %queue_avgmax45 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %59, i32 0, i32 6
  %60 = load double, ptr %queue_avgmax45, align 8
  %cmp46 = fcmp ogt double %60, 0.000000e+00
  br i1 %cmp46, label %land.lhs.true48, label %if.else

land.lhs.true48:                                  ; preds = %lor.lhs.false44, %if.then35
  %61 = load ptr, ptr %bi, align 8
  %queue_avg_time49 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %61, i32 0, i32 0
  %62 = load double, ptr %queue_avg_time49, align 8
  %cmp50 = fcmp ogt double %62, 0.000000e+00
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %land.lhs.true48
  %63 = load i64, ptr %bins, align 8
  %call53 = call noalias ptr @calloc(i64 noundef %63, i64 noundef 8) #3
  %64 = load ptr, ptr %bm.addr, align 8
  %avg_binacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %64, i32 0, i32 5
  store ptr %call53, ptr %avg_binacc, align 8
  %65 = load ptr, ptr %bm.addr, align 8
  %avgfloat = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %65, i32 0, i32 22
  store double 7.000000e+00, ptr %avgfloat, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true48, %lor.lhs.false44
  %66 = load ptr, ptr %bm.addr, align 8
  %avg_tail = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %66, i32 0, i32 7
  store i32 -1, ptr %avg_tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then52
  %67 = load ptr, ptr %bi, align 8
  %queue_hardmin54 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %67, i32 0, i32 3
  %68 = load double, ptr %queue_hardmin54, align 8
  %cmp55 = fcmp ogt double %68, 0.000000e+00
  br i1 %cmp55, label %land.lhs.true61, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end
  %69 = load ptr, ptr %bi, align 8
  %queue_hardmax58 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %69, i32 0, i32 4
  %70 = load double, ptr %queue_hardmax58, align 8
  %cmp59 = fcmp ogt double %70, 0.000000e+00
  br i1 %cmp59, label %land.lhs.true61, label %if.else77

land.lhs.true61:                                  ; preds = %lor.lhs.false57, %if.end
  %71 = load ptr, ptr %bi, align 8
  %queue_minmax_time62 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %71, i32 0, i32 2
  %72 = load double, ptr %queue_minmax_time62, align 8
  %cmp63 = fcmp ogt double %72, 0.000000e+00
  br i1 %cmp63, label %if.then65, label %if.else77

if.then65:                                        ; preds = %land.lhs.true61
  %73 = load i64, ptr %bins, align 8
  %mul66 = mul nsw i64 %73, 2
  %add67 = add nsw i64 %mul66, 1
  %74 = load i64, ptr %bins, align 8
  %mul68 = mul nsw i64 %add67, %74
  %mul69 = mul nsw i64 %mul68, 2
  %call70 = call noalias ptr @calloc(i64 noundef %mul69, i64 noundef 8) #3
  %75 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %75, i32 0, i32 12
  store ptr %call70, ptr %minmax_binstack, align 8
  %76 = load i64, ptr %bins, align 8
  %mul71 = mul nsw i64 %76, 2
  %add72 = add nsw i64 %mul71, 1
  %call73 = call noalias ptr @calloc(i64 noundef %add72, i64 noundef 8) #3
  %77 = load ptr, ptr %bm.addr, align 8
  %minmax_posstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %77, i32 0, i32 13
  store ptr %call73, ptr %minmax_posstack, align 8
  %78 = load i64, ptr %bins, align 8
  %mul74 = mul nsw i64 %78, 2
  %add75 = add nsw i64 %mul74, 1
  %call76 = call noalias ptr @calloc(i64 noundef %add75, i64 noundef 8) #3
  %79 = load ptr, ptr %bm.addr, align 8
  %minmax_limitstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %79, i32 0, i32 14
  store ptr %call76, ptr %minmax_limitstack, align 8
  br label %if.end78

if.else77:                                        ; preds = %land.lhs.true61, %lor.lhs.false57
  %80 = load ptr, ptr %bm.addr, align 8
  %minmax_tail = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %80, i32 0, i32 17
  store i32 -1, ptr %minmax_tail, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then65
  %81 = load i64, ptr %maxpackets, align 8
  %call79 = call noalias ptr @calloc(i64 noundef %81, i64 noundef 40) #3
  %82 = load ptr, ptr %bm.addr, align 8
  %packetbuffers = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %82, i32 0, i32 23
  store ptr %call79, ptr %packetbuffers, align 8
  %83 = load i64, ptr %maxpackets, align 8
  %call80 = call noalias ptr @calloc(i64 noundef %83, i64 noundef 48) #3
  %84 = load ptr, ptr %bm.addr, align 8
  %packets = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %84, i32 0, i32 24
  store ptr %call80, ptr %packets, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end78
  %85 = load i32, ptr %i, align 4
  %conv81 = sext i32 %85 to i64
  %86 = load i64, ptr %maxpackets, align 8
  %cmp82 = icmp slt i64 %conv81, %86
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load ptr, ptr %bm.addr, align 8
  %packetbuffers84 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %87, i32 0, i32 23
  %88 = load ptr, ptr %packetbuffers84, align 8
  %89 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %89 to i64
  %add.ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %88, i64 %idx.ext
  call void @oggpack_writeinit(ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load i32, ptr %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end91

if.else85:                                        ; preds = %lor.lhs.false32, %cond.end
  %call86 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #3
  %91 = load ptr, ptr %bm.addr, align 8
  %packetbuffers87 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %91, i32 0, i32 23
  store ptr %call86, ptr %packetbuffers87, align 8
  %call88 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #3
  %92 = load ptr, ptr %bm.addr, align 8
  %packets89 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %92, i32 0, i32 24
  store ptr %call88, ptr %packets89, align 8
  %93 = load ptr, ptr %bm.addr, align 8
  %packetbuffers90 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %93, i32 0, i32 23
  %94 = load ptr, ptr %packetbuffers90, align 8
  call void @oggpack_writeinit(ptr noundef %94)
  br label %if.end91

if.end91:                                         ; preds = %if.else85, %for.end
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %entry
  ret void
}

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
