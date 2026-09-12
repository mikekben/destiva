; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.ovectl_ratemanage_arg = type { i32, i64, i64, double, i64, i64, double, double }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str.84 = external hidden unnamed_addr constant [80 x i8], align 1
@.str.85 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.86 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.87 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.88 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.89 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @oe_encode(ptr noundef %opt) #1 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca ptr, align 8
  %os = alloca %struct.ogg_stream_state, align 8
  %og = alloca %struct.ogg_page, align 8
  %op = alloca %struct.ogg_packet, align 8
  %vd = alloca %struct.vorbis_dsp_state, align 8
  %vb = alloca %struct.vorbis_block, align 8
  %vi = alloca %struct.vorbis_info, align 8
  %samplesdone = alloca i64, align 8
  %eos = alloca i32, align 4
  %bytes_written = alloca i64, align 8
  %packetsdone = alloca i64, align 8
  %time_elapsed = alloca double, align 8
  %ret = alloca i32, align 4
  %timer = alloca ptr, align 8
  %ai = alloca %struct.ovectl_ratemanage_arg, align 8
  %header_main = alloca %struct.ogg_packet, align 8
  %header_comments = alloca %struct.ogg_packet, align 8
  %header_codebooks = alloca %struct.ogg_packet, align 8
  %result = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %samples_read = alloca i64, align 8
  %time = alloca double, align 8
  %result143 = alloca i32, align 4
  store ptr %opt, ptr %opt.addr, align 8
  store i64 0, ptr %samplesdone, align 8
  store i64 0, ptr %bytes_written, align 8
  store i64 0, ptr %packetsdone, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %opt.addr, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %channels, align 8
  %cmp = icmp sgt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.84) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @timer_start()
  store ptr %call1, ptr %timer, align 8
  %3 = load ptr, ptr %opt.addr, align 8
  %managed = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %3, i32 0, i32 15
  %4 = load i32, ptr %managed, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %opt.addr, align 8
  %min_bitrate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %5, i32 0, i32 17
  %6 = load i32, ptr %min_bitrate, align 8
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load ptr, ptr %opt.addr, align 8
  %max_bitrate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %7, i32 0, i32 18
  %8 = load i32, ptr %max_bitrate, align 4
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load ptr, ptr @stderr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.85) #2
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %opt.addr, align 8
  %bitrate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %bitrate, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end15

land.lhs.true8:                                   ; preds = %if.end6
  %12 = load ptr, ptr %opt.addr, align 8
  %min_bitrate9 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %12, i32 0, i32 17
  %13 = load i32, ptr %min_bitrate9, align 8
  %cmp10 = icmp slt i32 %13, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %14 = load ptr, ptr %opt.addr, align 8
  %max_bitrate12 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %max_bitrate12, align 4
  %cmp13 = icmp slt i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  %16 = load ptr, ptr %opt.addr, align 8
  %quality_set = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %16, i32 0, i32 20
  store i32 1, ptr %quality_set, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true11, %land.lhs.true8, %if.end6
  %17 = load ptr, ptr %opt.addr, align 8
  %start_encode = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %start_encode, align 8
  %19 = load ptr, ptr %opt.addr, align 8
  %infilename = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %19, i32 0, i32 25
  %20 = load ptr, ptr %infilename, align 8
  %21 = load ptr, ptr %opt.addr, align 8
  %filename = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %21, i32 0, i32 24
  %22 = load ptr, ptr %filename, align 8
  %23 = load ptr, ptr %opt.addr, align 8
  %bitrate16 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %23, i32 0, i32 16
  %24 = load i32, ptr %bitrate16, align 4
  %25 = load ptr, ptr %opt.addr, align 8
  %quality = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %25, i32 0, i32 19
  %26 = load float, ptr %quality, align 8
  %27 = load ptr, ptr %opt.addr, align 8
  %quality_set17 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %27, i32 0, i32 20
  %28 = load i32, ptr %quality_set17, align 4
  %29 = load ptr, ptr %opt.addr, align 8
  %managed18 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %29, i32 0, i32 15
  %30 = load i32, ptr %managed18, align 8
  %31 = load ptr, ptr %opt.addr, align 8
  %min_bitrate19 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %31, i32 0, i32 17
  %32 = load i32, ptr %min_bitrate19, align 8
  %33 = load ptr, ptr %opt.addr, align 8
  %max_bitrate20 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %33, i32 0, i32 18
  %34 = load i32, ptr %max_bitrate20, align 4
  call void %18(ptr noundef %20, ptr noundef %22, i32 noundef %24, float noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34)
  call void @vorbis_info_init(ptr noundef %vi)
  %35 = load ptr, ptr %opt.addr, align 8
  %quality_set21 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %35, i32 0, i32 20
  %36 = load i32, ptr %quality_set21, align 4
  %cmp22 = icmp sgt i32 %36, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end15
  %37 = load ptr, ptr %opt.addr, align 8
  %channels24 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %37, i32 0, i32 9
  %38 = load i32, ptr %channels24, align 8
  %conv = sext i32 %38 to i64
  %39 = load ptr, ptr %opt.addr, align 8
  %rate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %39, i32 0, i32 10
  %40 = load i64, ptr %rate, align 8
  %41 = load ptr, ptr %opt.addr, align 8
  %quality25 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %41, i32 0, i32 19
  %42 = load float, ptr %quality25, align 8
  %call26 = call i32 @vorbis_encode_setup_vbr(ptr noundef %vi, i64 noundef %conv, i64 noundef %40, float noundef %42)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then23
  %43 = load ptr, ptr @stderr, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.86) #2
  call void @vorbis_info_clear(ptr noundef %vi)
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then23
  %44 = load ptr, ptr %opt.addr, align 8
  %max_bitrate31 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %44, i32 0, i32 18
  %45 = load i32, ptr %max_bitrate31, align 4
  %cmp32 = icmp sgt i32 %45, 0
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end30
  %46 = load ptr, ptr %opt.addr, align 8
  %min_bitrate35 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %46, i32 0, i32 17
  %47 = load i32, ptr %min_bitrate35, align 8
  %cmp36 = icmp sgt i32 %47, 0
  br i1 %cmp36, label %if.then38, label %if.end45

