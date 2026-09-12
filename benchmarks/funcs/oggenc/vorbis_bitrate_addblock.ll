; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.vorbis_block_internal = type { ptr, float, i32, [15 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_bitrate_addblock(ptr noundef %vb) #1 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vbi = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %b = alloca ptr, align 8
  %bm = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %bi = alloca ptr, align 8
  %eofflag = alloca i32, align 4
  %head = alloca i32, align 4
  %next_head = alloca i32, align 4
  %bins = alloca i32, align 4
  %minmax_head = alloca i32, align 4
  %new_minmax_head = alloca i32, align 4
  %head_ptr = alloca ptr, align 8
  %temp = alloca %struct.oggpack_buffer, align 8
  %temp5 = alloca %struct.oggpack_buffer, align 8
  %desired_center = alloca i64, align 8
  %samples = alloca i32, align 4
  %upper = alloca double, align 8
  %lower = alloca double, align 8
  %new = alloca double, align 8
  %slew = alloca double, align 8
  %bin = alloca i32, align 4
  %samples229 = alloca i32, align 4
  %bin277 = alloca i64, align 8
  %sampledesired = alloca i64, align 8
  %i294 = alloca i32, align 4
  %samples295 = alloca i32, align 4
  %actual = alloca i32, align 4
  %bitrate = alloca double, align 8
  %limit = alloca i32, align 4
  %newstack = alloca i32, align 4
  %stackctr = alloca i32, align 4
  %bitsum = alloca i64, align 8
  %bitsum428 = alloca i64, align 8
  %bitsum455 = alloca i64, align 8
  %samples592 = alloca i32, align 4
  %actual606 = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %internal = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %internal, align 8
  store ptr %1, ptr %vbi, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %vd1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %vd1, align 8
  store ptr %3, ptr %vd, align 8
  %4 = load ptr, ptr %vd, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %backend_state, align 8
  store ptr %5, ptr %b, align 8
  %6 = load ptr, ptr %b, align 8
  %bms = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 12
  store ptr %bms, ptr %bm, align 8
  %7 = load ptr, ptr %vd, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %vi2, align 8
  store ptr %8, ptr %vi, align 8
  %9 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %codec_setup, align 8
  store ptr %10, ptr %ci, align 8
  %11 = load ptr, ptr %ci, align 8
  %bi3 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 18
  store ptr %bi3, ptr %bi, align 8
  %12 = load ptr, ptr %vb.addr, align 8
  %eofflag4 = getelementptr inbounds nuw %struct.vorbis_block, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %eofflag4, align 8
  store i32 %13, ptr %eofflag, align 4
  %14 = load ptr, ptr %bm, align 8
  %queue_head = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %queue_head, align 4
  store i32 %15, ptr %head, align 4
  %16 = load i32, ptr %head, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, ptr %next_head, align 4
  %17 = load ptr, ptr %bm, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %queue_bins, align 8
  store i32 %18, ptr %bins, align 4
  %19 = load ptr, ptr %bm, align 8
  %queue_binned = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %queue_binned, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.end27, label %if.then

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %bm, align 8
  %queue_head6 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %queue_head6, align 4
  %tobool7 = icmp ne i32 %22, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %23 = load ptr, ptr %bm, align 8
  %queue_head9 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %queue_head9, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %queue_head9, align 4
  %25 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %25, i32 0, i32 1
  %call = call ptr @oggpack_get_buffer(ptr noundef %opb)
  %26 = load ptr, ptr %bm, align 8
  %packets = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %26, i32 0, i32 24
  %27 = load ptr, ptr %packets, align 8
  %arrayidx = getelementptr inbounds %struct.ogg_packet, ptr %27, i64 0
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx, i32 0, i32 0
  store ptr %call, ptr %packet, align 8
  %28 = load ptr, ptr %vb.addr, align 8
  %opb10 = getelementptr inbounds nuw %struct.vorbis_block, ptr %28, i32 0, i32 1
  %call11 = call i64 @oggpack_bytes(ptr noundef %opb10)
  %29 = load ptr, ptr %bm, align 8
  %packets12 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %29, i32 0, i32 24
  %30 = load ptr, ptr %packets12, align 8
  %arrayidx13 = getelementptr inbounds %struct.ogg_packet, ptr %30, i64 0
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx13, i32 0, i32 1
  store i64 %call11, ptr %bytes, align 8
  %31 = load ptr, ptr %bm, align 8
  %packets14 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %31, i32 0, i32 24
  %32 = load ptr, ptr %packets14, align 8
  %arrayidx15 = getelementptr inbounds %struct.ogg_packet, ptr %32, i64 0
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx15, i32 0, i32 2
  store i64 0, ptr %b_o_s, align 8
  %33 = load ptr, ptr %vb.addr, align 8
  %eofflag16 = getelementptr inbounds nuw %struct.vorbis_block, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %eofflag16, align 8
  %conv = sext i32 %34 to i64
  %35 = load ptr, ptr %bm, align 8
  %packets17 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %35, i32 0, i32 24
  %36 = load ptr, ptr %packets17, align 8
  %arrayidx18 = getelementptr inbounds %struct.ogg_packet, ptr %36, i64 0
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx18, i32 0, i32 3
  store i64 %conv, ptr %e_o_s, align 8
  %37 = load ptr, ptr %vb.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.vorbis_block, ptr %37, i32 0, i32 8
  %38 = load i64, ptr %granulepos, align 8
  %39 = load ptr, ptr %bm, align 8
  %packets19 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %39, i32 0, i32 24
  %40 = load ptr, ptr %packets19, align 8
  %arrayidx20 = getelementptr inbounds %struct.ogg_packet, ptr %40, i64 0
  %granulepos21 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx20, i32 0, i32 4
  store i64 %38, ptr %granulepos21, align 8
  %41 = load ptr, ptr %vb.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_block, ptr %41, i32 0, i32 9
  %42 = load i64, ptr %sequence, align 8
  %43 = load ptr, ptr %bm, align 8
  %packets22 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %43, i32 0, i32 24
  %44 = load ptr, ptr %packets22, align 8
  %arrayidx23 = getelementptr inbounds %struct.ogg_packet, ptr %44, i64 0
  %packetno = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx23, i32 0, i32 5
  store i64 %42, ptr %packetno, align 8
  %45 = load ptr, ptr %bm, align 8
  %packetbuffers = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %45, i32 0, i32 23
  %46 = load ptr, ptr %packetbuffers, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp5, ptr align 8 %46, i64 40, i1 false)
  %47 = load ptr, ptr %bm, align 8
  %packetbuffers24 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %47, i32 0, i32 23
  %48 = load ptr, ptr %packetbuffers24, align 8
  %49 = load ptr, ptr %vb.addr, align 8
  %opb25 = getelementptr inbounds nuw %struct.vorbis_block, ptr %49, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %48, ptr align 8 %opb25, i64 40, i1 false)
  %50 = load ptr, ptr %vb.addr, align 8
  %opb26 = getelementptr inbounds nuw %struct.vorbis_block, ptr %50, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %opb26, ptr align 8 %temp5, i64 40, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %entry
  %51 = load i32, ptr %next_head, align 4
  %52 = load ptr, ptr %bm, align 8
  %queue_size = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %queue_size, align 8
  %cmp = icmp sge i32 %51, %53
  br i1 %cmp, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %next_head, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %54 = load ptr, ptr %bm, align 8
  %queue_binned31 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %queue_binned31, align 8
  %56 = load i32, ptr %bins, align 4
  %57 = load i32, ptr %head, align 4
  %mul = mul nsw i32 %56, %57
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %55, i64 %idx.ext
  store ptr %add.ptr, ptr %head_ptr, align 8
  %58 = load i32, ptr %next_head, align 4
  %59 = load ptr, ptr %bm, align 8
  %avg_tail = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %59, i32 0, i32 7
  %60 = load i32, ptr %avg_tail, align 4
  %cmp32 = icmp eq i32 %58, %60
  br i1 %cmp32, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %61 = load i32, ptr %next_head, align 4
  %62 = load ptr, ptr %bm, align 8
  %minmax_tail = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %62, i32 0, i32 17
  %63 = load i32, ptr %minmax_tail, align 8
  %cmp34 = icmp eq i32 %61, %63
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 -1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false
  %64 = load i32, ptr %next_head, align 4
  %65 = load ptr, ptr %bm, align 8
  %queue_head38 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %65, i32 0, i32 3
  store i32 %64, ptr %queue_head38, align 4
  %66 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %66, i32 0, i32 3
  %67 = load i64, ptr %W, align 8
  %tobool39 = icmp ne i64 %67, 0
  %68 = zext i1 %tobool39 to i64
  %cond = select i1 %tobool39, i64 2147483648, i64 0
  %conv40 = trunc i64 %cond to i32
  %69 = load ptr, ptr %bm, align 8
  %queue_actual = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %queue_actual, align 8
  %71 = load i32, ptr %head, align 4
  %idxprom = sext i32 %71 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %70, i64 %idxprom
  store i32 %conv40, ptr %arrayidx41, align 4
  %72 = load ptr, ptr %vb.addr, align 8
  %opb42 = getelementptr inbounds nuw %struct.vorbis_block, ptr %72, i32 0, i32 1
  %call43 = call ptr @oggpack_get_buffer(ptr noundef %opb42)
  %73 = load ptr, ptr %bm, align 8
  %packets44 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %73, i32 0, i32 24
  %74 = load ptr, ptr %packets44, align 8
  %75 = load i32, ptr %head, align 4
  %idxprom45 = sext i32 %75 to i64
  %arrayidx46 = getelementptr inbounds %struct.ogg_packet, ptr %74, i64 %idxprom45
  %packet47 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx46, i32 0, i32 0
  store ptr %call43, ptr %packet47, align 8
  %76 = load ptr, ptr %vb.addr, align 8
  %opb48 = getelementptr inbounds nuw %struct.vorbis_block, ptr %76, i32 0, i32 1
  %call49 = call i64 @oggpack_bytes(ptr noundef %opb48)
  %77 = load ptr, ptr %bm, align 8
  %packets50 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %77, i32 0, i32 24
  %78 = load ptr, ptr %packets50, align 8
  %79 = load i32, ptr %head, align 4
  %idxprom51 = sext i32 %79 to i64
  %arrayidx52 = getelementptr inbounds %struct.ogg_packet, ptr %78, i64 %idxprom51
  %bytes53 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx52, i32 0, i32 1
  store i64 %call49, ptr %bytes53, align 8
  %80 = load ptr, ptr %bm, align 8
  %packets54 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %80, i32 0, i32 24
  %81 = load ptr, ptr %packets54, align 8
  %82 = load i32, ptr %head, align 4
  %idxprom55 = sext i32 %82 to i64
  %arrayidx56 = getelementptr inbounds %struct.ogg_packet, ptr %81, i64 %idxprom55
  %b_o_s57 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx56, i32 0, i32 2
  store i64 0, ptr %b_o_s57, align 8
  %83 = load ptr, ptr %vb.addr, align 8
  %eofflag58 = getelementptr inbounds nuw %struct.vorbis_block, ptr %83, i32 0, i32 7
  %84 = load i32, ptr %eofflag58, align 8
  %conv59 = sext i32 %84 to i64
  %85 = load ptr, ptr %bm, align 8
  %packets60 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %85, i32 0, i32 24
  %86 = load ptr, ptr %packets60, align 8
  %87 = load i32, ptr %head, align 4
  %idxprom61 = sext i32 %87 to i64
  %arrayidx62 = getelementptr inbounds %struct.ogg_packet, ptr %86, i64 %idxprom61
  %e_o_s63 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx62, i32 0, i32 3
  store i64 %conv59, ptr %e_o_s63, align 8
  %88 = load ptr, ptr %vb.addr, align 8
  %granulepos64 = getelementptr inbounds nuw %struct.vorbis_block, ptr %88, i32 0, i32 8
  %89 = load i64, ptr %granulepos64, align 8
  %90 = load ptr, ptr %bm, align 8
  %packets65 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %90, i32 0, i32 24
  %91 = load ptr, ptr %packets65, align 8
  %92 = load i32, ptr %head, align 4
  %idxprom66 = sext i32 %92 to i64
  %arrayidx67 = getelementptr inbounds %struct.ogg_packet, ptr %91, i64 %idxprom66
  %granulepos68 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx67, i32 0, i32 4
  store i64 %89, ptr %granulepos68, align 8
  %93 = load ptr, ptr %vb.addr, align 8
  %sequence69 = getelementptr inbounds nuw %struct.vorbis_block, ptr %93, i32 0, i32 9
  %94 = load i64, ptr %sequence69, align 8
  %95 = load ptr, ptr %bm, align 8
  %packets70 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %95, i32 0, i32 24
  %96 = load ptr, ptr %packets70, align 8
  %97 = load i32, ptr %head, align 4
  %idxprom71 = sext i32 %97 to i64
  %arrayidx72 = getelementptr inbounds %struct.ogg_packet, ptr %96, i64 %idxprom71
  %packetno73 = getelementptr inbounds nuw %struct.ogg_packet, ptr %arrayidx72, i32 0, i32 5
  store i64 %94, ptr %packetno73, align 8
  %98 = load ptr, ptr %bm, align 8
  %packetbuffers74 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %98, i32 0, i32 23
  %99 = load ptr, ptr %packetbuffers74, align 8
  %100 = load i32, ptr %head, align 4
  %idx.ext75 = sext i32 %100 to i64
  %add.ptr76 = getelementptr inbounds %struct.oggpack_buffer, ptr %99, i64 %idx.ext75
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %add.ptr76, i64 40, i1 false)
  %101 = load ptr, ptr %bm, align 8
  %packetbuffers77 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %101, i32 0, i32 23
  %102 = load ptr, ptr %packetbuffers77, align 8
  %103 = load i32, ptr %head, align 4
  %idx.ext78 = sext i32 %103 to i64
  %add.ptr79 = getelementptr inbounds %struct.oggpack_buffer, ptr %102, i64 %idx.ext78
  %104 = load ptr, ptr %vb.addr, align 8
  %opb80 = getelementptr inbounds nuw %struct.vorbis_block, ptr %104, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr79, ptr align 8 %opb80, i64 40, i1 false)
  %105 = load ptr, ptr %vb.addr, align 8
  %opb81 = getelementptr inbounds nuw %struct.vorbis_block, ptr %105, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %opb81, ptr align 8 %temp, i64 40, i1 false)
  %106 = load ptr, ptr %vbi, align 8
  %packetblob_markers = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %106, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [15 x i32], ptr %packetblob_markers, i64 0, i64 0
  %107 = load i32, ptr %arrayidx82, align 8
  %108 = load ptr, ptr %head_ptr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %108, i64 0
  store i32 %107, ptr %arrayidx83, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end37
  %109 = load i32, ptr %i, align 4
  %cmp84 = icmp slt i32 %109, 15
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load ptr, ptr %vbi, align 8
  %packetblob_markers86 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %110, i32 0, i32 3
  %111 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %111 to i64
  %arrayidx88 = getelementptr inbounds [15 x i32], ptr %packetblob_markers86, i64 0, i64 %idxprom87
  %112 = load i32, ptr %arrayidx88, align 4
  %113 = load ptr, ptr %vbi, align 8
  %packetblob_markers89 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %113, i32 0, i32 3
  %114 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %114, 1
  %idxprom90 = sext i32 %sub to i64
  %arrayidx91 = getelementptr inbounds [15 x i32], ptr %packetblob_markers89, i64 0, i64 %idxprom90
  %115 = load i32, ptr %arrayidx91, align 4
  %sub92 = sub i32 %112, %115
  %116 = load ptr, ptr %head_ptr, align 8
  %117 = load i32, ptr %i, align 4
  %idxprom93 = sext i32 %117 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %116, i64 %idxprom93
  store i32 %sub92, ptr %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %118 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %118, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %119 = load ptr, ptr %bm, align 8
  %avg_binacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %119, i32 0, i32 5
  %120 = load ptr, ptr %avg_binacc, align 8
  %tobool96 = icmp ne ptr %120, null
  br i1 %tobool96, label %if.then97, label %if.else

