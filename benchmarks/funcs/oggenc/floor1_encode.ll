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
%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@floor1_encode.seq = external hidden global i64, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_encode(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @render_point(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @floor1_encode(ptr noundef %vb, ptr noundef %look, ptr noundef %post, ptr noundef %ilogmask) #1 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %look.addr = alloca ptr, align 8
  %post.addr = alloca ptr, align 8
  %ilogmask.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %info = alloca ptr, align 8
  %posts = alloca i64, align 8
  %ci = alloca ptr, align 8
  %out = alloca [65 x i32], align 16
  %sbooks = alloca ptr, align 8
  %books = alloca ptr, align 8
  %val = alloca i32, align 4
  %ln = alloca i32, align 4
  %hn = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %predicted = alloca i32, align 4
  %headroom = alloca i32, align 4
  %val48 = alloca i32, align 4
  %class = alloca i32, align 4
  %cdim = alloca i32, align 4
  %csubbits = alloca i32, align 4
  %csub = alloca i32, align 4
  %bookas = alloca [8 x i32], align 16
  %cval = alloca i32, align 4
  %cshift = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %maxval = alloca [8 x i32], align 16
  %booknum = alloca i32, align 4
  %val148 = alloca i32, align 4
  %book = alloca i32, align 4
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %current = alloca i32, align 4
  %hy = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %look, ptr %look.addr, align 8
  store ptr %post, ptr %post.addr, align 8
  store ptr %ilogmask, ptr %ilogmask.addr, align 8
  %0 = load ptr, ptr %look.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %vi, align 8
  store ptr %1, ptr %info, align 8
  %2 = load ptr, ptr %look.addr, align 8
  %posts1 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %posts1, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %posts, align 8
  %4 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %vd, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %vi2, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %codec_setup, align 8
  store ptr %7, ptr %ci, align 8
  %8 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 14
  %arraydecay = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 0
  store ptr %arraydecay, ptr %sbooks, align 8
  %9 = load ptr, ptr %ci, align 8
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 15
  %10 = load ptr, ptr %fullbooks, align 8
  store ptr %10, ptr %books, align 8
  %11 = load ptr, ptr %post.addr, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.else261

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i64, ptr %i, align 8
  %13 = load i64, ptr %posts, align 8
  %cmp = icmp slt i64 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %post.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 %15
  %16 = load i32, ptr %arrayidx, align 4
  %and = and i32 %16, 32767
  store i32 %and, ptr %val, align 4
  %17 = load ptr, ptr %info, align 8
  %mult = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %mult, align 4
  switch i32 %18, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  %19 = load i32, ptr %val, align 4
  %shr = ashr i32 %19, 2
  store i32 %shr, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %20 = load i32, ptr %val, align 4
  %shr5 = ashr i32 %20, 3
  store i32 %shr5, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %21 = load i32, ptr %val, align 4
  %div = sdiv i32 %21, 12
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  %22 = load i32, ptr %val, align 4
  %shr8 = ashr i32 %22, 4
  store i32 %shr8, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb, %for.body
  %23 = load i32, ptr %val, align 4
  %24 = load ptr, ptr %post.addr, align 8
  %25 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %24, i64 %25
  %26 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %26, 32768
  %or = or i32 %23, %and10
  %27 = load ptr, ptr %post.addr, align 8
  %28 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 %28
  store i32 %or, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %29 = load i64, ptr %i, align 8
  %inc = add nsw i64 %29, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %post.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 0
  %31 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 0
  store i32 %31, ptr %arrayidx13, align 16
  %32 = load ptr, ptr %post.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %32, i64 1
  %33 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 1
  store i32 %33, ptr %arrayidx15, align 4
  store i64 2, ptr %i, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc78, %for.end
  %34 = load i64, ptr %i, align 8
  %35 = load i64, ptr %posts, align 8
  %cmp17 = icmp slt i64 %34, %35
  br i1 %cmp17, label %for.body19, label %for.end80

for.body19:                                       ; preds = %for.cond16
  %36 = load ptr, ptr %look.addr, align 8
  %loneighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %36, i32 0, i32 4
  %37 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %37, 2
  %arrayidx20 = getelementptr inbounds [63 x i32], ptr %loneighbor, i64 0, i64 %sub
  %38 = load i32, ptr %arrayidx20, align 4
  store i32 %38, ptr %ln, align 4
  %39 = load ptr, ptr %look.addr, align 8
  %hineighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %39, i32 0, i32 3
  %40 = load i64, ptr %i, align 8
  %sub21 = sub nsw i64 %40, 2
  %arrayidx22 = getelementptr inbounds [63 x i32], ptr %hineighbor, i64 0, i64 %sub21
  %41 = load i32, ptr %arrayidx22, align 4
  store i32 %41, ptr %hn, align 4
  %42 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %42, i32 0, i32 7
  %43 = load i32, ptr %ln, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx23 = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 %idxprom
  %44 = load i32, ptr %arrayidx23, align 4
  store i32 %44, ptr %x0, align 4
  %45 = load ptr, ptr %info, align 8
  %postlist24 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %45, i32 0, i32 7
  %46 = load i32, ptr %hn, align 4
  %idxprom25 = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds [65 x i32], ptr %postlist24, i64 0, i64 %idxprom25
  %47 = load i32, ptr %arrayidx26, align 4
  store i32 %47, ptr %x1, align 4
  %48 = load ptr, ptr %post.addr, align 8
  %49 = load i32, ptr %ln, align 4
  %idxprom27 = sext i32 %49 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %48, i64 %idxprom27
  %50 = load i32, ptr %arrayidx28, align 4
  store i32 %50, ptr %y0, align 4
  %51 = load ptr, ptr %post.addr, align 8
  %52 = load i32, ptr %hn, align 4
  %idxprom29 = sext i32 %52 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %51, i64 %idxprom29
  %53 = load i32, ptr %arrayidx30, align 4
  store i32 %53, ptr %y1, align 4
  %54 = load i32, ptr %x0, align 4
  %55 = load i32, ptr %x1, align 4
  %56 = load i32, ptr %y0, align 4
  %57 = load i32, ptr %y1, align 4
  %58 = load ptr, ptr %info, align 8
  %postlist31 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %58, i32 0, i32 7
  %59 = load i64, ptr %i, align 8
  %arrayidx32 = getelementptr inbounds [65 x i32], ptr %postlist31, i64 0, i64 %59
  %60 = load i32, ptr %arrayidx32, align 4
  %call = call i32 @render_point(i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %60)
  store i32 %call, ptr %predicted, align 4
  %61 = load ptr, ptr %post.addr, align 8
  %62 = load i64, ptr %i, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %61, i64 %62
  %63 = load i32, ptr %arrayidx33, align 4
  %and34 = and i32 %63, 32768
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body19
  %64 = load i32, ptr %predicted, align 4
  %65 = load ptr, ptr %post.addr, align 8
  %66 = load i64, ptr %i, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %65, i64 %66
  %67 = load i32, ptr %arrayidx36, align 4
  %cmp37 = icmp eq i32 %64, %67
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %lor.lhs.false, %for.body19
  %68 = load i32, ptr %predicted, align 4
  %or40 = or i32 %68, 32768
  %69 = load ptr, ptr %post.addr, align 8
  %70 = load i64, ptr %i, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %69, i64 %70
  store i32 %or40, ptr %arrayidx41, align 4
  %71 = load i64, ptr %i, align 8
  %arrayidx42 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 %71
  store i32 0, ptr %arrayidx42, align 4
  br label %if.end77

if.else:                                          ; preds = %lor.lhs.false
  %72 = load ptr, ptr %look.addr, align 8
  %quant_q = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %72, i32 0, i32 7
  %73 = load i32, ptr %quant_q, align 4
  %74 = load i32, ptr %predicted, align 4
  %sub43 = sub nsw i32 %73, %74
  %75 = load i32, ptr %predicted, align 4
  %cmp44 = icmp slt i32 %sub43, %75
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %76 = load ptr, ptr %look.addr, align 8
  %quant_q46 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %76, i32 0, i32 7
  %77 = load i32, ptr %quant_q46, align 4
  %78 = load i32, ptr %predicted, align 4
  %sub47 = sub nsw i32 %77, %78
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %79 = load i32, ptr %predicted, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub47, %cond.true ], [ %79, %cond.false ]
  store i32 %cond, ptr %headroom, align 4
  %80 = load ptr, ptr %post.addr, align 8
  %81 = load i64, ptr %i, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %80, i64 %81
  %82 = load i32, ptr %arrayidx49, align 4
  %83 = load i32, ptr %predicted, align 4
  %sub50 = sub nsw i32 %82, %83
  store i32 %sub50, ptr %val48, align 4
  %84 = load i32, ptr %val48, align 4
  %cmp51 = icmp slt i32 %84, 0
  br i1 %cmp51, label %if.then53, label %if.else62

if.then53:                                        ; preds = %cond.end
  %85 = load i32, ptr %val48, align 4
  %86 = load i32, ptr %headroom, align 4
  %sub54 = sub nsw i32 0, %86
  %cmp55 = icmp slt i32 %85, %sub54
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.then53
  %87 = load i32, ptr %headroom, align 4
  %88 = load i32, ptr %val48, align 4
  %sub58 = sub nsw i32 %87, %88
  %sub59 = sub nsw i32 %sub58, 1
  store i32 %sub59, ptr %val48, align 4
  br label %if.end

if.else60:                                        ; preds = %if.then53
  %89 = load i32, ptr %val48, align 4
  %shl = shl i32 %89, 1
  %sub61 = sub nsw i32 -1, %shl
  store i32 %sub61, ptr %val48, align 4
  br label %if.end

if.end:                                           ; preds = %if.else60, %if.then57
  br label %if.end69

if.else62:                                        ; preds = %cond.end
  %90 = load i32, ptr %val48, align 4
  %91 = load i32, ptr %headroom, align 4
  %cmp63 = icmp sge i32 %90, %91
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else62
  %92 = load i32, ptr %val48, align 4
  %93 = load i32, ptr %headroom, align 4
  %add = add nsw i32 %92, %93
  store i32 %add, ptr %val48, align 4
  br label %if.end68

if.else66:                                        ; preds = %if.else62
  %94 = load i32, ptr %val48, align 4
  %shl67 = shl i32 %94, 1
  store i32 %shl67, ptr %val48, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then65
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %95 = load i32, ptr %val48, align 4
  %96 = load i64, ptr %i, align 8
  %arrayidx70 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 %96
  store i32 %95, ptr %arrayidx70, align 4
  %97 = load ptr, ptr %post.addr, align 8
  %98 = load i32, ptr %ln, align 4
  %idxprom71 = sext i32 %98 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %97, i64 %idxprom71
  %99 = load i32, ptr %arrayidx72, align 4
  %and73 = and i32 %99, 32767
  store i32 %and73, ptr %arrayidx72, align 4
  %100 = load ptr, ptr %post.addr, align 8
  %101 = load i32, ptr %hn, align 4
  %idxprom74 = sext i32 %101 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %100, i64 %idxprom74
  %102 = load i32, ptr %arrayidx75, align 4
  %and76 = and i32 %102, 32767
  store i32 %and76, ptr %arrayidx75, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end69, %if.then39
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %103 = load i64, ptr %i, align 8
  %inc79 = add nsw i64 %103, 1
  store i64 %inc79, ptr %i, align 8
  br label %for.cond16, !llvm.loop !8

for.end80:                                        ; preds = %for.cond16
  %104 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %104, i32 0, i32 1
  call void @oggpack_write(ptr noundef %opb, i64 noundef 1, i32 noundef 1)
  %105 = load ptr, ptr %look.addr, align 8
  %frames = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %105, i32 0, i32 11
  %106 = load i64, ptr %frames, align 8
  %inc81 = add nsw i64 %106, 1
  store i64 %inc81, ptr %frames, align 8
  %107 = load ptr, ptr %look.addr, align 8
  %quant_q82 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %107, i32 0, i32 7
  %108 = load i32, ptr %quant_q82, align 4
  %sub83 = sub nsw i32 %108, 1
  %call84 = call i32 @ilog(i32 noundef %sub83)
  %mul = mul nsw i32 %call84, 2
  %conv85 = sext i32 %mul to i64
  %109 = load ptr, ptr %look.addr, align 8
  %postbits = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %109, i32 0, i32 10
  %110 = load i64, ptr %postbits, align 8
  %add86 = add nsw i64 %110, %conv85
  store i64 %add86, ptr %postbits, align 8
  %111 = load ptr, ptr %vb.addr, align 8
  %opb87 = getelementptr inbounds nuw %struct.vorbis_block, ptr %111, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 0
  %112 = load i32, ptr %arrayidx88, align 16
  %conv89 = sext i32 %112 to i64
  %113 = load ptr, ptr %look.addr, align 8
  %quant_q90 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %113, i32 0, i32 7
  %114 = load i32, ptr %quant_q90, align 4
  %sub91 = sub nsw i32 %114, 1
  %call92 = call i32 @ilog(i32 noundef %sub91)
  call void @oggpack_write(ptr noundef %opb87, i64 noundef %conv89, i32 noundef %call92)
  %115 = load ptr, ptr %vb.addr, align 8
  %opb93 = getelementptr inbounds nuw %struct.vorbis_block, ptr %115, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 1
  %116 = load i32, ptr %arrayidx94, align 4
  %conv95 = sext i32 %116 to i64
  %117 = load ptr, ptr %look.addr, align 8
  %quant_q96 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %117, i32 0, i32 7
  %118 = load i32, ptr %quant_q96, align 4
  %sub97 = sub nsw i32 %118, 1
  %call98 = call i32 @ilog(i32 noundef %sub97)
  call void @oggpack_write(ptr noundef %opb93, i64 noundef %conv95, i32 noundef %call98)
  store i64 0, ptr %i, align 8
  store i64 2, ptr %j, align 8
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc219, %for.end80
  %119 = load i64, ptr %i, align 8
  %120 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %120, i32 0, i32 0
  %121 = load i32, ptr %partitions, align 4
  %conv100 = sext i32 %121 to i64
  %cmp101 = icmp slt i64 %119, %conv100
  br i1 %cmp101, label %for.body103, label %for.end221

for.body103:                                      ; preds = %for.cond99
  %122 = load ptr, ptr %info, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %122, i32 0, i32 1
  %123 = load i64, ptr %i, align 8
  %arrayidx104 = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %123
  %124 = load i32, ptr %arrayidx104, align 4
  store i32 %124, ptr %class, align 4
  %125 = load ptr, ptr %info, align 8
  %class_dim = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %125, i32 0, i32 2
  %126 = load i32, ptr %class, align 4
  %idxprom105 = sext i32 %126 to i64
  %arrayidx106 = getelementptr inbounds [16 x i32], ptr %class_dim, i64 0, i64 %idxprom105
  %127 = load i32, ptr %arrayidx106, align 4
  store i32 %127, ptr %cdim, align 4
  %128 = load ptr, ptr %info, align 8
  %class_subs = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %128, i32 0, i32 3
  %129 = load i32, ptr %class, align 4
  %idxprom107 = sext i32 %129 to i64
  %arrayidx108 = getelementptr inbounds [16 x i32], ptr %class_subs, i64 0, i64 %idxprom107
  %130 = load i32, ptr %arrayidx108, align 4
  store i32 %130, ptr %csubbits, align 4
  %131 = load i32, ptr %csubbits, align 4
  %shl109 = shl i32 1, %131
  store i32 %shl109, ptr %csub, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %bookas, i8 0, i64 32, i1 false)
  store i32 0, ptr %cval, align 4
  store i32 0, ptr %cshift, align 4
  %132 = load i32, ptr %csubbits, align 4
  %tobool110 = icmp ne i32 %132, 0
  br i1 %tobool110, label %if.then111, label %if.end177