if.then38:                                        ; preds = %lor.lhs.false34, %if.end30
  %call39 = call i32 @vorbis_encode_ctl(ptr noundef %vi, i32 noundef 16, ptr noundef %ai)
  %48 = load ptr, ptr %opt.addr, align 8
  %min_bitrate40 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %48, i32 0, i32 17
  %49 = load i32, ptr %min_bitrate40, align 8
  %conv41 = sext i32 %49 to i64
  %bitrate_hard_min = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 1
  store i64 %conv41, ptr %bitrate_hard_min, align 8
  %50 = load ptr, ptr %opt.addr, align 8
  %max_bitrate42 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %50, i32 0, i32 18
  %51 = load i32, ptr %max_bitrate42, align 4
  %conv43 = sext i32 %51 to i64
  %bitrate_hard_max = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 2
  store i64 %conv43, ptr %bitrate_hard_max, align 8
  %management_active = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 0
  store i32 1, ptr %management_active, align 8
  %call44 = call i32 @vorbis_encode_ctl(ptr noundef %vi, i32 noundef 17, ptr noundef %ai)
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %lor.lhs.false34
  br label %if.end72

if.else:                                          ; preds = %if.end15
  %52 = load ptr, ptr %opt.addr, align 8
  %channels46 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %52, i32 0, i32 9
  %53 = load i32, ptr %channels46, align 8
  %conv47 = sext i32 %53 to i64
  %54 = load ptr, ptr %opt.addr, align 8
  %rate48 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %54, i32 0, i32 10
  %55 = load i64, ptr %rate48, align 8
  %56 = load ptr, ptr %opt.addr, align 8
  %max_bitrate49 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %56, i32 0, i32 18
  %57 = load i32, ptr %max_bitrate49, align 4
  %cmp50 = icmp sgt i32 %57, 0
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %58 = load ptr, ptr %opt.addr, align 8
  %max_bitrate52 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %58, i32 0, i32 18
  %59 = load i32, ptr %max_bitrate52, align 4
  %mul = mul nsw i32 %59, 1000
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ -1, %cond.false ]
  %conv53 = sext i32 %cond to i64
  %60 = load ptr, ptr %opt.addr, align 8
  %bitrate54 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %60, i32 0, i32 16
  %61 = load i32, ptr %bitrate54, align 4
  %mul55 = mul nsw i32 %61, 1000
  %conv56 = sext i32 %mul55 to i64
  %62 = load ptr, ptr %opt.addr, align 8
  %min_bitrate57 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %62, i32 0, i32 17
  %63 = load i32, ptr %min_bitrate57, align 8
  %cmp58 = icmp sgt i32 %63, 0
  br i1 %cmp58, label %cond.true60, label %cond.false63