if.then97:                                        ; preds = %for.end
  %121 = load ptr, ptr %bm, align 8
  %avg_center = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %121, i32 0, i32 6
  %122 = load i32, ptr %avg_center, align 8
  store i32 %122, ptr %minmax_head, align 4
  store i32 %122, ptr %new_minmax_head, align 4
  br label %if.end98

if.else:                                          ; preds = %for.end
  %123 = load i32, ptr %head, align 4
  store i32 %123, ptr %minmax_head, align 4
  store i32 %123, ptr %new_minmax_head, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then97
  %124 = load ptr, ptr %bm, align 8
  %avg_binacc99 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %124, i32 0, i32 5
  %125 = load ptr, ptr %avg_binacc99, align 8
  %tobool100 = icmp ne ptr %125, null
  br i1 %tobool100, label %if.then101, label %if.else276

if.then101:                                       ; preds = %if.end98
  %126 = load ptr, ptr %bm, align 8
  %avg_centerdesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %126, i32 0, i32 11
  %127 = load i32, ptr %avg_centerdesired, align 4
  %conv102 = zext i32 %127 to i64
  store i64 %conv102, ptr %desired_center, align 8
  %128 = load i32, ptr %eofflag, align 4
  %tobool103 = icmp ne i32 %128, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  store i64 0, ptr %desired_center, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then101
  store i32 0, ptr %i, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc118, %if.end105
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %bins, align 4
  %cmp107 = icmp slt i32 %129, %130
  br i1 %cmp107, label %for.body109, label %for.end120

for.body109:                                      ; preds = %for.cond106
  %131 = load ptr, ptr %head_ptr, align 8
  %132 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %132 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %131, i64 %idxprom110
  %133 = load i32, ptr %arrayidx111, align 4
  %conv112 = zext i32 %133 to i64
  %call113 = call i64 @LACING_ADJUST(i64 noundef %conv112)
  %134 = load ptr, ptr %bm, align 8
  %avg_binacc114 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %134, i32 0, i32 5
  %135 = load ptr, ptr %avg_binacc114, align 8
  %136 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %136 to i64
  %arrayidx116 = getelementptr inbounds i64, ptr %135, i64 %idxprom115
  %137 = load i64, ptr %arrayidx116, align 8
  %add117 = add nsw i64 %137, %call113
  store i64 %add117, ptr %arrayidx116, align 8
  br label %for.inc118

for.inc118:                                       ; preds = %for.body109
  %138 = load i32, ptr %i, align 4
  %inc119 = add nsw i32 %138, 1
  store i32 %inc119, ptr %i, align 4
  br label %for.cond106, !llvm.loop !8

for.end120:                                       ; preds = %for.cond106
  %139 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %vb.addr, align 8
  %W121 = getelementptr inbounds nuw %struct.vorbis_block, ptr %140, i32 0, i32 3
  %141 = load i64, ptr %W121, align 8
  %arrayidx122 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %141
  %142 = load i64, ptr %arrayidx122, align 8
  %shr = ashr i64 %142, 1
  %143 = load ptr, ptr %bm, align 8
  %avg_sampleacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %143, i32 0, i32 9
  %144 = load i32, ptr %avg_sampleacc, align 4
  %conv123 = zext i32 %144 to i64
  %add124 = add nsw i64 %conv123, %shr
  %conv125 = trunc i64 %add124 to i32
  store i32 %conv125, ptr %avg_sampleacc, align 4
  %145 = load ptr, ptr %ci, align 8
  %blocksizes126 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %vb.addr, align 8
  %W127 = getelementptr inbounds nuw %struct.vorbis_block, ptr %146, i32 0, i32 3
  %147 = load i64, ptr %W127, align 8
  %arrayidx128 = getelementptr inbounds [2 x i64], ptr %blocksizes126, i64 0, i64 %147
  %148 = load i64, ptr %arrayidx128, align 8
  %shr129 = ashr i64 %148, 1
  %149 = load ptr, ptr %bm, align 8
  %avg_centeracc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %149, i32 0, i32 8
  %150 = load i32, ptr %avg_centeracc, align 8
  %conv130 = zext i32 %150 to i64
  %add131 = add nsw i64 %conv130, %shr129
  %conv132 = trunc i64 %add131 to i32
  store i32 %conv132, ptr %avg_centeracc, align 8
  %151 = load ptr, ptr %bm, align 8
  %avg_sampleacc133 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %151, i32 0, i32 9
  %152 = load i32, ptr %avg_sampleacc133, align 4
  %153 = load ptr, ptr %bm, align 8
  %avg_sampledesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %153, i32 0, i32 10
  %154 = load i32, ptr %avg_sampledesired, align 8
  %cmp134 = icmp ugt i32 %152, %154
  br i1 %cmp134, label %if.then138, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %for.end120
  %155 = load i32, ptr %eofflag, align 4
  %tobool137 = icmp ne i32 %155, 0
  br i1 %tobool137, label %if.then138, label %if.end275

if.then138:                                       ; preds = %lor.lhs.false136, %for.end120
  %156 = load ptr, ptr %bm, align 8
  %avg_centeracc139 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %156, i32 0, i32 8
  %157 = load i32, ptr %avg_centeracc139, align 8
  %conv140 = zext i32 %157 to i64
  %158 = load i64, ptr %desired_center, align 8
  %cmp141 = icmp ugt i64 %conv140, %158
  br i1 %cmp141, label %if.then143, label %if.end222