if.then111:                                       ; preds = %for.body103
  store i32 0, ptr %k, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc137, %if.then111
  %133 = load i32, ptr %k, align 4
  %134 = load i32, ptr %csub, align 4
  %cmp113 = icmp slt i32 %133, %134
  br i1 %cmp113, label %for.body115, label %for.end139

for.body115:                                      ; preds = %for.cond112
  %135 = load ptr, ptr %info, align 8
  %class_subbook = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %135, i32 0, i32 5
  %136 = load i32, ptr %class, align 4
  %idxprom116 = sext i32 %136 to i64
  %arrayidx117 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook, i64 0, i64 %idxprom116
  %137 = load i32, ptr %k, align 4
  %idxprom118 = sext i32 %137 to i64
  %arrayidx119 = getelementptr inbounds [8 x i32], ptr %arrayidx117, i64 0, i64 %idxprom118
  %138 = load i32, ptr %arrayidx119, align 4
  store i32 %138, ptr %booknum, align 4
  %139 = load i32, ptr %booknum, align 4
  %cmp120 = icmp slt i32 %139, 0
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %for.body115
  %140 = load i32, ptr %k, align 4
  %idxprom123 = sext i32 %140 to i64
  %arrayidx124 = getelementptr inbounds [8 x i32], ptr %maxval, i64 0, i64 %idxprom123
  store i32 1, ptr %arrayidx124, align 4
  br label %if.end136

