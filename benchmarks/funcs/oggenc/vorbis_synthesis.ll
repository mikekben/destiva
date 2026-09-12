; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_mode = type { i32, i32, i32, i32 }
%struct.vorbis_func_mapping = type { ptr, ptr, ptr, ptr, ptr }

@_mapping_P = external dso_local global [1 x ptr], align 8

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_readinit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @_vorbis_block_ripcord(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis(ptr noundef %vb, ptr noundef %op) #0 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %b = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %opb = alloca ptr, align 8
  %type = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %vd1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %vd1, align 8
  store ptr %1, ptr %vd, align 8
  %2 = load ptr, ptr %vd, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %backend_state, align 8
  store ptr %3, ptr %b, align 8
  %4 = load ptr, ptr %vd, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %vi2, align 8
  store ptr %5, ptr %vi, align 8
  %6 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %codec_setup, align 8
  store ptr %7, ptr %ci, align 8
  %8 = load ptr, ptr %vb.addr, align 8
  %opb3 = getelementptr inbounds nuw %struct.vorbis_block, ptr %8, i32 0, i32 1
  store ptr %opb3, ptr %opb, align 8
  %9 = load ptr, ptr %vb.addr, align 8
  call void @_vorbis_block_ripcord(ptr noundef %9)
  %10 = load ptr, ptr %opb, align 8
  %11 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %packet, align 8
  %13 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %bytes, align 8
  %conv = trunc i64 %14 to i32
  call void @oggpack_readinit(ptr noundef %10, ptr noundef %12, i32 noundef %conv)
  %15 = load ptr, ptr %opb, align 8
  %call = call i64 @oggpack_read(ptr noundef %15, i32 noundef 1)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %opb, align 8
  %17 = load ptr, ptr %b, align 8
  %modebits = getelementptr inbounds nuw %struct.private_state, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %modebits, align 8
  %call5 = call i64 @oggpack_read(ptr noundef %16, i32 noundef %18)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr %mode, align 4
  %19 = load i32, ptr %mode, align 4
  %cmp7 = icmp eq i32 %19, -1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -136, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %20 = load i32, ptr %mode, align 4
  %21 = load ptr, ptr %vb.addr, align 8
  %mode11 = getelementptr inbounds nuw %struct.vorbis_block, ptr %21, i32 0, i32 6
  store i32 %20, ptr %mode11, align 4
  %22 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %mode, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %blockflag, align 4
  %conv12 = sext i32 %25 to i64
  %26 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %26, i32 0, i32 3
  store i64 %conv12, ptr %W, align 8
  %27 = load ptr, ptr %vb.addr, align 8
  %W13 = getelementptr inbounds nuw %struct.vorbis_block, ptr %27, i32 0, i32 3
  %28 = load i64, ptr %W13, align 8
  %tobool = icmp ne i64 %28, 0
  br i1 %tobool, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %29 = load ptr, ptr %opb, align 8
  %call15 = call i64 @oggpack_read(ptr noundef %29, i32 noundef 1)
  %30 = load ptr, ptr %vb.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_block, ptr %30, i32 0, i32 2
  store i64 %call15, ptr %lW, align 8
  %31 = load ptr, ptr %opb, align 8
  %call16 = call i64 @oggpack_read(ptr noundef %31, i32 noundef 1)
  %32 = load ptr, ptr %vb.addr, align 8
  %nW = getelementptr inbounds nuw %struct.vorbis_block, ptr %32, i32 0, i32 4
  store i64 %call16, ptr %nW, align 8
  %33 = load ptr, ptr %vb.addr, align 8
  %nW17 = getelementptr inbounds nuw %struct.vorbis_block, ptr %33, i32 0, i32 4
  %34 = load i64, ptr %nW17, align 8
  %cmp18 = icmp eq i64 %34, -1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  store i32 -136, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then14
  br label %if.end24

if.else:                                          ; preds = %if.end10
  %35 = load ptr, ptr %vb.addr, align 8
  %lW22 = getelementptr inbounds nuw %struct.vorbis_block, ptr %35, i32 0, i32 2
  store i64 0, ptr %lW22, align 8
  %36 = load ptr, ptr %vb.addr, align 8
  %nW23 = getelementptr inbounds nuw %struct.vorbis_block, ptr %36, i32 0, i32 4
  store i64 0, ptr %nW23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end21
  %37 = load ptr, ptr %op.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %37, i32 0, i32 4
  %38 = load i64, ptr %granulepos, align 8
  %39 = load ptr, ptr %vb.addr, align 8
  %granulepos25 = getelementptr inbounds nuw %struct.vorbis_block, ptr %39, i32 0, i32 8
  store i64 %38, ptr %granulepos25, align 8
  %40 = load ptr, ptr %op.addr, align 8
  %packetno = getelementptr inbounds nuw %struct.ogg_packet, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %packetno, align 8
  %42 = load ptr, ptr %vb.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_block, ptr %42, i32 0, i32 9
  store i64 %41, ptr %sequence, align 8
  %43 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %43, i32 0, i32 3
  %44 = load i64, ptr %e_o_s, align 8
  %conv26 = trunc i64 %44 to i32
  %45 = load ptr, ptr %vb.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_block, ptr %45, i32 0, i32 7
  store i32 %conv26, ptr %eofflag, align 8
  %46 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %vb.addr, align 8
  %W27 = getelementptr inbounds nuw %struct.vorbis_block, ptr %47, i32 0, i32 3
  %48 = load i64, ptr %W27, align 8
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %48
  %49 = load i64, ptr %arrayidx28, align 8
  %conv29 = trunc i64 %49 to i32
  %50 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %50, i32 0, i32 5
  store i32 %conv29, ptr %pcmend, align 8
  %51 = load ptr, ptr %vb.addr, align 8
  %52 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %channels, align 4
  %conv30 = sext i32 %53 to i64
  %mul = mul i64 8, %conv30
  %call31 = call ptr @_vorbis_block_alloc(ptr noundef %51, i64 noundef %mul)
  %54 = load ptr, ptr %vb.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_block, ptr %54, i32 0, i32 0
  store ptr %call31, ptr %pcm, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %55 = load i32, ptr %i, align 4
  %56 = load ptr, ptr %vi, align 8
  %channels32 = getelementptr inbounds nuw %struct.vorbis_info, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %channels32, align 4
  %cmp33 = icmp slt i32 %55, %57
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load ptr, ptr %vb.addr, align 8
  %59 = load ptr, ptr %vb.addr, align 8
  %pcmend35 = getelementptr inbounds nuw %struct.vorbis_block, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %pcmend35, align 8
  %conv36 = sext i32 %60 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call ptr @_vorbis_block_alloc(ptr noundef %58, i64 noundef %mul37)
  %61 = load ptr, ptr %vb.addr, align 8
  %pcm39 = getelementptr inbounds nuw %struct.vorbis_block, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pcm39, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %63 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %62, i64 %idxprom40
  store ptr %call38, ptr %arrayidx41, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %ci, align 8
  %map_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %65, i32 0, i32 8
  %66 = load ptr, ptr %ci, align 8
  %mode_param42 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %66, i32 0, i32 7
  %67 = load i32, ptr %mode, align 4
  %idxprom43 = sext i32 %67 to i64
  %arrayidx44 = getelementptr inbounds [64 x ptr], ptr %mode_param42, i64 0, i64 %idxprom43
  %68 = load ptr, ptr %arrayidx44, align 8
  %mapping = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %mapping, align 4
  %idxprom45 = sext i32 %69 to i64
  %arrayidx46 = getelementptr inbounds [64 x i32], ptr %map_type, i64 0, i64 %idxprom45
  %70 = load i32, ptr %arrayidx46, align 4
  store i32 %70, ptr %type, align 4
  %71 = load i32, ptr %type, align 4
  %idxprom47 = sext i32 %71 to i64
  %arrayidx48 = getelementptr inbounds [0 x ptr], ptr @_mapping_P, i64 0, i64 %idxprom47
  %72 = load ptr, ptr %arrayidx48, align 8
  %inverse = getelementptr inbounds nuw %struct.vorbis_func_mapping, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %inverse, align 8
  %74 = load ptr, ptr %vb.addr, align 8
  %75 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %75, i32 0, i32 9
  %76 = load ptr, ptr %ci, align 8
  %mode_param49 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %76, i32 0, i32 7
  %77 = load i32, ptr %mode, align 4
  %idxprom50 = sext i32 %77 to i64
  %arrayidx51 = getelementptr inbounds [64 x ptr], ptr %mode_param49, i64 0, i64 %idxprom50
  %78 = load ptr, ptr %arrayidx51, align 8
  %mapping52 = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %mapping52, align 4
  %idxprom53 = sext i32 %79 to i64
  %arrayidx54 = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom53
  %80 = load ptr, ptr %arrayidx54, align 8
  %call55 = call i32 %73(ptr noundef %74, ptr noundef %80)
  store i32 %call55, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then20, %if.then9, %if.then
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
