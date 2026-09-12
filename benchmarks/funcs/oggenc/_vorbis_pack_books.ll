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

@.str.148 = external hidden unnamed_addr constant [7 x i8], align 1
@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16
@_mapping_P = external dso_local global [1 x ptr], align 8

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_pack_books(ptr noundef %opb, ptr noundef %vi) #0 {
entry:
  %retval = alloca i32, align 4
  %opb.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %opb, ptr %opb.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
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
  call void @oggpack_write(ptr noundef %3, i64 noundef 5, i32 noundef 8)
  %4 = load ptr, ptr %opb.addr, align 8
  call void @_v_writestring(ptr noundef %4, ptr noundef @.str.148, i32 noundef 6)
  %5 = load ptr, ptr %opb.addr, align 8
  %6 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %books, align 8
  %sub = sub nsw i32 %7, 1
  %conv = sext i32 %sub to i64
  call void @oggpack_write(ptr noundef %5, i64 noundef %conv, i32 noundef 8)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %ci, align 8
  %books1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %books1, align 8
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 14
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = load ptr, ptr %opb.addr, align 8
  %call = call i32 @vorbis_staticbook_pack(ptr noundef %13, ptr noundef %14)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %err_out

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %16, i64 noundef 0, i32 noundef 6)
  %17 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %17, i64 noundef 0, i32 noundef 16)
  %18 = load ptr, ptr %opb.addr, align 8
  %19 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %floors, align 8
  %sub6 = sub nsw i32 %20, 1
  %conv7 = sext i32 %sub6 to i64
  call void @oggpack_write(ptr noundef %18, i64 noundef %conv7, i32 noundef 6)
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc32, %for.end
  %21 = load i32, ptr %i, align 4
  %22 = load ptr, ptr %ci, align 8
  %floors9 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %floors9, align 8
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body12, label %for.end34

for.body12:                                       ; preds = %for.cond8
  %24 = load ptr, ptr %opb.addr, align 8
  %25 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 10
  %26 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom13
  %27 = load i32, ptr %arrayidx14, align 4
  %conv15 = sext i32 %27 to i64
  call void @oggpack_write(ptr noundef %24, i64 noundef %conv15, i32 noundef 16)
  %28 = load ptr, ptr %ci, align 8
  %floor_type16 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], ptr %floor_type16, i64 0, i64 %idxprom17
  %30 = load i32, ptr %arrayidx18, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom19
  %31 = load ptr, ptr %arrayidx20, align 8
  %pack = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pack, align 8
  %tobool21 = icmp ne ptr %32, null
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body12
  %33 = load ptr, ptr %ci, align 8
  %floor_type23 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 10
  %34 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds [64 x i32], ptr %floor_type23, i64 0, i64 %idxprom24
  %35 = load i32, ptr %arrayidx25, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom26
  %36 = load ptr, ptr %arrayidx27, align 8
  %pack28 = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pack28, align 8
  %38 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %38, i32 0, i32 11
  %39 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom29
  %40 = load ptr, ptr %arrayidx30, align 8
  %41 = load ptr, ptr %opb.addr, align 8
  call void %37(ptr noundef %40, ptr noundef %41)
  br label %if.end31

if.else:                                          ; preds = %for.body12
  br label %err_out

if.end31:                                         ; preds = %if.then22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %42 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %42, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond8, !llvm.loop !8

for.end34:                                        ; preds = %for.cond8
  %43 = load ptr, ptr %opb.addr, align 8
  %44 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %residues, align 4
  %sub35 = sub nsw i32 %45, 1
  %conv36 = sext i32 %sub35 to i64
  call void @oggpack_write(ptr noundef %43, i64 noundef %conv36, i32 noundef 6)
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc53, %for.end34
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %ci, align 8
  %residues38 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %residues38, align 4
  %cmp39 = icmp slt i32 %46, %48
  br i1 %cmp39, label %for.body41, label %for.end55

