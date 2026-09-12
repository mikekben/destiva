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
%struct.vorbis_residue_template = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }
%struct.static_bookblock = type { [12 x [3 x ptr]] }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_residue_setup(ptr noundef %vi, i32 noundef %number, i32 noundef %block, ptr noundef %res) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  %block.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca ptr, align 8
  %booklist = alloca i32, align 4
  %k = alloca i32, align 4
  %bookid = alloca i32, align 4
  %bookid139 = alloca i32, align 4
  %freq = alloca double, align 8
  %f = alloca ptr, align 8
  %nyq = alloca double, align 8
  %blocksize = alloca i64, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  store i32 %block, ptr %block.addr, align 4
  store ptr %res, ptr %res.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %call = call noalias ptr @malloc(i64 noundef 1824) #3
  %2 = load ptr, ptr %ci, align 8
  %residue_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %number.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %residue_param, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  store ptr %call, ptr %r, align 8
  %4 = load ptr, ptr %r, align 8
  %5 = load ptr, ptr %res.addr, align 8
  %res1 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %res1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %6, i64 1824, i1 false)
  %7 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %residues, align 4
  %9 = load i32, ptr %number.addr, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %number.addr, align 4
  %add = add nsw i32 %10, 1
  %11 = load ptr, ptr %ci, align 8
  %residues2 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 4
  store i32 %add, ptr %residues2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %block.addr, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %idxprom3
  %14 = load i64, ptr %arrayidx4, align 8
  switch i64 %14, label %sw.default [
    i64 64, label %sw.bb
    i64 128, label %sw.bb
    i64 256, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %15 = load ptr, ptr %r, align 8
  %grouping = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %15, i32 0, i32 2
  store i32 16, ptr %grouping, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %16 = load ptr, ptr %r, align 8
  %grouping5 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %16, i32 0, i32 2
  store i32 32, ptr %grouping5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %17 = load ptr, ptr %res.addr, align 8
  %res_type = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %res_type, align 8
  %19 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %19, i32 0, i32 12
  %20 = load i32, ptr %number.addr, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom6
  store i32 %18, ptr %arrayidx7, align 4
  %21 = load ptr, ptr %ci, align 8
  %blocksizes8 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %block.addr, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %blocksizes8, i64 0, i64 %idxprom9
  %23 = load i64, ptr %arrayidx10, align 8
  %shr = ashr i64 %23, 1
  %24 = load ptr, ptr %r, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %24, i32 0, i32 1
  store i64 %shr, ptr %end, align 8
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %n, align 4
  %25 = load ptr, ptr %res.addr, align 8
  %res_type11 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %res_type11, align 8
  %cmp12 = icmp eq i32 %26, 2
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %sw.epilog
  %27 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %channels, align 4
  %conv15 = sext i32 %28 to i64
  %29 = load ptr, ptr %r, align 8
  %end16 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %end16, align 8
  %mul = mul nsw i64 %30, %conv15
  store i64 %mul, ptr %end16, align 8
  %conv17 = trunc i64 %mul to i32
  store i32 %conv17, ptr %n, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %sw.epilog
  store i32 0, ptr %booklist, align 4
  %31 = load ptr, ptr %ci, align 8
  %hi = getelementptr inbounds nuw %struct.codec_setup_info, ptr %31, i32 0, i32 19
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi, i32 0, i32 6
  %32 = load i32, ptr %managed, align 8
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end18
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %if.then19
  %33 = load i32, ptr %i, align 4
  %34 = load ptr, ptr %r, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %partitions, align 4
  %cmp20 = icmp slt i32 %33, %35
  br i1 %cmp20, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %36 = load i32, ptr %k, align 4
  %cmp23 = icmp slt i32 %36, 3
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %37 = load ptr, ptr %res.addr, align 8
  %books_base_managed = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %books_base_managed, align 8
  %books = getelementptr inbounds nuw %struct.static_bookblock, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %39 to i64
  %arrayidx27 = getelementptr inbounds [12 x [3 x ptr]], ptr %books, i64 0, i64 %idxprom26
  %40 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds [3 x ptr], ptr %arrayidx27, i64 0, i64 %idxprom28
  %41 = load ptr, ptr %arrayidx29, align 8
  %tobool30 = icmp ne ptr %41, null
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %for.body25
  %42 = load i32, ptr %k, align 4
  %shl = shl i32 1, %42
  %43 = load ptr, ptr %r, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %44 to i64
  %arrayidx33 = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom32
  %45 = load i32, ptr %arrayidx33, align 4
  %or = or i32 %45, %shl
  store i32 %or, ptr %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.body25
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %46 = load i32, ptr %k, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond22, !llvm.loop !6

for.end:                                          ; preds = %for.cond22
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %47 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %47, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end37:                                        ; preds = %for.cond
  %48 = load ptr, ptr %ci, align 8
  %49 = load ptr, ptr %res.addr, align 8
  %book_aux_managed = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %book_aux_managed, align 8
  %call38 = call i32 @book_dup_or_new(ptr noundef %48, ptr noundef %50)
  %51 = load ptr, ptr %r, align 8
  %groupbook = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %51, i32 0, i32 4
  store i32 %call38, ptr %groupbook, align 8
  %52 = load ptr, ptr %res.addr, align 8
  %book_aux_managed39 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %book_aux_managed39, align 8
  %54 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %54, i32 0, i32 14
  %55 = load ptr, ptr %r, align 8
  %groupbook40 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %55, i32 0, i32 4
  %56 = load i32, ptr %groupbook40, align 8
  %idxprom41 = sext i32 %56 to i64
  %arrayidx42 = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom41
  store ptr %53, ptr %arrayidx42, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc84, %for.end37
  %57 = load i32, ptr %i, align 4
  %58 = load ptr, ptr %r, align 8
  %partitions44 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %partitions44, align 4
  %cmp45 = icmp slt i32 %57, %59
  br i1 %cmp45, label %for.body47, label %for.end86

for.body47:                                       ; preds = %for.cond43
  store i32 0, ptr %k, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc81, %for.body47
  %60 = load i32, ptr %k, align 4
  %cmp49 = icmp slt i32 %60, 3
  br i1 %cmp49, label %for.body51, label %for.end83

for.body51:                                       ; preds = %for.cond48
  %61 = load ptr, ptr %res.addr, align 8
  %books_base_managed52 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %61, i32 0, i32 6
  %62 = load ptr, ptr %books_base_managed52, align 8
  %books53 = getelementptr inbounds nuw %struct.static_bookblock, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds [12 x [3 x ptr]], ptr %books53, i64 0, i64 %idxprom54
  %64 = load i32, ptr %k, align 4
  %idxprom56 = sext i32 %64 to i64
  %arrayidx57 = getelementptr inbounds [3 x ptr], ptr %arrayidx55, i64 0, i64 %idxprom56
  %65 = load ptr, ptr %arrayidx57, align 8
  %tobool58 = icmp ne ptr %65, null
  br i1 %tobool58, label %if.then59, label %if.end80

if.then59:                                        ; preds = %for.body51
  %66 = load ptr, ptr %ci, align 8
  %67 = load ptr, ptr %res.addr, align 8
  %books_base_managed60 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %67, i32 0, i32 6
  %68 = load ptr, ptr %books_base_managed60, align 8
  %books61 = getelementptr inbounds nuw %struct.static_bookblock, ptr %68, i32 0, i32 0
  %69 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %69 to i64
  %arrayidx63 = getelementptr inbounds [12 x [3 x ptr]], ptr %books61, i64 0, i64 %idxprom62
  %70 = load i32, ptr %k, align 4
  %idxprom64 = sext i32 %70 to i64
  %arrayidx65 = getelementptr inbounds [3 x ptr], ptr %arrayidx63, i64 0, i64 %idxprom64
  %71 = load ptr, ptr %arrayidx65, align 8
  %call66 = call i32 @book_dup_or_new(ptr noundef %66, ptr noundef %71)
  store i32 %call66, ptr %bookid, align 4
  %72 = load i32, ptr %bookid, align 4
  %73 = load ptr, ptr %r, align 8
  %booklist67 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %booklist, align 4
  %inc68 = add nsw i32 %74, 1
  store i32 %inc68, ptr %booklist, align 4
  %idxprom69 = sext i32 %74 to i64
  %arrayidx70 = getelementptr inbounds [256 x i32], ptr %booklist67, i64 0, i64 %idxprom69
  store i32 %72, ptr %arrayidx70, align 4
  %75 = load ptr, ptr %res.addr, align 8
  %books_base_managed71 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %75, i32 0, i32 6
  %76 = load ptr, ptr %books_base_managed71, align 8
  %books72 = getelementptr inbounds nuw %struct.static_bookblock, ptr %76, i32 0, i32 0
  %77 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %77 to i64
  %arrayidx74 = getelementptr inbounds [12 x [3 x ptr]], ptr %books72, i64 0, i64 %idxprom73
  %78 = load i32, ptr %k, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds [3 x ptr], ptr %arrayidx74, i64 0, i64 %idxprom75
  %79 = load ptr, ptr %arrayidx76, align 8
  %80 = load ptr, ptr %ci, align 8
  %book_param77 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %80, i32 0, i32 14
  %81 = load i32, ptr %bookid, align 4
  %idxprom78 = sext i32 %81 to i64
  %arrayidx79 = getelementptr inbounds [256 x ptr], ptr %book_param77, i64 0, i64 %idxprom78
  store ptr %79, ptr %arrayidx79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then59, %for.body51
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %82 = load i32, ptr %k, align 4
  %inc82 = add nsw i32 %82, 1
  store i32 %inc82, ptr %k, align 4
  br label %for.cond48, !llvm.loop !9

for.end83:                                        ; preds = %for.cond48
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %83 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %83, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond43, !llvm.loop !10

for.end86:                                        ; preds = %for.cond43
  br label %if.end167

if.else:                                          ; preds = %if.end18
  store i32 0, ptr %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc112, %if.else
  %84 = load i32, ptr %i, align 4
  %85 = load ptr, ptr %r, align 8
  %partitions88 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %partitions88, align 4
  %cmp89 = icmp slt i32 %84, %86
  br i1 %cmp89, label %for.body91, label %for.end114

for.body91:                                       ; preds = %for.cond87
  store i32 0, ptr %k, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc109, %for.body91
  %87 = load i32, ptr %k, align 4
  %cmp93 = icmp slt i32 %87, 3
  br i1 %cmp93, label %for.body95, label %for.end111

for.body95:                                       ; preds = %for.cond92
  %88 = load ptr, ptr %res.addr, align 8
  %books_base = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %88, i32 0, i32 5
  %89 = load ptr, ptr %books_base, align 8
  %books96 = getelementptr inbounds nuw %struct.static_bookblock, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %i, align 4
  %idxprom97 = sext i32 %90 to i64
  %arrayidx98 = getelementptr inbounds [12 x [3 x ptr]], ptr %books96, i64 0, i64 %idxprom97
  %91 = load i32, ptr %k, align 4
  %idxprom99 = sext i32 %91 to i64
  %arrayidx100 = getelementptr inbounds [3 x ptr], ptr %arrayidx98, i64 0, i64 %idxprom99
  %92 = load ptr, ptr %arrayidx100, align 8
  %tobool101 = icmp ne ptr %92, null
  br i1 %tobool101, label %if.then102, label %if.end108

if.then102:                                       ; preds = %for.body95
  %93 = load i32, ptr %k, align 4
  %shl103 = shl i32 1, %93
  %94 = load ptr, ptr %r, align 8
  %secondstages104 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %94, i32 0, i32 5
  %95 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %95 to i64
  %arrayidx106 = getelementptr inbounds [64 x i32], ptr %secondstages104, i64 0, i64 %idxprom105
  %96 = load i32, ptr %arrayidx106, align 4
  %or107 = or i32 %96, %shl103
  store i32 %or107, ptr %arrayidx106, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %for.body95
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %97 = load i32, ptr %k, align 4
  %inc110 = add nsw i32 %97, 1
  store i32 %inc110, ptr %k, align 4
  br label %for.cond92, !llvm.loop !11

for.end111:                                       ; preds = %for.cond92
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %98 = load i32, ptr %i, align 4
  %inc113 = add nsw i32 %98, 1
  store i32 %inc113, ptr %i, align 4
  br label %for.cond87, !llvm.loop !12

for.end114:                                       ; preds = %for.cond87
  %99 = load ptr, ptr %ci, align 8
  %100 = load ptr, ptr %res.addr, align 8
  %book_aux = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %100, i32 0, i32 3
  %101 = load ptr, ptr %book_aux, align 8
  %call115 = call i32 @book_dup_or_new(ptr noundef %99, ptr noundef %101)
  %102 = load ptr, ptr %r, align 8
  %groupbook116 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %102, i32 0, i32 4
  store i32 %call115, ptr %groupbook116, align 8
  %103 = load ptr, ptr %res.addr, align 8
  %book_aux117 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %103, i32 0, i32 3
  %104 = load ptr, ptr %book_aux117, align 8
  %105 = load ptr, ptr %ci, align 8
  %book_param118 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %105, i32 0, i32 14
  %106 = load ptr, ptr %r, align 8
  %groupbook119 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %106, i32 0, i32 4
  %107 = load i32, ptr %groupbook119, align 8
  %idxprom120 = sext i32 %107 to i64
  %arrayidx121 = getelementptr inbounds [256 x ptr], ptr %book_param118, i64 0, i64 %idxprom120
  store ptr %104, ptr %arrayidx121, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc164, %for.end114
  %108 = load i32, ptr %i, align 4
  %109 = load ptr, ptr %r, align 8
  %partitions123 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %109, i32 0, i32 3
  %110 = load i32, ptr %partitions123, align 4
  %cmp124 = icmp slt i32 %108, %110
  br i1 %cmp124, label %for.body126, label %for.end166

for.body126:                                      ; preds = %for.cond122
  store i32 0, ptr %k, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc161, %for.body126
  %111 = load i32, ptr %k, align 4
  %cmp128 = icmp slt i32 %111, 3
  br i1 %cmp128, label %for.body130, label %for.end163

for.body130:                                      ; preds = %for.cond127
  %112 = load ptr, ptr %res.addr, align 8
  %books_base131 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %112, i32 0, i32 5
  %113 = load ptr, ptr %books_base131, align 8
  %books132 = getelementptr inbounds nuw %struct.static_bookblock, ptr %113, i32 0, i32 0
  %114 = load i32, ptr %i, align 4
  %idxprom133 = sext i32 %114 to i64
  %arrayidx134 = getelementptr inbounds [12 x [3 x ptr]], ptr %books132, i64 0, i64 %idxprom133
  %115 = load i32, ptr %k, align 4
  %idxprom135 = sext i32 %115 to i64
  %arrayidx136 = getelementptr inbounds [3 x ptr], ptr %arrayidx134, i64 0, i64 %idxprom135
  %116 = load ptr, ptr %arrayidx136, align 8
  %tobool137 = icmp ne ptr %116, null
  br i1 %tobool137, label %if.then138, label %if.end160

if.then138:                                       ; preds = %for.body130
  %117 = load ptr, ptr %ci, align 8
  %118 = load ptr, ptr %res.addr, align 8
  %books_base140 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %118, i32 0, i32 5
  %119 = load ptr, ptr %books_base140, align 8
  %books141 = getelementptr inbounds nuw %struct.static_bookblock, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %120 to i64
  %arrayidx143 = getelementptr inbounds [12 x [3 x ptr]], ptr %books141, i64 0, i64 %idxprom142
  %121 = load i32, ptr %k, align 4
  %idxprom144 = sext i32 %121 to i64
  %arrayidx145 = getelementptr inbounds [3 x ptr], ptr %arrayidx143, i64 0, i64 %idxprom144
  %122 = load ptr, ptr %arrayidx145, align 8
  %call146 = call i32 @book_dup_or_new(ptr noundef %117, ptr noundef %122)
  store i32 %call146, ptr %bookid139, align 4
  %123 = load i32, ptr %bookid139, align 4
  %124 = load ptr, ptr %r, align 8
  %booklist147 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %124, i32 0, i32 6
  %125 = load i32, ptr %booklist, align 4
  %inc148 = add nsw i32 %125, 1
  store i32 %inc148, ptr %booklist, align 4
  %idxprom149 = sext i32 %125 to i64
  %arrayidx150 = getelementptr inbounds [256 x i32], ptr %booklist147, i64 0, i64 %idxprom149
  store i32 %123, ptr %arrayidx150, align 4
  %126 = load ptr, ptr %res.addr, align 8
  %books_base151 = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %126, i32 0, i32 5
  %127 = load ptr, ptr %books_base151, align 8
  %books152 = getelementptr inbounds nuw %struct.static_bookblock, ptr %127, i32 0, i32 0
  %128 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %128 to i64
  %arrayidx154 = getelementptr inbounds [12 x [3 x ptr]], ptr %books152, i64 0, i64 %idxprom153
  %129 = load i32, ptr %k, align 4
  %idxprom155 = sext i32 %129 to i64
  %arrayidx156 = getelementptr inbounds [3 x ptr], ptr %arrayidx154, i64 0, i64 %idxprom155
  %130 = load ptr, ptr %arrayidx156, align 8
  %131 = load ptr, ptr %ci, align 8
  %book_param157 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %131, i32 0, i32 14
  %132 = load i32, ptr %bookid139, align 4
  %idxprom158 = sext i32 %132 to i64
  %arrayidx159 = getelementptr inbounds [256 x ptr], ptr %book_param157, i64 0, i64 %idxprom158
  store ptr %130, ptr %arrayidx159, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then138, %for.body130
  br label %for.inc161

for.inc161:                                       ; preds = %if.end160
  %133 = load i32, ptr %k, align 4
  %inc162 = add nsw i32 %133, 1
  store i32 %inc162, ptr %k, align 4
  br label %for.cond127, !llvm.loop !13

for.end163:                                       ; preds = %for.cond127
  br label %for.inc164

for.inc164:                                       ; preds = %for.end163
  %134 = load i32, ptr %i, align 4
  %inc165 = add nsw i32 %134, 1
  store i32 %inc165, ptr %i, align 4
  br label %for.cond122, !llvm.loop !14

for.end166:                                       ; preds = %for.cond122
  br label %if.end167

if.end167:                                        ; preds = %for.end166, %for.end86
  %135 = load ptr, ptr %ci, align 8
  %hi168 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %135, i32 0, i32 19
  %lowpass_kHz = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi168, i32 0, i32 17
  %136 = load double, ptr %lowpass_kHz, align 8
  %mul169 = fmul double %136, 1.000000e+03
  store double %mul169, ptr %freq, align 8
  %137 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %137, i32 0, i32 11
  %138 = load i32, ptr %block.addr, align 4
  %idxprom170 = sext i32 %138 to i64
  %arrayidx171 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom170
  %139 = load ptr, ptr %arrayidx171, align 8
  store ptr %139, ptr %f, align 8
  %140 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %140, i32 0, i32 2
  %141 = load i64, ptr %rate, align 8
  %conv172 = sitofp i64 %141 to double
  %div = fdiv double %conv172, 2.000000e+00
  store double %div, ptr %nyq, align 8
  %142 = load ptr, ptr %ci, align 8
  %blocksizes173 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %142, i32 0, i32 0
  %143 = load i32, ptr %block.addr, align 4
  %idxprom174 = sext i32 %143 to i64
  %arrayidx175 = getelementptr inbounds [2 x i64], ptr %blocksizes173, i64 0, i64 %idxprom174
  %144 = load i64, ptr %arrayidx175, align 8
  %shr176 = ashr i64 %144, 1
  store i64 %shr176, ptr %blocksize, align 8
  %145 = load double, ptr %freq, align 8
  %146 = load double, ptr %nyq, align 8
  %cmp177 = fcmp ogt double %145, %146
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end167
  %147 = load double, ptr %nyq, align 8
  store double %147, ptr %freq, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %if.end167
  %148 = load double, ptr %freq, align 8
  %149 = load double, ptr %nyq, align 8
  %div181 = fdiv double %148, %149
  %150 = load i64, ptr %blocksize, align 8
  %conv182 = sitofp i64 %150 to double
  %mul183 = fmul double %div181, %conv182
  %conv184 = fptosi double %mul183 to i32
  %151 = load ptr, ptr %f, align 8
  %n185 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %151, i32 0, i32 13
  store i32 %conv184, ptr %n185, align 4
  %152 = load ptr, ptr %res.addr, align 8
  %limit_type = getelementptr inbounds nuw %struct.vorbis_residue_template, ptr %152, i32 0, i32 1
  %153 = load i32, ptr %limit_type, align 4
  %tobool186 = icmp ne i32 %153, 0
  br i1 %tobool186, label %if.then187, label %if.end206

if.then187:                                       ; preds = %if.end180
  %154 = load ptr, ptr %ci, align 8
  %hi188 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %154, i32 0, i32 19
  %managed189 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi188, i32 0, i32 6
  %155 = load i32, ptr %managed189, align 8
  %tobool190 = icmp ne i32 %155, 0
  br i1 %tobool190, label %if.then191, label %if.else195

if.then191:                                       ; preds = %if.then187
  %156 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %156, i32 0, i32 17
  %coupling_pkHz = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %psy_g_param, i32 0, i32 6
  %arrayidx192 = getelementptr inbounds [15 x i32], ptr %coupling_pkHz, i64 0, i64 14
  %157 = load i32, ptr %arrayidx192, align 8
  %conv193 = sitofp i32 %157 to double
  %mul194 = fmul double %conv193, 1.000000e+03
  store double %mul194, ptr %freq, align 8
  br label %if.end201

if.else195:                                       ; preds = %if.then187
  %158 = load ptr, ptr %ci, align 8
  %psy_g_param196 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %158, i32 0, i32 17
  %coupling_pkHz197 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %psy_g_param196, i32 0, i32 6
  %arrayidx198 = getelementptr inbounds [15 x i32], ptr %coupling_pkHz197, i64 0, i64 7
  %159 = load i32, ptr %arrayidx198, align 4
  %conv199 = sitofp i32 %159 to double
  %mul200 = fmul double %conv199, 1.000000e+03
  store double %mul200, ptr %freq, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.else195, %if.then191
  %160 = load double, ptr %freq, align 8
  %161 = load double, ptr %nyq, align 8
  %cmp202 = fcmp ogt double %160, %161
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end201
  %162 = load double, ptr %nyq, align 8
  store double %162, ptr %freq, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end201
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end180
  %163 = load ptr, ptr %ci, align 8
  %residue_type207 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %163, i32 0, i32 12
  %164 = load i32, ptr %block.addr, align 4
  %idxprom208 = sext i32 %164 to i64
  %arrayidx209 = getelementptr inbounds [64 x i32], ptr %residue_type207, i64 0, i64 %idxprom208
  %165 = load i32, ptr %arrayidx209, align 4
  %cmp210 = icmp eq i32 %165, 2
  br i1 %cmp210, label %if.then212, label %if.else226

if.then212:                                       ; preds = %if.end206
  %166 = load double, ptr %freq, align 8
  %167 = load double, ptr %nyq, align 8
  %div213 = fdiv double %166, %167
  %168 = load i64, ptr %blocksize, align 8
  %conv214 = sitofp i64 %168 to double
  %mul215 = fmul double %div213, %conv214
  %mul216 = fmul double %mul215, 2.000000e+00
  %169 = load ptr, ptr %r, align 8
  %grouping217 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %169, i32 0, i32 2
  %170 = load i32, ptr %grouping217, align 8
  %conv218 = sitofp i32 %170 to double
  %div219 = fdiv double %mul216, %conv218
  %add220 = fadd double %div219, 9.000000e-01
  %conv221 = fptosi double %add220 to i32
  %171 = load ptr, ptr %r, align 8
  %grouping222 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %171, i32 0, i32 2
  %172 = load i32, ptr %grouping222, align 8
  %mul223 = mul nsw i32 %conv221, %172
  %conv224 = sext i32 %mul223 to i64
  %173 = load ptr, ptr %r, align 8
  %end225 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %173, i32 0, i32 1
  store i64 %conv224, ptr %end225, align 8
  br label %if.end239

if.else226:                                       ; preds = %if.end206
  %174 = load double, ptr %freq, align 8
  %175 = load double, ptr %nyq, align 8
  %div227 = fdiv double %174, %175
  %176 = load i64, ptr %blocksize, align 8
  %conv228 = sitofp i64 %176 to double
  %mul229 = fmul double %div227, %conv228
  %177 = load ptr, ptr %r, align 8
  %grouping230 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %177, i32 0, i32 2
  %178 = load i32, ptr %grouping230, align 8
  %conv231 = sitofp i32 %178 to double
  %div232 = fdiv double %mul229, %conv231
  %add233 = fadd double %div232, 9.000000e-01
  %conv234 = fptosi double %add233 to i32
  %179 = load ptr, ptr %r, align 8
  %grouping235 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %179, i32 0, i32 2
  %180 = load i32, ptr %grouping235, align 8
  %mul236 = mul nsw i32 %conv234, %180
  %conv237 = sext i32 %mul236 to i64
  %181 = load ptr, ptr %r, align 8
  %end238 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %181, i32 0, i32 1
  store i64 %conv237, ptr %end238, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.else226, %if.then212
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @book_dup_or_new(ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

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
