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
%struct.vorbis_func_floor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_mapping = type { ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_info_mode = type { i32, i32, i32, i32 }

@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16
@_mapping_P = external dso_local global [1 x ptr], align 8

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_unpack_books(ptr noundef %vi, ptr noundef %opb) #1 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  %times = alloca i32, align 4
  %test = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -129, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %opb.addr, align 8
  %call = call i64 @oggpack_read(ptr noundef %3, i32 noundef 8)
  %add = add nsw i64 %call, 1
  %conv = trunc i64 %add to i32
  %4 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %4, i32 0, i32 5
  store i32 %conv, ptr %books, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %ci, align 8
  %books1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %books1, align 8
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 96) #2
  %8 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 14
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom
  store ptr %call3, ptr %arrayidx, align 8
  %10 = load ptr, ptr %opb.addr, align 8
  %11 = load ptr, ptr %ci, align 8
  %book_param4 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 14
  %12 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x ptr], ptr %book_param4, i64 0, i64 %idxprom5
  %13 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @vorbis_staticbook_unpack(ptr noundef %10, ptr noundef %13)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  br label %err_out

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %opb.addr, align 8
  %call11 = call i64 @oggpack_read(ptr noundef %15, i32 noundef 6)
  %add12 = add nsw i64 %call11, 1
  %conv13 = trunc i64 %add12 to i32
  store i32 %conv13, ptr %times, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %for.end
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %times, align 4
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond14
  %18 = load ptr, ptr %opb.addr, align 8
  %call18 = call i64 @oggpack_read(ptr noundef %18, i32 noundef 16)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, ptr %test, align 4
  %19 = load i32, ptr %test, align 4
  %cmp20 = icmp slt i32 %19, 0
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body17
  %20 = load i32, ptr %test, align 4
  %cmp22 = icmp sge i32 %20, 1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %for.body17
  br label %err_out

if.end25:                                         ; preds = %lor.lhs.false
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %21 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end28:                                        ; preds = %for.cond14
  %22 = load ptr, ptr %opb.addr, align 8
  %call29 = call i64 @oggpack_read(ptr noundef %22, i32 noundef 6)
  %add30 = add nsw i64 %call29, 1
  %conv31 = trunc i64 %add30 to i32
  %23 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %23, i32 0, i32 3
  store i32 %conv31, ptr %floors, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc68, %for.end28
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %ci, align 8
  %floors33 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %floors33, align 8
  %cmp34 = icmp slt i32 %24, %26
  br i1 %cmp34, label %for.body36, label %for.end70

for.body36:                                       ; preds = %for.cond32
  %27 = load ptr, ptr %opb.addr, align 8
  %call37 = call i64 @oggpack_read(ptr noundef %27, i32 noundef 16)
  %conv38 = trunc i64 %call37 to i32
  %28 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom39
  store i32 %conv38, ptr %arrayidx40, align 4
  %30 = load ptr, ptr %ci, align 8
  %floor_type41 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [64 x i32], ptr %floor_type41, i64 0, i64 %idxprom42
  %32 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp slt i32 %32, 0
  br i1 %cmp44, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %for.body36
  %33 = load ptr, ptr %ci, align 8
  %floor_type47 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 10
  %34 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [64 x i32], ptr %floor_type47, i64 0, i64 %idxprom48
  %35 = load i32, ptr %arrayidx49, align 4
  %cmp50 = icmp sge i32 %35, 2
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false46, %for.body36
  br label %err_out

