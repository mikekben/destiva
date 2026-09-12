; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

@ATH = external hidden global [88 x float], align 16

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind
declare double @atan(double noundef) #3

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @_vp_psy_init(ptr noundef %p, ptr noundef %vi, ptr noundef %gi, i32 noundef %n, i64 noundef %rate) #4 {
entry:
  %p.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %rate.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %maxoc = alloca i64, align 8
  %endpos = alloca i32, align 4
  %base = alloca float, align 4
  %delta = alloca float, align 4
  %bark98 = alloca float, align 4
  %halfoc = alloca float, align 4
  %inthalfoc = alloca i32, align 4
  %del = alloca float, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i64 %rate, ptr %rate.addr, align 8
  store i64 -99, ptr %lo, align 8
  store i64 1, ptr %hi, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 88, i1 false)
  %1 = load ptr, ptr %gi.addr, align 8
  %eighth_octave_lines = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %eighth_octave_lines, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %eighth_octave_lines1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %3, i32 0, i32 9
  store i32 %2, ptr %eighth_octave_lines1, align 8
  %4 = load ptr, ptr %gi.addr, align 8
  %eighth_octave_lines2 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %eighth_octave_lines2, align 4
  %conv = sitofp i32 %5 to float
  %mul = fmul float %conv, 8.000000e+00
  %conv3 = fpext float %mul to double
  %call = call double @log(double noundef %conv3) #5
  %call4 = call double @log(double noundef 2.000000e+00) #5
  %div = fdiv double %call, %call4
  %6 = call double @llvm.rint.f64(double %div)
  %sub = fsub double %6, 1.000000e+00
  %conv5 = fptosi double %sub to i64
  %7 = load ptr, ptr %p.addr, align 8
  %shiftoc = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %7, i32 0, i32 8
  store i64 %conv5, ptr %shiftoc, align 8
  %8 = load i64, ptr %rate.addr, align 8
  %conv6 = sitofp i64 %8 to float
  %mul7 = fmul float 2.500000e-01, %conv6
  %conv8 = fpext float %mul7 to double
  %mul9 = fmul double %conv8, 5.000000e-01
  %9 = load i32, ptr %n.addr, align 4
  %conv10 = sitofp i32 %9 to double
  %div11 = fdiv double %mul9, %conv10
  %call12 = call double @log(double noundef %div11) #5
  %10 = call double @llvm.fmuladd.f64(double %call12, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %11 = load ptr, ptr %p.addr, align 8
  %shiftoc14 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %11, i32 0, i32 8
  %12 = load i64, ptr %shiftoc14, align 8
  %add = add nsw i64 %12, 1
  %sh_prom = trunc i64 %add to i32
  %shl = shl i32 1, %sh_prom
  %conv15 = sitofp i32 %shl to double
  %13 = load ptr, ptr %gi.addr, align 8
  %eighth_octave_lines17 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %eighth_octave_lines17, align 4
  %conv18 = sitofp i32 %14 to double
  %neg = fneg double %conv18
  %15 = call double @llvm.fmuladd.f64(double %10, double %conv15, double %neg)
  %conv19 = fptosi double %15 to i64
  %16 = load ptr, ptr %p.addr, align 8
  %firstoc = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %16, i32 0, i32 7
  store i64 %conv19, ptr %firstoc, align 8
  %17 = load i32, ptr %n.addr, align 4
  %conv20 = sitofp i32 %17 to float
  %add21 = fadd float %conv20, 2.500000e-01
  %18 = load i64, ptr %rate.addr, align 8
  %conv22 = sitofp i64 %18 to float
  %mul23 = fmul float %add21, %conv22
  %conv24 = fpext float %mul23 to double
  %mul25 = fmul double %conv24, 5.000000e-01
  %19 = load i32, ptr %n.addr, align 4
  %conv26 = sitofp i32 %19 to double
  %div27 = fdiv double %mul25, %conv26
  %call28 = call double @log(double noundef %div27) #5
  %20 = call double @llvm.fmuladd.f64(double %call28, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %21 = load ptr, ptr %p.addr, align 8
  %shiftoc30 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %21, i32 0, i32 8
  %22 = load i64, ptr %shiftoc30, align 8
  %add31 = add nsw i64 %22, 1
  %sh_prom32 = trunc i64 %add31 to i32
  %shl33 = shl i32 1, %sh_prom32
  %conv34 = sitofp i32 %shl33 to double
  %23 = call double @llvm.fmuladd.f64(double %20, double %conv34, double 5.000000e-01)
  %conv36 = fptosi double %23 to i64
  store i64 %conv36, ptr %maxoc, align 8
  %24 = load i64, ptr %maxoc, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %firstoc37 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %25, i32 0, i32 7
  %26 = load i64, ptr %firstoc37, align 8
  %sub38 = sub nsw i64 %24, %26
  %add39 = add nsw i64 %sub38, 1
  %conv40 = trunc i64 %add39 to i32
  %27 = load ptr, ptr %p.addr, align 8
  %total_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %27, i32 0, i32 10
  store i32 %conv40, ptr %total_octave_lines, align 4
  %28 = load i32, ptr %n.addr, align 4
  %conv41 = sext i32 %28 to i64
  %mul42 = mul i64 %conv41, 4
  %call43 = call noalias ptr @malloc(i64 noundef %mul42) #6
  %29 = load ptr, ptr %p.addr, align 8
  %ath = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %29, i32 0, i32 4
  store ptr %call43, ptr %ath, align 8
  %30 = load i32, ptr %n.addr, align 4
  %conv44 = sext i32 %30 to i64
  %mul45 = mul i64 %conv44, 8
  %call46 = call noalias ptr @malloc(i64 noundef %mul45) #6
  %31 = load ptr, ptr %p.addr, align 8
  %octave = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %31, i32 0, i32 5
  store ptr %call46, ptr %octave, align 8
  %32 = load i32, ptr %n.addr, align 4
  %conv47 = sext i32 %32 to i64
  %mul48 = mul i64 %conv47, 8
  %call49 = call noalias ptr @malloc(i64 noundef %mul48) #6
  %33 = load ptr, ptr %p.addr, align 8
  %bark = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %33, i32 0, i32 6
  store ptr %call49, ptr %bark, align 8
  %34 = load ptr, ptr %vi.addr, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %vi50 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %35, i32 0, i32 1
  store ptr %34, ptr %vi50, align 8
  %36 = load i32, ptr %n.addr, align 4
  %37 = load ptr, ptr %p.addr, align 8
  %n51 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %37, i32 0, i32 0
  store i32 %36, ptr %n51, align 8
  %38 = load i64, ptr %rate.addr, align 8
  %39 = load ptr, ptr %p.addr, align 8
  %rate52 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %39, i32 0, i32 11
  store i64 %38, ptr %rate52, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc90, %entry
  %40 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %40, 87
  br i1 %cmp, label %for.body, label %for.end92

for.body:                                         ; preds = %for.cond
  %41 = load i64, ptr %i, align 8
  %add54 = add nsw i64 %41, 1
  %conv55 = sitofp i64 %add54 to double
  %42 = call double @llvm.fmuladd.f64(double %conv55, double 1.250000e-01, double -2.000000e+00)
  %add57 = fadd double %42, 0x4017DCF680000000
  %mul58 = fmul double %add57, 0x3FE62E42A0000000
  %call59 = call double @exp(double noundef %mul58) #5
  %mul60 = fmul double %call59, 2.000000e+00
  %43 = load i32, ptr %n.addr, align 4
  %conv61 = sitofp i32 %43 to double
  %mul62 = fmul double %mul60, %conv61
  %44 = load i64, ptr %rate.addr, align 8
  %conv63 = sitofp i64 %44 to double
  %div64 = fdiv double %mul62, %conv63
  %45 = call double @llvm.rint.f64(double %div64)
  %conv65 = fptosi double %45 to i32
  store i32 %conv65, ptr %endpos, align 4
  %46 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [88 x float], ptr @ATH, i64 0, i64 %46
  %47 = load float, ptr %arrayidx, align 4
  store float %47, ptr %base, align 4
  %48 = load i64, ptr %j, align 8
  %49 = load i32, ptr %endpos, align 4
  %conv66 = sext i32 %49 to i64
  %cmp67 = icmp slt i64 %48, %conv66
  br i1 %cmp67, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %50 = load i64, ptr %i, align 8
  %add69 = add nsw i64 %50, 1
  %arrayidx70 = getelementptr inbounds [88 x float], ptr @ATH, i64 0, i64 %add69
  %51 = load float, ptr %arrayidx70, align 4
  %52 = load float, ptr %base, align 4
  %sub71 = fsub float %51, %52
  %53 = load i32, ptr %endpos, align 4
  %conv72 = sext i32 %53 to i64
  %54 = load i64, ptr %j, align 8
  %sub73 = sub nsw i64 %conv72, %54
  %conv74 = sitofp i64 %sub73 to float
  %div75 = fdiv float %sub71, %conv74
  store float %div75, ptr %delta, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc, %if.then
  %55 = load i64, ptr %j, align 8
  %56 = load i32, ptr %endpos, align 4
  %conv77 = sext i32 %56 to i64
  %cmp78 = icmp slt i64 %55, %conv77
  br i1 %cmp78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond76
  %57 = load i64, ptr %j, align 8
  %58 = load i32, ptr %n.addr, align 4
  %conv80 = sext i32 %58 to i64
  %cmp81 = icmp slt i64 %57, %conv80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond76
  %59 = phi i1 [ false, %for.cond76 ], [ %cmp81, %land.rhs ]
  br i1 %59, label %for.body83, label %for.end

for.body83:                                       ; preds = %land.end
  %60 = load float, ptr %base, align 4
  %conv84 = fpext float %60 to double
  %add85 = fadd double %conv84, 1.000000e+02
  %conv86 = fptrunc double %add85 to float
  %61 = load ptr, ptr %p.addr, align 8
  %ath87 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %ath87, align 8
  %63 = load i64, ptr %j, align 8
  %arrayidx88 = getelementptr inbounds float, ptr %62, i64 %63
  store float %conv86, ptr %arrayidx88, align 4
  %64 = load float, ptr %delta, align 4
  %65 = load float, ptr %base, align 4
  %add89 = fadd float %65, %64
  store float %add89, ptr %base, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body83
  %66 = load i64, ptr %j, align 8
  %inc = add nsw i64 %66, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond76, !llvm.loop !6

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc90

for.inc90:                                        ; preds = %if.end
  %67 = load i64, ptr %i, align 8
  %inc91 = add nsw i64 %67, 1
  store i64 %inc91, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end92:                                        ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc232, %for.end92
  %68 = load i64, ptr %i, align 8
  %69 = load i32, ptr %n.addr, align 4
  %conv94 = sext i32 %69 to i64
  %cmp95 = icmp slt i64 %68, %conv94
  br i1 %cmp95, label %for.body97, label %for.end234

for.body97:                                       ; preds = %for.cond93
  %70 = load i64, ptr %rate.addr, align 8
  %71 = load i32, ptr %n.addr, align 4
  %mul99 = mul nsw i32 2, %71
  %conv100 = sext i32 %mul99 to i64
  %div101 = sdiv i64 %70, %conv100
  %72 = load i64, ptr %i, align 8
  %mul102 = mul nsw i64 %div101, %72
  %conv103 = sitofp i64 %mul102 to float
  %mul104 = fmul float 0x3F483F91E0000000, %conv103
  %conv105 = fpext float %mul104 to double
  %call106 = call double @atan(double noundef %conv105) #5
  %73 = load i64, ptr %rate.addr, align 8
  %74 = load i32, ptr %n.addr, align 4
  %mul108 = mul nsw i32 2, %74
  %conv109 = sext i32 %mul108 to i64
  %div110 = sdiv i64 %73, %conv109
  %75 = load i64, ptr %i, align 8
  %mul111 = mul nsw i64 %div110, %75
  %76 = load i64, ptr %rate.addr, align 8
  %77 = load i32, ptr %n.addr, align 4
  %mul112 = mul nsw i32 2, %77
  %conv113 = sext i32 %mul112 to i64
  %div114 = sdiv i64 %76, %conv113
  %78 = load i64, ptr %i, align 8
  %mul115 = mul nsw i64 %div114, %78
  %mul116 = mul nsw i64 %mul111, %mul115
  %conv117 = sitofp i64 %mul116 to float
  %mul118 = fmul float %conv117, 0x3E53DD3DC0000000
  %conv119 = fpext float %mul118 to double
  %call120 = call double @atan(double noundef %conv119) #5
  %mul121 = fmul double 0x4001EB8520000000, %call120
  %79 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call106, double %mul121)
  %80 = load i64, ptr %rate.addr, align 8
  %81 = load i32, ptr %n.addr, align 4
  %mul122 = mul nsw i32 2, %81
  %conv123 = sext i32 %mul122 to i64
  %div124 = sdiv i64 %80, %conv123
  %82 = load i64, ptr %i, align 8
  %mul125 = mul nsw i64 %div124, %82
  %conv126 = sitofp i64 %mul125 to float
  %mul127 = fmul float 0x3F1A36E2E0000000, %conv126
  %conv128 = fpext float %mul127 to double
  %add129 = fadd double %79, %conv128
  %conv130 = fptrunc double %add129 to float
  store float %conv130, ptr %bark98, align 4
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc174, %for.body97
  %83 = load i64, ptr %lo, align 8
  %84 = load ptr, ptr %vi.addr, align 8
  %noisewindowlomin = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %84, i32 0, i32 12
  %85 = load i32, ptr %noisewindowlomin, align 8
  %conv132 = sext i32 %85 to i64
  %add133 = add nsw i64 %83, %conv132
  %86 = load i64, ptr %i, align 8
  %cmp134 = icmp slt i64 %add133, %86
  br i1 %cmp134, label %land.rhs136, label %land.end172

land.rhs136:                                      ; preds = %for.cond131
  %87 = load i64, ptr %rate.addr, align 8
  %88 = load i32, ptr %n.addr, align 4
  %mul137 = mul nsw i32 2, %88
  %conv138 = sext i32 %mul137 to i64
  %div139 = sdiv i64 %87, %conv138
  %89 = load i64, ptr %lo, align 8
  %mul140 = mul nsw i64 %div139, %89
  %conv141 = sitofp i64 %mul140 to float
  %mul142 = fmul float 0x3F483F91E0000000, %conv141
  %conv143 = fpext float %mul142 to double
  %call144 = call double @atan(double noundef %conv143) #5
  %90 = load i64, ptr %rate.addr, align 8
  %91 = load i32, ptr %n.addr, align 4
  %mul146 = mul nsw i32 2, %91
  %conv147 = sext i32 %mul146 to i64
  %div148 = sdiv i64 %90, %conv147
  %92 = load i64, ptr %lo, align 8
  %mul149 = mul nsw i64 %div148, %92
  %93 = load i64, ptr %rate.addr, align 8
  %94 = load i32, ptr %n.addr, align 4
  %mul150 = mul nsw i32 2, %94
  %conv151 = sext i32 %mul150 to i64
  %div152 = sdiv i64 %93, %conv151
  %95 = load i64, ptr %lo, align 8
  %mul153 = mul nsw i64 %div152, %95
  %mul154 = mul nsw i64 %mul149, %mul153
  %conv155 = sitofp i64 %mul154 to float
  %mul156 = fmul float %conv155, 0x3E53DD3DC0000000
  %conv157 = fpext float %mul156 to double
  %call158 = call double @atan(double noundef %conv157) #5
  %mul159 = fmul double 0x4001EB8520000000, %call158
  %96 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call144, double %mul159)
  %97 = load i64, ptr %rate.addr, align 8
  %98 = load i32, ptr %n.addr, align 4
  %mul160 = mul nsw i32 2, %98
  %conv161 = sext i32 %mul160 to i64
  %div162 = sdiv i64 %97, %conv161
  %99 = load i64, ptr %lo, align 8
  %mul163 = mul nsw i64 %div162, %99
  %conv164 = sitofp i64 %mul163 to float
  %mul165 = fmul float 0x3F1A36E2E0000000, %conv164
  %conv166 = fpext float %mul165 to double
  %add167 = fadd double %96, %conv166
  %100 = load float, ptr %bark98, align 4
  %101 = load ptr, ptr %vi.addr, align 8
  %noisewindowlo = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %101, i32 0, i32 10
  %102 = load float, ptr %noisewindowlo, align 8
  %sub168 = fsub float %100, %102
  %conv169 = fpext float %sub168 to double
  %cmp170 = fcmp olt double %add167, %conv169
  br label %land.end172