if.else125:                                       ; preds = %for.body115
  %141 = load ptr, ptr %sbooks, align 8
  %142 = load ptr, ptr %info, align 8
  %class_subbook126 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %142, i32 0, i32 5
  %143 = load i32, ptr %class, align 4
  %idxprom127 = sext i32 %143 to i64
  %arrayidx128 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook126, i64 0, i64 %idxprom127
  %144 = load i32, ptr %k, align 4
  %idxprom129 = sext i32 %144 to i64
  %arrayidx130 = getelementptr inbounds [8 x i32], ptr %arrayidx128, i64 0, i64 %idxprom129
  %145 = load i32, ptr %arrayidx130, align 4
  %idxprom131 = sext i32 %145 to i64
  %arrayidx132 = getelementptr inbounds ptr, ptr %141, i64 %idxprom131
  %146 = load ptr, ptr %arrayidx132, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %146, i32 0, i32 1
  %147 = load i64, ptr %entries, align 8
  %conv133 = trunc i64 %147 to i32
  %148 = load i32, ptr %k, align 4
  %idxprom134 = sext i32 %148 to i64
  %arrayidx135 = getelementptr inbounds [8 x i32], ptr %maxval, i64 0, i64 %idxprom134
  store i32 %conv133, ptr %arrayidx135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else125, %if.then122
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %149 = load i32, ptr %k, align 4
  %inc138 = add nsw i32 %149, 1
  store i32 %inc138, ptr %k, align 4
  br label %for.cond112, !llvm.loop !9

