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
%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @_ve_envelope_init(ptr noundef %e, ptr noundef %vi) #2 {
entry:
  %e.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 17
  store ptr %psy_g_param, ptr %gi, align 8
  %3 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %channels, align 4
  store i32 %4, ptr %ch, align 4
  %5 = load ptr, ptr %e.addr, align 8
  %winlength = getelementptr inbounds nuw %struct.envelope_lookup, ptr %5, i32 0, i32 1
  store i32 128, ptr %winlength, align 4
  store i32 128, ptr %n, align 4
  %6 = load ptr, ptr %e.addr, align 8
  %searchstep = getelementptr inbounds nuw %struct.envelope_lookup, ptr %6, i32 0, i32 2
  store i32 64, ptr %searchstep, align 8
  %7 = load ptr, ptr %gi, align 8
  %preecho_minenergy = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %7, i32 0, i32 4
  %8 = load float, ptr %preecho_minenergy, align 4
  %9 = load ptr, ptr %e.addr, align 8
  %minenergy = getelementptr inbounds nuw %struct.envelope_lookup, ptr %9, i32 0, i32 3
  store float %8, ptr %minenergy, align 4
  %10 = load i32, ptr %ch, align 4
  %11 = load ptr, ptr %e.addr, align 8
  %ch1 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %11, i32 0, i32 0
  store i32 %10, ptr %ch1, align 8
  %12 = load ptr, ptr %e.addr, align 8
  %storage = getelementptr inbounds nuw %struct.envelope_lookup, ptr %12, i32 0, i32 10
  store i64 128, ptr %storage, align 8
  %13 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 1
  %14 = load i64, ptr %arrayidx, align 8
  %div = sdiv i64 %14, 2
  %15 = load ptr, ptr %e.addr, align 8
  %cursor = getelementptr inbounds nuw %struct.envelope_lookup, ptr %15, i32 0, i32 13
  store i64 %div, ptr %cursor, align 8
  %16 = load i32, ptr %n, align 4
  %conv = sext i32 %16 to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #4
  %17 = load ptr, ptr %e.addr, align 8
  %mdct_win = getelementptr inbounds nuw %struct.envelope_lookup, ptr %17, i32 0, i32 5
  store ptr %call, ptr %mdct_win, align 8
  %18 = load ptr, ptr %e.addr, align 8
  %mdct = getelementptr inbounds nuw %struct.envelope_lookup, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %n, align 4
  call void @mdct_init(ptr noundef %mdct, i32 noundef %19)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %i, align 4
  %conv3 = sitofp i32 %22 to double
  %23 = load i32, ptr %n, align 4
  %conv4 = sitofp i32 %23 to double
  %sub = fsub double %conv4, 1.000000e+00
  %div5 = fdiv double %conv3, %sub
  %mul = fmul double %div5, 0x400921FB54442D18
  %call6 = call double @sin(double noundef %mul) #5
  %conv7 = fptrunc double %call6 to float
  %24 = load ptr, ptr %e.addr, align 8
  %mdct_win8 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %mdct_win8, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %25, i64 %idxprom
  store float %conv7, ptr %arrayidx9, align 4
  %27 = load ptr, ptr %e.addr, align 8
  %mdct_win10 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %mdct_win10, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %29 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %28, i64 %idxprom11
  %30 = load float, ptr %arrayidx12, align 4
  %31 = load ptr, ptr %e.addr, align 8
  %mdct_win13 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %mdct_win13, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %33 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %32, i64 %idxprom14
  %34 = load float, ptr %arrayidx15, align 4
  %mul16 = fmul float %34, %30
  store float %mul16, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %e.addr, align 8
  %band = getelementptr inbounds nuw %struct.envelope_lookup, ptr %36, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band, i64 0, i64 0
  %begin = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx17, i32 0, i32 0
  store i32 2, ptr %begin, align 8
  %37 = load ptr, ptr %e.addr, align 8
  %band18 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %37, i32 0, i32 6
  %arrayidx19 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band18, i64 0, i64 0
  %end = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx19, i32 0, i32 1
  store i32 4, ptr %end, align 4
  %38 = load ptr, ptr %e.addr, align 8
  %band20 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %38, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band20, i64 0, i64 1
  %begin22 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx21, i32 0, i32 0
  store i32 4, ptr %begin22, align 8
  %39 = load ptr, ptr %e.addr, align 8
  %band23 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %39, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band23, i64 0, i64 1
  %end25 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx24, i32 0, i32 1
  store i32 5, ptr %end25, align 4
  %40 = load ptr, ptr %e.addr, align 8
  %band26 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %40, i32 0, i32 6
  %arrayidx27 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band26, i64 0, i64 2
  %begin28 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx27, i32 0, i32 0
  store i32 6, ptr %begin28, align 8
  %41 = load ptr, ptr %e.addr, align 8
  %band29 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %41, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band29, i64 0, i64 2
  %end31 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx30, i32 0, i32 1
  store i32 6, ptr %end31, align 4
  %42 = load ptr, ptr %e.addr, align 8
  %band32 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %42, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band32, i64 0, i64 3
  %begin34 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx33, i32 0, i32 0
  store i32 9, ptr %begin34, align 8
  %43 = load ptr, ptr %e.addr, align 8
  %band35 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %43, i32 0, i32 6
  %arrayidx36 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band35, i64 0, i64 3
  %end37 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx36, i32 0, i32 1
  store i32 8, ptr %end37, align 4
  %44 = load ptr, ptr %e.addr, align 8
  %band38 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %44, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band38, i64 0, i64 4
  %begin40 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx39, i32 0, i32 0
  store i32 13, ptr %begin40, align 8
  %45 = load ptr, ptr %e.addr, align 8
  %band41 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %45, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band41, i64 0, i64 4
  %end43 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx42, i32 0, i32 1
  store i32 8, ptr %end43, align 4
  %46 = load ptr, ptr %e.addr, align 8
  %band44 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %46, i32 0, i32 6
  %arrayidx45 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band44, i64 0, i64 5
  %begin46 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx45, i32 0, i32 0
  store i32 17, ptr %begin46, align 8
  %47 = load ptr, ptr %e.addr, align 8
  %band47 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %47, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band47, i64 0, i64 5
  %end49 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx48, i32 0, i32 1
  store i32 8, ptr %end49, align 4
  %48 = load ptr, ptr %e.addr, align 8
  %band50 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %48, i32 0, i32 6
  %arrayidx51 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band50, i64 0, i64 6
  %begin52 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx51, i32 0, i32 0
  store i32 22, ptr %begin52, align 8
  %49 = load ptr, ptr %e.addr, align 8
  %band53 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %49, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band53, i64 0, i64 6
  %end55 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx54, i32 0, i32 1
  store i32 8, ptr %end55, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc110, %for.end
  %50 = load i32, ptr %j, align 4
  %cmp57 = icmp slt i32 %50, 7
  br i1 %cmp57, label %for.body59, label %for.end112