if.then143:                                       ; preds = %if.then138
  %159 = load ptr, ptr %ci, align 8
  %blocksizes144 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %vb.addr, align 8
  %W145 = getelementptr inbounds nuw %struct.vorbis_block, ptr %160, i32 0, i32 3
  %161 = load i64, ptr %W145, align 8
  %arrayidx146 = getelementptr inbounds [2 x i64], ptr %blocksizes144, i64 0, i64 %161
  %162 = load i64, ptr %arrayidx146, align 8
  %shr147 = ashr i64 %162, 1
  %conv148 = trunc i64 %shr147 to i32
  store i32 %conv148, ptr %samples, align 4
  %163 = load ptr, ptr %bm, align 8
  %164 = load ptr, ptr %vi, align 8
  %165 = load ptr, ptr %bi, align 8
  %queue_avgmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %165, i32 0, i32 6
  %166 = load double, ptr %queue_avgmax, align 8
  %call149 = call i32 @floater_interpolate(ptr noundef %163, ptr noundef %164, double noundef %166)
  %conv150 = sitofp i32 %call149 to double
  store double %conv150, ptr %upper, align 8
  %167 = load ptr, ptr %bm, align 8
  %168 = load ptr, ptr %vi, align 8
  %169 = load ptr, ptr %bi, align 8
  %queue_avgmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %169, i32 0, i32 5
  %170 = load double, ptr %queue_avgmin, align 8
  %call151 = call i32 @floater_interpolate(ptr noundef %167, ptr noundef %168, double noundef %170)
  %conv152 = sitofp i32 %call151 to double
  store double %conv152, ptr %lower, align 8
  store double 7.500000e+00, ptr %new, align 8
  %171 = load double, ptr %upper, align 8
  %172 = load double, ptr %new, align 8
  %cmp153 = fcmp olt double %171, %172
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.then143
  %173 = load double, ptr %upper, align 8
  store double %173, ptr %new, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.then143
  %174 = load double, ptr %lower, align 8
  %175 = load double, ptr %new, align 8
  %cmp157 = fcmp ogt double %174, %175
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end156
  %176 = load double, ptr %lower, align 8
  store double %176, ptr %new, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end156
  %177 = load double, ptr %new, align 8
  %178 = load ptr, ptr %bm, align 8
  %avgfloat = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %178, i32 0, i32 22
  %179 = load double, ptr %avgfloat, align 8
  %sub161 = fsub double %177, %179
  %180 = load i32, ptr %samples, align 4
  %conv162 = sitofp i32 %180 to double
  %div = fdiv double %sub161, %conv162
  %181 = load ptr, ptr %vi, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %181, i32 0, i32 2
  %182 = load i64, ptr %rate, align 8
  %conv163 = sitofp i64 %182 to double
  %mul164 = fmul double %div, %conv163
  store double %mul164, ptr %slew, align 8
  %183 = load double, ptr %slew, align 8
  %184 = load ptr, ptr %bi, align 8
  %avgfloat_downslew_max = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %184, i32 0, i32 7
  %185 = load double, ptr %avgfloat_downslew_max, align 8
  %cmp165 = fcmp olt double %183, %185
  br i1 %cmp165, label %if.then167, label %if.end175

if.then167:                                       ; preds = %if.end160
  %186 = load ptr, ptr %bm, align 8
  %avgfloat168 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %186, i32 0, i32 22
  %187 = load double, ptr %avgfloat168, align 8
  %188 = load ptr, ptr %bi, align 8
  %avgfloat_downslew_max169 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %188, i32 0, i32 7
  %189 = load double, ptr %avgfloat_downslew_max169, align 8
  %190 = load ptr, ptr %vi, align 8
  %rate170 = getelementptr inbounds nuw %struct.vorbis_info, ptr %190, i32 0, i32 2
  %191 = load i64, ptr %rate170, align 8
  %conv171 = sitofp i64 %191 to double
  %div172 = fdiv double %189, %conv171
  %192 = load i32, ptr %samples, align 4
  %conv173 = sitofp i32 %192 to double
  %193 = call double @llvm.fmuladd.f64(double %div172, double %conv173, double %187)
  store double %193, ptr %new, align 8
  br label %if.end175

if.end175:                                        ; preds = %if.then167, %if.end160
  %194 = load double, ptr %slew, align 8
  %195 = load ptr, ptr %bi, align 8
  %avgfloat_upslew_max = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %195, i32 0, i32 8
  %196 = load double, ptr %avgfloat_upslew_max, align 8
  %cmp176 = fcmp ogt double %194, %196
  br i1 %cmp176, label %if.then178, label %if.end186

if.then178:                                       ; preds = %if.end175
  %197 = load ptr, ptr %bm, align 8
  %avgfloat179 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %197, i32 0, i32 22
  %198 = load double, ptr %avgfloat179, align 8
  %199 = load ptr, ptr %bi, align 8
  %avgfloat_upslew_max180 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %199, i32 0, i32 8
  %200 = load double, ptr %avgfloat_upslew_max180, align 8
  %201 = load ptr, ptr %vi, align 8
  %rate181 = getelementptr inbounds nuw %struct.vorbis_info, ptr %201, i32 0, i32 2
  %202 = load i64, ptr %rate181, align 8
  %conv182 = sitofp i64 %202 to double
  %div183 = fdiv double %200, %conv182
  %203 = load i32, ptr %samples, align 4
  %conv184 = sitofp i32 %203 to double
  %204 = call double @llvm.fmuladd.f64(double %div183, double %conv184, double %198)
  store double %204, ptr %new, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then178, %if.end175
  %205 = load double, ptr %new, align 8
  %206 = load ptr, ptr %bm, align 8
  %avgfloat187 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %206, i32 0, i32 22
  store double %205, ptr %avgfloat187, align 8
  %207 = load ptr, ptr %bm, align 8
  %avgfloat188 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %207, i32 0, i32 22
  %208 = load double, ptr %avgfloat188, align 8
  %209 = call double @llvm.rint.f64(double %208)
  %conv189 = fptosi double %209 to i32
  store i32 %conv189, ptr %bin, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end220, %if.end186
  %210 = load ptr, ptr %bm, align 8
  %avg_centeracc190 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %210, i32 0, i32 8
  %211 = load i32, ptr %avg_centeracc190, align 8
  %conv191 = zext i32 %211 to i64
  %212 = load i64, ptr %desired_center, align 8
  %cmp192 = icmp ugt i64 %conv191, %212
  br i1 %cmp192, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %213 = load ptr, ptr %ci, align 8
  %blocksizes194 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %213, i32 0, i32 0
  %214 = load ptr, ptr %bm, align 8
  %queue_actual195 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %214, i32 0, i32 1
  %215 = load ptr, ptr %queue_actual195, align 8
  %216 = load ptr, ptr %bm, align 8
  %avg_center196 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %216, i32 0, i32 6
  %217 = load i32, ptr %avg_center196, align 8
  %idxprom197 = sext i32 %217 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %215, i64 %idxprom197
  %218 = load i32, ptr %arrayidx198, align 4
  %conv199 = zext i32 %218 to i64
  %and = and i64 %conv199, 2147483648
  %tobool200 = icmp ne i64 %and, 0
  %219 = zext i1 %tobool200 to i64
  %cond201 = select i1 %tobool200, i32 1, i32 0
  %idxprom202 = sext i32 %cond201 to i64
  %arrayidx203 = getelementptr inbounds [2 x i64], ptr %blocksizes194, i64 0, i64 %idxprom202
  %220 = load i64, ptr %arrayidx203, align 8
  %shr204 = ashr i64 %220, 1
  %conv205 = trunc i64 %shr204 to i32
  store i32 %conv205, ptr %samples, align 4
  %221 = load i32, ptr %bin, align 4
  %222 = load ptr, ptr %bm, align 8
  %queue_actual206 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %222, i32 0, i32 1
  %223 = load ptr, ptr %queue_actual206, align 8
  %224 = load ptr, ptr %bm, align 8
  %avg_center207 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %224, i32 0, i32 6
  %225 = load i32, ptr %avg_center207, align 8
  %idxprom208 = sext i32 %225 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %223, i64 %idxprom208
  %226 = load i32, ptr %arrayidx209, align 4
  %or = or i32 %226, %221
  store i32 %or, ptr %arrayidx209, align 4
  %227 = load i32, ptr %samples, align 4
  %228 = load ptr, ptr %bm, align 8
  %avg_centeracc210 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %228, i32 0, i32 8
  %229 = load i32, ptr %avg_centeracc210, align 8
  %sub211 = sub i32 %229, %227
  store i32 %sub211, ptr %avg_centeracc210, align 8
  %230 = load ptr, ptr %bm, align 8
  %avg_center212 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %230, i32 0, i32 6
  %231 = load i32, ptr %avg_center212, align 8
  %inc213 = add nsw i32 %231, 1
  store i32 %inc213, ptr %avg_center212, align 8
  %232 = load ptr, ptr %bm, align 8
  %avg_center214 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %232, i32 0, i32 6
  %233 = load i32, ptr %avg_center214, align 8
  %234 = load ptr, ptr %bm, align 8
  %queue_size215 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %234, i32 0, i32 2
  %235 = load i32, ptr %queue_size215, align 8
  %cmp216 = icmp sge i32 %233, %235
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %while.body
  %236 = load ptr, ptr %bm, align 8
  %avg_center219 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %236, i32 0, i32 6
  store i32 0, ptr %avg_center219, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %237 = load ptr, ptr %bm, align 8
  %avg_center221 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %237, i32 0, i32 6
  %238 = load i32, ptr %avg_center221, align 8
  store i32 %238, ptr %new_minmax_head, align 4
  br label %if.end222

if.end222:                                        ; preds = %while.end, %if.then138
  br label %while.cond223

while.cond223:                                    ; preds = %if.end273, %if.end222
  %239 = load ptr, ptr %bm, align 8
  %avg_sampleacc224 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %239, i32 0, i32 9
  %240 = load i32, ptr %avg_sampleacc224, align 4
  %241 = load ptr, ptr %bm, align 8
  %avg_sampledesired225 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %241, i32 0, i32 10
  %242 = load i32, ptr %avg_sampledesired225, align 8
  %cmp226 = icmp ugt i32 %240, %242
  br i1 %cmp226, label %while.body228, label %while.end274

while.body228:                                    ; preds = %while.cond223
  %243 = load ptr, ptr %ci, align 8
  %blocksizes230 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %243, i32 0, i32 0
  %244 = load ptr, ptr %bm, align 8
  %queue_actual231 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %244, i32 0, i32 1
  %245 = load ptr, ptr %queue_actual231, align 8
  %246 = load ptr, ptr %bm, align 8
  %avg_tail232 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %246, i32 0, i32 7
  %247 = load i32, ptr %avg_tail232, align 4
  %idxprom233 = sext i32 %247 to i64
  %arrayidx234 = getelementptr inbounds i32, ptr %245, i64 %idxprom233
  %248 = load i32, ptr %arrayidx234, align 4
  %conv235 = zext i32 %248 to i64
  %and236 = and i64 %conv235, 2147483648
  %tobool237 = icmp ne i64 %and236, 0
  %249 = zext i1 %tobool237 to i64
  %cond238 = select i1 %tobool237, i32 1, i32 0
  %idxprom239 = sext i32 %cond238 to i64
  %arrayidx240 = getelementptr inbounds [2 x i64], ptr %blocksizes230, i64 0, i64 %idxprom239
  %250 = load i64, ptr %arrayidx240, align 8
  %shr241 = ashr i64 %250, 1
  %conv242 = trunc i64 %shr241 to i32
  store i32 %conv242, ptr %samples229, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc260, %while.body228
  %251 = load i32, ptr %i, align 4
  %252 = load ptr, ptr %bm, align 8
  %queue_bins244 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %252, i32 0, i32 4
  %253 = load i32, ptr %queue_bins244, align 8
  %cmp245 = icmp slt i32 %251, %253
  br i1 %cmp245, label %for.body247, label %for.end262