for.end139:                                       ; preds = %for.cond112
  store i32 0, ptr %k, align 4
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc168, %for.end139
  %150 = load i32, ptr %k, align 4
  %151 = load i32, ptr %cdim, align 4
  %cmp141 = icmp slt i32 %150, %151
  br i1 %cmp141, label %for.body143, label %for.end170

for.body143:                                      ; preds = %for.cond140
  store i32 0, ptr %l, align 4
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc160, %for.body143
  %152 = load i32, ptr %l, align 4
  %153 = load i32, ptr %csub, align 4
  %cmp145 = icmp slt i32 %152, %153
  br i1 %cmp145, label %for.body147, label %for.end162

for.body147:                                      ; preds = %for.cond144
  %154 = load i64, ptr %j, align 8
  %155 = load i32, ptr %k, align 4
  %conv149 = sext i32 %155 to i64
  %add150 = add nsw i64 %154, %conv149
  %arrayidx151 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 %add150
  %156 = load i32, ptr %arrayidx151, align 4
  store i32 %156, ptr %val148, align 4
  %157 = load i32, ptr %val148, align 4
  %158 = load i32, ptr %l, align 4
  %idxprom152 = sext i32 %158 to i64
  %arrayidx153 = getelementptr inbounds [8 x i32], ptr %maxval, i64 0, i64 %idxprom152
  %159 = load i32, ptr %arrayidx153, align 4
  %cmp154 = icmp slt i32 %157, %159
  br i1 %cmp154, label %if.then156, label %if.end159