for.body41:                                       ; preds = %for.cond37
  %49 = load ptr, ptr %opb.addr, align 8
  %50 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %50, i32 0, i32 12
  %51 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %51 to i64
  %arrayidx43 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom42
  %52 = load i32, ptr %arrayidx43, align 4
  %conv44 = sext i32 %52 to i64
  call void @oggpack_write(ptr noundef %49, i64 noundef %conv44, i32 noundef 16)
  %53 = load ptr, ptr %ci, align 8
  %residue_type45 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %53, i32 0, i32 12
  %54 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %54 to i64
  %arrayidx47 = getelementptr inbounds [64 x i32], ptr %residue_type45, i64 0, i64 %idxprom46
  %55 = load i32, ptr %arrayidx47, align 4
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [0 x ptr], ptr @_residue_P, i64 0, i64 %idxprom48
  %56 = load ptr, ptr %arrayidx49, align 8
  %pack50 = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pack50, align 8
  %58 = load ptr, ptr %ci, align 8
  %residue_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %58, i32 0, i32 13
  %59 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %59 to i64
  %arrayidx52 = getelementptr inbounds [64 x ptr], ptr %residue_param, i64 0, i64 %idxprom51
  %60 = load ptr, ptr %arrayidx52, align 8
  %61 = load ptr, ptr %opb.addr, align 8
  call void %57(ptr noundef %60, ptr noundef %61)
  br label %for.inc53

for.inc53:                                        ; preds = %for.body41
  %62 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %62, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond37, !llvm.loop !9

for.end55:                                        ; preds = %for.cond37
  %63 = load ptr, ptr %opb.addr, align 8
  %64 = load ptr, ptr %ci, align 8
  %maps = getelementptr inbounds nuw %struct.codec_setup_info, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %maps, align 4
  %sub56 = sub nsw i32 %65, 1
  %conv57 = sext i32 %sub56 to i64
  call void @oggpack_write(ptr noundef %63, i64 noundef %conv57, i32 noundef 6)
  store i32 0, ptr %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc74, %for.end55
  %66 = load i32, ptr %i, align 4
  %67 = load ptr, ptr %ci, align 8
  %maps59 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %67, i32 0, i32 2
  %68 = load i32, ptr %maps59, align 4
  %cmp60 = icmp slt i32 %66, %68
  br i1 %cmp60, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond58
  %69 = load ptr, ptr %opb.addr, align 8
  %70 = load ptr, ptr %ci, align 8
  %map_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %70, i32 0, i32 8
  %71 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %71 to i64
  %arrayidx64 = getelementptr inbounds [64 x i32], ptr %map_type, i64 0, i64 %idxprom63
  %72 = load i32, ptr %arrayidx64, align 4
  %conv65 = sext i32 %72 to i64
  call void @oggpack_write(ptr noundef %69, i64 noundef %conv65, i32 noundef 16)
  %73 = load ptr, ptr %ci, align 8
  %map_type66 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %73, i32 0, i32 8
  %74 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %74 to i64
  %arrayidx68 = getelementptr inbounds [64 x i32], ptr %map_type66, i64 0, i64 %idxprom67
  %75 = load i32, ptr %arrayidx68, align 4
  %idxprom69 = sext i32 %75 to i64
  %arrayidx70 = getelementptr inbounds [0 x ptr], ptr @_mapping_P, i64 0, i64 %idxprom69
  %76 = load ptr, ptr %arrayidx70, align 8
  %pack71 = getelementptr inbounds nuw %struct.vorbis_func_mapping, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %pack71, align 8
  %78 = load ptr, ptr %vi.addr, align 8
  %79 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %79, i32 0, i32 9
  %80 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %80 to i64
  %arrayidx73 = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom72
  %81 = load ptr, ptr %arrayidx73, align 8
  %82 = load ptr, ptr %opb.addr, align 8
  call void %77(ptr noundef %78, ptr noundef %81, ptr noundef %82)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body62
  %83 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %83, 1
  store i32 %inc75, ptr %i, align 4
  br label %for.cond58, !llvm.loop !10