for.body247:                                      ; preds = %for.cond243
  %254 = load ptr, ptr %bm, align 8
  %queue_binned248 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %254, i32 0, i32 0
  %255 = load ptr, ptr %queue_binned248, align 8
  %256 = load i32, ptr %bins, align 4
  %257 = load ptr, ptr %bm, align 8
  %avg_tail249 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %257, i32 0, i32 7
  %258 = load i32, ptr %avg_tail249, align 4
  %mul250 = mul nsw i32 %256, %258
  %259 = load i32, ptr %i, align 4
  %add251 = add nsw i32 %mul250, %259
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds i32, ptr %255, i64 %idxprom252
  %260 = load i32, ptr %arrayidx253, align 4
  %conv254 = zext i32 %260 to i64
  %call255 = call i64 @LACING_ADJUST(i64 noundef %conv254)
  %261 = load ptr, ptr %bm, align 8
  %avg_binacc256 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %261, i32 0, i32 5
  %262 = load ptr, ptr %avg_binacc256, align 8
  %263 = load i32, ptr %i, align 4
  %idxprom257 = sext i32 %263 to i64
  %arrayidx258 = getelementptr inbounds i64, ptr %262, i64 %idxprom257
  %264 = load i64, ptr %arrayidx258, align 8
  %sub259 = sub nsw i64 %264, %call255
  store i64 %sub259, ptr %arrayidx258, align 8
  br label %for.inc260

for.inc260:                                       ; preds = %for.body247
  %265 = load i32, ptr %i, align 4
  %inc261 = add nsw i32 %265, 1
  store i32 %inc261, ptr %i, align 4
  br label %for.cond243, !llvm.loop !10

for.end262:                                       ; preds = %for.cond243
  %266 = load i32, ptr %samples229, align 4
  %267 = load ptr, ptr %bm, align 8
  %avg_sampleacc263 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %267, i32 0, i32 9
  %268 = load i32, ptr %avg_sampleacc263, align 4
  %sub264 = sub i32 %268, %266
  store i32 %sub264, ptr %avg_sampleacc263, align 4
  %269 = load ptr, ptr %bm, align 8
  %avg_tail265 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %269, i32 0, i32 7
  %270 = load i32, ptr %avg_tail265, align 4
  %inc266 = add nsw i32 %270, 1
  store i32 %inc266, ptr %avg_tail265, align 4
  %271 = load ptr, ptr %bm, align 8
  %avg_tail267 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %271, i32 0, i32 7
  %272 = load i32, ptr %avg_tail267, align 4
  %273 = load ptr, ptr %bm, align 8
  %queue_size268 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %273, i32 0, i32 2
  %274 = load i32, ptr %queue_size268, align 8
  %cmp269 = icmp sge i32 %272, %274
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %for.end262
  %275 = load ptr, ptr %bm, align 8
  %avg_tail272 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %275, i32 0, i32 7
  store i32 0, ptr %avg_tail272, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %for.end262
  br label %while.cond223, !llvm.loop !11

while.end274:                                     ; preds = %while.cond223
  br label %if.end275

if.end275:                                        ; preds = %while.end274, %lor.lhs.false136
  br label %if.end284

if.else276:                                       ; preds = %if.end98
  store i64 7, ptr %bin277, align 8
  %276 = load i64, ptr %bin277, align 8
  %277 = load ptr, ptr %bm, align 8
  %queue_actual278 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %277, i32 0, i32 1
  %278 = load ptr, ptr %queue_actual278, align 8
  %279 = load i32, ptr %head, align 4
  %idxprom279 = sext i32 %279 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %278, i64 %idxprom279
  %280 = load i32, ptr %arrayidx280, align 4
  %conv281 = zext i32 %280 to i64
  %or282 = or i64 %conv281, %276
  %conv283 = trunc i64 %or282 to i32
  store i32 %conv283, ptr %arrayidx280, align 4
  %281 = load i32, ptr %next_head, align 4
  store i32 %281, ptr %new_minmax_head, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.else276, %if.end275
  %282 = load ptr, ptr %bm, align 8
  %minmax_binstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %282, i32 0, i32 12
  %283 = load ptr, ptr %minmax_binstack, align 8
  %tobool285 = icmp ne ptr %283, null
  br i1 %tobool285, label %if.then286, label %if.else738

if.then286:                                       ; preds = %if.end284
  %284 = load i32, ptr %eofflag, align 4
  %tobool287 = icmp ne i32 %284, 0
  br i1 %tobool287, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then286
  br label %cond.end

cond.false:                                       ; preds = %if.then286
  %285 = load ptr, ptr %bm, align 8
  %minmax_sampledesired = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %285, i32 0, i32 19
  %286 = load i32, ptr %minmax_sampledesired, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond288 = phi i32 [ 0, %cond.true ], [ %286, %cond.false ]
  %conv289 = zext i32 %cond288 to i64
  store i64 %conv289, ptr %sampledesired, align 8
  br label %while.cond290

while.cond290:                                    ; preds = %if.end376, %cond.end
  %287 = load i32, ptr %minmax_head, align 4
  %288 = load i32, ptr %new_minmax_head, align 4
  %cmp291 = icmp ne i32 %287, %288
  br i1 %cmp291, label %while.body293, label %while.end377

while.body293:                                    ; preds = %while.cond290
  %289 = load ptr, ptr %ci, align 8
  %blocksizes296 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %289, i32 0, i32 0
  %290 = load ptr, ptr %bm, align 8
  %queue_actual297 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %290, i32 0, i32 1
  %291 = load ptr, ptr %queue_actual297, align 8
  %292 = load i32, ptr %minmax_head, align 4
  %idxprom298 = sext i32 %292 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %291, i64 %idxprom298
  %293 = load i32, ptr %arrayidx299, align 4
  %conv300 = zext i32 %293 to i64
  %and301 = and i64 %conv300, 2147483648
  %tobool302 = icmp ne i64 %and301, 0
  %294 = zext i1 %tobool302 to i64
  %cond303 = select i1 %tobool302, i32 1, i32 0
  %idxprom304 = sext i32 %cond303 to i64
  %arrayidx305 = getelementptr inbounds [2 x i64], ptr %blocksizes296, i64 0, i64 %idxprom304
  %295 = load i64, ptr %arrayidx305, align 8
  %shr306 = ashr i64 %295, 1
  %conv307 = trunc i64 %shr306 to i32
  store i32 %conv307, ptr %samples295, align 4
  %296 = load ptr, ptr %bm, align 8
  %queue_actual308 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %296, i32 0, i32 1
  %297 = load ptr, ptr %queue_actual308, align 8
  %298 = load i32, ptr %minmax_head, align 4
  %idxprom309 = sext i32 %298 to i64
  %arrayidx310 = getelementptr inbounds i32, ptr %297, i64 %idxprom309
  %299 = load i32, ptr %arrayidx310, align 4
  %conv311 = zext i32 %299 to i64
  %and312 = and i64 %conv311, 2147483647
  %conv313 = trunc i64 %and312 to i32
  store i32 %conv313, ptr %actual, align 4
  store i32 0, ptr %i294, align 4
  br label %for.cond314

for.cond314:                                      ; preds = %for.inc357, %while.body293
  %300 = load i32, ptr %i294, align 4
  %301 = load i32, ptr %bins, align 4
  %cmp315 = icmp ult i32 %300, %301
  br i1 %cmp315, label %for.body317, label %for.end359

for.body317:                                      ; preds = %for.cond314
  %302 = load ptr, ptr %bm, align 8
  %303 = load i32, ptr %minmax_head, align 4
  %conv318 = sext i32 %303 to i64
  %304 = load i32, ptr %actual, align 4
  %305 = load i32, ptr %i294, align 4
  %cmp319 = icmp ugt i32 %304, %305
  br i1 %cmp319, label %cond.true321, label %cond.false322

cond.true321:                                     ; preds = %for.body317
  %306 = load i32, ptr %actual, align 4
  br label %cond.end323

cond.false322:                                    ; preds = %for.body317
  %307 = load i32, ptr %i294, align 4
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false322, %cond.true321
  %cond324 = phi i32 [ %306, %cond.true321 ], [ %307, %cond.false322 ]
  %conv325 = zext i32 %cond324 to i64
  %call326 = call i64 @BINBYTES(ptr noundef %302, i64 noundef %conv318, i64 noundef %conv325)
  %call327 = call i64 @LACING_ADJUST(i64 noundef %call326)
  %308 = load ptr, ptr %bm, align 8
  %minmax_binstack328 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %308, i32 0, i32 12
  %309 = load ptr, ptr %minmax_binstack328, align 8
  %310 = load ptr, ptr %bm, align 8
  %minmax_stackptr = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %310, i32 0, i32 15
  %311 = load i64, ptr %minmax_stackptr, align 8
  %312 = load i32, ptr %bins, align 4
  %conv329 = sext i32 %312 to i64
  %mul330 = mul nsw i64 %311, %conv329
  %mul331 = mul nsw i64 %mul330, 2
  %313 = load i32, ptr %bins, align 4
  %conv332 = sext i32 %313 to i64
  %add333 = add nsw i64 %mul331, %conv332
  %314 = load i32, ptr %i294, align 4
  %conv334 = zext i32 %314 to i64
  %add335 = add nsw i64 %add333, %conv334
  %arrayidx336 = getelementptr inbounds i64, ptr %309, i64 %add335
  %315 = load i64, ptr %arrayidx336, align 8
  %add337 = add nsw i64 %315, %call327
  store i64 %add337, ptr %arrayidx336, align 8
  %316 = load ptr, ptr %bm, align 8
  %317 = load i32, ptr %minmax_head, align 4
  %conv338 = sext i32 %317 to i64
  %318 = load i32, ptr %actual, align 4
  %319 = load i32, ptr %i294, align 4
  %cmp339 = icmp ult i32 %318, %319
  br i1 %cmp339, label %cond.true341, label %cond.false342

cond.true341:                                     ; preds = %cond.end323
  %320 = load i32, ptr %actual, align 4
  br label %cond.end343

cond.false342:                                    ; preds = %cond.end323
  %321 = load i32, ptr %i294, align 4
  br label %cond.end343

cond.end343:                                      ; preds = %cond.false342, %cond.true341
  %cond344 = phi i32 [ %320, %cond.true341 ], [ %321, %cond.false342 ]
  %conv345 = zext i32 %cond344 to i64
  %call346 = call i64 @BINBYTES(ptr noundef %316, i64 noundef %conv338, i64 noundef %conv345)
  %call347 = call i64 @LACING_ADJUST(i64 noundef %call346)
  %322 = load ptr, ptr %bm, align 8
  %minmax_binstack348 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %322, i32 0, i32 12
  %323 = load ptr, ptr %minmax_binstack348, align 8
  %324 = load ptr, ptr %bm, align 8
  %minmax_stackptr349 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %324, i32 0, i32 15
  %325 = load i64, ptr %minmax_stackptr349, align 8
  %326 = load i32, ptr %bins, align 4
  %conv350 = sext i32 %326 to i64
  %mul351 = mul nsw i64 %325, %conv350
  %mul352 = mul nsw i64 %mul351, 2
  %327 = load i32, ptr %i294, align 4
  %conv353 = zext i32 %327 to i64
  %add354 = add nsw i64 %mul352, %conv353
  %arrayidx355 = getelementptr inbounds i64, ptr %323, i64 %add354
  %328 = load i64, ptr %arrayidx355, align 8
  %add356 = add nsw i64 %328, %call347
  store i64 %add356, ptr %arrayidx355, align 8
  br label %for.inc357