for.body59:                                       ; preds = %for.cond56
  %51 = load ptr, ptr %e.addr, align 8
  %band60 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %51, i32 0, i32 6
  %52 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band60, i64 0, i64 %idxprom61
  %end63 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx62, i32 0, i32 1
  %53 = load i32, ptr %end63, align 4
  store i32 %53, ptr %n, align 4
  %54 = load i32, ptr %n, align 4
  %conv64 = sext i32 %54 to i64
  %mul65 = mul i64 %conv64, 4
  %call66 = call noalias ptr @malloc(i64 noundef %mul65) #6
  %55 = load ptr, ptr %e.addr, align 8
  %band67 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %55, i32 0, i32 6
  %56 = load i32, ptr %j, align 4
  %idxprom68 = sext i32 %56 to i64
  %arrayidx69 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band67, i64 0, i64 %idxprom68
  %window = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx69, i32 0, i32 2
  store ptr %call66, ptr %window, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc96, %for.body59
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %n, align 4
  %cmp71 = icmp slt i32 %57, %58
  br i1 %cmp71, label %for.body73, label %for.end98

for.body73:                                       ; preds = %for.cond70
  %59 = load i32, ptr %i, align 4
  %conv74 = sitofp i32 %59 to double
  %add = fadd double %conv74, 5.000000e-01
  %60 = load i32, ptr %n, align 4
  %conv75 = sitofp i32 %60 to double
  %div76 = fdiv double %add, %conv75
  %mul77 = fmul double %div76, 0x400921FB54442D18
  %call78 = call double @sin(double noundef %mul77) #5
  %conv79 = fptrunc double %call78 to float
  %61 = load ptr, ptr %e.addr, align 8
  %band80 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %61, i32 0, i32 6
  %62 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %62 to i64
  %arrayidx82 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band80, i64 0, i64 %idxprom81
  %window83 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx82, i32 0, i32 2
  %63 = load ptr, ptr %window83, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %64 to i64
  %arrayidx85 = getelementptr inbounds float, ptr %63, i64 %idxprom84
  store float %conv79, ptr %arrayidx85, align 4
  %65 = load ptr, ptr %e.addr, align 8
  %band86 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %65, i32 0, i32 6
  %66 = load i32, ptr %j, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band86, i64 0, i64 %idxprom87
  %window89 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx88, i32 0, i32 2
  %67 = load ptr, ptr %window89, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %68 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %67, i64 %idxprom90
  %69 = load float, ptr %arrayidx91, align 4
  %70 = load ptr, ptr %e.addr, align 8
  %band92 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %70, i32 0, i32 6
  %71 = load i32, ptr %j, align 4
  %idxprom93 = sext i32 %71 to i64
  %arrayidx94 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band92, i64 0, i64 %idxprom93
  %total = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx94, i32 0, i32 3
  %72 = load float, ptr %total, align 8
  %add95 = fadd float %72, %69
  store float %add95, ptr %total, align 8
  br label %for.inc96