if.end53:                                         ; preds = %lor.lhs.false46
  %36 = load ptr, ptr %ci, align 8
  %floor_type54 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %36, i32 0, i32 10
  %37 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [64 x i32], ptr %floor_type54, i64 0, i64 %idxprom55
  %38 = load i32, ptr %arrayidx56, align 4
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom57
  %39 = load ptr, ptr %arrayidx58, align 8
  %unpack = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %unpack, align 8
  %41 = load ptr, ptr %vi.addr, align 8
  %42 = load ptr, ptr %opb.addr, align 8
  %call59 = call ptr %40(ptr noundef %41, ptr noundef %42)
  %43 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %43, i32 0, i32 11
  %44 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom60
  store ptr %call59, ptr %arrayidx61, align 8
  %45 = load ptr, ptr %ci, align 8
  %floor_param62 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %45, i32 0, i32 11
  %46 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds [64 x ptr], ptr %floor_param62, i64 0, i64 %idxprom63
  %47 = load ptr, ptr %arrayidx64, align 8
  %tobool65 = icmp ne ptr %47, null
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end53
  br label %err_out

if.end67:                                         ; preds = %if.end53
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %48 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %48, 1
  store i32 %inc69, ptr %i, align 4
  br label %for.cond32, !llvm.loop !9

for.end70:                                        ; preds = %for.cond32
  %49 = load ptr, ptr %opb.addr, align 8
  %call71 = call i64 @oggpack_read(ptr noundef %49, i32 noundef 6)
  %add72 = add nsw i64 %call71, 1
  %conv73 = trunc i64 %add72 to i32
  %50 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %50, i32 0, i32 4
  store i32 %conv73, ptr %residues, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc111, %for.end70
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %ci, align 8
  %residues75 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %52, i32 0, i32 4
  %53 = load i32, ptr %residues75, align 4
  %cmp76 = icmp slt i32 %51, %53
  br i1 %cmp76, label %for.body78, label %for.end113

for.body78:                                       ; preds = %for.cond74
  %54 = load ptr, ptr %opb.addr, align 8
  %call79 = call i64 @oggpack_read(ptr noundef %54, i32 noundef 16)
  %conv80 = trunc i64 %call79 to i32
  %55 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %55, i32 0, i32 12
  %56 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %56 to i64
  %arrayidx82 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom81
  store i32 %conv80, ptr %arrayidx82, align 4
  %57 = load ptr, ptr %ci, align 8
  %residue_type83 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %57, i32 0, i32 12
  %58 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %58 to i64
  %arrayidx85 = getelementptr inbounds [64 x i32], ptr %residue_type83, i64 0, i64 %idxprom84
  %59 = load i32, ptr %arrayidx85, align 4
  %cmp86 = icmp slt i32 %59, 0
  br i1 %cmp86, label %if.then94, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %for.body78
  %60 = load ptr, ptr %ci, align 8
  %residue_type89 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %60, i32 0, i32 12
  %61 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %61 to i64
  %arrayidx91 = getelementptr inbounds [64 x i32], ptr %residue_type89, i64 0, i64 %idxprom90
  %62 = load i32, ptr %arrayidx91, align 4
  %cmp92 = icmp sge i32 %62, 3
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %lor.lhs.false88, %for.body78
  br label %err_out