cond.true60:                                      ; preds = %cond.end
  %64 = load ptr, ptr %opt.addr, align 8
  %min_bitrate61 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %64, i32 0, i32 17
  %65 = load i32, ptr %min_bitrate61, align 8
  %mul62 = mul nsw i32 %65, 1000
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true60
  %cond65 = phi i32 [ %mul62, %cond.true60 ], [ -1, %cond.false63 ]
  %conv66 = sext i32 %cond65 to i64
  %call67 = call i32 @vorbis_encode_setup_managed(ptr noundef %vi, i64 noundef %conv47, i64 noundef %55, i64 noundef %conv53, i64 noundef %conv56, i64 noundef %conv66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %cond.end64
  %66 = load ptr, ptr @stderr, align 8
  %call70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.87) #2
  call void @vorbis_info_clear(ptr noundef %vi)
  store i32 1, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %cond.end64
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end45
  %67 = load ptr, ptr %opt.addr, align 8
  %managed73 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %67, i32 0, i32 15
  %68 = load i32, ptr %managed73, align 8
  %tobool74 = icmp ne i32 %68, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.else81

land.lhs.true75:                                  ; preds = %if.end72
  %69 = load ptr, ptr %opt.addr, align 8
  %bitrate76 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %69, i32 0, i32 16
  %70 = load i32, ptr %bitrate76, align 4
  %cmp77 = icmp slt i32 %70, 0
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %land.lhs.true75
  %call80 = call i32 @vorbis_encode_ctl(ptr noundef %vi, i32 noundef 18, ptr noundef null)
  br label %if.end87

if.else81:                                        ; preds = %land.lhs.true75, %if.end72
  %71 = load ptr, ptr %opt.addr, align 8
  %managed82 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %71, i32 0, i32 15
  %72 = load i32, ptr %managed82, align 8
  %tobool83 = icmp ne i32 %72, 0
  br i1 %tobool83, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.else81
  %call85 = call i32 @vorbis_encode_ctl(ptr noundef %vi, i32 noundef 17, ptr noundef null)
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.else81
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then79
  %73 = load ptr, ptr %opt.addr, align 8
  %advopt = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %73, i32 0, i32 21
  %74 = load ptr, ptr %advopt, align 8
  %75 = load ptr, ptr %opt.addr, align 8
  %advopt_count = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %75, i32 0, i32 22
  %76 = load i32, ptr %advopt_count, align 8
  call void @set_advanced_encoder_options(ptr noundef %74, i32 noundef %76, ptr noundef %vi)
  %call88 = call i32 @vorbis_encode_setup_init(ptr noundef %vi)
  %call89 = call i32 @vorbis_analysis_init(ptr noundef %vd, ptr noundef %vi)
  %call90 = call i32 @vorbis_block_init(ptr noundef %vd, ptr noundef %vb)
  %77 = load ptr, ptr %opt.addr, align 8
  %serialno = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %serialno, align 8
  %call91 = call i32 @ogg_stream_init(ptr noundef %os, i32 noundef %78)
  %79 = load ptr, ptr %opt.addr, align 8
  %comments = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %comments, align 8
  %call92 = call i32 @vorbis_analysis_headerout(ptr noundef %vd, ptr noundef %80, ptr noundef %header_main, ptr noundef %header_comments, ptr noundef %header_codebooks)
  %call93 = call i32 @ogg_stream_packetin(ptr noundef %os, ptr noundef %header_main)
  %call94 = call i32 @ogg_stream_packetin(ptr noundef %os, ptr noundef %header_comments)
  %call95 = call i32 @ogg_stream_packetin(ptr noundef %os, ptr noundef %header_codebooks)
  br label %while.cond

while.cond:                                       ; preds = %if.end106, %if.end87
  %call96 = call i32 @ogg_stream_flush(ptr noundef %os, ptr noundef %og)
  store i32 %call96, ptr %result, align 4
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load i32, ptr %result, align 4
  %tobool98 = icmp ne i32 %81, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %while.body
  br label %while.end

if.end100:                                        ; preds = %while.body
  %82 = load ptr, ptr %opt.addr, align 8
  %out = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %82, i32 0, i32 23
  %83 = load ptr, ptr %out, align 8
  %call101 = call i32 @oe_write_page(ptr noundef %og, ptr noundef %83)
  store i32 %call101, ptr %ret, align 4
  %84 = load i32, ptr %ret, align 4
  %conv102 = sext i32 %84 to i64
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 1
  %85 = load i64, ptr %header_len, align 8
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 3
  %86 = load i64, ptr %body_len, align 8
  %add = add nsw i64 %85, %86
  %cmp103 = icmp ne i64 %conv102, %add
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end100
  %87 = load ptr, ptr %opt.addr, align 8
  %error = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %87, i32 0, i32 6
  %88 = load ptr, ptr %error, align 8
  call void %88(ptr noundef @.str.88)
  store i32 1, ptr %ret, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end100
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then99, %while.cond
  store i32 0, ptr %eos, align 4
  br label %while.cond107