land.end172:                                      ; preds = %land.rhs136, %for.cond131
  %103 = phi i1 [ false, %for.cond131 ], [ %cmp170, %land.rhs136 ]
  br i1 %103, label %for.body173, label %for.end176

for.body173:                                      ; preds = %land.end172
  br label %for.inc174

for.inc174:                                       ; preds = %for.body173
  %104 = load i64, ptr %lo, align 8
  %inc175 = add nsw i64 %104, 1
  store i64 %inc175, ptr %lo, align 8
  br label %for.cond131, !llvm.loop !9

for.end176:                                       ; preds = %land.end172
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc223, %for.end176
  %105 = load i64, ptr %hi, align 8
  %106 = load i32, ptr %n.addr, align 4
  %conv178 = sext i32 %106 to i64
  %cmp179 = icmp sle i64 %105, %conv178
  br i1 %cmp179, label %land.rhs181, label %land.end221

land.rhs181:                                      ; preds = %for.cond177
  %107 = load i64, ptr %hi, align 8
  %108 = load i64, ptr %i, align 8
  %109 = load ptr, ptr %vi.addr, align 8
  %noisewindowhimin = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %109, i32 0, i32 13
  %110 = load i32, ptr %noisewindowhimin, align 4
  %conv182 = sext i32 %110 to i64
  %add183 = add nsw i64 %108, %conv182
  %cmp184 = icmp slt i64 %107, %add183
  br i1 %cmp184, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs181
  %111 = load i64, ptr %rate.addr, align 8
  %112 = load i32, ptr %n.addr, align 4
  %mul186 = mul nsw i32 2, %112
  %conv187 = sext i32 %mul186 to i64
  %div188 = sdiv i64 %111, %conv187
  %113 = load i64, ptr %hi, align 8
  %mul189 = mul nsw i64 %div188, %113
  %conv190 = sitofp i64 %mul189 to float
  %mul191 = fmul float 0x3F483F91E0000000, %conv190
  %conv192 = fpext float %mul191 to double
  %call193 = call double @atan(double noundef %conv192) #5
  %114 = load i64, ptr %rate.addr, align 8
  %115 = load i32, ptr %n.addr, align 4
  %mul195 = mul nsw i32 2, %115
  %conv196 = sext i32 %mul195 to i64
  %div197 = sdiv i64 %114, %conv196
  %116 = load i64, ptr %hi, align 8
  %mul198 = mul nsw i64 %div197, %116
  %117 = load i64, ptr %rate.addr, align 8
  %118 = load i32, ptr %n.addr, align 4
  %mul199 = mul nsw i32 2, %118
  %conv200 = sext i32 %mul199 to i64
  %div201 = sdiv i64 %117, %conv200
  %119 = load i64, ptr %hi, align 8
  %mul202 = mul nsw i64 %div201, %119
  %mul203 = mul nsw i64 %mul198, %mul202
  %conv204 = sitofp i64 %mul203 to float
  %mul205 = fmul float %conv204, 0x3E53DD3DC0000000
  %conv206 = fpext float %mul205 to double
  %call207 = call double @atan(double noundef %conv206) #5
  %mul208 = fmul double 0x4001EB8520000000, %call207
  %120 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call193, double %mul208)
  %121 = load i64, ptr %rate.addr, align 8
  %122 = load i32, ptr %n.addr, align 4
  %mul209 = mul nsw i32 2, %122
  %conv210 = sext i32 %mul209 to i64
  %div211 = sdiv i64 %121, %conv210
  %123 = load i64, ptr %hi, align 8
  %mul212 = mul nsw i64 %div211, %123
  %conv213 = sitofp i64 %mul212 to float
  %mul214 = fmul float 0x3F1A36E2E0000000, %conv213
  %conv215 = fpext float %mul214 to double
  %add216 = fadd double %120, %conv215
  %124 = load float, ptr %bark98, align 4
  %125 = load ptr, ptr %vi.addr, align 8
  %noisewindowhi = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %125, i32 0, i32 11
  %126 = load float, ptr %noisewindowhi, align 4
  %add217 = fadd float %124, %126
  %conv218 = fpext float %add217 to double
  %cmp219 = fcmp olt double %add216, %conv218
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs181
  %127 = phi i1 [ true, %land.rhs181 ], [ %cmp219, %lor.rhs ]
  br label %land.end221