for.end76:                                        ; preds = %for.cond58
  %84 = load ptr, ptr %opb.addr, align 8
  %85 = load ptr, ptr %ci, align 8
  %modes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %modes, align 8
  %sub77 = sub nsw i32 %86, 1
  %conv78 = sext i32 %sub77 to i64
  call void @oggpack_write(ptr noundef %84, i64 noundef %conv78, i32 noundef 6)
  store i32 0, ptr %i, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc99, %for.end76
  %87 = load i32, ptr %i, align 4
  %88 = load ptr, ptr %ci, align 8
  %modes80 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %modes80, align 8
  %cmp81 = icmp slt i32 %87, %89
  br i1 %cmp81, label %for.body83, label %for.end101

for.body83:                                       ; preds = %for.cond79
  %90 = load ptr, ptr %opb.addr, align 8
  %91 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %92 to i64
  %arrayidx85 = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom84
  %93 = load ptr, ptr %arrayidx85, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %93, i32 0, i32 0
  %94 = load i32, ptr %blockflag, align 4
  %conv86 = sext i32 %94 to i64
  call void @oggpack_write(ptr noundef %90, i64 noundef %conv86, i32 noundef 1)
  %95 = load ptr, ptr %opb.addr, align 8
  %96 = load ptr, ptr %ci, align 8
  %mode_param87 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %96, i32 0, i32 7
  %97 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %97 to i64
  %arrayidx89 = getelementptr inbounds [64 x ptr], ptr %mode_param87, i64 0, i64 %idxprom88
  %98 = load ptr, ptr %arrayidx89, align 8
  %windowtype = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %windowtype, align 4
  %conv90 = sext i32 %99 to i64
  call void @oggpack_write(ptr noundef %95, i64 noundef %conv90, i32 noundef 16)
  %100 = load ptr, ptr %opb.addr, align 8
  %101 = load ptr, ptr %ci, align 8
  %mode_param91 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %101, i32 0, i32 7
  %102 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %102 to i64
  %arrayidx93 = getelementptr inbounds [64 x ptr], ptr %mode_param91, i64 0, i64 %idxprom92
  %103 = load ptr, ptr %arrayidx93, align 8
  %transformtype = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %103, i32 0, i32 2
  %104 = load i32, ptr %transformtype, align 4
  %conv94 = sext i32 %104 to i64
  call void @oggpack_write(ptr noundef %100, i64 noundef %conv94, i32 noundef 16)
  %105 = load ptr, ptr %opb.addr, align 8
  %106 = load ptr, ptr %ci, align 8
  %mode_param95 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %106, i32 0, i32 7
  %107 = load i32, ptr %i, align 4
  %idxprom96 = sext i32 %107 to i64
  %arrayidx97 = getelementptr inbounds [64 x ptr], ptr %mode_param95, i64 0, i64 %idxprom96
  %108 = load ptr, ptr %arrayidx97, align 8
  %mapping = getelementptr inbounds nuw %struct.vorbis_info_mode, ptr %108, i32 0, i32 3
  %109 = load i32, ptr %mapping, align 4
  %conv98 = sext i32 %109 to i64
  call void @oggpack_write(ptr noundef %105, i64 noundef %conv98, i32 noundef 8)
  br label %for.inc99

for.inc99:                                        ; preds = %for.body83
  %110 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %110, 1
  store i32 %inc100, ptr %i, align 4
  br label %for.cond79, !llvm.loop !11

for.end101:                                       ; preds = %for.cond79
  %111 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %111, i64 noundef 1, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.else, %if.then4
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err_out, %for.end101, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_staticbook_pack(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_v_writestring(ptr noundef, ptr noundef, i32 noundef) #0

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