for.inc357:                                       ; preds = %cond.end343
  %329 = load i32, ptr %i294, align 4
  %inc358 = add i32 %329, 1
  store i32 %inc358, ptr %i294, align 4
  br label %for.cond314, !llvm.loop !12

for.end359:                                       ; preds = %for.cond314
  %330 = load i32, ptr %minmax_head, align 4
  %conv360 = sext i32 %330 to i64
  %331 = load ptr, ptr %bm, align 8
  %minmax_posstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %331, i32 0, i32 13
  %332 = load ptr, ptr %minmax_posstack, align 8
  %333 = load ptr, ptr %bm, align 8
  %minmax_stackptr361 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %333, i32 0, i32 15
  %334 = load i64, ptr %minmax_stackptr361, align 8
  %arrayidx362 = getelementptr inbounds i64, ptr %332, i64 %334
  store i64 %conv360, ptr %arrayidx362, align 8
  %335 = load ptr, ptr %bm, align 8
  %minmax_limitstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %335, i32 0, i32 14
  %336 = load ptr, ptr %minmax_limitstack, align 8
  %337 = load ptr, ptr %bm, align 8
  %minmax_stackptr363 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %337, i32 0, i32 15
  %338 = load i64, ptr %minmax_stackptr363, align 8
  %arrayidx364 = getelementptr inbounds i64, ptr %336, i64 %338
  store i64 0, ptr %arrayidx364, align 8
  %339 = load i32, ptr %samples295, align 4
  %340 = load ptr, ptr %bm, align 8
  %minmax_sampleacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %340, i32 0, i32 18
  %341 = load i32, ptr %minmax_sampleacc, align 4
  %add365 = add i32 %341, %339
  store i32 %add365, ptr %minmax_sampleacc, align 4
  %342 = load ptr, ptr %bm, align 8
  %343 = load i32, ptr %minmax_head, align 4
  %conv366 = sext i32 %343 to i64
  %344 = load i32, ptr %actual, align 4
  %conv367 = sext i32 %344 to i64
  %call368 = call i64 @BINBYTES(ptr noundef %342, i64 noundef %conv366, i64 noundef %conv367)
  %call369 = call i64 @LACING_ADJUST(i64 noundef %call368)
  %345 = load ptr, ptr %bm, align 8
  %minmax_acctotal = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %345, i32 0, i32 16
  %346 = load i64, ptr %minmax_acctotal, align 8
  %add370 = add nsw i64 %346, %call369
  store i64 %add370, ptr %minmax_acctotal, align 8
  %347 = load i32, ptr %minmax_head, align 4
  %inc371 = add nsw i32 %347, 1
  store i32 %inc371, ptr %minmax_head, align 4
  %348 = load i32, ptr %minmax_head, align 4
  %349 = load ptr, ptr %bm, align 8
  %queue_size372 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %349, i32 0, i32 2
  %350 = load i32, ptr %queue_size372, align 8
  %cmp373 = icmp sge i32 %348, %350
  br i1 %cmp373, label %if.then375, label %if.end376

if.then375:                                       ; preds = %for.end359
  store i32 0, ptr %minmax_head, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.then375, %for.end359
  br label %while.cond290, !llvm.loop !13

while.end377:                                     ; preds = %while.cond290
  %351 = load ptr, ptr %bm, align 8
  %minmax_sampleacc378 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %351, i32 0, i32 18
  %352 = load i32, ptr %minmax_sampleacc378, align 4
  %conv379 = zext i32 %352 to i64
  %353 = load i64, ptr %sampledesired, align 8
  %cmp380 = icmp ugt i64 %conv379, %353
  br i1 %cmp380, label %if.then382, label %if.end585

if.then382:                                       ; preds = %while.end377
  %354 = load ptr, ptr %bm, align 8
  %minmax_acctotal383 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %354, i32 0, i32 16
  %355 = load i64, ptr %minmax_acctotal383, align 8
  %mul384 = mul nsw i64 %355, 8
  %conv385 = sitofp i64 %mul384 to double
  %356 = load ptr, ptr %bm, align 8
  %minmax_sampleacc386 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %356, i32 0, i32 18
  %357 = load i32, ptr %minmax_sampleacc386, align 4
  %conv387 = uitofp i32 %357 to double
  %div388 = fdiv double %conv385, %conv387
  %358 = load ptr, ptr %vi, align 8
  %rate389 = getelementptr inbounds nuw %struct.vorbis_info, ptr %358, i32 0, i32 2
  %359 = load i64, ptr %rate389, align 8
  %conv390 = sitofp i64 %359 to double
  %mul391 = fmul double %div388, %conv390
  store double %mul391, ptr %bitrate, align 8
  store i32 0, ptr %limit, align 4
  %360 = load ptr, ptr %bi, align 8
  %queue_hardmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %360, i32 0, i32 4
  %361 = load double, ptr %queue_hardmax, align 8
  %cmp392 = fcmp ogt double %361, 0.000000e+00
  br i1 %cmp392, label %land.lhs.true, label %lor.lhs.false397

land.lhs.true:                                    ; preds = %if.then382
  %362 = load double, ptr %bitrate, align 8
  %363 = load ptr, ptr %bi, align 8
  %queue_hardmax394 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %363, i32 0, i32 4
  %364 = load double, ptr %queue_hardmax394, align 8
  %cmp395 = fcmp ogt double %362, %364
  br i1 %cmp395, label %if.then404, label %lor.lhs.false397

lor.lhs.false397:                                 ; preds = %land.lhs.true, %if.then382
  %365 = load ptr, ptr %bi, align 8
  %queue_hardmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %365, i32 0, i32 3
  %366 = load double, ptr %queue_hardmin, align 8
  %cmp398 = fcmp ogt double %366, 0.000000e+00
  br i1 %cmp398, label %land.lhs.true400, label %if.end584

land.lhs.true400:                                 ; preds = %lor.lhs.false397
  %367 = load double, ptr %bitrate, align 8
  %368 = load ptr, ptr %bi, align 8
  %queue_hardmin401 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %368, i32 0, i32 3
  %369 = load double, ptr %queue_hardmin401, align 8
  %cmp402 = fcmp olt double %367, %369
  br i1 %cmp402, label %if.then404, label %if.end584

if.then404:                                       ; preds = %land.lhs.true400, %land.lhs.true
  %370 = load ptr, ptr %bm, align 8
  %minmax_acctotal405 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %370, i32 0, i32 16
  %371 = load i64, ptr %minmax_acctotal405, align 8
  %mul406 = mul nsw i64 %371, 8
  store i64 %mul406, ptr %bitsum, align 8
  %372 = load i64, ptr %bitsum, align 8
  %conv407 = sitofp i64 %372 to double
  %373 = load ptr, ptr %bm, align 8
  %minmax_sampleacc408 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %373, i32 0, i32 18
  %374 = load i32, ptr %minmax_sampleacc408, align 4
  %conv409 = uitofp i32 %374 to double
  %div410 = fdiv double %conv407, %conv409
  %375 = load ptr, ptr %vi, align 8
  %rate411 = getelementptr inbounds nuw %struct.vorbis_info, ptr %375, i32 0, i32 2
  %376 = load i64, ptr %rate411, align 8
  %conv412 = sitofp i64 %376 to double
  %mul413 = fmul double %div410, %conv412
  store double %mul413, ptr %bitrate, align 8
  %377 = load ptr, ptr %bi, align 8
  %queue_hardmax414 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %377, i32 0, i32 4
  %378 = load double, ptr %queue_hardmax414, align 8
  %cmp415 = fcmp ogt double %378, 0.000000e+00
  br i1 %cmp415, label %land.lhs.true417, label %if.else445

land.lhs.true417:                                 ; preds = %if.then404
  %379 = load double, ptr %bitrate, align 8
  %380 = load ptr, ptr %bi, align 8
  %queue_hardmax418 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %380, i32 0, i32 4
  %381 = load double, ptr %queue_hardmax418, align 8
  %cmp419 = fcmp ogt double %379, %381
  br i1 %cmp419, label %if.then421, label %if.else445

if.then421:                                       ; preds = %land.lhs.true417
  store i32 -1, ptr %limit, align 4
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc443, %if.then421
  %382 = load i32, ptr %limit, align 4
  %383 = load i32, ptr %bins, align 4
  %sub423 = sub nsw i32 0, %383
  %add424 = add nsw i32 %sub423, 1
  %cmp425 = icmp sgt i32 %382, %add424
  br i1 %cmp425, label %for.body427, label %for.end444

for.body427:                                      ; preds = %for.cond422
  %384 = load ptr, ptr %bm, align 8
  %385 = load i32, ptr %limit, align 4
  %call429 = call i64 @limit_sum(ptr noundef %384, i32 noundef %385)
  %mul430 = mul nsw i64 %call429, 8
  store i64 %mul430, ptr %bitsum428, align 8
  %386 = load i64, ptr %bitsum428, align 8
  %conv431 = sitofp i64 %386 to double
  %387 = load ptr, ptr %bm, align 8
  %minmax_sampleacc432 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %387, i32 0, i32 18
  %388 = load i32, ptr %minmax_sampleacc432, align 4
  %conv433 = uitofp i32 %388 to double
  %div434 = fdiv double %conv431, %conv433
  %389 = load ptr, ptr %vi, align 8
  %rate435 = getelementptr inbounds nuw %struct.vorbis_info, ptr %389, i32 0, i32 2
  %390 = load i64, ptr %rate435, align 8
  %conv436 = sitofp i64 %390 to double
  %mul437 = fmul double %div434, %conv436
  store double %mul437, ptr %bitrate, align 8
  %391 = load double, ptr %bitrate, align 8
  %392 = load ptr, ptr %bi, align 8
  %queue_hardmax438 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %392, i32 0, i32 4
  %393 = load double, ptr %queue_hardmax438, align 8
  %cmp439 = fcmp ole double %391, %393
  br i1 %cmp439, label %if.then441, label %if.end442

if.then441:                                       ; preds = %for.body427
  br label %for.end444

if.end442:                                        ; preds = %for.body427
  br label %for.inc443

for.inc443:                                       ; preds = %if.end442
  %394 = load i32, ptr %limit, align 4
  %dec = add nsw i32 %394, -1
  store i32 %dec, ptr %limit, align 4
  br label %for.cond422, !llvm.loop !14

for.end444:                                       ; preds = %if.then441, %for.cond422
  br label %if.end480

if.else445:                                       ; preds = %land.lhs.true417, %if.then404
  %395 = load double, ptr %bitrate, align 8
  %396 = load ptr, ptr %bi, align 8
  %queue_hardmin446 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %396, i32 0, i32 3
  %397 = load double, ptr %queue_hardmin446, align 8
  %cmp447 = fcmp olt double %395, %397
  br i1 %cmp447, label %if.then449, label %if.end479