land.end221:                                      ; preds = %lor.end, %for.cond177
  %128 = phi i1 [ false, %for.cond177 ], [ %127, %lor.end ]
  br i1 %128, label %for.body222, label %for.end225

for.body222:                                      ; preds = %land.end221
  br label %for.inc223

for.inc223:                                       ; preds = %for.body222
  %129 = load i64, ptr %hi, align 8
  %inc224 = add nsw i64 %129, 1
  store i64 %inc224, ptr %hi, align 8
  br label %for.cond177, !llvm.loop !10

for.end225:                                       ; preds = %land.end221
  %130 = load i64, ptr %lo, align 8
  %sub226 = sub nsw i64 %130, 1
  %shl227 = shl i64 %sub226, 16
  %131 = load i64, ptr %hi, align 8
  %sub228 = sub nsw i64 %131, 1
  %add229 = add nsw i64 %shl227, %sub228
  %132 = load ptr, ptr %p.addr, align 8
  %bark230 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %132, i32 0, i32 6
  %133 = load ptr, ptr %bark230, align 8
  %134 = load i64, ptr %i, align 8
  %arrayidx231 = getelementptr inbounds i64, ptr %133, i64 %134
  store i64 %add229, ptr %arrayidx231, align 8
  br label %for.inc232

for.inc232:                                       ; preds = %for.end225
  %135 = load i64, ptr %i, align 8
  %inc233 = add nsw i64 %135, 1
  store i64 %inc233, ptr %i, align 8
  br label %for.cond93, !llvm.loop !11