if.then156:                                       ; preds = %for.body147
  %160 = load i32, ptr %l, align 4
  %161 = load i32, ptr %k, align 4
  %idxprom157 = sext i32 %161 to i64
  %arrayidx158 = getelementptr inbounds [8 x i32], ptr %bookas, i64 0, i64 %idxprom157
  store i32 %160, ptr %arrayidx158, align 4
  br label %for.end162

if.end159:                                        ; preds = %for.body147
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %162 = load i32, ptr %l, align 4
  %inc161 = add nsw i32 %162, 1
  store i32 %inc161, ptr %l, align 4
  br label %for.cond144, !llvm.loop !10

for.end162:                                       ; preds = %if.then156, %for.cond144
  %163 = load i32, ptr %k, align 4
  %idxprom163 = sext i32 %163 to i64
  %arrayidx164 = getelementptr inbounds [8 x i32], ptr %bookas, i64 0, i64 %idxprom163
  %164 = load i32, ptr %arrayidx164, align 4
  %165 = load i32, ptr %cshift, align 4
  %shl165 = shl i32 %164, %165
  %166 = load i32, ptr %cval, align 4
  %or166 = or i32 %166, %shl165
  store i32 %or166, ptr %cval, align 4
  %167 = load i32, ptr %csubbits, align 4
  %168 = load i32, ptr %cshift, align 4
  %add167 = add nsw i32 %168, %167
  store i32 %add167, ptr %cshift, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %for.end162
  %169 = load i32, ptr %k, align 4
  %inc169 = add nsw i32 %169, 1
  store i32 %inc169, ptr %k, align 4
  br label %for.cond140, !llvm.loop !11