while.cond107:                                    ; preds = %while.end168, %while.end
  %89 = load i32, ptr %eos, align 4
  %tobool108 = icmp ne i32 %89, 0
  %lnot = xor i1 %tobool108, true
  br i1 %lnot, label %while.body109, label %while.end169

while.body109:                                    ; preds = %while.cond107
  %call110 = call ptr @vorbis_analysis_buffer(ptr noundef %vd, i32 noundef 1024)
  store ptr %call110, ptr %buffer, align 8
  %90 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %read_samples, align 8
  %92 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %92, i32 0, i32 7
  %93 = load ptr, ptr %readdata, align 8
  %94 = load ptr, ptr %buffer, align 8
  %call111 = call i64 %91(ptr noundef %93, ptr noundef %94, i32 noundef 1024)
  store i64 %call111, ptr %samples_read, align 8
  %95 = load i64, ptr %samples_read, align 8
  %cmp112 = icmp eq i64 %95, 0
  br i1 %cmp112, label %if.then114, label %if.else116

if.then114:                                       ; preds = %while.body109
  %call115 = call i32 @vorbis_analysis_wrote(ptr noundef %vd, i32 noundef 0)
  br label %if.end126

if.else116:                                       ; preds = %while.body109
  %96 = load i64, ptr %samples_read, align 8
  %97 = load i64, ptr %samplesdone, align 8
  %add117 = add nsw i64 %97, %96
  store i64 %add117, ptr %samplesdone, align 8
  %98 = load i64, ptr %packetsdone, align 8
  %cmp118 = icmp sge i64 %98, 40
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %if.else116
  store i64 0, ptr %packetsdone, align 8
  %99 = load ptr, ptr %timer, align 8
  %call121 = call double @timer_time(ptr noundef %99)
  store double %call121, ptr %time, align 8
  %100 = load ptr, ptr %opt.addr, align 8
  %progress_update = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %100, i32 0, i32 3
  %101 = load ptr, ptr %progress_update, align 8
  %102 = load ptr, ptr %opt.addr, align 8
  %filename122 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %102, i32 0, i32 24
  %103 = load ptr, ptr %filename122, align 8
  %104 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %104, i32 0, i32 8
  %105 = load i64, ptr %total_samples_per_channel, align 8
  %106 = load i64, ptr %samplesdone, align 8
  %107 = load double, ptr %time, align 8
  call void %101(ptr noundef %103, i64 noundef %105, i64 noundef %106, double noundef %107)
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.else116
  %108 = load i64, ptr %samples_read, align 8
  %conv124 = trunc i64 %108 to i32
  %call125 = call i32 @vorbis_analysis_wrote(ptr noundef %vd, i32 noundef %conv124)
  br label %if.end126

if.end126:                                        ; preds = %if.end123, %if.then114
  br label %while.cond127

while.cond127:                                    ; preds = %while.end167, %if.end126
  %call128 = call i32 @vorbis_analysis_blockout(ptr noundef %vd, ptr noundef %vb)
  %cmp129 = icmp eq i32 %call128, 1
  br i1 %cmp129, label %while.body131, label %while.end168

while.body131:                                    ; preds = %while.cond127
  %call132 = call i32 @vorbis_analysis(ptr noundef %vb, ptr noundef null)
  %call133 = call i32 @vorbis_bitrate_addblock(ptr noundef %vb)
  br label %while.cond134

while.cond134:                                    ; preds = %while.end166, %while.body131
  %call135 = call i32 @vorbis_bitrate_flushpacket(ptr noundef %vd, ptr noundef %op)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %while.body137, label %while.end167

while.body137:                                    ; preds = %while.cond134
  %call138 = call i32 @ogg_stream_packetin(ptr noundef %os, ptr noundef %op)
  %109 = load i64, ptr %packetsdone, align 8
  %inc = add nsw i64 %109, 1
  store i64 %inc, ptr %packetsdone, align 8
  br label %while.cond139

while.cond139:                                    ; preds = %if.end165, %while.body137
  %110 = load i32, ptr %eos, align 4
  %tobool140 = icmp ne i32 %110, 0
  %lnot141 = xor i1 %tobool140, true
  br i1 %lnot141, label %while.body142, label %while.end166