if.end95:                                         ; preds = %lor.lhs.false88
  %63 = load ptr, ptr %ci, align 8
  %residue_type96 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %63, i32 0, i32 12
  %64 = load i32, ptr %i, align 4
  %idxprom97 = sext i32 %64 to i64
  %arrayidx98 = getelementptr inbounds [64 x i32], ptr %residue_type96, i64 0, i64 %idxprom97
  %65 = load i32, ptr %arrayidx98, align 4
  %idxprom99 = sext i32 %65 to i64
  %arrayidx100 = getelementptr inbounds [0 x ptr], ptr @_residue_P, i64 0, i64 %idxprom99
  %66 = load ptr, ptr %arrayidx100, align 8
  %unpack101 = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %unpack101, align 8
  %68 = load ptr, ptr %vi.addr, align 8
  %69 = load ptr, ptr %opb.addr, align 8
  %call102 = call ptr %67(ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %ci, align 8
  %residue_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %70, i32 0, i32 13
  %71 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %71 to i64
  %arrayidx104 = getelementptr inbounds [64 x ptr], ptr %residue_param, i64 0, i64 %idxprom103
  store ptr %call102, ptr %arrayidx104, align 8
  %72 = load ptr, ptr %ci, align 8
  %residue_param105 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %72, i32 0, i32 13
  %73 = load i32, ptr %i, align 4
  %idxprom106 = sext i32 %73 to i64
  %arrayidx107 = getelementptr inbounds [64 x ptr], ptr %residue_param105, i64 0, i64 %idxprom106
  %74 = load ptr, ptr %arrayidx107, align 8
  %tobool108 = icmp ne ptr %74, null
  br i1 %tobool108, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end95
  br label %err_out

if.end110:                                        ; preds = %if.end95
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %75 = load i32, ptr %i, align 4
  %inc112 = add nsw i32 %75, 1
  store i32 %inc112, ptr %i, align 4
  br label %for.cond74, !llvm.loop !10

for.end113:                                       ; preds = %for.cond74
  %76 = load ptr, ptr %opb.addr, align 8
  %call114 = call i64 @oggpack_read(ptr noundef %76, i32 noundef 6)
  %add115 = add nsw i64 %call114, 1
  %conv116 = trunc i64 %add115 to i32
  %77 = load ptr, ptr %ci, align 8
  %maps = getelementptr inbounds nuw %struct.codec_setup_info, ptr %77, i32 0, i32 2
  store i32 %conv116, ptr %maps, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc154, %for.end113
  %78 = load i32, ptr %i, align 4
  %79 = load ptr, ptr %ci, align 8
  %maps118 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %79, i32 0, i32 2
  %80 = load i32, ptr %maps118, align 4
  %cmp119 = icmp slt i32 %78, %80
  br i1 %cmp119, label %for.body121, label %for.end156

for.body121:                                      ; preds = %for.cond117
  %81 = load ptr, ptr %opb.addr, align 8
  %call122 = call i64 @oggpack_read(ptr noundef %81, i32 noundef 16)
  %conv123 = trunc i64 %call122 to i32
  %82 = load ptr, ptr %ci, align 8
  %map_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %82, i32 0, i32 8
  %83 = load i32, ptr %i, align 4
  %idxprom124 = sext i32 %83 to i64
  %arrayidx125 = getelementptr inbounds [64 x i32], ptr %map_type, i64 0, i64 %idxprom124
  store i32 %conv123, ptr %arrayidx125, align 4
  %84 = load ptr, ptr %ci, align 8
  %map_type126 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %84, i32 0, i32 8
  %85 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %85 to i64
  %arrayidx128 = getelementptr inbounds [64 x i32], ptr %map_type126, i64 0, i64 %idxprom127
  %86 = load i32, ptr %arrayidx128, align 4
  %cmp129 = icmp slt i32 %86, 0
  br i1 %cmp129, label %if.then137, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %for.body121
  %87 = load ptr, ptr %ci, align 8
  %map_type132 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %87, i32 0, i32 8
  %88 = load i32, ptr %i, align 4
  %idxprom133 = sext i32 %88 to i64
  %arrayidx134 = getelementptr inbounds [64 x i32], ptr %map_type132, i64 0, i64 %idxprom133
  %89 = load i32, ptr %arrayidx134, align 4
  %cmp135 = icmp sge i32 %89, 1
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %lor.lhs.false131, %for.body121
  br label %err_out

if.end138:                                        ; preds = %lor.lhs.false131
  %90 = load ptr, ptr %ci, align 8
  %map_type139 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %90, i32 0, i32 8
  %91 = load i32, ptr %i, align 4
  %idxprom140 = sext i32 %91 to i64
  %arrayidx141 = getelementptr inbounds [64 x i32], ptr %map_type139, i64 0, i64 %idxprom140
  %92 = load i32, ptr %arrayidx141, align 4
  %idxprom142 = sext i32 %92 to i64
  %arrayidx143 = getelementptr inbounds [0 x ptr], ptr @_mapping_P, i64 0, i64 %idxprom142
  %93 = load ptr, ptr %arrayidx143, align 8
  %unpack144 = getelementptr inbounds nuw %struct.vorbis_func_mapping, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %unpack144, align 8
  %95 = load ptr, ptr %vi.addr, align 8
  %96 = load ptr, ptr %opb.addr, align 8
  %call145 = call ptr %94(ptr noundef %95, ptr noundef %96)
  %97 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %97, i32 0, i32 9
  %98 = load i32, ptr %i, align 4
  %idxprom146 = sext i32 %98 to i64
  %arrayidx147 = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom146
  store ptr %call145, ptr %arrayidx147, align 8
  %99 = load ptr, ptr %ci, align 8
  %map_param148 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %99, i32 0, i32 9
  %100 = load i32, ptr %i, align 4
  %idxprom149 = sext i32 %100 to i64
  %arrayidx150 = getelementptr inbounds [64 x ptr], ptr %map_param148, i64 0, i64 %idxprom149
  %101 = load ptr, ptr %arrayidx150, align 8
  %tobool151 = icmp ne ptr %101, null
  br i1 %tobool151, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.end138
  br label %err_out

if.end153:                                        ; preds = %if.end138
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %102 = load i32, ptr %i, align 4
  %inc155 = add nsw i32 %102, 1
  store i32 %inc155, ptr %i, align 4
  br label %for.cond117, !llvm.loop !11

for.end156:                                       ; preds = %for.cond117
  %103 = load ptr, ptr %opb.addr, align 8
  %call157 = call i64 @oggpack_read(ptr noundef %103, i32 noundef 6)
  %add158 = add nsw i64 %call157, 1
  %conv159 = trunc i64 %add158 to i32
  %104 = load ptr, ptr %ci, align 8
  %modes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %104, i32 0, i32 1
  store i32 %conv159, ptr %modes, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc213, %for.end156
  %105 = load i32, ptr %i, align 4
  %106 = load ptr, ptr %ci, align 8
  %modes161 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %modes161, align 8
  %cmp162 = icmp slt i32 %105, %107
  br i1 %cmp162, label %for.body164, label %for.end215

for.body164:                                      ; preds = %for.cond160
  %call165 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #2
  %108 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %108, i32 0, i32 7
  %109 = load i32, ptr %i, align 4
  %idxprom166 = sext i32 %109 to i64
  %arrayidx167 = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom166
  store ptr %call165, ptr %arrayidx167, align 8
  %110 = load ptr, ptr %opb.addr, align 8
  %call168 = call i64 @oggpack_read(ptr noundef %110, i32 noundef 1)
  %conv169 = trunc i64 %call168 to i32
  %111 = load ptr, ptr %ci, align 8
  %mode_param170 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %111, i32 0, i32 7
  %112 = load i32, ptr %i, align 4
  %idxprom171 = sext i32 %112 to i64
  %arrayidx172 = getelementptr inbounds [64 x ptr], ptr %mode_param170, i64 0, i64 %idxprom171
  %113 = load ptr, ptr %arrayidx172, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %113, i32 0, i32 0
  store i32 %conv169, ptr %blockflag, align 4
  %114 = load ptr, ptr %opb.addr, align 8
  %call173 = call i64 @oggpack_read(ptr noundef %114, i32 noundef 16)
  %conv174 = trunc i64 %call173 to i32
  %115 = load ptr, ptr %ci, align 8
  %mode_param175 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %115, i32 0, i32 7
  %116 = load i32, ptr %i, align 4
  %idxprom176 = sext i32 %116 to i64
  %arrayidx177 = getelementptr inbounds [64 x ptr], ptr %mode_param175, i64 0, i64 %idxprom176
  %117 = load ptr, ptr %arrayidx177, align 8
  %windowtype = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %117, i32 0, i32 1
  store i32 %conv174, ptr %windowtype, align 4
  %118 = load ptr, ptr %opb.addr, align 8
  %call178 = call i64 @oggpack_read(ptr noundef %118, i32 noundef 16)
  %conv179 = trunc i64 %call178 to i32
  %119 = load ptr, ptr %ci, align 8
  %mode_param180 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %119, i32 0, i32 7
  %120 = load i32, ptr %i, align 4
  %idxprom181 = sext i32 %120 to i64
  %arrayidx182 = getelementptr inbounds [64 x ptr], ptr %mode_param180, i64 0, i64 %idxprom181
  %121 = load ptr, ptr %arrayidx182, align 8
  %transformtype = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %121, i32 0, i32 2
  store i32 %conv179, ptr %transformtype, align 4
  %122 = load ptr, ptr %opb.addr, align 8
  %call183 = call i64 @oggpack_read(ptr noundef %122, i32 noundef 8)
  %conv184 = trunc i64 %call183 to i32
  %123 = load ptr, ptr %ci, align 8
  %mode_param185 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %123, i32 0, i32 7
  %124 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %124 to i64
  %arrayidx187 = getelementptr inbounds [64 x ptr], ptr %mode_param185, i64 0, i64 %idxprom186
  %125 = load ptr, ptr %arrayidx187, align 8
  %mapping = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %125, i32 0, i32 3
  store i32 %conv184, ptr %mapping, align 4
  %126 = load ptr, ptr %ci, align 8
  %mode_param188 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %126, i32 0, i32 7
  %127 = load i32, ptr %i, align 4
  %idxprom189 = sext i32 %127 to i64
  %arrayidx190 = getelementptr inbounds [64 x ptr], ptr %mode_param188, i64 0, i64 %idxprom189
  %128 = load ptr, ptr %arrayidx190, align 8
  %windowtype191 = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %128, i32 0, i32 1
  %129 = load i32, ptr %windowtype191, align 4
  %cmp192 = icmp sge i32 %129, 1
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %for.body164
  br label %err_out

if.end195:                                        ; preds = %for.body164
  %130 = load ptr, ptr %ci, align 8
  %mode_param196 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %130, i32 0, i32 7
  %131 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %131 to i64
  %arrayidx198 = getelementptr inbounds [64 x ptr], ptr %mode_param196, i64 0, i64 %idxprom197
  %132 = load ptr, ptr %arrayidx198, align 8
  %transformtype199 = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %132, i32 0, i32 2
  %133 = load i32, ptr %transformtype199, align 4
  %cmp200 = icmp sge i32 %133, 1
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.end195
  br label %err_out

if.end203:                                        ; preds = %if.end195
  %134 = load ptr, ptr %ci, align 8
  %mode_param204 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %134, i32 0, i32 7
  %135 = load i32, ptr %i, align 4
  %idxprom205 = sext i32 %135 to i64
  %arrayidx206 = getelementptr inbounds [64 x ptr], ptr %mode_param204, i64 0, i64 %idxprom205
  %136 = load ptr, ptr %arrayidx206, align 8
  %mapping207 = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %136, i32 0, i32 3
  %137 = load i32, ptr %mapping207, align 4
  %138 = load ptr, ptr %ci, align 8
  %maps208 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %138, i32 0, i32 2
  %139 = load i32, ptr %maps208, align 4
  %cmp209 = icmp sge i32 %137, %139
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end203
  br label %err_out

if.end212:                                        ; preds = %if.end203
  br label %for.inc213

for.inc213:                                       ; preds = %if.end212
  %140 = load i32, ptr %i, align 4
  %inc214 = add nsw i32 %140, 1
  store i32 %inc214, ptr %i, align 4
  br label %for.cond160, !llvm.loop !12

for.end215:                                       ; preds = %for.cond160
  %141 = load ptr, ptr %opb.addr, align 8
  %call216 = call i64 @oggpack_read(ptr noundef %141, i32 noundef 1)
  %cmp217 = icmp ne i64 %call216, 1
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %for.end215
  br label %err_out

if.end220:                                        ; preds = %for.end215
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.then219, %if.then211, %if.then202, %if.then194, %if.then152, %if.then137, %if.then109, %if.then94, %if.then66, %if.then52, %if.then24, %if.then9
  %142 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %142)
  store i32 -133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err_out, %if.end220, %if.then
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_staticbook_unpack(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

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