for.end170:                                       ; preds = %for.cond140
  %170 = load ptr, ptr %books, align 8
  %171 = load ptr, ptr %info, align 8
  %class_book = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %171, i32 0, i32 4
  %172 = load i32, ptr %class, align 4
  %idxprom171 = sext i32 %172 to i64
  %arrayidx172 = getelementptr inbounds [16 x i32], ptr %class_book, i64 0, i64 %idxprom171
  %173 = load i32, ptr %arrayidx172, align 4
  %idx.ext = sext i32 %173 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %170, i64 %idx.ext
  %174 = load i32, ptr %cval, align 4
  %175 = load ptr, ptr %vb.addr, align 8
  %opb173 = getelementptr inbounds nuw %struct.vorbis_block, ptr %175, i32 0, i32 1
  %call174 = call i32 @vorbis_book_encode(ptr noundef %add.ptr, i32 noundef %174, ptr noundef %opb173)
  %conv175 = sext i32 %call174 to i64
  %176 = load ptr, ptr %look.addr, align 8
  %phrasebits = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %176, i32 0, i32 9
  %177 = load i64, ptr %phrasebits, align 8
  %add176 = add nsw i64 %177, %conv175
  store i64 %add176, ptr %phrasebits, align 8
  br label %if.end177

if.end177:                                        ; preds = %for.end170, %for.body103
  store i32 0, ptr %k, align 4
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc214, %if.end177
  %178 = load i32, ptr %k, align 4
  %179 = load i32, ptr %cdim, align 4
  %cmp179 = icmp slt i32 %178, %179
  br i1 %cmp179, label %for.body181, label %for.end216

for.body181:                                      ; preds = %for.cond178
  %180 = load ptr, ptr %info, align 8
  %class_subbook182 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %180, i32 0, i32 5
  %181 = load i32, ptr %class, align 4
  %idxprom183 = sext i32 %181 to i64
  %arrayidx184 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook182, i64 0, i64 %idxprom183
  %182 = load i32, ptr %k, align 4
  %idxprom185 = sext i32 %182 to i64
  %arrayidx186 = getelementptr inbounds [8 x i32], ptr %bookas, i64 0, i64 %idxprom185
  %183 = load i32, ptr %arrayidx186, align 4
  %idxprom187 = sext i32 %183 to i64
  %arrayidx188 = getelementptr inbounds [8 x i32], ptr %arrayidx184, i64 0, i64 %idxprom187
  %184 = load i32, ptr %arrayidx188, align 4
  store i32 %184, ptr %book, align 4
  %185 = load i32, ptr %book, align 4
  %cmp189 = icmp sge i32 %185, 0
  br i1 %cmp189, label %if.then191, label %if.end213

if.then191:                                       ; preds = %for.body181
  %186 = load i64, ptr %j, align 8
  %187 = load i32, ptr %k, align 4
  %conv192 = sext i32 %187 to i64
  %add193 = add nsw i64 %186, %conv192
  %arrayidx194 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 %add193
  %188 = load i32, ptr %arrayidx194, align 4
  %conv195 = sext i32 %188 to i64
  %189 = load ptr, ptr %books, align 8
  %190 = load i32, ptr %book, align 4
  %idx.ext196 = sext i32 %190 to i64
  %add.ptr197 = getelementptr inbounds %struct.codebook, ptr %189, i64 %idx.ext196
  %entries198 = getelementptr inbounds nuw %struct.codebook, ptr %add.ptr197, i32 0, i32 1
  %191 = load i64, ptr %entries198, align 8
  %cmp199 = icmp slt i64 %conv195, %191
  br i1 %cmp199, label %if.then201, label %if.end212

