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
%struct.ovectl_ratemanage_arg = type { i32, i64, i64, double, i64, i64, double, double }

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_ctl(ptr noundef %vi, i32 noundef %number, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %setp = alloca i32, align 4
  %ai = alloca ptr, align 8
  %ai10 = alloca ptr, align 8
  %ai18 = alloca ptr, align 8
  %ai74 = alloca ptr, align 8
  %farg = alloca ptr, align 8
  %farg120 = alloca ptr, align 8
  %farg133 = alloca ptr, align 8
  %farg135 = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end147

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %codec_setup, align 8
  store ptr %2, ptr %ci, align 8
  %3 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %3, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %4 = load i32, ptr %number.addr, align 4
  %and = and i32 %4, 15
  store i32 %and, ptr %setp, align 4
  %5 = load i32, ptr %setp, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %hi, align 8
  %set_in_stone = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %set_in_stone, align 8
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load i32, ptr %number.addr, align 4
  switch i32 %8, label %sw.epilog [
    i32 16, label %sw.bb
    i32 17, label %sw.bb9
    i32 18, label %sw.bb17
    i32 19, label %sw.bb73
    i32 32, label %sw.bb118
    i32 33, label %sw.bb119
    i32 48, label %sw.bb132
    i32 49, label %sw.bb134
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load ptr, ptr %arg.addr, align 8
  store ptr %9, ptr %ai, align 8
  %10 = load ptr, ptr %hi, align 8
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %managed, align 8
  %12 = load ptr, ptr %ai, align 8
  %management_active = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %12, i32 0, i32 0
  store i32 %11, ptr %management_active, align 8
  %13 = load ptr, ptr %hi, align 8
  %bitrate_av_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %13, i32 0, i32 12
  %14 = load double, ptr %bitrate_av_window, align 8
  %15 = load ptr, ptr %ai, align 8
  %bitrate_av_window5 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %15, i32 0, i32 6
  store double %14, ptr %bitrate_av_window5, align 8
  %16 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %16, i32 0, i32 13
  %17 = load double, ptr %bitrate_av_window_center, align 8
  %18 = load ptr, ptr %ai, align 8
  %bitrate_av_window_center6 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %18, i32 0, i32 7
  store double %17, ptr %bitrate_av_window_center6, align 8
  %19 = load ptr, ptr %hi, align 8
  %bitrate_limit_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %19, i32 0, i32 11
  %20 = load double, ptr %bitrate_limit_window, align 8
  %21 = load ptr, ptr %ai, align 8
  %bitrate_hard_window = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %21, i32 0, i32 3
  store double %20, ptr %bitrate_hard_window, align 8
  %22 = load ptr, ptr %hi, align 8
  %bitrate_min = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %22, i32 0, i32 7
  %23 = load i64, ptr %bitrate_min, align 8
  %24 = load ptr, ptr %ai, align 8
  %bitrate_hard_min = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %24, i32 0, i32 1
  store i64 %23, ptr %bitrate_hard_min, align 8
  %25 = load ptr, ptr %hi, align 8
  %bitrate_max = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %25, i32 0, i32 10
  %26 = load i64, ptr %bitrate_max, align 8
  %27 = load ptr, ptr %ai, align 8
  %bitrate_hard_max = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %27, i32 0, i32 2
  store i64 %26, ptr %bitrate_hard_max, align 8
  %28 = load ptr, ptr %hi, align 8
  %bitrate_av_lo = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %28, i32 0, i32 8
  %29 = load i64, ptr %bitrate_av_lo, align 8
  %30 = load ptr, ptr %ai, align 8
  %bitrate_av_lo7 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %30, i32 0, i32 4
  store i64 %29, ptr %bitrate_av_lo7, align 8
  %31 = load ptr, ptr %hi, align 8
  %bitrate_av_hi = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %31, i32 0, i32 9
  %32 = load i64, ptr %bitrate_av_hi, align 8
  %33 = load ptr, ptr %ai, align 8
  %bitrate_av_hi8 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %33, i32 0, i32 5
  store i64 %32, ptr %bitrate_av_hi8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  %34 = load ptr, ptr %arg.addr, align 8
  store ptr %34, ptr %ai10, align 8
  %35 = load ptr, ptr %ai10, align 8
  %cmp = icmp eq ptr %35, null
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb9
  %36 = load ptr, ptr %hi, align 8
  %managed12 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %36, i32 0, i32 6
  store i32 0, ptr %managed12, align 8
  br label %if.end16

if.else:                                          ; preds = %sw.bb9
  %37 = load ptr, ptr %ai10, align 8
  %management_active13 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %management_active13, align 8
  %39 = load ptr, ptr %hi, align 8
  %managed14 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %39, i32 0, i32 6
  store i32 %38, ptr %managed14, align 8
  %40 = load ptr, ptr %vi.addr, align 8
  %41 = load ptr, ptr %arg.addr, align 8
  %call = call i32 @vorbis_encode_ctl(ptr noundef %40, i32 noundef 18, ptr noundef %41)
  %42 = load ptr, ptr %vi.addr, align 8
  %43 = load ptr, ptr %arg.addr, align 8
  %call15 = call i32 @vorbis_encode_ctl(ptr noundef %42, i32 noundef 19, ptr noundef %43)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end
  %44 = load ptr, ptr %arg.addr, align 8
  store ptr %44, ptr %ai18, align 8
  %45 = load ptr, ptr %ai18, align 8
  %cmp19 = icmp eq ptr %45, null
  br i1 %cmp19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %sw.bb17
  %46 = load ptr, ptr %hi, align 8
  %bitrate_av_lo21 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %46, i32 0, i32 8
  store i64 0, ptr %bitrate_av_lo21, align 8
  %47 = load ptr, ptr %hi, align 8
  %bitrate_av_hi22 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %47, i32 0, i32 9
  store i64 0, ptr %bitrate_av_hi22, align 8
  %48 = load ptr, ptr %hi, align 8
  %bitrate_av_window23 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %48, i32 0, i32 12
  store double 0.000000e+00, ptr %bitrate_av_window23, align 8
  br label %if.end33

if.else24:                                        ; preds = %sw.bb17
  %49 = load ptr, ptr %ai18, align 8
  %bitrate_av_window25 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %49, i32 0, i32 6
  %50 = load double, ptr %bitrate_av_window25, align 8
  %51 = load ptr, ptr %hi, align 8
  %bitrate_av_window26 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %51, i32 0, i32 12
  store double %50, ptr %bitrate_av_window26, align 8
  %52 = load ptr, ptr %ai18, align 8
  %bitrate_av_window_center27 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %52, i32 0, i32 7
  %53 = load double, ptr %bitrate_av_window_center27, align 8
  %54 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center28 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %54, i32 0, i32 13
  store double %53, ptr %bitrate_av_window_center28, align 8
  %55 = load ptr, ptr %ai18, align 8
  %bitrate_av_lo29 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %55, i32 0, i32 4
  %56 = load i64, ptr %bitrate_av_lo29, align 8
  %57 = load ptr, ptr %hi, align 8
  %bitrate_av_lo30 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %57, i32 0, i32 8
  store i64 %56, ptr %bitrate_av_lo30, align 8
  %58 = load ptr, ptr %ai18, align 8
  %bitrate_av_hi31 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %58, i32 0, i32 5
  %59 = load i64, ptr %bitrate_av_hi31, align 8
  %60 = load ptr, ptr %hi, align 8
  %bitrate_av_hi32 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %60, i32 0, i32 9
  store i64 %59, ptr %bitrate_av_hi32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else24, %if.then20
  %61 = load ptr, ptr %hi, align 8
  %bitrate_av_window34 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %61, i32 0, i32 12
  %62 = load double, ptr %bitrate_av_window34, align 8
  %cmp35 = fcmp olt double %62, 2.500000e-01
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %63 = load ptr, ptr %hi, align 8
  %bitrate_av_window37 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %63, i32 0, i32 12
  store double 2.500000e-01, ptr %bitrate_av_window37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  %64 = load ptr, ptr %hi, align 8
  %bitrate_av_window39 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %64, i32 0, i32 12
  %65 = load double, ptr %bitrate_av_window39, align 8
  %cmp40 = fcmp ogt double %65, 1.000000e+01
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %66 = load ptr, ptr %hi, align 8
  %bitrate_av_window42 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %66, i32 0, i32 12
  store double 1.000000e+01, ptr %bitrate_av_window42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %67 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center44 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %67, i32 0, i32 13
  %68 = load double, ptr %bitrate_av_window_center44, align 8
  %cmp45 = fcmp olt double %68, 0.000000e+00
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %69 = load ptr, ptr %hi, align 8
  %bitrate_av_window47 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %69, i32 0, i32 12
  store double 0.000000e+00, ptr %bitrate_av_window47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %70 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center49 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %70, i32 0, i32 13
  %71 = load double, ptr %bitrate_av_window_center49, align 8
  %cmp50 = fcmp ogt double %71, 1.000000e+00
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %72 = load ptr, ptr %hi, align 8
  %bitrate_av_window52 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %72, i32 0, i32 12
  store double 1.000000e+00, ptr %bitrate_av_window52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %73 = load ptr, ptr %hi, align 8
  %bitrate_av_lo54 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %73, i32 0, i32 8
  %74 = load i64, ptr %bitrate_av_lo54, align 8
  %cmp55 = icmp sle i64 %74, 0
  br i1 %cmp55, label %land.lhs.true56, label %lor.lhs.false

land.lhs.true56:                                  ; preds = %if.end53
  %75 = load ptr, ptr %hi, align 8
  %bitrate_av_hi57 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %75, i32 0, i32 9
  %76 = load i64, ptr %bitrate_av_hi57, align 8
  %cmp58 = icmp sle i64 %76, 0
  br i1 %cmp58, label %land.lhs.true61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true56, %if.end53
  %77 = load ptr, ptr %hi, align 8
  %bitrate_av_window59 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %77, i32 0, i32 12
  %78 = load double, ptr %bitrate_av_window59, align 8
  %cmp60 = fcmp ole double %78, 0.000000e+00
  br i1 %cmp60, label %land.lhs.true61, label %if.end72

land.lhs.true61:                                  ; preds = %lor.lhs.false, %land.lhs.true56
  %79 = load ptr, ptr %hi, align 8
  %bitrate_min62 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %79, i32 0, i32 7
  %80 = load i64, ptr %bitrate_min62, align 8
  %cmp63 = icmp sle i64 %80, 0
  br i1 %cmp63, label %land.lhs.true64, label %lor.lhs.false67

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %81 = load ptr, ptr %hi, align 8
  %bitrate_max65 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %81, i32 0, i32 10
  %82 = load i64, ptr %bitrate_max65, align 8
  %cmp66 = icmp sle i64 %82, 0
  br i1 %cmp66, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true64, %land.lhs.true61
  %83 = load ptr, ptr %hi, align 8
  %bitrate_limit_window68 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %83, i32 0, i32 11
  %84 = load double, ptr %bitrate_limit_window68, align 8
  %cmp69 = fcmp ole double %84, 0.000000e+00
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %lor.lhs.false67, %land.lhs.true64
  %85 = load ptr, ptr %hi, align 8
  %managed71 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %85, i32 0, i32 6
  store i32 0, ptr %managed71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %lor.lhs.false67, %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb73:                                          ; preds = %if.end
  %86 = load ptr, ptr %arg.addr, align 8
  store ptr %86, ptr %ai74, align 8
  %87 = load ptr, ptr %ai74, align 8
  %cmp75 = icmp eq ptr %87, null
  br i1 %cmp75, label %if.then76, label %if.else80

if.then76:                                        ; preds = %sw.bb73
  %88 = load ptr, ptr %hi, align 8
  %bitrate_min77 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %88, i32 0, i32 7
  store i64 0, ptr %bitrate_min77, align 8
  %89 = load ptr, ptr %hi, align 8
  %bitrate_max78 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %89, i32 0, i32 10
  store i64 0, ptr %bitrate_max78, align 8
  %90 = load ptr, ptr %hi, align 8
  %bitrate_limit_window79 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %90, i32 0, i32 11
  store double 0.000000e+00, ptr %bitrate_limit_window79, align 8
  br label %if.end87

if.else80:                                        ; preds = %sw.bb73
  %91 = load ptr, ptr %ai74, align 8
  %bitrate_hard_window81 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %91, i32 0, i32 3
  %92 = load double, ptr %bitrate_hard_window81, align 8
  %93 = load ptr, ptr %hi, align 8
  %bitrate_limit_window82 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %93, i32 0, i32 11
  store double %92, ptr %bitrate_limit_window82, align 8
  %94 = load ptr, ptr %ai74, align 8
  %bitrate_hard_min83 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %94, i32 0, i32 1
  %95 = load i64, ptr %bitrate_hard_min83, align 8
  %96 = load ptr, ptr %hi, align 8
  %bitrate_min84 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %96, i32 0, i32 7
  store i64 %95, ptr %bitrate_min84, align 8
  %97 = load ptr, ptr %ai74, align 8
  %bitrate_hard_max85 = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %97, i32 0, i32 2
  %98 = load i64, ptr %bitrate_hard_max85, align 8
  %99 = load ptr, ptr %hi, align 8
  %bitrate_max86 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %99, i32 0, i32 10
  store i64 %98, ptr %bitrate_max86, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else80, %if.then76
  %100 = load ptr, ptr %hi, align 8
  %bitrate_limit_window88 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %100, i32 0, i32 11
  %101 = load double, ptr %bitrate_limit_window88, align 8
  %cmp89 = fcmp olt double %101, 0.000000e+00
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end87
  %102 = load ptr, ptr %hi, align 8
  %bitrate_limit_window91 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %102, i32 0, i32 11
  store double 0.000000e+00, ptr %bitrate_limit_window91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87
  %103 = load ptr, ptr %hi, align 8
  %bitrate_limit_window93 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %103, i32 0, i32 11
  %104 = load double, ptr %bitrate_limit_window93, align 8
  %cmp94 = fcmp ogt double %104, 1.000000e+01
  br i1 %cmp94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end92
  %105 = load ptr, ptr %hi, align 8
  %bitrate_limit_window96 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %105, i32 0, i32 11
  store double 1.000000e+01, ptr %bitrate_limit_window96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end92
  %106 = load ptr, ptr %hi, align 8
  %bitrate_av_lo98 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %106, i32 0, i32 8
  %107 = load i64, ptr %bitrate_av_lo98, align 8
  %cmp99 = icmp sle i64 %107, 0
  br i1 %cmp99, label %land.lhs.true100, label %lor.lhs.false103

land.lhs.true100:                                 ; preds = %if.end97
  %108 = load ptr, ptr %hi, align 8
  %bitrate_av_hi101 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %108, i32 0, i32 9
  %109 = load i64, ptr %bitrate_av_hi101, align 8
  %cmp102 = icmp sle i64 %109, 0
  br i1 %cmp102, label %land.lhs.true106, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %land.lhs.true100, %if.end97
  %110 = load ptr, ptr %hi, align 8
  %bitrate_av_window104 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %110, i32 0, i32 12
  %111 = load double, ptr %bitrate_av_window104, align 8
  %cmp105 = fcmp ole double %111, 0.000000e+00
  br i1 %cmp105, label %land.lhs.true106, label %if.end117

land.lhs.true106:                                 ; preds = %lor.lhs.false103, %land.lhs.true100
  %112 = load ptr, ptr %hi, align 8
  %bitrate_min107 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %112, i32 0, i32 7
  %113 = load i64, ptr %bitrate_min107, align 8
  %cmp108 = icmp sle i64 %113, 0
  br i1 %cmp108, label %land.lhs.true109, label %lor.lhs.false112

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %114 = load ptr, ptr %hi, align 8
  %bitrate_max110 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %114, i32 0, i32 10
  %115 = load i64, ptr %bitrate_max110, align 8
  %cmp111 = icmp sle i64 %115, 0
  br i1 %cmp111, label %if.then115, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %land.lhs.true109, %land.lhs.true106
  %116 = load ptr, ptr %hi, align 8
  %bitrate_limit_window113 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %116, i32 0, i32 11
  %117 = load double, ptr %bitrate_limit_window113, align 8
  %cmp114 = fcmp ole double %117, 0.000000e+00
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %lor.lhs.false112, %land.lhs.true109
  %118 = load ptr, ptr %hi, align 8
  %managed116 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %118, i32 0, i32 6
  store i32 0, ptr %managed116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %lor.lhs.false112, %lor.lhs.false103
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb118:                                         ; preds = %if.end
  %119 = load ptr, ptr %arg.addr, align 8
  store ptr %119, ptr %farg, align 8
  %120 = load ptr, ptr %hi, align 8
  %lowpass_kHz = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %120, i32 0, i32 17
  %121 = load double, ptr %lowpass_kHz, align 8
  %122 = load ptr, ptr %farg, align 8
  store double %121, ptr %122, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb119:                                         ; preds = %if.end
  %123 = load ptr, ptr %arg.addr, align 8
  store ptr %123, ptr %farg120, align 8
  %124 = load ptr, ptr %farg120, align 8
  %125 = load double, ptr %124, align 8
  %126 = load ptr, ptr %hi, align 8
  %lowpass_kHz121 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %126, i32 0, i32 17
  store double %125, ptr %lowpass_kHz121, align 8
  %127 = load ptr, ptr %hi, align 8
  %lowpass_kHz122 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %127, i32 0, i32 17
  %128 = load double, ptr %lowpass_kHz122, align 8
  %cmp123 = fcmp olt double %128, 2.000000e+00
  br i1 %cmp123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %sw.bb119
  %129 = load ptr, ptr %hi, align 8
  %lowpass_kHz125 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %129, i32 0, i32 17
  store double 2.000000e+00, ptr %lowpass_kHz125, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %sw.bb119
  %130 = load ptr, ptr %hi, align 8
  %lowpass_kHz127 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %130, i32 0, i32 17
  %131 = load double, ptr %lowpass_kHz127, align 8
  %cmp128 = fcmp ogt double %131, 9.900000e+01
  br i1 %cmp128, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end126
  %132 = load ptr, ptr %hi, align 8
  %lowpass_kHz130 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %132, i32 0, i32 17
  store double 9.900000e+01, ptr %lowpass_kHz130, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end126
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb132:                                         ; preds = %if.end
  %133 = load ptr, ptr %arg.addr, align 8
  store ptr %133, ptr %farg133, align 8
  %134 = load ptr, ptr %hi, align 8
  %impulse_noisetune = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %134, i32 0, i32 5
  %135 = load double, ptr %impulse_noisetune, align 8
  %136 = load ptr, ptr %farg133, align 8
  store double %135, ptr %136, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb134:                                         ; preds = %if.end
  %137 = load ptr, ptr %arg.addr, align 8
  store ptr %137, ptr %farg135, align 8
  %138 = load ptr, ptr %farg135, align 8
  %139 = load double, ptr %138, align 8
  %140 = load ptr, ptr %hi, align 8
  %impulse_noisetune136 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %140, i32 0, i32 5
  store double %139, ptr %impulse_noisetune136, align 8
  %141 = load ptr, ptr %hi, align 8
  %impulse_noisetune137 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %141, i32 0, i32 5
  %142 = load double, ptr %impulse_noisetune137, align 8
  %cmp138 = fcmp ogt double %142, 0.000000e+00
  br i1 %cmp138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %sw.bb134
  %143 = load ptr, ptr %hi, align 8
  %impulse_noisetune140 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %143, i32 0, i32 5
  store double 0.000000e+00, ptr %impulse_noisetune140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %sw.bb134
  %144 = load ptr, ptr %hi, align 8
  %impulse_noisetune142 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %144, i32 0, i32 5
  %145 = load double, ptr %impulse_noisetune142, align 8
  %cmp143 = fcmp olt double %145, -1.500000e+01
  br i1 %cmp143, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.end141
  %146 = load ptr, ptr %hi, align 8
  %impulse_noisetune145 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %146, i32 0, i32 5
  store double -1.500000e+01, ptr %impulse_noisetune145, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 -130, ptr %retval, align 4
  br label %return

if.end147:                                        ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end147, %sw.epilog, %if.end146, %sw.bb132, %if.end131, %sw.bb118, %if.end117, %if.end72, %if.end16, %sw.bb, %if.then4
  %147 = load i32, ptr %retval, align 4
  ret i32 %147
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