for.end234:                                       ; preds = %for.cond93
  store i64 0, ptr %i, align 8
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc259, %for.end234
  %136 = load i64, ptr %i, align 8
  %137 = load i32, ptr %n.addr, align 4
  %conv236 = sext i32 %137 to i64
  %cmp237 = icmp slt i64 %136, %conv236
  br i1 %cmp237, label %for.body239, label %for.end261

for.body239:                                      ; preds = %for.cond235
  %138 = load i64, ptr %i, align 8
  %conv240 = sitofp i64 %138 to float
  %add241 = fadd float %conv240, 2.500000e-01
  %conv242 = fpext float %add241 to double
  %mul243 = fmul double %conv242, 5.000000e-01
  %139 = load i64, ptr %rate.addr, align 8
  %conv244 = sitofp i64 %139 to double
  %mul245 = fmul double %mul243, %conv244
  %140 = load i32, ptr %n.addr, align 4
  %conv246 = sitofp i32 %140 to double
  %div247 = fdiv double %mul245, %conv246
  %call248 = call double @log(double noundef %div247) #5
  %141 = call double @llvm.fmuladd.f64(double %call248, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %142 = load ptr, ptr %p.addr, align 8
  %shiftoc250 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %142, i32 0, i32 8
  %143 = load i64, ptr %shiftoc250, align 8
  %add251 = add nsw i64 %143, 1
  %sh_prom252 = trunc i64 %add251 to i32
  %shl253 = shl i32 1, %sh_prom252
  %conv254 = sitofp i32 %shl253 to double
  %144 = call double @llvm.fmuladd.f64(double %141, double %conv254, double 5.000000e-01)
  %conv256 = fptosi double %144 to i64
  %145 = load ptr, ptr %p.addr, align 8
  %octave257 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %145, i32 0, i32 5
  %146 = load ptr, ptr %octave257, align 8
  %147 = load i64, ptr %i, align 8
  %arrayidx258 = getelementptr inbounds i64, ptr %146, i64 %147
  store i64 %conv256, ptr %arrayidx258, align 8
  br label %for.inc259

for.inc259:                                       ; preds = %for.body239
  %148 = load i64, ptr %i, align 8
  %inc260 = add nsw i64 %148, 1
  store i64 %inc260, ptr %i, align 8
  br label %for.cond235, !llvm.loop !12

for.end261:                                       ; preds = %for.cond235
  %149 = load ptr, ptr %vi.addr, align 8
  %toneatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %149, i32 0, i32 7
  %arraydecay = getelementptr inbounds [17 x float], ptr %toneatt, i64 0, i64 0
  %150 = load i64, ptr %rate.addr, align 8
  %conv262 = sitofp i64 %150 to double
  %mul263 = fmul double %conv262, 5.000000e-01
  %151 = load i32, ptr %n.addr, align 4
  %conv264 = sitofp i32 %151 to double
  %div265 = fdiv double %mul263, %conv264
  %conv266 = fptrunc double %div265 to float
  %152 = load i32, ptr %n.addr, align 4
  %153 = load ptr, ptr %vi.addr, align 8
  %tone_centerboost = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %153, i32 0, i32 4
  %154 = load float, ptr %tone_centerboost, align 8
  %155 = load ptr, ptr %vi.addr, align 8
  %tone_decay = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %155, i32 0, i32 5
  %156 = load float, ptr %tone_decay, align 4
  %call267 = call ptr @setup_tone_curves(ptr noundef %arraydecay, float noundef %conv266, i32 noundef %152, float noundef %154, float noundef %156)
  %157 = load ptr, ptr %p.addr, align 8
  %tonecurves = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %157, i32 0, i32 2
  store ptr %call267, ptr %tonecurves, align 8
  %call268 = call noalias ptr @malloc(i64 noundef 24) #6
  %158 = load ptr, ptr %p.addr, align 8
  %noiseoffset = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %158, i32 0, i32 3
  store ptr %call268, ptr %noiseoffset, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond269

for.cond269:                                      ; preds = %for.inc278, %for.end261
  %159 = load i64, ptr %i, align 8
  %cmp270 = icmp slt i64 %159, 3
  br i1 %cmp270, label %for.body272, label %for.end280

for.body272:                                      ; preds = %for.cond269
  %160 = load i32, ptr %n.addr, align 4
  %conv273 = sext i32 %160 to i64
  %mul274 = mul i64 %conv273, 4
  %call275 = call noalias ptr @malloc(i64 noundef %mul274) #6
  %161 = load ptr, ptr %p.addr, align 8
  %noiseoffset276 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %161, i32 0, i32 3
  %162 = load ptr, ptr %noiseoffset276, align 8
  %163 = load i64, ptr %i, align 8
  %arrayidx277 = getelementptr inbounds ptr, ptr %162, i64 %163
  store ptr %call275, ptr %arrayidx277, align 8
  br label %for.inc278

for.inc278:                                       ; preds = %for.body272
  %164 = load i64, ptr %i, align 8
  %inc279 = add nsw i64 %164, 1
  store i64 %inc279, ptr %i, align 8
  br label %for.cond269, !llvm.loop !13

for.end280:                                       ; preds = %for.cond269
  store i64 0, ptr %i, align 8
  br label %for.cond281

for.cond281:                                      ; preds = %for.inc334, %for.end280
  %165 = load i64, ptr %i, align 8
  %166 = load i32, ptr %n.addr, align 4
  %conv282 = sext i32 %166 to i64
  %cmp283 = icmp slt i64 %165, %conv282
  br i1 %cmp283, label %for.body285, label %for.end336

for.body285:                                      ; preds = %for.cond281
  %167 = load i64, ptr %i, align 8
  %conv286 = sitofp i64 %167 to double
  %add287 = fadd double %conv286, 5.000000e-01
  %168 = load i64, ptr %rate.addr, align 8
  %conv288 = sitofp i64 %168 to double
  %mul289 = fmul double %add287, %conv288
  %169 = load i32, ptr %n.addr, align 4
  %conv290 = sitofp i32 %169 to double
  %mul291 = fmul double 2.000000e+00, %conv290
  %div292 = fdiv double %mul289, %mul291
  %call293 = call double @log(double noundef %div292) #5
  %170 = call double @llvm.fmuladd.f64(double %call293, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %mul295 = fmul double %170, 2.000000e+00
  %conv296 = fptrunc double %mul295 to float
  store float %conv296, ptr %halfoc, align 4
  %171 = load float, ptr %halfoc, align 4
  %cmp297 = fcmp olt float %171, 0.000000e+00
  br i1 %cmp297, label %if.then299, label %if.end300

if.then299:                                       ; preds = %for.body285
  store float 0.000000e+00, ptr %halfoc, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %for.body285
  %172 = load float, ptr %halfoc, align 4
  %cmp301 = fcmp oge float %172, 1.600000e+01
  br i1 %cmp301, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.end300
  store float 1.600000e+01, ptr %halfoc, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.then303, %if.end300
  %173 = load float, ptr %halfoc, align 4
  %conv305 = fptosi float %173 to i32
  store i32 %conv305, ptr %inthalfoc, align 4
  %174 = load float, ptr %halfoc, align 4
  %175 = load i32, ptr %inthalfoc, align 4
  %conv306 = sitofp i32 %175 to float
  %sub307 = fsub float %174, %conv306
  store float %sub307, ptr %del, align 4
  store i64 0, ptr %j, align 8
  br label %for.cond308

for.cond308:                                      ; preds = %for.inc331, %if.end304
  %176 = load i64, ptr %j, align 8
  %cmp309 = icmp slt i64 %176, 3
  br i1 %cmp309, label %for.body311, label %for.end333

for.body311:                                      ; preds = %for.cond308
  %177 = load ptr, ptr %p.addr, align 8
  %vi312 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %177, i32 0, i32 1
  %178 = load ptr, ptr %vi312, align 8
  %noiseoff = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %178, i32 0, i32 15
  %179 = load i64, ptr %j, align 8
  %arrayidx313 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff, i64 0, i64 %179
  %180 = load i32, ptr %inthalfoc, align 4
  %idxprom = sext i32 %180 to i64
  %arrayidx314 = getelementptr inbounds [17 x float], ptr %arrayidx313, i64 0, i64 %idxprom
  %181 = load float, ptr %arrayidx314, align 4
  %conv315 = fpext float %181 to double
  %182 = load float, ptr %del, align 4
  %conv316 = fpext float %182 to double
  %sub317 = fsub double 1.000000e+00, %conv316
  %183 = load ptr, ptr %p.addr, align 8
  %vi319 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %183, i32 0, i32 1
  %184 = load ptr, ptr %vi319, align 8
  %noiseoff320 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %184, i32 0, i32 15
  %185 = load i64, ptr %j, align 8
  %arrayidx321 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff320, i64 0, i64 %185
  %186 = load i32, ptr %inthalfoc, align 4
  %add322 = add nsw i32 %186, 1
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [17 x float], ptr %arrayidx321, i64 0, i64 %idxprom323
  %187 = load float, ptr %arrayidx324, align 4
  %188 = load float, ptr %del, align 4
  %mul325 = fmul float %187, %188
  %conv326 = fpext float %mul325 to double
  %189 = call double @llvm.fmuladd.f64(double %conv315, double %sub317, double %conv326)
  %conv327 = fptrunc double %189 to float
  %190 = load ptr, ptr %p.addr, align 8
  %noiseoffset328 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %190, i32 0, i32 3
  %191 = load ptr, ptr %noiseoffset328, align 8
  %192 = load i64, ptr %j, align 8
  %arrayidx329 = getelementptr inbounds ptr, ptr %191, i64 %192
  %193 = load ptr, ptr %arrayidx329, align 8
  %194 = load i64, ptr %i, align 8
  %arrayidx330 = getelementptr inbounds float, ptr %193, i64 %194
  store float %conv327, ptr %arrayidx330, align 4
  br label %for.inc331

for.inc331:                                       ; preds = %for.body311
  %195 = load i64, ptr %j, align 8
  %inc332 = add nsw i64 %195, 1
  store i64 %inc332, ptr %j, align 8
  br label %for.cond308, !llvm.loop !14

for.end333:                                       ; preds = %for.cond308
  br label %for.inc334

for.inc334:                                       ; preds = %for.end333
  %196 = load i64, ptr %i, align 8
  %inc335 = add nsw i64 %196, 1
  store i64 %inc335, ptr %i, align 8
  br label %for.cond281, !llvm.loop !15

for.end336:                                       ; preds = %for.cond281
  ret void
}

; Function Attrs: nounwind
declare double @exp(double noundef) #3

; Function Attrs: nounwind uwtable
declare hidden ptr @setup_tone_curves(ptr noundef, float noundef, i32 noundef, float noundef, float noundef) #4

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