if.then449:                                       ; preds = %if.else445
  store i32 1, ptr %limit, align 4
  br label %for.cond450

for.cond450:                                      ; preds = %for.inc470, %if.then449
  %398 = load i32, ptr %limit, align 4
  %399 = load i32, ptr %bins, align 4
  %sub451 = sub nsw i32 %399, 1
  %cmp452 = icmp slt i32 %398, %sub451
  br i1 %cmp452, label %for.body454, label %for.end472

for.body454:                                      ; preds = %for.cond450
  %400 = load ptr, ptr %bm, align 8
  %401 = load i32, ptr %limit, align 4
  %call456 = call i64 @limit_sum(ptr noundef %400, i32 noundef %401)
  %mul457 = mul nsw i64 %call456, 8
  store i64 %mul457, ptr %bitsum455, align 8
  %402 = load i64, ptr %bitsum455, align 8
  %conv458 = sitofp i64 %402 to double
  %403 = load ptr, ptr %bm, align 8
  %minmax_sampleacc459 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %403, i32 0, i32 18
  %404 = load i32, ptr %minmax_sampleacc459, align 4
  %conv460 = uitofp i32 %404 to double
  %div461 = fdiv double %conv458, %conv460
  %405 = load ptr, ptr %vi, align 8
  %rate462 = getelementptr inbounds nuw %struct.vorbis_info, ptr %405, i32 0, i32 2
  %406 = load i64, ptr %rate462, align 8
  %conv463 = sitofp i64 %406 to double
  %mul464 = fmul double %div461, %conv463
  store double %mul464, ptr %bitrate, align 8
  %407 = load double, ptr %bitrate, align 8
  %408 = load ptr, ptr %bi, align 8
  %queue_hardmin465 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %408, i32 0, i32 3
  %409 = load double, ptr %queue_hardmin465, align 8
  %cmp466 = fcmp oge double %407, %409
  br i1 %cmp466, label %if.then468, label %if.end469

if.then468:                                       ; preds = %for.body454
  br label %for.end472

if.end469:                                        ; preds = %for.body454
  br label %for.inc470

for.inc470:                                       ; preds = %if.end469
  %410 = load i32, ptr %limit, align 4
  %inc471 = add nsw i32 %410, 1
  store i32 %inc471, ptr %limit, align 4
  br label %for.cond450, !llvm.loop !15

for.end472:                                       ; preds = %if.then468, %for.cond450
  %411 = load double, ptr %bitrate, align 8
  %412 = load ptr, ptr %bi, align 8
  %queue_hardmax473 = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %412, i32 0, i32 4
  %413 = load double, ptr %queue_hardmax473, align 8
  %cmp474 = fcmp ogt double %411, %413
  br i1 %cmp474, label %if.then476, label %if.end478

if.then476:                                       ; preds = %for.end472
  %414 = load i32, ptr %limit, align 4
  %dec477 = add nsw i32 %414, -1
  store i32 %dec477, ptr %limit, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.then476, %for.end472
  br label %if.end479

if.end479:                                        ; preds = %if.end478, %if.else445
  br label %if.end480

if.end480:                                        ; preds = %if.end479, %for.end444
  %415 = load ptr, ptr %bm, align 8
  %minmax_stackptr481 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %415, i32 0, i32 15
  %416 = load i64, ptr %minmax_stackptr481, align 8
  %sub482 = sub nsw i64 %416, 1
  %conv483 = trunc i64 %sub482 to i32
  store i32 %conv483, ptr %newstack, align 4
  br label %while.cond484

while.cond484:                                    ; preds = %if.end495, %if.end480
  %417 = load i32, ptr %newstack, align 4
  %cmp485 = icmp sge i32 %417, 0
  br i1 %cmp485, label %while.body487, label %while.end497

while.body487:                                    ; preds = %while.cond484
  %418 = load ptr, ptr %bm, align 8
  %minmax_limitstack488 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %418, i32 0, i32 14
  %419 = load ptr, ptr %minmax_limitstack488, align 8
  %420 = load i32, ptr %newstack, align 4
  %idxprom489 = sext i32 %420 to i64
  %arrayidx490 = getelementptr inbounds i64, ptr %419, i64 %idxprom489
  %421 = load i64, ptr %arrayidx490, align 8
  %422 = load i32, ptr %limit, align 4
  %conv491 = sext i32 %422 to i64
  %cmp492 = icmp slt i64 %421, %conv491
  br i1 %cmp492, label %if.then494, label %if.end495

if.then494:                                       ; preds = %while.body487
  br label %while.end497

if.end495:                                        ; preds = %while.body487
  %423 = load i32, ptr %newstack, align 4
  %dec496 = add nsw i32 %423, -1
  store i32 %dec496, ptr %newstack, align 4
  br label %while.cond484, !llvm.loop !16

while.end497:                                     ; preds = %if.then494, %while.cond484
  %424 = load ptr, ptr %bm, align 8
  %minmax_stackptr498 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %424, i32 0, i32 15
  %425 = load i64, ptr %minmax_stackptr498, align 8
  %conv499 = trunc i64 %425 to i32
  store i32 %conv499, ptr %stackctr, align 4
  br label %while.cond500

while.cond500:                                    ; preds = %if.end553, %while.end497
  %426 = load i32, ptr %stackctr, align 4
  %427 = load i32, ptr %newstack, align 4
  %cmp501 = icmp sgt i32 %426, %427
  br i1 %cmp501, label %while.body503, label %while.end555

while.body503:                                    ; preds = %while.cond500
  %428 = load ptr, ptr %bm, align 8
  %minmax_binstack504 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %428, i32 0, i32 12
  %429 = load ptr, ptr %minmax_binstack504, align 8
  %430 = load i32, ptr %stackctr, align 4
  %431 = load i32, ptr %bins, align 4
  %mul505 = mul nsw i32 %430, %431
  %mul506 = mul nsw i32 %mul505, 2
  %conv507 = sext i32 %mul506 to i64
  %432 = load ptr, ptr %bm, align 8
  %minmax_limitstack508 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %432, i32 0, i32 14
  %433 = load ptr, ptr %minmax_limitstack508, align 8
  %434 = load i32, ptr %stackctr, align 4
  %idxprom509 = sext i32 %434 to i64
  %arrayidx510 = getelementptr inbounds i64, ptr %433, i64 %idxprom509
  %435 = load i64, ptr %arrayidx510, align 8
  %436 = load i32, ptr %bins, align 4
  %conv511 = sext i32 %436 to i64
  %add512 = add nsw i64 %435, %conv511
  %add513 = add nsw i64 %conv507, %add512
  %arrayidx514 = getelementptr inbounds i64, ptr %429, i64 %add513
  %437 = load i64, ptr %arrayidx514, align 8
  %438 = load ptr, ptr %bm, align 8
  %minmax_acctotal515 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %438, i32 0, i32 16
  %439 = load i64, ptr %minmax_acctotal515, align 8
  %sub516 = sub nsw i64 %439, %437
  store i64 %sub516, ptr %minmax_acctotal515, align 8
  %440 = load ptr, ptr %bm, align 8
  %minmax_binstack517 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %440, i32 0, i32 12
  %441 = load ptr, ptr %minmax_binstack517, align 8
  %442 = load i32, ptr %stackctr, align 4
  %443 = load i32, ptr %bins, align 4
  %mul518 = mul nsw i32 %442, %443
  %mul519 = mul nsw i32 %mul518, 2
  %444 = load i32, ptr %limit, align 4
  %445 = load i32, ptr %bins, align 4
  %add520 = add nsw i32 %444, %445
  %add521 = add nsw i32 %mul519, %add520
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds i64, ptr %441, i64 %idxprom522
  %446 = load i64, ptr %arrayidx523, align 8
  %447 = load ptr, ptr %bm, align 8
  %minmax_acctotal524 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %447, i32 0, i32 16
  %448 = load i64, ptr %minmax_acctotal524, align 8
  %add525 = add nsw i64 %448, %446
  store i64 %add525, ptr %minmax_acctotal524, align 8
  %449 = load i32, ptr %stackctr, align 4
  %conv526 = sext i32 %449 to i64
  %450 = load ptr, ptr %bm, align 8
  %minmax_stackptr527 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %450, i32 0, i32 15
  %451 = load i64, ptr %minmax_stackptr527, align 8
  %cmp528 = icmp slt i64 %conv526, %451
  br i1 %cmp528, label %if.then530, label %if.end553

if.then530:                                       ; preds = %while.body503
  store i32 0, ptr %i, align 4
  br label %for.cond531

for.cond531:                                      ; preds = %for.inc550, %if.then530
  %452 = load i32, ptr %i, align 4
  %453 = load i32, ptr %bins, align 4
  %mul532 = mul nsw i32 %453, 2
  %cmp533 = icmp slt i32 %452, %mul532
  br i1 %cmp533, label %for.body535, label %for.end552

for.body535:                                      ; preds = %for.cond531
  %454 = load ptr, ptr %bm, align 8
  %minmax_binstack536 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %454, i32 0, i32 12
  %455 = load ptr, ptr %minmax_binstack536, align 8
  %456 = load i32, ptr %stackctr, align 4
  %add537 = add nsw i32 %456, 1
  %457 = load i32, ptr %bins, align 4
  %mul538 = mul nsw i32 %add537, %457
  %mul539 = mul nsw i32 %mul538, 2
  %458 = load i32, ptr %i, align 4
  %add540 = add nsw i32 %mul539, %458
  %idxprom541 = sext i32 %add540 to i64
  %arrayidx542 = getelementptr inbounds i64, ptr %455, i64 %idxprom541
  %459 = load i64, ptr %arrayidx542, align 8
  %460 = load ptr, ptr %bm, align 8
  %minmax_binstack543 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %460, i32 0, i32 12
  %461 = load ptr, ptr %minmax_binstack543, align 8
  %462 = load i32, ptr %stackctr, align 4
  %463 = load i32, ptr %bins, align 4
  %mul544 = mul nsw i32 %462, %463
  %mul545 = mul nsw i32 %mul544, 2
  %464 = load i32, ptr %i, align 4
  %add546 = add nsw i32 %mul545, %464
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i64, ptr %461, i64 %idxprom547
  %465 = load i64, ptr %arrayidx548, align 8
  %add549 = add nsw i64 %465, %459
  store i64 %add549, ptr %arrayidx548, align 8
  br label %for.inc550

for.inc550:                                       ; preds = %for.body535
  %466 = load i32, ptr %i, align 4
  %inc551 = add nsw i32 %466, 1
  store i32 %inc551, ptr %i, align 4
  br label %for.cond531, !llvm.loop !17

for.end552:                                       ; preds = %for.cond531
  br label %if.end553

if.end553:                                        ; preds = %for.end552, %while.body503
  %467 = load i32, ptr %stackctr, align 4
  %dec554 = add nsw i32 %467, -1
  store i32 %dec554, ptr %stackctr, align 4
  br label %while.cond500, !llvm.loop !18