for.inc96:                                        ; preds = %for.body73
  %73 = load i32, ptr %i, align 4
  %inc97 = add nsw i32 %73, 1
  store i32 %inc97, ptr %i, align 4
  br label %for.cond70, !llvm.loop !8

for.end98:                                        ; preds = %for.cond70
  %74 = load ptr, ptr %e.addr, align 8
  %band99 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %74, i32 0, i32 6
  %75 = load i32, ptr %j, align 4
  %idxprom100 = sext i32 %75 to i64
  %arrayidx101 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band99, i64 0, i64 %idxprom100
  %total102 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx101, i32 0, i32 3
  %76 = load float, ptr %total102, align 8
  %conv103 = fpext float %76 to double
  %div104 = fdiv double 1.000000e+00, %conv103
  %conv105 = fptrunc double %div104 to float
  %77 = load ptr, ptr %e.addr, align 8
  %band106 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %77, i32 0, i32 6
  %78 = load i32, ptr %j, align 4
  %idxprom107 = sext i32 %78 to i64
  %arrayidx108 = getelementptr inbounds [7 x %struct.envelope_band], ptr %band106, i64 0, i64 %idxprom107
  %total109 = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx108, i32 0, i32 3
  store float %conv105, ptr %total109, align 8
  br label %for.inc110

for.inc110:                                       ; preds = %for.end98
  %79 = load i32, ptr %j, align 4
  %inc111 = add nsw i32 %79, 1
  store i32 %inc111, ptr %j, align 4
  br label %for.cond56, !llvm.loop !9

for.end112:                                       ; preds = %for.cond56
  %80 = load i32, ptr %ch, align 4
  %mul113 = mul nsw i32 7, %80
  %conv114 = sext i32 %mul113 to i64
  %call115 = call noalias ptr @calloc(i64 noundef %conv114, i64 noundef 144) #4
  %81 = load ptr, ptr %e.addr, align 8
  %filter = getelementptr inbounds nuw %struct.envelope_lookup, ptr %81, i32 0, i32 7
  store ptr %call115, ptr %filter, align 8
  %82 = load ptr, ptr %e.addr, align 8
  %storage116 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %82, i32 0, i32 10
  %83 = load i64, ptr %storage116, align 8
  %call117 = call noalias ptr @calloc(i64 noundef %83, i64 noundef 4) #4
  %84 = load ptr, ptr %e.addr, align 8
  %mark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %84, i32 0, i32 9
  store ptr %call117, ptr %mark, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_init(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #3

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