while.body142:                                    ; preds = %while.cond139
  %call144 = call i32 @ogg_stream_pageout(ptr noundef %os, ptr noundef %og)
  store i32 %call144, ptr %result143, align 4
  %111 = load i32, ptr %result143, align 4
  %tobool145 = icmp ne i32 %111, 0
  br i1 %tobool145, label %if.end147, label %if.then146

if.then146:                                       ; preds = %while.body142
  br label %while.end166

if.end147:                                        ; preds = %while.body142
  %112 = load ptr, ptr %opt.addr, align 8
  %out148 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %112, i32 0, i32 23
  %113 = load ptr, ptr %out148, align 8
  %call149 = call i32 @oe_write_page(ptr noundef %og, ptr noundef %113)
  store i32 %call149, ptr %ret, align 4
  %114 = load i32, ptr %ret, align 4
  %conv150 = sext i32 %114 to i64
  %header_len151 = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 1
  %115 = load i64, ptr %header_len151, align 8
  %body_len152 = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 3
  %116 = load i64, ptr %body_len152, align 8
  %add153 = add nsw i64 %115, %116
  %cmp154 = icmp ne i64 %conv150, %add153
  br i1 %cmp154, label %if.then156, label %if.else158

if.then156:                                       ; preds = %if.end147
  %117 = load ptr, ptr %opt.addr, align 8
  %error157 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %117, i32 0, i32 6
  %118 = load ptr, ptr %error157, align 8
  call void %118(ptr noundef @.str.89)
  store i32 1, ptr %ret, align 4
  br label %cleanup

if.else158:                                       ; preds = %if.end147
  %119 = load i32, ptr %ret, align 4
  %conv159 = sext i32 %119 to i64
  %120 = load i64, ptr %bytes_written, align 8
  %add160 = add nsw i64 %120, %conv159
  store i64 %add160, ptr %bytes_written, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.else158
  %call162 = call i32 @ogg_page_eos(ptr noundef %og)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.end161
  store i32 1, ptr %eos, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end161
  br label %while.cond139, !llvm.loop !8

while.end166:                                     ; preds = %if.then146, %while.cond139
  br label %while.cond134, !llvm.loop !9

while.end167:                                     ; preds = %while.cond134
  br label %while.cond127, !llvm.loop !10

while.end168:                                     ; preds = %while.cond127
  br label %while.cond107, !llvm.loop !11

while.end169:                                     ; preds = %while.cond107
  store i32 0, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end169, %if.then156, %if.then105
  %call170 = call i32 @ogg_stream_clear(ptr noundef %os)
  %call171 = call i32 @vorbis_block_clear(ptr noundef %vb)
  call void @vorbis_dsp_clear(ptr noundef %vd)
  call void @vorbis_info_clear(ptr noundef %vi)
  %121 = load ptr, ptr %timer, align 8
  %call172 = call double @timer_time(ptr noundef %121)
  store double %call172, ptr %time_elapsed, align 8
  %122 = load ptr, ptr %opt.addr, align 8
  %end_encode = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %122, i32 0, i32 4
  %123 = load ptr, ptr %end_encode, align 8
  %124 = load ptr, ptr %opt.addr, align 8
  %filename173 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %124, i32 0, i32 24
  %125 = load ptr, ptr %filename173, align 8
  %126 = load double, ptr %time_elapsed, align 8
  %127 = load ptr, ptr %opt.addr, align 8
  %rate174 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %127, i32 0, i32 10
  %128 = load i64, ptr %rate174, align 8
  %conv175 = trunc i64 %128 to i32
  %129 = load i64, ptr %samplesdone, align 8
  %130 = load i64, ptr %bytes_written, align 8
  call void %123(ptr noundef %125, double noundef %126, i32 noundef %conv175, i64 noundef %129, i64 noundef %130)
  %131 = load ptr, ptr %timer, align 8
  call void @timer_clear(ptr noundef %131)
  %132 = load i32, ptr %ret, align 4
  store i32 %132, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then69, %if.then28, %if.then4, %if.then
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @timer_start() #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_init(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_vbr(ptr noundef, i64 noundef, i64 noundef, float noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_ctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_managed(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @set_advanced_encoder_options(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_init(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_analysis_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_block_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_init(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_analysis_headerout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetin(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_flush(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @oe_write_page(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @vorbis_analysis_buffer(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_analysis_wrote(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local double @timer_time(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_analysis_blockout(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_analysis(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_bitrate_addblock(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_bitrate_flushpacket(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pageout(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_eos(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_block_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_dsp_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @timer_clear(ptr noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