while.end555:                                     ; preds = %while.cond500
  %468 = load i32, ptr %stackctr, align 4
  %inc556 = add nsw i32 %468, 1
  store i32 %inc556, ptr %stackctr, align 4
  %469 = load ptr, ptr %bm, align 8
  %minmax_posstack557 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %469, i32 0, i32 13
  %470 = load ptr, ptr %minmax_posstack557, align 8
  %471 = load ptr, ptr %bm, align 8
  %minmax_stackptr558 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %471, i32 0, i32 15
  %472 = load i64, ptr %minmax_stackptr558, align 8
  %arrayidx559 = getelementptr inbounds i64, ptr %470, i64 %472
  %473 = load i64, ptr %arrayidx559, align 8
  %474 = load ptr, ptr %bm, align 8
  %minmax_posstack560 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %474, i32 0, i32 13
  %475 = load ptr, ptr %minmax_posstack560, align 8
  %476 = load i32, ptr %stackctr, align 4
  %idxprom561 = sext i32 %476 to i64
  %arrayidx562 = getelementptr inbounds i64, ptr %475, i64 %idxprom561
  store i64 %473, ptr %arrayidx562, align 8
  %477 = load i32, ptr %limit, align 4
  %conv563 = sext i32 %477 to i64
  %478 = load ptr, ptr %bm, align 8
  %minmax_limitstack564 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %478, i32 0, i32 14
  %479 = load ptr, ptr %minmax_limitstack564, align 8
  %480 = load i32, ptr %stackctr, align 4
  %idxprom565 = sext i32 %480 to i64
  %arrayidx566 = getelementptr inbounds i64, ptr %479, i64 %idxprom565
  store i64 %conv563, ptr %arrayidx566, align 8
  %481 = load i32, ptr %stackctr, align 4
  %inc567 = add nsw i32 %481, 1
  store i32 %inc567, ptr %stackctr, align 4
  %482 = load i32, ptr %stackctr, align 4
  %conv568 = sext i32 %482 to i64
  %483 = load ptr, ptr %bm, align 8
  %minmax_stackptr569 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %483, i32 0, i32 15
  store i64 %conv568, ptr %minmax_stackptr569, align 8
  %484 = load ptr, ptr %bm, align 8
  %minmax_binstack570 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %484, i32 0, i32 12
  %485 = load ptr, ptr %minmax_binstack570, align 8
  %486 = load i32, ptr %stackctr, align 4
  %487 = load i32, ptr %bins, align 4
  %mul571 = mul nsw i32 %486, %487
  %mul572 = mul nsw i32 %mul571, 2
  %idxprom573 = sext i32 %mul572 to i64
  %arrayidx574 = getelementptr inbounds i64, ptr %485, i64 %idxprom573
  %488 = load i32, ptr %bins, align 4
  %conv575 = sext i32 %488 to i64
  %mul576 = mul i64 8, %conv575
  %mul577 = mul i64 %mul576, 2
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx574, i8 0, i64 %mul577, i1 false)
  %489 = load ptr, ptr %bm, align 8
  %minmax_limitstack578 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %489, i32 0, i32 14
  %490 = load ptr, ptr %minmax_limitstack578, align 8
  %491 = load i32, ptr %stackctr, align 4
  %idxprom579 = sext i32 %491 to i64
  %arrayidx580 = getelementptr inbounds i64, ptr %490, i64 %idxprom579
  store i64 0, ptr %arrayidx580, align 8
  %492 = load ptr, ptr %bm, align 8
  %minmax_posstack581 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %492, i32 0, i32 13
  %493 = load ptr, ptr %minmax_posstack581, align 8
  %494 = load i32, ptr %stackctr, align 4
  %idxprom582 = sext i32 %494 to i64
  %arrayidx583 = getelementptr inbounds i64, ptr %493, i64 %idxprom582
  store i64 -1, ptr %arrayidx583, align 8
  br label %if.end584

if.end584:                                        ; preds = %while.end555, %land.lhs.true400, %lor.lhs.false397
  br label %if.end585

if.end585:                                        ; preds = %if.end584, %while.end377
  br label %while.cond586

while.cond586:                                    ; preds = %if.end735, %if.end585
  %495 = load ptr, ptr %bm, align 8
  %minmax_sampleacc587 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %495, i32 0, i32 18
  %496 = load i32, ptr %minmax_sampleacc587, align 4
  %conv588 = zext i32 %496 to i64
  %497 = load i64, ptr %sampledesired, align 8
  %cmp589 = icmp ugt i64 %conv588, %497
  br i1 %cmp589, label %while.body591, label %while.end736

while.body591:                                    ; preds = %while.cond586
  %498 = load ptr, ptr %ci, align 8
  %blocksizes593 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %498, i32 0, i32 0
  %499 = load ptr, ptr %bm, align 8
  %queue_actual594 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %499, i32 0, i32 1
  %500 = load ptr, ptr %queue_actual594, align 8
  %501 = load ptr, ptr %bm, align 8
  %minmax_tail595 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %501, i32 0, i32 17
  %502 = load i32, ptr %minmax_tail595, align 8
  %idxprom596 = sext i32 %502 to i64
  %arrayidx597 = getelementptr inbounds i32, ptr %500, i64 %idxprom596
  %503 = load i32, ptr %arrayidx597, align 4
  %conv598 = zext i32 %503 to i64
  %and599 = and i64 %conv598, 2147483648
  %tobool600 = icmp ne i64 %and599, 0
  %504 = zext i1 %tobool600 to i64
  %cond601 = select i1 %tobool600, i32 1, i32 0
  %idxprom602 = sext i32 %cond601 to i64
  %arrayidx603 = getelementptr inbounds [2 x i64], ptr %blocksizes593, i64 0, i64 %idxprom602
  %505 = load i64, ptr %arrayidx603, align 8
  %shr604 = ashr i64 %505, 1
  %conv605 = trunc i64 %shr604 to i32
  store i32 %conv605, ptr %samples592, align 4
  %506 = load ptr, ptr %bm, align 8
  %queue_actual607 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %506, i32 0, i32 1
  %507 = load ptr, ptr %queue_actual607, align 8
  %508 = load ptr, ptr %bm, align 8
  %minmax_tail608 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %508, i32 0, i32 17
  %509 = load i32, ptr %minmax_tail608, align 8
  %idxprom609 = sext i32 %509 to i64
  %arrayidx610 = getelementptr inbounds i32, ptr %507, i64 %idxprom609
  %510 = load i32, ptr %arrayidx610, align 4
  %conv611 = zext i32 %510 to i64
  %and612 = and i64 %conv611, 2147483647
  %conv613 = trunc i64 %and612 to i32
  store i32 %conv613, ptr %actual606, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond614

for.cond614:                                      ; preds = %for.inc649, %while.body591
  %511 = load i32, ptr %i, align 4
  %512 = load i32, ptr %bins, align 4
  %cmp615 = icmp slt i32 %511, %512
  br i1 %cmp615, label %for.body617, label %for.end651

for.body617:                                      ; preds = %for.cond614
  %513 = load ptr, ptr %bm, align 8
  %514 = load ptr, ptr %bm, align 8
  %minmax_tail618 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %514, i32 0, i32 17
  %515 = load i32, ptr %minmax_tail618, align 8
  %conv619 = sext i32 %515 to i64
  %516 = load i32, ptr %actual606, align 4
  %517 = load i32, ptr %i, align 4
  %cmp620 = icmp sgt i32 %516, %517
  br i1 %cmp620, label %cond.true622, label %cond.false623

cond.true622:                                     ; preds = %for.body617
  %518 = load i32, ptr %actual606, align 4
  br label %cond.end624

cond.false623:                                    ; preds = %for.body617
  %519 = load i32, ptr %i, align 4
  br label %cond.end624

cond.end624:                                      ; preds = %cond.false623, %cond.true622
  %cond625 = phi i32 [ %518, %cond.true622 ], [ %519, %cond.false623 ]
  %conv626 = sext i32 %cond625 to i64
  %call627 = call i64 @BINBYTES(ptr noundef %513, i64 noundef %conv619, i64 noundef %conv626)
  %call628 = call i64 @LACING_ADJUST(i64 noundef %call627)
  %520 = load ptr, ptr %bm, align 8
  %minmax_binstack629 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %520, i32 0, i32 12
  %521 = load ptr, ptr %minmax_binstack629, align 8
  %522 = load i32, ptr %bins, align 4
  %523 = load i32, ptr %i, align 4
  %add630 = add nsw i32 %522, %523
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds i64, ptr %521, i64 %idxprom631
  %524 = load i64, ptr %arrayidx632, align 8
  %sub633 = sub nsw i64 %524, %call628
  store i64 %sub633, ptr %arrayidx632, align 8
  %525 = load ptr, ptr %bm, align 8
  %526 = load ptr, ptr %bm, align 8
  %minmax_tail634 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %526, i32 0, i32 17
  %527 = load i32, ptr %minmax_tail634, align 8
  %conv635 = sext i32 %527 to i64
  %528 = load i32, ptr %actual606, align 4
  %529 = load i32, ptr %i, align 4
  %cmp636 = icmp slt i32 %528, %529
  br i1 %cmp636, label %cond.true638, label %cond.false639

cond.true638:                                     ; preds = %cond.end624
  %530 = load i32, ptr %actual606, align 4
  br label %cond.end640

cond.false639:                                    ; preds = %cond.end624
  %531 = load i32, ptr %i, align 4
  br label %cond.end640

cond.end640:                                      ; preds = %cond.false639, %cond.true638
  %cond641 = phi i32 [ %530, %cond.true638 ], [ %531, %cond.false639 ]
  %conv642 = sext i32 %cond641 to i64
  %call643 = call i64 @BINBYTES(ptr noundef %525, i64 noundef %conv635, i64 noundef %conv642)
  %call644 = call i64 @LACING_ADJUST(i64 noundef %call643)
  %532 = load ptr, ptr %bm, align 8
  %minmax_binstack645 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %532, i32 0, i32 12
  %533 = load ptr, ptr %minmax_binstack645, align 8
  %534 = load i32, ptr %i, align 4
  %idxprom646 = sext i32 %534 to i64
  %arrayidx647 = getelementptr inbounds i64, ptr %533, i64 %idxprom646
  %535 = load i64, ptr %arrayidx647, align 8
  %sub648 = sub nsw i64 %535, %call644
  store i64 %sub648, ptr %arrayidx647, align 8
  br label %for.inc649

for.inc649:                                       ; preds = %cond.end640
  %536 = load i32, ptr %i, align 4
  %inc650 = add nsw i32 %536, 1
  store i32 %inc650, ptr %i, align 4
  br label %for.cond614, !llvm.loop !19

for.end651:                                       ; preds = %for.cond614
  %537 = load ptr, ptr %bm, align 8
  %minmax_limitstack652 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %537, i32 0, i32 14
  %538 = load ptr, ptr %minmax_limitstack652, align 8
  %arrayidx653 = getelementptr inbounds i64, ptr %538, i64 0
  %539 = load i64, ptr %arrayidx653, align 8
  %540 = load i32, ptr %actual606, align 4
  %conv654 = sext i32 %540 to i64
  %cmp655 = icmp sgt i64 %539, %conv654
  br i1 %cmp655, label %if.then657, label %if.end661

