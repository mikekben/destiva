; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.envelope_filter_state = type { [17 x float], i32, [15 x float], float, float, i32 }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
declare hidden float @todB(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_forward(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_ve_amp(ptr noundef %ve, ptr noundef %gi, ptr noundef %data, ptr noundef %bands, ptr noundef %filters, i64 noundef %pos) #1 {
entry:
  %ve.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %bands.addr = alloca ptr, align 8
  %filters.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %decay = alloca float, align 4
  %minV = alloca float, align 4
  %vec = alloca ptr, align 8
  %stretch = alloca i32, align 4
  %penalty = alloca float, align 4
  %temp = alloca float, align 4
  %ptr = alloca i32, align 4
  %val = alloca float, align 4
  %acc = alloca float, align 4
  %valmax = alloca float, align 4
  %valmin = alloca float, align 4
  %p = alloca i32, align 4
  %this = alloca i32, align 4
  %postmax = alloca float, align 4
  %postmin = alloca float, align 4
  %premax = alloca float, align 4
  %premin = alloca float, align 4
  store ptr %ve, ptr %ve.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %bands, ptr %bands.addr, align 8
  store ptr %filters, ptr %filters.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  %0 = load ptr, ptr %ve.addr, align 8
  %winlength = getelementptr inbounds nuw %struct.envelope_lookup, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %winlength, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %n, align 8
  store i32 0, ptr %ret, align 4
  %2 = load ptr, ptr %ve.addr, align 8
  %minenergy = getelementptr inbounds nuw %struct.envelope_lookup, ptr %2, i32 0, i32 3
  %3 = load float, ptr %minenergy, align 4
  store float %3, ptr %minV, align 4
  %4 = load i64, ptr %n, align 8
  %mul = mul i64 %4, 4
  %5 = alloca i8, i64 %mul, align 16
  store ptr %5, ptr %vec, align 8
  %6 = load ptr, ptr %ve.addr, align 8
  %stretch1 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %stretch1, align 8
  %div = sdiv i32 %7, 2
  %cmp = icmp slt i32 2, %div
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %ve.addr, align 8
  %stretch3 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %stretch3, align 8
  %div4 = sdiv i32 %9, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div4, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, ptr %stretch, align 4
  %10 = load ptr, ptr %gi.addr, align 8
  %stretch_penalty = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %10, i32 0, i32 3
  %11 = load float, ptr %stretch_penalty, align 4
  %12 = load ptr, ptr %ve.addr, align 8
  %stretch5 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %stretch5, align 8
  %div6 = sdiv i32 %13, 2
  %sub = sub nsw i32 %div6, 2
  %conv7 = sitofp i32 %sub to float
  %sub8 = fsub float %11, %conv7
  store float %sub8, ptr %penalty, align 4
  %14 = load float, ptr %penalty, align 4
  %cmp9 = fcmp olt float %14, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store float 0.000000e+00, ptr %penalty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %15 = load float, ptr %penalty, align 4
  %16 = load ptr, ptr %gi.addr, align 8
  %stretch_penalty11 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %16, i32 0, i32 3
  %17 = load float, ptr %stretch_penalty11, align 4
  %cmp12 = fcmp ogt float %15, %17
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %18 = load ptr, ptr %gi.addr, align 8
  %stretch_penalty15 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %18, i32 0, i32 3
  %19 = load float, ptr %stretch_penalty15, align 4
  store float %19, ptr %penalty, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %20 = load i64, ptr %i, align 8
  %21 = load i64, ptr %n, align 8
  %cmp17 = icmp slt i64 %20, %21
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %data.addr, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %22, i64 %23
  %24 = load float, ptr %arrayidx, align 4
  %25 = load ptr, ptr %ve.addr, align 8
  %mdct_win = getelementptr inbounds nuw %struct.envelope_lookup, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %mdct_win, align 8
  %27 = load i64, ptr %i, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %26, i64 %27
  %28 = load float, ptr %arrayidx19, align 4
  %mul20 = fmul float %24, %28
  %29 = load ptr, ptr %vec, align 8
  %30 = load i64, ptr %i, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %29, i64 %30
  store float %mul20, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, ptr %i, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %ve.addr, align 8
  %mdct = getelementptr inbounds nuw %struct.envelope_lookup, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %vec, align 8
  %34 = load ptr, ptr %vec, align 8
  call void @mdct_forward(ptr noundef %mdct, ptr noundef %33, ptr noundef %34)
  %35 = load ptr, ptr %vec, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %35, i64 0
  %36 = load float, ptr %arrayidx22, align 4
  %37 = load ptr, ptr %vec, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %37, i64 0
  %38 = load float, ptr %arrayidx23, align 4
  %mul24 = fmul float %36, %38
  %conv25 = fpext float %mul24 to double
  %39 = load ptr, ptr %vec, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %39, i64 1
  %40 = load float, ptr %arrayidx26, align 4
  %conv27 = fpext float %40 to double
  %mul28 = fmul double 0x3FE6666666666666, %conv27
  %41 = load ptr, ptr %vec, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %41, i64 1
  %42 = load float, ptr %arrayidx29, align 4
  %conv30 = fpext float %42 to double
  %43 = call double @llvm.fmuladd.f64(double %mul28, double %conv30, double %conv25)
  %44 = load ptr, ptr %vec, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %44, i64 2
  %45 = load float, ptr %arrayidx32, align 4
  %conv33 = fpext float %45 to double
  %mul34 = fmul double 2.000000e-01, %conv33
  %46 = load ptr, ptr %vec, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %46, i64 2
  %47 = load float, ptr %arrayidx35, align 4
  %conv36 = fpext float %47 to double
  %48 = call double @llvm.fmuladd.f64(double %mul34, double %conv36, double %43)
  %conv38 = fptrunc double %48 to float
  store float %conv38, ptr %temp, align 4
  %49 = load ptr, ptr %filters.addr, align 8
  %nearptr = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %nearptr, align 4
  store i32 %50, ptr %ptr, align 4
  %51 = load i32, ptr %ptr, align 4
  %cmp39 = icmp eq i32 %51, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %for.end
  %52 = load ptr, ptr %filters.addr, align 8
  %nearDC_partialacc = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %52, i32 0, i32 4
  %53 = load float, ptr %nearDC_partialacc, align 4
  %54 = load float, ptr %temp, align 4
  %add = fadd float %53, %54
  %55 = load ptr, ptr %filters.addr, align 8
  %nearDC_acc = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %55, i32 0, i32 3
  store float %add, ptr %nearDC_acc, align 4
  store float %add, ptr %decay, align 4
  %56 = load float, ptr %temp, align 4
  %57 = load ptr, ptr %filters.addr, align 8
  %nearDC_partialacc42 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %57, i32 0, i32 4
  store float %56, ptr %nearDC_partialacc42, align 4
  br label %if.end47

if.else:                                          ; preds = %for.end
  %58 = load float, ptr %temp, align 4
  %59 = load ptr, ptr %filters.addr, align 8
  %nearDC_acc43 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %59, i32 0, i32 3
  %60 = load float, ptr %nearDC_acc43, align 4
  %add44 = fadd float %60, %58
  store float %add44, ptr %nearDC_acc43, align 4
  store float %add44, ptr %decay, align 4
  %61 = load float, ptr %temp, align 4
  %62 = load ptr, ptr %filters.addr, align 8
  %nearDC_partialacc45 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %62, i32 0, i32 4
  %63 = load float, ptr %nearDC_partialacc45, align 4
  %add46 = fadd float %63, %61
  store float %add46, ptr %nearDC_partialacc45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %64 = load ptr, ptr %filters.addr, align 8
  %nearDC = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %ptr, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx48 = getelementptr inbounds [15 x float], ptr %nearDC, i64 0, i64 %idxprom
  %66 = load float, ptr %arrayidx48, align 4
  %67 = load ptr, ptr %filters.addr, align 8
  %nearDC_acc49 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %67, i32 0, i32 3
  %68 = load float, ptr %nearDC_acc49, align 4
  %sub50 = fsub float %68, %66
  store float %sub50, ptr %nearDC_acc49, align 4
  %69 = load float, ptr %temp, align 4
  %70 = load ptr, ptr %filters.addr, align 8
  %nearDC51 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %ptr, align 4
  %idxprom52 = sext i32 %71 to i64
  %arrayidx53 = getelementptr inbounds [15 x float], ptr %nearDC51, i64 0, i64 %idxprom52
  store float %69, ptr %arrayidx53, align 4
  %72 = load float, ptr %decay, align 4
  %conv54 = fpext float %72 to double
  %mul55 = fmul double %conv54, 6.250000e-02
  %conv56 = fptrunc double %mul55 to float
  store float %conv56, ptr %decay, align 4
  %73 = load ptr, ptr %filters.addr, align 8
  %nearptr57 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %nearptr57, align 4
  %inc58 = add nsw i32 %74, 1
  store i32 %inc58, ptr %nearptr57, align 4
  %75 = load ptr, ptr %filters.addr, align 8
  %nearptr59 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %75, i32 0, i32 5
  %76 = load i32, ptr %nearptr59, align 4
  %cmp60 = icmp sge i32 %76, 15
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end47
  %77 = load ptr, ptr %filters.addr, align 8
  %nearptr63 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %77, i32 0, i32 5
  store i32 0, ptr %nearptr63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end47
  %call = call float @todB(ptr noundef %decay)
  %conv65 = fpext float %call to double
  %78 = call double @llvm.fmuladd.f64(double %conv65, double 5.000000e-01, double -1.500000e+01)
  %conv67 = fptrunc double %78 to float
  store float %conv67, ptr %decay, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc95, %if.end64
  %79 = load i64, ptr %i, align 8
  %80 = load i64, ptr %n, align 8
  %div69 = sdiv i64 %80, 2
  %cmp70 = icmp slt i64 %79, %div69
  br i1 %cmp70, label %for.body72, label %for.end97

for.body72:                                       ; preds = %for.cond68
  %81 = load ptr, ptr %vec, align 8
  %82 = load i64, ptr %i, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %81, i64 %82
  %83 = load float, ptr %arrayidx73, align 4
  %84 = load ptr, ptr %vec, align 8
  %85 = load i64, ptr %i, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %84, i64 %85
  %86 = load float, ptr %arrayidx74, align 4
  %87 = load ptr, ptr %vec, align 8
  %88 = load i64, ptr %i, align 8
  %add76 = add nsw i64 %88, 1
  %arrayidx77 = getelementptr inbounds float, ptr %87, i64 %add76
  %89 = load float, ptr %arrayidx77, align 4
  %90 = load ptr, ptr %vec, align 8
  %91 = load i64, ptr %i, align 8
  %add78 = add nsw i64 %91, 1
  %arrayidx79 = getelementptr inbounds float, ptr %90, i64 %add78
  %92 = load float, ptr %arrayidx79, align 4
  %mul80 = fmul float %89, %92
  %93 = call float @llvm.fmuladd.f32(float %83, float %86, float %mul80)
  store float %93, ptr %val, align 4
  %call81 = call float @todB(ptr noundef %val)
  %mul82 = fmul float %call81, 5.000000e-01
  store float %mul82, ptr %val, align 4
  %94 = load float, ptr %val, align 4
  %95 = load float, ptr %decay, align 4
  %cmp83 = fcmp olt float %94, %95
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.body72
  %96 = load float, ptr %decay, align 4
  store float %96, ptr %val, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.body72
  %97 = load float, ptr %val, align 4
  %98 = load float, ptr %minV, align 4
  %cmp87 = fcmp olt float %97, %98
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end86
  %99 = load float, ptr %minV, align 4
  store float %99, ptr %val, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86
  %100 = load float, ptr %val, align 4
  %101 = load ptr, ptr %vec, align 8
  %102 = load i64, ptr %i, align 8
  %shr = ashr i64 %102, 1
  %arrayidx91 = getelementptr inbounds float, ptr %101, i64 %shr
  store float %100, ptr %arrayidx91, align 4
  %103 = load float, ptr %decay, align 4
  %conv92 = fpext float %103 to double
  %sub93 = fsub double %conv92, 8.000000e+00
  %conv94 = fptrunc double %sub93 to float
  store float %conv94, ptr %decay, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %if.end90
  %104 = load i64, ptr %i, align 8
  %add96 = add nsw i64 %104, 2
  store i64 %add96, ptr %i, align 8
  br label %for.cond68, !llvm.loop !8

for.end97:                                        ; preds = %for.cond68
  store i64 0, ptr %j, align 8
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc226, %for.end97
  %105 = load i64, ptr %j, align 8
  %cmp99 = icmp slt i64 %105, 7
  br i1 %cmp99, label %for.body101, label %for.end228

for.body101:                                      ; preds = %for.cond98
  store float 0.000000e+00, ptr %acc, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc115, %for.body101
  %106 = load i64, ptr %i, align 8
  %107 = load ptr, ptr %bands.addr, align 8
  %108 = load i64, ptr %j, align 8
  %arrayidx103 = getelementptr inbounds %struct.envelope_band, ptr %107, i64 %108
  %end = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx103, i32 0, i32 1
  %109 = load i32, ptr %end, align 4
  %conv104 = sext i32 %109 to i64
  %cmp105 = icmp slt i64 %106, %conv104
  br i1 %cmp105, label %for.body107, label %for.end117

for.body107:                                      ; preds = %for.cond102
  %110 = load ptr, ptr %vec, align 8
  %111 = load i64, ptr %i, align 8
  %112 = load ptr, ptr %bands.addr, align 8
  %113 = load i64, ptr %j, align 8
  %arrayidx108 = getelementptr inbounds %struct.envelope_band, ptr %112, i64 %113
  %begin = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx108, i32 0, i32 0
  %114 = load i32, ptr %begin, align 8
  %conv109 = sext i32 %114 to i64
  %add110 = add nsw i64 %111, %conv109
  %arrayidx111 = getelementptr inbounds float, ptr %110, i64 %add110
  %115 = load float, ptr %arrayidx111, align 4
  %116 = load ptr, ptr %bands.addr, align 8
  %117 = load i64, ptr %j, align 8
  %arrayidx112 = getelementptr inbounds %struct.envelope_band, ptr %116, i64 %117
  %window = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx112, i32 0, i32 2
  %118 = load ptr, ptr %window, align 8
  %119 = load i64, ptr %i, align 8
  %arrayidx113 = getelementptr inbounds float, ptr %118, i64 %119
  %120 = load float, ptr %arrayidx113, align 4
  %121 = load float, ptr %acc, align 4
  %122 = call float @llvm.fmuladd.f32(float %115, float %120, float %121)
  store float %122, ptr %acc, align 4
  br label %for.inc115

for.inc115:                                       ; preds = %for.body107
  %123 = load i64, ptr %i, align 8
  %inc116 = add nsw i64 %123, 1
  store i64 %inc116, ptr %i, align 8
  br label %for.cond102, !llvm.loop !9

for.end117:                                       ; preds = %for.cond102
  %124 = load ptr, ptr %bands.addr, align 8
  %125 = load i64, ptr %j, align 8
  %arrayidx118 = getelementptr inbounds %struct.envelope_band, ptr %124, i64 %125
  %total = getelementptr inbounds nuw %struct.envelope_band, ptr %arrayidx118, i32 0, i32 3
  %126 = load float, ptr %total, align 8
  %127 = load float, ptr %acc, align 4
  %mul119 = fmul float %127, %126
  store float %mul119, ptr %acc, align 4
  %128 = load ptr, ptr %filters.addr, align 8
  %129 = load i64, ptr %j, align 8
  %arrayidx120 = getelementptr inbounds %struct.envelope_filter_state, ptr %128, i64 %129
  %ampptr = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx120, i32 0, i32 1
  %130 = load i32, ptr %ampptr, align 4
  store i32 %130, ptr %this, align 4
  store float -9.999900e+04, ptr %premax, align 4
  store float 9.999900e+04, ptr %premin, align 4
  %131 = load i32, ptr %this, align 4
  store i32 %131, ptr %p, align 4
  %132 = load i32, ptr %p, align 4
  %dec = add nsw i32 %132, -1
  store i32 %dec, ptr %p, align 4
  %133 = load i32, ptr %p, align 4
  %cmp121 = icmp slt i32 %133, 0
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %for.end117
  %134 = load i32, ptr %p, align 4
  %add124 = add nsw i32 %134, 17
  store i32 %add124, ptr %p, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %for.end117
  %135 = load float, ptr %acc, align 4
  %136 = load ptr, ptr %filters.addr, align 8
  %137 = load i64, ptr %j, align 8
  %arrayidx126 = getelementptr inbounds %struct.envelope_filter_state, ptr %136, i64 %137
  %ampbuf = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx126, i32 0, i32 0
  %138 = load i32, ptr %p, align 4
  %idxprom127 = sext i32 %138 to i64
  %arrayidx128 = getelementptr inbounds [17 x float], ptr %ampbuf, i64 0, i64 %idxprom127
  %139 = load float, ptr %arrayidx128, align 4
  %cmp129 = fcmp olt float %135, %139
  br i1 %cmp129, label %cond.true131, label %cond.false136

cond.true131:                                     ; preds = %if.end125
  %140 = load ptr, ptr %filters.addr, align 8
  %141 = load i64, ptr %j, align 8
  %arrayidx132 = getelementptr inbounds %struct.envelope_filter_state, ptr %140, i64 %141
  %ampbuf133 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx132, i32 0, i32 0
  %142 = load i32, ptr %p, align 4
  %idxprom134 = sext i32 %142 to i64
  %arrayidx135 = getelementptr inbounds [17 x float], ptr %ampbuf133, i64 0, i64 %idxprom134
  %143 = load float, ptr %arrayidx135, align 4
  br label %cond.end137

cond.false136:                                    ; preds = %if.end125
  %144 = load float, ptr %acc, align 4
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %cond.true131
  %cond138 = phi float [ %143, %cond.true131 ], [ %144, %cond.false136 ]
  store float %cond138, ptr %postmax, align 4
  %145 = load float, ptr %acc, align 4
  %146 = load ptr, ptr %filters.addr, align 8
  %147 = load i64, ptr %j, align 8
  %arrayidx139 = getelementptr inbounds %struct.envelope_filter_state, ptr %146, i64 %147
  %ampbuf140 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx139, i32 0, i32 0
  %148 = load i32, ptr %p, align 4
  %idxprom141 = sext i32 %148 to i64
  %arrayidx142 = getelementptr inbounds [17 x float], ptr %ampbuf140, i64 0, i64 %idxprom141
  %149 = load float, ptr %arrayidx142, align 4
  %cmp143 = fcmp ogt float %145, %149
  br i1 %cmp143, label %cond.true145, label %cond.false150

cond.true145:                                     ; preds = %cond.end137
  %150 = load ptr, ptr %filters.addr, align 8
  %151 = load i64, ptr %j, align 8
  %arrayidx146 = getelementptr inbounds %struct.envelope_filter_state, ptr %150, i64 %151
  %ampbuf147 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx146, i32 0, i32 0
  %152 = load i32, ptr %p, align 4
  %idxprom148 = sext i32 %152 to i64
  %arrayidx149 = getelementptr inbounds [17 x float], ptr %ampbuf147, i64 0, i64 %idxprom148
  %153 = load float, ptr %arrayidx149, align 4
  br label %cond.end151

cond.false150:                                    ; preds = %cond.end137
  %154 = load float, ptr %acc, align 4
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false150, %cond.true145
  %cond152 = phi float [ %153, %cond.true145 ], [ %154, %cond.false150 ]
  store float %cond152, ptr %postmin, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc192, %cond.end151
  %155 = load i64, ptr %i, align 8
  %156 = load i32, ptr %stretch, align 4
  %conv154 = sext i32 %156 to i64
  %cmp155 = icmp slt i64 %155, %conv154
  br i1 %cmp155, label %for.body157, label %for.end194

for.body157:                                      ; preds = %for.cond153
  %157 = load i32, ptr %p, align 4
  %dec158 = add nsw i32 %157, -1
  store i32 %dec158, ptr %p, align 4
  %158 = load i32, ptr %p, align 4
  %cmp159 = icmp slt i32 %158, 0
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %for.body157
  %159 = load i32, ptr %p, align 4
  %add162 = add nsw i32 %159, 17
  store i32 %add162, ptr %p, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %for.body157
  %160 = load float, ptr %premax, align 4
  %161 = load ptr, ptr %filters.addr, align 8
  %162 = load i64, ptr %j, align 8
  %arrayidx164 = getelementptr inbounds %struct.envelope_filter_state, ptr %161, i64 %162
  %ampbuf165 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx164, i32 0, i32 0
  %163 = load i32, ptr %p, align 4
  %idxprom166 = sext i32 %163 to i64
  %arrayidx167 = getelementptr inbounds [17 x float], ptr %ampbuf165, i64 0, i64 %idxprom166
  %164 = load float, ptr %arrayidx167, align 4
  %cmp168 = fcmp olt float %160, %164
  br i1 %cmp168, label %cond.true170, label %cond.false175

cond.true170:                                     ; preds = %if.end163
  %165 = load ptr, ptr %filters.addr, align 8
  %166 = load i64, ptr %j, align 8
  %arrayidx171 = getelementptr inbounds %struct.envelope_filter_state, ptr %165, i64 %166
  %ampbuf172 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx171, i32 0, i32 0
  %167 = load i32, ptr %p, align 4
  %idxprom173 = sext i32 %167 to i64
  %arrayidx174 = getelementptr inbounds [17 x float], ptr %ampbuf172, i64 0, i64 %idxprom173
  %168 = load float, ptr %arrayidx174, align 4
  br label %cond.end176

cond.false175:                                    ; preds = %if.end163
  %169 = load float, ptr %premax, align 4
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false175, %cond.true170
  %cond177 = phi float [ %168, %cond.true170 ], [ %169, %cond.false175 ]
  store float %cond177, ptr %premax, align 4
  %170 = load float, ptr %premin, align 4
  %171 = load ptr, ptr %filters.addr, align 8
  %172 = load i64, ptr %j, align 8
  %arrayidx178 = getelementptr inbounds %struct.envelope_filter_state, ptr %171, i64 %172
  %ampbuf179 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx178, i32 0, i32 0
  %173 = load i32, ptr %p, align 4
  %idxprom180 = sext i32 %173 to i64
  %arrayidx181 = getelementptr inbounds [17 x float], ptr %ampbuf179, i64 0, i64 %idxprom180
  %174 = load float, ptr %arrayidx181, align 4
  %cmp182 = fcmp ogt float %170, %174
  br i1 %cmp182, label %cond.true184, label %cond.false189

cond.true184:                                     ; preds = %cond.end176
  %175 = load ptr, ptr %filters.addr, align 8
  %176 = load i64, ptr %j, align 8
  %arrayidx185 = getelementptr inbounds %struct.envelope_filter_state, ptr %175, i64 %176
  %ampbuf186 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx185, i32 0, i32 0
  %177 = load i32, ptr %p, align 4
  %idxprom187 = sext i32 %177 to i64
  %arrayidx188 = getelementptr inbounds [17 x float], ptr %ampbuf186, i64 0, i64 %idxprom187
  %178 = load float, ptr %arrayidx188, align 4
  br label %cond.end190

cond.false189:                                    ; preds = %cond.end176
  %179 = load float, ptr %premin, align 4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false189, %cond.true184
  %cond191 = phi float [ %178, %cond.true184 ], [ %179, %cond.false189 ]
  store float %cond191, ptr %premin, align 4
  br label %for.inc192

for.inc192:                                       ; preds = %cond.end190
  %180 = load i64, ptr %i, align 8
  %inc193 = add nsw i64 %180, 1
  store i64 %inc193, ptr %i, align 8
  br label %for.cond153, !llvm.loop !10

for.end194:                                       ; preds = %for.cond153
  %181 = load float, ptr %postmin, align 4
  %182 = load float, ptr %premin, align 4
  %sub195 = fsub float %181, %182
  store float %sub195, ptr %valmin, align 4
  %183 = load float, ptr %postmax, align 4
  %184 = load float, ptr %premax, align 4
  %sub196 = fsub float %183, %184
  store float %sub196, ptr %valmax, align 4
  %185 = load float, ptr %acc, align 4
  %186 = load ptr, ptr %filters.addr, align 8
  %187 = load i64, ptr %j, align 8
  %arrayidx197 = getelementptr inbounds %struct.envelope_filter_state, ptr %186, i64 %187
  %ampbuf198 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx197, i32 0, i32 0
  %188 = load i32, ptr %this, align 4
  %idxprom199 = sext i32 %188 to i64
  %arrayidx200 = getelementptr inbounds [17 x float], ptr %ampbuf198, i64 0, i64 %idxprom199
  store float %185, ptr %arrayidx200, align 4
  %189 = load ptr, ptr %filters.addr, align 8
  %190 = load i64, ptr %j, align 8
  %arrayidx201 = getelementptr inbounds %struct.envelope_filter_state, ptr %189, i64 %190
  %ampptr202 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx201, i32 0, i32 1
  %191 = load i32, ptr %ampptr202, align 4
  %inc203 = add nsw i32 %191, 1
  store i32 %inc203, ptr %ampptr202, align 4
  %192 = load ptr, ptr %filters.addr, align 8
  %193 = load i64, ptr %j, align 8
  %arrayidx204 = getelementptr inbounds %struct.envelope_filter_state, ptr %192, i64 %193
  %ampptr205 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx204, i32 0, i32 1
  %194 = load i32, ptr %ampptr205, align 4
  %cmp206 = icmp sge i32 %194, 17
  br i1 %cmp206, label %if.then208, label %if.end211

if.then208:                                       ; preds = %for.end194
  %195 = load ptr, ptr %filters.addr, align 8
  %196 = load i64, ptr %j, align 8
  %arrayidx209 = getelementptr inbounds %struct.envelope_filter_state, ptr %195, i64 %196
  %ampptr210 = getelementptr inbounds nuw %struct.envelope_filter_state, ptr %arrayidx209, i32 0, i32 1
  store i32 0, ptr %ampptr210, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %for.end194
  %197 = load float, ptr %valmax, align 4
  %198 = load ptr, ptr %gi.addr, align 8
  %preecho_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %198, i32 0, i32 1
  %199 = load i64, ptr %j, align 8
  %arrayidx212 = getelementptr inbounds [7 x float], ptr %preecho_thresh, i64 0, i64 %199
  %200 = load float, ptr %arrayidx212, align 4
  %201 = load float, ptr %penalty, align 4
  %add213 = fadd float %200, %201
  %cmp214 = fcmp ogt float %197, %add213
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.end211
  %202 = load i32, ptr %ret, align 4
  %or = or i32 %202, 1
  store i32 %or, ptr %ret, align 4
  %203 = load i32, ptr %ret, align 4
  %or217 = or i32 %203, 4
  store i32 %or217, ptr %ret, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end211
  %204 = load float, ptr %valmin, align 4
  %205 = load ptr, ptr %gi.addr, align 8
  %postecho_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %205, i32 0, i32 2
  %206 = load i64, ptr %j, align 8
  %arrayidx219 = getelementptr inbounds [7 x float], ptr %postecho_thresh, i64 0, i64 %206
  %207 = load float, ptr %arrayidx219, align 4
  %208 = load float, ptr %penalty, align 4
  %sub220 = fsub float %207, %208
  %cmp221 = fcmp olt float %204, %sub220
  br i1 %cmp221, label %if.then223, label %if.end225

if.then223:                                       ; preds = %if.end218
  %209 = load i32, ptr %ret, align 4
  %or224 = or i32 %209, 2
  store i32 %or224, ptr %ret, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.end218
  br label %for.inc226

for.inc226:                                       ; preds = %if.end225
  %210 = load i64, ptr %j, align 8
  %inc227 = add nsw i64 %210, 1
  store i64 %inc227, ptr %j, align 8
  br label %for.cond98, !llvm.loop !11

for.end228:                                       ; preds = %for.cond98
  %211 = load i32, ptr %ret, align 4
  ret i32 %211
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