if.then201:                                       ; preds = %if.then191
  %192 = load ptr, ptr %books, align 8
  %193 = load i32, ptr %book, align 4
  %idx.ext202 = sext i32 %193 to i64
  %add.ptr203 = getelementptr inbounds %struct.codebook, ptr %192, i64 %idx.ext202
  %194 = load i64, ptr %j, align 8
  %195 = load i32, ptr %k, align 4
  %conv204 = sext i32 %195 to i64
  %add205 = add nsw i64 %194, %conv204
  %arrayidx206 = getelementptr inbounds [65 x i32], ptr %out, i64 0, i64 %add205
  %196 = load i32, ptr %arrayidx206, align 4
  %197 = load ptr, ptr %vb.addr, align 8
  %opb207 = getelementptr inbounds nuw %struct.vorbis_block, ptr %197, i32 0, i32 1
  %call208 = call i32 @vorbis_book_encode(ptr noundef %add.ptr203, i32 noundef %196, ptr noundef %opb207)
  %conv209 = sext i32 %call208 to i64
  %198 = load ptr, ptr %look.addr, align 8
  %postbits210 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %198, i32 0, i32 10
  %199 = load i64, ptr %postbits210, align 8
  %add211 = add nsw i64 %199, %conv209
  store i64 %add211, ptr %postbits210, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.then201, %if.then191
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %for.body181
  br label %for.inc214

for.inc214:                                       ; preds = %if.end213
  %200 = load i32, ptr %k, align 4
  %inc215 = add nsw i32 %200, 1
  store i32 %inc215, ptr %k, align 4
  br label %for.cond178, !llvm.loop !12

for.end216:                                       ; preds = %for.cond178
  %201 = load i32, ptr %cdim, align 4
  %conv217 = sext i32 %201 to i64
  %202 = load i64, ptr %j, align 8
  %add218 = add nsw i64 %202, %conv217
  store i64 %add218, ptr %j, align 8
  br label %for.inc219

for.inc219:                                       ; preds = %for.end216
  %203 = load i64, ptr %i, align 8
  %inc220 = add nsw i64 %203, 1
  store i64 %inc220, ptr %i, align 8
  br label %for.cond99, !llvm.loop !13

for.end221:                                       ; preds = %for.cond99
  store i32 0, ptr %hx, align 4
  store i32 0, ptr %lx, align 4
  %204 = load ptr, ptr %post.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %204, i64 0
  %205 = load i32, ptr %arrayidx222, align 4
  %206 = load ptr, ptr %info, align 8
  %mult223 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %206, i32 0, i32 6
  %207 = load i32, ptr %mult223, align 4
  %mul224 = mul nsw i32 %205, %207
  store i32 %mul224, ptr %ly, align 4
  store i64 1, ptr %j, align 8
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc246, %for.end221
  %208 = load i64, ptr %j, align 8
  %209 = load ptr, ptr %look.addr, align 8
  %posts226 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %209, i32 0, i32 5
  %210 = load i32, ptr %posts226, align 4
  %conv227 = sext i32 %210 to i64
  %cmp228 = icmp slt i64 %208, %conv227
  br i1 %cmp228, label %for.body230, label %for.end248

for.body230:                                      ; preds = %for.cond225
  %211 = load ptr, ptr %look.addr, align 8
  %forward_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %211, i32 0, i32 1
  %212 = load i64, ptr %j, align 8
  %arrayidx231 = getelementptr inbounds [65 x i32], ptr %forward_index, i64 0, i64 %212
  %213 = load i32, ptr %arrayidx231, align 4
  store i32 %213, ptr %current, align 4
  %214 = load ptr, ptr %post.addr, align 8
  %215 = load i32, ptr %current, align 4
  %idxprom232 = sext i32 %215 to i64
  %arrayidx233 = getelementptr inbounds i32, ptr %214, i64 %idxprom232
  %216 = load i32, ptr %arrayidx233, align 4
  %and234 = and i32 %216, 32767
  store i32 %and234, ptr %hy, align 4
  %217 = load i32, ptr %hy, align 4
  %218 = load ptr, ptr %post.addr, align 8
  %219 = load i32, ptr %current, align 4
  %idxprom235 = sext i32 %219 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %218, i64 %idxprom235
  %220 = load i32, ptr %arrayidx236, align 4
  %cmp237 = icmp eq i32 %217, %220
  br i1 %cmp237, label %if.then239, label %if.end245

