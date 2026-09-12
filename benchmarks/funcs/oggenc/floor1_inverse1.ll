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
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @vorbis_book_decode(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @render_point(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @floor1_inverse1(ptr noundef %vb, ptr noundef %in) #0 {
entry:
  %retval = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %books = alloca ptr, align 8
  %fit_value = alloca ptr, align 8
  %class = alloca i32, align 4
  %cdim = alloca i32, align 4
  %csubbits = alloca i32, align 4
  %csub = alloca i32, align 4
  %cval = alloca i32, align 4
  %book = alloca i32, align 4
  %predicted = alloca i32, align 4
  %hiroom = alloca i32, align 4
  %loroom = alloca i32, align 4
  %room = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %in, ptr %in.addr, align 8
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
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %7, i32 0, i32 15
  %8 = load ptr, ptr %fullbooks, align 8
  store ptr %8, ptr %books, align 8
  %9 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %9, i32 0, i32 1
  %call = call i64 @oggpack_read(ptr noundef %opb, i32 noundef 1)
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end149

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %vb.addr, align 8
  %11 = load ptr, ptr %look, align 8
  %posts = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %posts, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 %conv, 4
  %call2 = call ptr @_vorbis_block_alloc(ptr noundef %10, i64 noundef %mul)
  store ptr %call2, ptr %fit_value, align 8
  %13 = load ptr, ptr %vb.addr, align 8
  %opb3 = getelementptr inbounds nuw %struct.vorbis_block, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %look, align 8
  %quant_q = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %quant_q, align 4
  %sub = sub nsw i32 %15, 1
  %call4 = call i32 @ilog(i32 noundef %sub)
  %call5 = call i64 @oggpack_read(ptr noundef %opb3, i32 noundef %call4)
  %conv6 = trunc i64 %call5 to i32
  %16 = load ptr, ptr %fit_value, align 8
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 0
  store i32 %conv6, ptr %arrayidx, align 4
  %17 = load ptr, ptr %vb.addr, align 8
  %opb7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %look, align 8
  %quant_q8 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %18, i32 0, i32 7
  %19 = load i32, ptr %quant_q8, align 4
  %sub9 = sub nsw i32 %19, 1
  %call10 = call i32 @ilog(i32 noundef %sub9)
  %call11 = call i64 @oggpack_read(ptr noundef %opb7, i32 noundef %call10)
  %conv12 = trunc i64 %call11 to i32
  %20 = load ptr, ptr %fit_value, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %conv12, ptr %arrayidx13, align 4
  store i32 0, ptr %i, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %if.then
  %21 = load i32, ptr %i, align 4
  %22 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %partitions, align 4
  %cmp14 = icmp slt i32 %21, %23
  br i1 %cmp14, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %info, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %idxprom
  %26 = load i32, ptr %arrayidx16, align 4
  store i32 %26, ptr %class, align 4
  %27 = load ptr, ptr %info, align 8
  %class_dim = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %class, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %class_dim, i64 0, i64 %idxprom17
  %29 = load i32, ptr %arrayidx18, align 4
  store i32 %29, ptr %cdim, align 4
  %30 = load ptr, ptr %info, align 8
  %class_subs = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %class, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %class_subs, i64 0, i64 %idxprom19
  %32 = load i32, ptr %arrayidx20, align 4
  store i32 %32, ptr %csubbits, align 4
  %33 = load i32, ptr %csubbits, align 4
  %shl = shl i32 1, %33
  store i32 %shl, ptr %csub, align 4
  store i32 0, ptr %cval, align 4
  %34 = load i32, ptr %csubbits, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then21, label %if.end30

if.then21:                                        ; preds = %for.body
  %35 = load ptr, ptr %books, align 8
  %36 = load ptr, ptr %info, align 8
  %class_book = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %class, align 4
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds [16 x i32], ptr %class_book, i64 0, i64 %idxprom22
  %38 = load i32, ptr %arrayidx23, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %35, i64 %idx.ext
  %39 = load ptr, ptr %vb.addr, align 8
  %opb24 = getelementptr inbounds nuw %struct.vorbis_block, ptr %39, i32 0, i32 1
  %call25 = call i64 @vorbis_book_decode(ptr noundef %add.ptr, ptr noundef %opb24)
  %conv26 = trunc i64 %call25 to i32
  store i32 %conv26, ptr %cval, align 4
  %40 = load i32, ptr %cval, align 4
  %cmp27 = icmp eq i32 %40, -1
  br i1 %cmp27, label %if.then29, label %if.end

if.then29:                                        ; preds = %if.then21
  br label %eop

if.end:                                           ; preds = %if.then21
  br label %if.end30

if.end30:                                         ; preds = %if.end, %for.body
  store i32 0, ptr %k, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.end30
  %41 = load i32, ptr %k, align 4
  %42 = load i32, ptr %cdim, align 4
  %cmp32 = icmp slt i32 %41, %42
  br i1 %cmp32, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond31
  %43 = load ptr, ptr %info, align 8
  %class_subbook = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %class, align 4
  %idxprom35 = sext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook, i64 0, i64 %idxprom35
  %45 = load i32, ptr %cval, align 4
  %46 = load i32, ptr %csub, align 4
  %sub37 = sub nsw i32 %46, 1
  %and = and i32 %45, %sub37
  %idxprom38 = sext i32 %and to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %arrayidx36, i64 0, i64 %idxprom38
  %47 = load i32, ptr %arrayidx39, align 4
  store i32 %47, ptr %book, align 4
  %48 = load i32, ptr %csubbits, align 4
  %49 = load i32, ptr %cval, align 4
  %shr = ashr i32 %49, %48
  store i32 %shr, ptr %cval, align 4
  %50 = load i32, ptr %book, align 4
  %cmp40 = icmp sge i32 %50, 0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %for.body34
  %51 = load ptr, ptr %books, align 8
  %52 = load i32, ptr %book, align 4
  %idx.ext43 = sext i32 %52 to i64
  %add.ptr44 = getelementptr inbounds %struct.codebook, ptr %51, i64 %idx.ext43
  %53 = load ptr, ptr %vb.addr, align 8
  %opb45 = getelementptr inbounds nuw %struct.vorbis_block, ptr %53, i32 0, i32 1
  %call46 = call i64 @vorbis_book_decode(ptr noundef %add.ptr44, ptr noundef %opb45)
  %conv47 = trunc i64 %call46 to i32
  %54 = load ptr, ptr %fit_value, align 8
  %55 = load i32, ptr %j, align 4
  %56 = load i32, ptr %k, align 4
  %add = add nsw i32 %55, %56
  %idxprom48 = sext i32 %add to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %54, i64 %idxprom48
  store i32 %conv47, ptr %arrayidx49, align 4
  %cmp50 = icmp eq i32 %conv47, -1
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then42
  br label %eop

if.end53:                                         ; preds = %if.then42
  br label %if.end57

if.else:                                          ; preds = %for.body34
  %57 = load ptr, ptr %fit_value, align 8
  %58 = load i32, ptr %j, align 4
  %59 = load i32, ptr %k, align 4
  %add54 = add nsw i32 %58, %59
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %57, i64 %idxprom55
  store i32 0, ptr %arrayidx56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.end53
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %60 = load i32, ptr %k, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond31, !llvm.loop !6

for.end:                                          ; preds = %for.cond31
  %61 = load i32, ptr %cdim, align 4
  %62 = load i32, ptr %j, align 4
  %add58 = add nsw i32 %62, %61
  store i32 %add58, ptr %j, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %for.end
  %63 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end61:                                        ; preds = %for.cond
  store i32 2, ptr %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc146, %for.end61
  %64 = load i32, ptr %i, align 4
  %65 = load ptr, ptr %look, align 8
  %posts63 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %65, i32 0, i32 5
  %66 = load i32, ptr %posts63, align 4
  %cmp64 = icmp slt i32 %64, %66
  br i1 %cmp64, label %for.body66, label %for.end148

for.body66:                                       ; preds = %for.cond62
  %67 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %67, i32 0, i32 7
  %68 = load ptr, ptr %look, align 8
  %loneighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %68, i32 0, i32 4
  %69 = load i32, ptr %i, align 4
  %sub67 = sub nsw i32 %69, 2
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [63 x i32], ptr %loneighbor, i64 0, i64 %idxprom68
  %70 = load i32, ptr %arrayidx69, align 4
  %idxprom70 = sext i32 %70 to i64
  %arrayidx71 = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 %idxprom70
  %71 = load i32, ptr %arrayidx71, align 4
  %72 = load ptr, ptr %info, align 8
  %postlist72 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %72, i32 0, i32 7
  %73 = load ptr, ptr %look, align 8
  %hineighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %73, i32 0, i32 3
  %74 = load i32, ptr %i, align 4
  %sub73 = sub nsw i32 %74, 2
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [63 x i32], ptr %hineighbor, i64 0, i64 %idxprom74
  %75 = load i32, ptr %arrayidx75, align 4
  %idxprom76 = sext i32 %75 to i64
  %arrayidx77 = getelementptr inbounds [65 x i32], ptr %postlist72, i64 0, i64 %idxprom76
  %76 = load i32, ptr %arrayidx77, align 4
  %77 = load ptr, ptr %fit_value, align 8
  %78 = load ptr, ptr %look, align 8
  %loneighbor78 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %78, i32 0, i32 4
  %79 = load i32, ptr %i, align 4
  %sub79 = sub nsw i32 %79, 2
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [63 x i32], ptr %loneighbor78, i64 0, i64 %idxprom80
  %80 = load i32, ptr %arrayidx81, align 4
  %idxprom82 = sext i32 %80 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %77, i64 %idxprom82
  %81 = load i32, ptr %arrayidx83, align 4
  %82 = load ptr, ptr %fit_value, align 8
  %83 = load ptr, ptr %look, align 8
  %hineighbor84 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %83, i32 0, i32 3
  %84 = load i32, ptr %i, align 4
  %sub85 = sub nsw i32 %84, 2
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds [63 x i32], ptr %hineighbor84, i64 0, i64 %idxprom86
  %85 = load i32, ptr %arrayidx87, align 4
  %idxprom88 = sext i32 %85 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %82, i64 %idxprom88
  %86 = load i32, ptr %arrayidx89, align 4
  %87 = load ptr, ptr %info, align 8
  %postlist90 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %87, i32 0, i32 7
  %88 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %88 to i64
  %arrayidx92 = getelementptr inbounds [65 x i32], ptr %postlist90, i64 0, i64 %idxprom91
  %89 = load i32, ptr %arrayidx92, align 4
  %call93 = call i32 @render_point(i32 noundef %71, i32 noundef %76, i32 noundef %81, i32 noundef %86, i32 noundef %89)
  store i32 %call93, ptr %predicted, align 4
  %90 = load ptr, ptr %look, align 8
  %quant_q94 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %90, i32 0, i32 7
  %91 = load i32, ptr %quant_q94, align 4
  %92 = load i32, ptr %predicted, align 4
  %sub95 = sub nsw i32 %91, %92
  store i32 %sub95, ptr %hiroom, align 4
  %93 = load i32, ptr %predicted, align 4
  store i32 %93, ptr %loroom, align 4
  %94 = load i32, ptr %hiroom, align 4
  %95 = load i32, ptr %loroom, align 4
  %cmp96 = icmp slt i32 %94, %95
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body66
  %96 = load i32, ptr %hiroom, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body66
  %97 = load i32, ptr %loroom, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %96, %cond.true ], [ %97, %cond.false ]
  %shl98 = shl i32 %cond, 1
  store i32 %shl98, ptr %room, align 4
  %98 = load ptr, ptr %fit_value, align 8
  %99 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %99 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %98, i64 %idxprom99
  %100 = load i32, ptr %arrayidx100, align 4
  store i32 %100, ptr %val, align 4
  %101 = load i32, ptr %val, align 4
  %tobool101 = icmp ne i32 %101, 0
  br i1 %tobool101, label %if.then102, label %if.else142

if.then102:                                       ; preds = %cond.end
  %102 = load i32, ptr %val, align 4
  %103 = load i32, ptr %room, align 4
  %cmp103 = icmp sge i32 %102, %103
  br i1 %cmp103, label %if.then105, label %if.else114

if.then105:                                       ; preds = %if.then102
  %104 = load i32, ptr %hiroom, align 4
  %105 = load i32, ptr %loroom, align 4
  %cmp106 = icmp sgt i32 %104, %105
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.then105
  %106 = load i32, ptr %val, align 4
  %107 = load i32, ptr %loroom, align 4
  %sub109 = sub nsw i32 %106, %107
  store i32 %sub109, ptr %val, align 4
  br label %if.end113

if.else110:                                       ; preds = %if.then105
  %108 = load i32, ptr %val, align 4
  %109 = load i32, ptr %hiroom, align 4
  %sub111 = sub nsw i32 %108, %109
  %sub112 = sub nsw i32 -1, %sub111
  store i32 %sub112, ptr %val, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.then108
  br label %if.end124

if.else114:                                       ; preds = %if.then102
  %110 = load i32, ptr %val, align 4
  %and115 = and i32 %110, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.else121

if.then117:                                       ; preds = %if.else114
  %111 = load i32, ptr %val, align 4
  %add118 = add nsw i32 %111, 1
  %shr119 = ashr i32 %add118, 1
  %sub120 = sub nsw i32 0, %shr119
  store i32 %sub120, ptr %val, align 4
  br label %if.end123

if.else121:                                       ; preds = %if.else114
  %112 = load i32, ptr %val, align 4
  %shr122 = ashr i32 %112, 1
  store i32 %shr122, ptr %val, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then117
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end113
  %113 = load i32, ptr %val, align 4
  %114 = load i32, ptr %predicted, align 4
  %add125 = add nsw i32 %113, %114
  %115 = load ptr, ptr %fit_value, align 8
  %116 = load i32, ptr %i, align 4
  %idxprom126 = sext i32 %116 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %115, i64 %idxprom126
  store i32 %add125, ptr %arrayidx127, align 4
  %117 = load ptr, ptr %fit_value, align 8
  %118 = load ptr, ptr %look, align 8
  %loneighbor128 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %118, i32 0, i32 4
  %119 = load i32, ptr %i, align 4
  %sub129 = sub nsw i32 %119, 2
  %idxprom130 = sext i32 %sub129 to i64
  %arrayidx131 = getelementptr inbounds [63 x i32], ptr %loneighbor128, i64 0, i64 %idxprom130
  %120 = load i32, ptr %arrayidx131, align 4
  %idxprom132 = sext i32 %120 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %117, i64 %idxprom132
  %121 = load i32, ptr %arrayidx133, align 4
  %and134 = and i32 %121, 32767
  store i32 %and134, ptr %arrayidx133, align 4
  %122 = load ptr, ptr %fit_value, align 8
  %123 = load ptr, ptr %look, align 8
  %hineighbor135 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %123, i32 0, i32 3
  %124 = load i32, ptr %i, align 4
  %sub136 = sub nsw i32 %124, 2
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [63 x i32], ptr %hineighbor135, i64 0, i64 %idxprom137
  %125 = load i32, ptr %arrayidx138, align 4
  %idxprom139 = sext i32 %125 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %122, i64 %idxprom139
  %126 = load i32, ptr %arrayidx140, align 4
  %and141 = and i32 %126, 32767
  store i32 %and141, ptr %arrayidx140, align 4
  br label %if.end145

if.else142:                                       ; preds = %cond.end
  %127 = load i32, ptr %predicted, align 4
  %or = or i32 %127, 32768
  %128 = load ptr, ptr %fit_value, align 8
  %129 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %129 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %128, i64 %idxprom143
  store i32 %or, ptr %arrayidx144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.end124
  br label %for.inc146

for.inc146:                                       ; preds = %if.end145
  %130 = load i32, ptr %i, align 4
  %inc147 = add nsw i32 %130, 1
  store i32 %inc147, ptr %i, align 4
  br label %for.cond62, !llvm.loop !9

for.end148:                                       ; preds = %for.cond62
  %131 = load ptr, ptr %fit_value, align 8
  store ptr %131, ptr %retval, align 8
  br label %return

if.end149:                                        ; preds = %entry
  br label %eop

eop:                                              ; preds = %if.end149, %if.then52, %if.then29
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %eop, %for.end148
  %132 = load ptr, ptr %retval, align 8
  ret ptr %132
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