if.then657:                                       ; preds = %for.end651
  %541 = load ptr, ptr %bm, align 8
  %minmax_limitstack658 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %541, i32 0, i32 14
  %542 = load ptr, ptr %minmax_limitstack658, align 8
  %arrayidx659 = getelementptr inbounds i64, ptr %542, i64 0
  %543 = load i64, ptr %arrayidx659, align 8
  %conv660 = trunc i64 %543 to i32
  store i32 %conv660, ptr %actual606, align 4
  br label %if.end661

if.end661:                                        ; preds = %if.then657, %for.end651
  %544 = load i32, ptr %bins, align 4
  %conv662 = sext i32 %544 to i64
  %545 = load ptr, ptr %bm, align 8
  %minmax_limitstack663 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %545, i32 0, i32 14
  %546 = load ptr, ptr %minmax_limitstack663, align 8
  %arrayidx664 = getelementptr inbounds i64, ptr %546, i64 0
  %547 = load i64, ptr %arrayidx664, align 8
  %add665 = add nsw i64 %conv662, %547
  %548 = load i32, ptr %actual606, align 4
  %conv666 = sext i32 %548 to i64
  %cmp667 = icmp slt i64 %add665, %conv666
  br i1 %cmp667, label %if.then669, label %if.end675

if.then669:                                       ; preds = %if.end661
  %549 = load i32, ptr %bins, align 4
  %conv670 = sext i32 %549 to i64
  %550 = load ptr, ptr %bm, align 8
  %minmax_limitstack671 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %550, i32 0, i32 14
  %551 = load ptr, ptr %minmax_limitstack671, align 8
  %arrayidx672 = getelementptr inbounds i64, ptr %551, i64 0
  %552 = load i64, ptr %arrayidx672, align 8
  %add673 = add nsw i64 %conv670, %552
  %conv674 = trunc i64 %add673 to i32
  store i32 %conv674, ptr %actual606, align 4
  br label %if.end675

if.end675:                                        ; preds = %if.then669, %if.end661
  %553 = load ptr, ptr %bm, align 8
  %554 = load ptr, ptr %bm, align 8
  %minmax_tail676 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %554, i32 0, i32 17
  %555 = load i32, ptr %minmax_tail676, align 8
  %conv677 = sext i32 %555 to i64
  %556 = load i32, ptr %actual606, align 4
  %conv678 = sext i32 %556 to i64
  %call679 = call i64 @BINBYTES(ptr noundef %553, i64 noundef %conv677, i64 noundef %conv678)
  %call680 = call i64 @LACING_ADJUST(i64 noundef %call679)
  %557 = load ptr, ptr %bm, align 8
  %minmax_acctotal681 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %557, i32 0, i32 16
  %558 = load i64, ptr %minmax_acctotal681, align 8
  %sub682 = sub nsw i64 %558, %call680
  store i64 %sub682, ptr %minmax_acctotal681, align 8
  %559 = load i32, ptr %samples592, align 4
  %560 = load ptr, ptr %bm, align 8
  %minmax_sampleacc683 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %560, i32 0, i32 18
  %561 = load i32, ptr %minmax_sampleacc683, align 4
  %sub684 = sub i32 %561, %559
  store i32 %sub684, ptr %minmax_sampleacc683, align 4
  %562 = load ptr, ptr %bm, align 8
  %queue_actual685 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %562, i32 0, i32 1
  %563 = load ptr, ptr %queue_actual685, align 8
  %564 = load ptr, ptr %bm, align 8
  %minmax_tail686 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %564, i32 0, i32 17
  %565 = load i32, ptr %minmax_tail686, align 8
  %idxprom687 = sext i32 %565 to i64
  %arrayidx688 = getelementptr inbounds i32, ptr %563, i64 %idxprom687
  %566 = load i32, ptr %arrayidx688, align 4
  %conv689 = zext i32 %566 to i64
  %and690 = and i64 %conv689, 2147483648
  %conv691 = trunc i64 %and690 to i32
  store i32 %conv691, ptr %arrayidx688, align 4
  %567 = load i32, ptr %actual606, align 4
  %568 = load ptr, ptr %bm, align 8
  %queue_actual692 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %568, i32 0, i32 1
  %569 = load ptr, ptr %queue_actual692, align 8
  %570 = load ptr, ptr %bm, align 8
  %minmax_tail693 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %570, i32 0, i32 17
  %571 = load i32, ptr %minmax_tail693, align 8
  %idxprom694 = sext i32 %571 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %569, i64 %idxprom694
  %572 = load i32, ptr %arrayidx695, align 4
  %or696 = or i32 %572, %567
  store i32 %or696, ptr %arrayidx695, align 4
  %573 = load ptr, ptr %bm, align 8
  %minmax_tail697 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %573, i32 0, i32 17
  %574 = load i32, ptr %minmax_tail697, align 8
  %conv698 = sext i32 %574 to i64
  %575 = load ptr, ptr %bm, align 8
  %minmax_posstack699 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %575, i32 0, i32 13
  %576 = load ptr, ptr %minmax_posstack699, align 8
  %arrayidx700 = getelementptr inbounds i64, ptr %576, i64 0
  %577 = load i64, ptr %arrayidx700, align 8
  %cmp701 = icmp eq i64 %conv698, %577
  br i1 %cmp701, label %if.then703, label %if.end726

if.then703:                                       ; preds = %if.end675
  %578 = load ptr, ptr %bm, align 8
  %minmax_binstack704 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %578, i32 0, i32 12
  %579 = load ptr, ptr %minmax_binstack704, align 8
  %580 = load ptr, ptr %bm, align 8
  %minmax_binstack705 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %580, i32 0, i32 12
  %581 = load ptr, ptr %minmax_binstack705, align 8
  %582 = load i32, ptr %bins, align 4
  %mul706 = mul nsw i32 %582, 2
  %idx.ext707 = sext i32 %mul706 to i64
  %add.ptr708 = getelementptr inbounds i64, ptr %581, i64 %idx.ext707
  %583 = load i32, ptr %bins, align 4
  %conv709 = sext i32 %583 to i64
  %mul710 = mul i64 8, %conv709
  %mul711 = mul i64 %mul710, 2
  %584 = load ptr, ptr %bm, align 8
  %minmax_stackptr712 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %584, i32 0, i32 15
  %585 = load i64, ptr %minmax_stackptr712, align 8
  %mul713 = mul i64 %mul711, %585
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %579, ptr align 8 %add.ptr708, i64 %mul713, i1 false)
  %586 = load ptr, ptr %bm, align 8
  %minmax_posstack714 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %586, i32 0, i32 13
  %587 = load ptr, ptr %minmax_posstack714, align 8
  %588 = load ptr, ptr %bm, align 8
  %minmax_posstack715 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %588, i32 0, i32 13
  %589 = load ptr, ptr %minmax_posstack715, align 8
  %add.ptr716 = getelementptr inbounds i64, ptr %589, i64 1
  %590 = load ptr, ptr %bm, align 8
  %minmax_stackptr717 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %590, i32 0, i32 15
  %591 = load i64, ptr %minmax_stackptr717, align 8
  %mul718 = mul i64 8, %591
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %587, ptr align 8 %add.ptr716, i64 %mul718, i1 false)
  %592 = load ptr, ptr %bm, align 8
  %minmax_limitstack719 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %592, i32 0, i32 14
  %593 = load ptr, ptr %minmax_limitstack719, align 8
  %594 = load ptr, ptr %bm, align 8
  %minmax_limitstack720 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %594, i32 0, i32 14
  %595 = load ptr, ptr %minmax_limitstack720, align 8
  %add.ptr721 = getelementptr inbounds i64, ptr %595, i64 1
  %596 = load ptr, ptr %bm, align 8
  %minmax_stackptr722 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %596, i32 0, i32 15
  %597 = load i64, ptr %minmax_stackptr722, align 8
  %mul723 = mul i64 8, %597
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %593, ptr align 8 %add.ptr721, i64 %mul723, i1 false)
  %598 = load ptr, ptr %bm, align 8
  %minmax_stackptr724 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %598, i32 0, i32 15
  %599 = load i64, ptr %minmax_stackptr724, align 8
  %dec725 = add nsw i64 %599, -1
  store i64 %dec725, ptr %minmax_stackptr724, align 8
  br label %if.end726

if.end726:                                        ; preds = %if.then703, %if.end675
  %600 = load ptr, ptr %bm, align 8
  %minmax_tail727 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %600, i32 0, i32 17
  %601 = load i32, ptr %minmax_tail727, align 8
  %inc728 = add nsw i32 %601, 1
  store i32 %inc728, ptr %minmax_tail727, align 8
  %602 = load ptr, ptr %bm, align 8
  %minmax_tail729 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %602, i32 0, i32 17
  %603 = load i32, ptr %minmax_tail729, align 8
  %604 = load ptr, ptr %bm, align 8
  %queue_size730 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %604, i32 0, i32 2
  %605 = load i32, ptr %queue_size730, align 8
  %cmp731 = icmp sge i32 %603, %605
  br i1 %cmp731, label %if.then733, label %if.end735

if.then733:                                       ; preds = %if.end726
  %606 = load ptr, ptr %bm, align 8
  %minmax_tail734 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %606, i32 0, i32 17
  store i32 0, ptr %minmax_tail734, align 8
  br label %if.end735

if.end735:                                        ; preds = %if.then733, %if.end726
  br label %while.cond586, !llvm.loop !20

while.end736:                                     ; preds = %while.cond586
  %607 = load ptr, ptr %bm, align 8
  %minmax_tail737 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %607, i32 0, i32 17
  %608 = load i32, ptr %minmax_tail737, align 8
  %609 = load ptr, ptr %bm, align 8
  %last_to_flush = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %609, i32 0, i32 21
  store i32 %608, ptr %last_to_flush, align 8
  br label %if.end741

if.else738:                                       ; preds = %if.end284
  %610 = load ptr, ptr %bm, align 8
  %avg_center739 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %610, i32 0, i32 6
  %611 = load i32, ptr %avg_center739, align 8
  %612 = load ptr, ptr %bm, align 8
  %last_to_flush740 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %612, i32 0, i32 21
  store i32 %611, ptr %last_to_flush740, align 8
  br label %if.end741

if.end741:                                        ; preds = %if.else738, %while.end736
  %613 = load i32, ptr %eofflag, align 4
  %tobool742 = icmp ne i32 %613, 0
  br i1 %tobool742, label %if.then743, label %if.end746

if.then743:                                       ; preds = %if.end741
  %614 = load ptr, ptr %bm, align 8
  %queue_head744 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %614, i32 0, i32 3
  %615 = load i32, ptr %queue_head744, align 4
  %616 = load ptr, ptr %bm, align 8
  %last_to_flush745 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %616, i32 0, i32 21
  store i32 %615, ptr %last_to_flush745, align 8
  br label %if.end746

if.end746:                                        ; preds = %if.then743, %if.end741
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end746, %if.then36, %if.end, %if.then8
  %617 = load i32, ptr %retval, align 4
  ret i32 %617
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_bytes(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @oggpack_get_buffer(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @LACING_ADJUST(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @floater_interpolate(ptr noundef, ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @BINBYTES(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @limit_sum(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