if.then239:                                       ; preds = %for.body230
  %221 = load ptr, ptr %info, align 8
  %mult240 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %221, i32 0, i32 6
  %222 = load i32, ptr %mult240, align 4
  %223 = load i32, ptr %hy, align 4
  %mul241 = mul nsw i32 %223, %222
  store i32 %mul241, ptr %hy, align 4
  %224 = load ptr, ptr %info, align 8
  %postlist242 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %224, i32 0, i32 7
  %225 = load i32, ptr %current, align 4
  %idxprom243 = sext i32 %225 to i64
  %arrayidx244 = getelementptr inbounds [65 x i32], ptr %postlist242, i64 0, i64 %idxprom243
  %226 = load i32, ptr %arrayidx244, align 4
  store i32 %226, ptr %hx, align 4
  %227 = load i32, ptr %lx, align 4
  %228 = load i32, ptr %hx, align 4
  %229 = load i32, ptr %ly, align 4
  %230 = load i32, ptr %hy, align 4
  %231 = load ptr, ptr %ilogmask.addr, align 8
  call void @render_line0(i32 noundef %227, i32 noundef %228, i32 noundef %229, i32 noundef %230, ptr noundef %231)
  %232 = load i32, ptr %hx, align 4
  store i32 %232, ptr %lx, align 4
  %233 = load i32, ptr %hy, align 4
  store i32 %233, ptr %ly, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then239, %for.body230
  br label %for.inc246

for.inc246:                                       ; preds = %if.end245
  %234 = load i64, ptr %j, align 8
  %inc247 = add nsw i64 %234, 1
  store i64 %inc247, ptr %j, align 8
  br label %for.cond225, !llvm.loop !14

for.end248:                                       ; preds = %for.cond225
  %235 = load i32, ptr %hx, align 4
  %conv249 = sext i32 %235 to i64
  store i64 %conv249, ptr %j, align 8
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc257, %for.end248
  %236 = load i64, ptr %j, align 8
  %237 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %237, i32 0, i32 5
  %238 = load i32, ptr %pcmend, align 8
  %div251 = sdiv i32 %238, 2
  %conv252 = sext i32 %div251 to i64
  %cmp253 = icmp slt i64 %236, %conv252
  br i1 %cmp253, label %for.body255, label %for.end259

for.body255:                                      ; preds = %for.cond250
  %239 = load i32, ptr %ly, align 4
  %240 = load ptr, ptr %ilogmask.addr, align 8
  %241 = load i64, ptr %j, align 8
  %arrayidx256 = getelementptr inbounds i32, ptr %240, i64 %241
  store i32 %239, ptr %arrayidx256, align 4
  br label %for.inc257

for.inc257:                                       ; preds = %for.body255
  %242 = load i64, ptr %j, align 8
  %inc258 = add nsw i64 %242, 1
  store i64 %inc258, ptr %j, align 8
  br label %for.cond250, !llvm.loop !15

for.end259:                                       ; preds = %for.cond250
  %243 = load i64, ptr @floor1_encode.seq, align 8
  %inc260 = add nsw i64 %243, 1
  store i64 %inc260, ptr @floor1_encode.seq, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else261:                                       ; preds = %entry
  %244 = load ptr, ptr %vb.addr, align 8
  %opb262 = getelementptr inbounds nuw %struct.vorbis_block, ptr %244, i32 0, i32 1
  call void @oggpack_write(ptr noundef %opb262, i64 noundef 0, i32 noundef 1)
  %245 = load ptr, ptr %ilogmask.addr, align 8
  %246 = load ptr, ptr %vb.addr, align 8
  %pcmend263 = getelementptr inbounds nuw %struct.vorbis_block, ptr %246, i32 0, i32 5
  %247 = load i32, ptr %pcmend263, align 8
  %div264 = sdiv i32 %247, 2
  %conv265 = sext i32 %div264 to i64
  %mul266 = mul i64 %conv265, 4
  call void @llvm.memset.p0.i64(ptr align 4 %245, i8 0, i64 %mul266, i1 false)
  %248 = load i64, ptr @floor1_encode.seq, align 8
  %inc267 = add nsw i64 %248, 1
  store i64 %inc267, ptr @floor1_encode.seq, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else261, %for.end259
  %249 = load i32, ptr %retval, align 4
  ret i32 %249
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @render_line0(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
