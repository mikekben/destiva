; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATH = external hidden global [88 x float], align 16
@tonemasks = external hidden global [17 x [6 x [56 x float]]], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind
declare double @log(double noundef) #4

; Function Attrs: nounwind
declare double @exp(double noundef) #4

; Function Attrs: nounwind uwtable
define hidden ptr @setup_tone_curves(ptr noundef %curveatt_dB, float noundef %binHz, i32 noundef %n, float noundef %center_boost, float noundef %center_decay_rate) #5 {
entry:
  %curveatt_dB.addr = alloca ptr, align 8
  %binHz.addr = alloca float, align 4
  %n.addr = alloca i32, align 4
  %center_boost.addr = alloca float, align 4
  %center_decay_rate.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %ath = alloca [56 x float], align 16
  %workc = alloca [17 x [8 x [56 x float]]], align 16
  %athc = alloca [8 x [56 x float]], align 16
  %brute_buffer = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %ath_offset = alloca i32, align 4
  %min = alloca float, align 4
  %adj = alloca float, align 4
  %hi_curve = alloca i32, align 4
  %lo_curve = alloca i32, align 4
  %bin = alloca i32, align 4
  %l = alloca i32, align 4
  %lo_bin = alloca i32, align 4
  %hi_bin = alloca i32, align 4
  %l346 = alloca i32, align 4
  %lo_bin352 = alloca i32, align 4
  %hi_bin364 = alloca i32, align 4
  %bin461 = alloca i32, align 4
  store ptr %curveatt_dB, ptr %curveatt_dB.addr, align 8
  store float %binHz, ptr %binHz.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store float %center_boost, ptr %center_boost.addr, align 4
  store float %center_decay_rate, ptr %center_decay_rate.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %brute_buffer, align 8
  %call = call noalias ptr @malloc(i64 noundef 136) #7
  store ptr %call, ptr %ret, align 8
  %arraydecay = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 30464, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc170, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 17
  br i1 %cmp, label %for.body, label %for.end172

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %mul2 = mul nsw i32 %3, 4
  store i32 %mul2, ptr %ath_offset, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc30, %for.body
  %4 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %4, 56
  br i1 %cmp4, label %for.body6, label %for.end32

for.body6:                                        ; preds = %for.cond3
  store float 9.990000e+02, ptr %min, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %5 = load i32, ptr %k, align 4
  %cmp8 = icmp slt i32 %5, 4
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %k, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, ptr %ath_offset, align 4
  %add11 = add nsw i32 %add, %8
  %cmp12 = icmp slt i32 %add11, 88
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body10
  %9 = load float, ptr %min, align 4
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %k, align 4
  %add14 = add nsw i32 %10, %11
  %12 = load i32, ptr %ath_offset, align 4
  %add15 = add nsw i32 %add14, %12
  %idxprom = sext i32 %add15 to i64
  %arrayidx = getelementptr inbounds [88 x float], ptr @ATH, i64 0, i64 %idxprom
  %13 = load float, ptr %arrayidx, align 4
  %cmp16 = fcmp ogt float %9, %13
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %k, align 4
  %add19 = add nsw i32 %14, %15
  %16 = load i32, ptr %ath_offset, align 4
  %add20 = add nsw i32 %add19, %16
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [88 x float], ptr @ATH, i64 0, i64 %idxprom21
  %17 = load float, ptr %arrayidx22, align 4
  store float %17, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  br label %if.end27

if.else:                                          ; preds = %for.body10
  %18 = load float, ptr %min, align 4
  %19 = load float, ptr getelementptr inbounds ([88 x float], ptr @ATH, i64 0, i64 87), align 4
  %cmp23 = fcmp ogt float %18, %19
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  %20 = load float, ptr getelementptr inbounds ([88 x float], ptr @ATH, i64 0, i64 87), align 4
  store float %20, ptr %min, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %21 = load i32, ptr %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  %22 = load float, ptr %min, align 4
  %23 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [56 x float], ptr %ath, i64 0, i64 %idxprom28
  store float %22, ptr %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %24 = load i32, ptr %j, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, ptr %j, align 4
  br label %for.cond3, !llvm.loop !8

for.end32:                                        ; preds = %for.cond3
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc48, %for.end32
  %25 = load i32, ptr %j, align 4
  %cmp34 = icmp slt i32 %25, 6
  br i1 %cmp34, label %for.body36, label %for.end50

for.body36:                                       ; preds = %for.cond33
  %26 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom37
  %27 = load i32, ptr %j, align 4
  %add39 = add nsw i32 %27, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx38, i64 0, i64 %idxprom40
  %arraydecay42 = getelementptr inbounds [56 x float], ptr %arrayidx41, i64 0, i64 0
  %28 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [17 x [6 x [56 x float]]], ptr @tonemasks, i64 0, i64 %idxprom43
  %29 = load i32, ptr %j, align 4
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [6 x [56 x float]], ptr %arrayidx44, i64 0, i64 %idxprom45
  %arraydecay47 = getelementptr inbounds [56 x float], ptr %arrayidx46, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay42, ptr align 16 %arraydecay47, i64 224, i1 false)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body36
  %30 = load i32, ptr %j, align 4
  %inc49 = add nsw i32 %30, 1
  store i32 %inc49, ptr %j, align 4
  br label %for.cond33, !llvm.loop !9

for.end50:                                        ; preds = %for.cond33
  %31 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx52, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [56 x float], ptr %arrayidx53, i64 0, i64 0
  %32 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %32 to i64
  %arrayidx56 = getelementptr inbounds [17 x [6 x [56 x float]]], ptr @tonemasks, i64 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [6 x [56 x float]], ptr %arrayidx56, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [56 x float], ptr %arrayidx57, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay54, ptr align 16 %arraydecay58, i64 224, i1 false)
  %33 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx60, i64 0, i64 1
  %arraydecay62 = getelementptr inbounds [56 x float], ptr %arrayidx61, i64 0, i64 0
  %34 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %34 to i64
  %arrayidx64 = getelementptr inbounds [17 x [6 x [56 x float]]], ptr @tonemasks, i64 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [6 x [56 x float]], ptr %arrayidx64, i64 0, i64 0
  %arraydecay66 = getelementptr inbounds [56 x float], ptr %arrayidx65, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay62, ptr align 16 %arraydecay66, i64 224, i1 false)
  store i32 0, ptr %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc102, %for.end50
  %35 = load i32, ptr %j, align 4
  %cmp68 = icmp slt i32 %35, 8
  br i1 %cmp68, label %for.body70, label %for.end104

for.body70:                                       ; preds = %for.cond67
  store i32 0, ptr %k, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc99, %for.body70
  %36 = load i32, ptr %k, align 4
  %cmp72 = icmp slt i32 %36, 56
  br i1 %cmp72, label %for.body74, label %for.end101

for.body74:                                       ; preds = %for.cond71
  %37 = load float, ptr %center_boost.addr, align 4
  %38 = load i32, ptr %k, align 4
  %sub = sub nsw i32 16, %38
  %39 = call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %conv75 = sitofp i32 %39 to float
  %40 = load float, ptr %center_decay_rate.addr, align 4
  %41 = call float @llvm.fmuladd.f32(float %conv75, float %40, float %37)
  store float %41, ptr %adj, align 4
  %42 = load float, ptr %adj, align 4
  %conv77 = fpext float %42 to double
  %cmp78 = fcmp olt double %conv77, 0.000000e+00
  br i1 %cmp78, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %for.body74
  %43 = load float, ptr %center_boost.addr, align 4
  %cmp80 = fcmp ogt float %43, 0.000000e+00
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %land.lhs.true
  store float 0.000000e+00, ptr %adj, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %land.lhs.true, %for.body74
  %44 = load float, ptr %adj, align 4
  %conv84 = fpext float %44 to double
  %cmp85 = fcmp ogt double %conv84, 0.000000e+00
  br i1 %cmp85, label %land.lhs.true87, label %if.end91

land.lhs.true87:                                  ; preds = %if.end83
  %45 = load float, ptr %center_boost.addr, align 4
  %cmp88 = fcmp olt float %45, 0.000000e+00
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %land.lhs.true87
  store float 0.000000e+00, ptr %adj, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %land.lhs.true87, %if.end83
  %46 = load float, ptr %adj, align 4
  %47 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %47 to i64
  %arrayidx93 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom92
  %48 = load i32, ptr %j, align 4
  %idxprom94 = sext i32 %48 to i64
  %arrayidx95 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx93, i64 0, i64 %idxprom94
  %49 = load i32, ptr %k, align 4
  %idxprom96 = sext i32 %49 to i64
  %arrayidx97 = getelementptr inbounds [56 x float], ptr %arrayidx95, i64 0, i64 %idxprom96
  %50 = load float, ptr %arrayidx97, align 4
  %add98 = fadd float %50, %46
  store float %add98, ptr %arrayidx97, align 4
  br label %for.inc99

for.inc99:                                        ; preds = %if.end91
  %51 = load i32, ptr %k, align 4
  %inc100 = add nsw i32 %51, 1
  store i32 %inc100, ptr %k, align 4
  br label %for.cond71, !llvm.loop !10

for.end101:                                       ; preds = %for.cond71
  br label %for.inc102

for.inc102:                                       ; preds = %for.end101
  %52 = load i32, ptr %j, align 4
  %inc103 = add nsw i32 %52, 1
  store i32 %inc103, ptr %j, align 4
  br label %for.cond67, !llvm.loop !11

for.end104:                                       ; preds = %for.cond67
  store i32 0, ptr %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc145, %for.end104
  %53 = load i32, ptr %j, align 4
  %cmp106 = icmp slt i32 %53, 8
  br i1 %cmp106, label %for.body108, label %for.end147

for.body108:                                      ; preds = %for.cond105
  %54 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %54 to i64
  %arrayidx110 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom109
  %55 = load i32, ptr %j, align 4
  %idxprom111 = sext i32 %55 to i64
  %arrayidx112 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx110, i64 0, i64 %idxprom111
  %arraydecay113 = getelementptr inbounds [56 x float], ptr %arrayidx112, i64 0, i64 0
  %56 = load ptr, ptr %curveatt_dB.addr, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %57 to i64
  %arrayidx115 = getelementptr inbounds float, ptr %56, i64 %idxprom114
  %58 = load float, ptr %arrayidx115, align 4
  %conv116 = fpext float %58 to double
  %add117 = fadd double %conv116, 1.000000e+02
  %59 = load i32, ptr %j, align 4
  %cmp118 = icmp slt i32 %59, 2
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body108
  br label %cond.end

cond.false:                                       ; preds = %for.body108
  %60 = load i32, ptr %j, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %60, %cond.false ]
  %conv120 = sitofp i32 %cond to double
  %neg = fneg double %conv120
  %61 = call double @llvm.fmuladd.f64(double %neg, double 1.000000e+01, double %add117)
  %sub122 = fsub double %61, 3.000000e+01
  %conv123 = fptrunc double %sub122 to float
  call void @attenuate_curve(ptr noundef %arraydecay113, float noundef %conv123)
  %62 = load i32, ptr %j, align 4
  %idxprom124 = sext i32 %62 to i64
  %arrayidx125 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom124
  %arraydecay126 = getelementptr inbounds [56 x float], ptr %arrayidx125, i64 0, i64 0
  %arraydecay127 = getelementptr inbounds [56 x float], ptr %ath, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay126, ptr align 16 %arraydecay127, i64 224, i1 false)
  %63 = load i32, ptr %j, align 4
  %idxprom128 = sext i32 %63 to i64
  %arrayidx129 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom128
  %arraydecay130 = getelementptr inbounds [56 x float], ptr %arrayidx129, i64 0, i64 0
  %64 = load i32, ptr %j, align 4
  %conv131 = sitofp i32 %64 to float
  %mul132 = fmul float %conv131, 1.000000e+01
  %conv133 = fpext float %mul132 to double
  %sub134 = fsub double 1.000000e+02, %conv133
  %sub135 = fsub double %sub134, 3.000000e+01
  %conv136 = fptrunc double %sub135 to float
  call void @attenuate_curve(ptr noundef %arraydecay130, float noundef %conv136)
  %65 = load i32, ptr %j, align 4
  %idxprom137 = sext i32 %65 to i64
  %arrayidx138 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom137
  %arraydecay139 = getelementptr inbounds [56 x float], ptr %arrayidx138, i64 0, i64 0
  %66 = load i32, ptr %i, align 4
  %idxprom140 = sext i32 %66 to i64
  %arrayidx141 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom140
  %67 = load i32, ptr %j, align 4
  %idxprom142 = sext i32 %67 to i64
  %arrayidx143 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx141, i64 0, i64 %idxprom142
  %arraydecay144 = getelementptr inbounds [56 x float], ptr %arrayidx143, i64 0, i64 0
  call void @max_curve(ptr noundef %arraydecay139, ptr noundef %arraydecay144)
  br label %for.inc145

for.inc145:                                       ; preds = %cond.end
  %68 = load i32, ptr %j, align 4
  %inc146 = add nsw i32 %68, 1
  store i32 %inc146, ptr %j, align 4
  br label %for.cond105, !llvm.loop !12

for.end147:                                       ; preds = %for.cond105
  store i32 1, ptr %j, align 4
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc167, %for.end147
  %69 = load i32, ptr %j, align 4
  %cmp149 = icmp slt i32 %69, 8
  br i1 %cmp149, label %for.body151, label %for.end169

for.body151:                                      ; preds = %for.cond148
  %70 = load i32, ptr %j, align 4
  %idxprom152 = sext i32 %70 to i64
  %arrayidx153 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom152
  %arraydecay154 = getelementptr inbounds [56 x float], ptr %arrayidx153, i64 0, i64 0
  %71 = load i32, ptr %j, align 4
  %sub155 = sub nsw i32 %71, 1
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom156
  %arraydecay158 = getelementptr inbounds [56 x float], ptr %arrayidx157, i64 0, i64 0
  call void @min_curve(ptr noundef %arraydecay154, ptr noundef %arraydecay158)
  %72 = load i32, ptr %i, align 4
  %idxprom159 = sext i32 %72 to i64
  %arrayidx160 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom159
  %73 = load i32, ptr %j, align 4
  %idxprom161 = sext i32 %73 to i64
  %arrayidx162 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx160, i64 0, i64 %idxprom161
  %arraydecay163 = getelementptr inbounds [56 x float], ptr %arrayidx162, i64 0, i64 0
  %74 = load i32, ptr %j, align 4
  %idxprom164 = sext i32 %74 to i64
  %arrayidx165 = getelementptr inbounds [8 x [56 x float]], ptr %athc, i64 0, i64 %idxprom164
  %arraydecay166 = getelementptr inbounds [56 x float], ptr %arrayidx165, i64 0, i64 0
  call void @min_curve(ptr noundef %arraydecay163, ptr noundef %arraydecay166)
  br label %for.inc167

for.inc167:                                       ; preds = %for.body151
  %75 = load i32, ptr %j, align 4
  %inc168 = add nsw i32 %75, 1
  store i32 %inc168, ptr %j, align 4
  br label %for.cond148, !llvm.loop !13

for.end169:                                       ; preds = %for.cond148
  br label %for.inc170

for.inc170:                                       ; preds = %for.end169
  %76 = load i32, ptr %i, align 4
  %inc171 = add nsw i32 %76, 1
  store i32 %inc171, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end172:                                       ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc559, %for.end172
  %77 = load i32, ptr %i, align 4
  %cmp174 = icmp slt i32 %77, 17
  br i1 %cmp174, label %for.body176, label %for.end561

for.body176:                                      ; preds = %for.cond173
  %call177 = call noalias ptr @malloc(i64 noundef 64) #7
  %78 = load ptr, ptr %ret, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom178 = sext i32 %79 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %78, i64 %idxprom178
  store ptr %call177, ptr %arrayidx179, align 8
  %80 = load i32, ptr %i, align 4
  %conv180 = sitofp i32 %80 to double
  %81 = call double @llvm.fmuladd.f64(double %conv180, double 5.000000e-01, double 0x4017DCF680000000)
  %mul182 = fmul double %81, 0x3FE62E42A0000000
  %call183 = call double @exp(double noundef %mul182) #8
  %82 = load float, ptr %binHz.addr, align 4
  %conv184 = fpext float %82 to double
  %div = fdiv double %call183, %conv184
  %83 = call double @llvm.floor.f64(double %div)
  %conv185 = fptosi double %83 to i32
  store i32 %conv185, ptr %bin, align 4
  %84 = load i32, ptr %bin, align 4
  %conv186 = sitofp i32 %84 to float
  %85 = load float, ptr %binHz.addr, align 4
  %86 = call float @llvm.fmuladd.f32(float %conv186, float %85, float 1.000000e+00)
  %conv188 = fpext float %86 to double
  %call189 = call double @log(double noundef %conv188) #8
  %87 = call double @llvm.fmuladd.f64(double %call189, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %mul191 = fmul double %87, 2.000000e+00
  %88 = call double @llvm.ceil.f64(double %mul191)
  %conv192 = fptosi double %88 to i32
  store i32 %conv192, ptr %lo_curve, align 4
  %89 = load i32, ptr %bin, align 4
  %add193 = add nsw i32 %89, 1
  %conv194 = sitofp i32 %add193 to float
  %90 = load float, ptr %binHz.addr, align 4
  %mul195 = fmul float %conv194, %90
  %conv196 = fpext float %mul195 to double
  %call197 = call double @log(double noundef %conv196) #8
  %91 = call double @llvm.fmuladd.f64(double %call197, double 0x3FF7154760000000, double 0xC017DCF680000000)
  %mul199 = fmul double %91, 2.000000e+00
  %92 = call double @llvm.floor.f64(double %mul199)
  %conv200 = fptosi double %92 to i32
  store i32 %conv200, ptr %hi_curve, align 4
  %93 = load i32, ptr %lo_curve, align 4
  %94 = load i32, ptr %i, align 4
  %cmp201 = icmp sgt i32 %93, %94
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %for.body176
  %95 = load i32, ptr %i, align 4
  store i32 %95, ptr %lo_curve, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %for.body176
  %96 = load i32, ptr %lo_curve, align 4
  %cmp205 = icmp slt i32 %96, 0
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end204
  store i32 0, ptr %lo_curve, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.end204
  %97 = load i32, ptr %hi_curve, align 4
  %cmp209 = icmp sge i32 %97, 17
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end208
  store i32 16, ptr %hi_curve, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %if.end208
  store i32 0, ptr %m, align 4
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc556, %if.end212
  %98 = load i32, ptr %m, align 4
  %cmp214 = icmp slt i32 %98, 8
  br i1 %cmp214, label %for.body216, label %for.end558

for.body216:                                      ; preds = %for.cond213
  %call217 = call noalias ptr @malloc(i64 noundef 232) #7
  %99 = load ptr, ptr %ret, align 8
  %100 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %100 to i64
  %arrayidx219 = getelementptr inbounds ptr, ptr %99, i64 %idxprom218
  %101 = load ptr, ptr %arrayidx219, align 8
  %102 = load i32, ptr %m, align 4
  %idxprom220 = sext i32 %102 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %101, i64 %idxprom220
  store ptr %call217, ptr %arrayidx221, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc228, %for.body216
  %103 = load i32, ptr %j, align 4
  %104 = load i32, ptr %n.addr, align 4
  %cmp223 = icmp slt i32 %103, %104
  br i1 %cmp223, label %for.body225, label %for.end230

for.body225:                                      ; preds = %for.cond222
  %105 = load ptr, ptr %brute_buffer, align 8
  %106 = load i32, ptr %j, align 4
  %idxprom226 = sext i32 %106 to i64
  %arrayidx227 = getelementptr inbounds float, ptr %105, i64 %idxprom226
  store float 9.990000e+02, ptr %arrayidx227, align 4
  br label %for.inc228

for.inc228:                                       ; preds = %for.body225
  %107 = load i32, ptr %j, align 4
  %inc229 = add nsw i32 %107, 1
  store i32 %inc229, ptr %j, align 4
  br label %for.cond222, !llvm.loop !15

for.end230:                                       ; preds = %for.cond222
  %108 = load i32, ptr %lo_curve, align 4
  store i32 %108, ptr %k, align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc339, %for.end230
  %109 = load i32, ptr %k, align 4
  %110 = load i32, ptr %hi_curve, align 4
  %cmp232 = icmp sle i32 %109, %110
  br i1 %cmp232, label %for.body234, label %for.end341

for.body234:                                      ; preds = %for.cond231
  store i32 0, ptr %l, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc311, %for.body234
  %111 = load i32, ptr %j, align 4
  %cmp236 = icmp slt i32 %111, 56
  br i1 %cmp236, label %for.body238, label %for.end313

for.body238:                                      ; preds = %for.cond235
  %112 = load i32, ptr %j, align 4
  %conv239 = sitofp i32 %112 to double
  %113 = load i32, ptr %k, align 4
  %conv241 = sitofp i32 %113 to double
  %mul242 = fmul double %conv241, 5.000000e-01
  %114 = call double @llvm.fmuladd.f64(double %conv239, double 1.250000e-01, double %mul242)
  %sub243 = fsub double %114, 2.062500e+00
  %add244 = fadd double %sub243, 0x4017DCF680000000
  %mul245 = fmul double %add244, 0x3FE62E42A0000000
  %call246 = call double @exp(double noundef %mul245) #8
  %115 = load float, ptr %binHz.addr, align 4
  %conv247 = fpext float %115 to double
  %div248 = fdiv double %call246, %conv247
  %conv249 = fptosi double %div248 to i32
  store i32 %conv249, ptr %lo_bin, align 4
  %116 = load i32, ptr %j, align 4
  %conv250 = sitofp i32 %116 to double
  %117 = load i32, ptr %k, align 4
  %conv252 = sitofp i32 %117 to double
  %mul253 = fmul double %conv252, 5.000000e-01
  %118 = call double @llvm.fmuladd.f64(double %conv250, double 1.250000e-01, double %mul253)
  %sub254 = fsub double %118, 1.937500e+00
  %add255 = fadd double %sub254, 0x4017DCF680000000
  %mul256 = fmul double %add255, 0x3FE62E42A0000000
  %call257 = call double @exp(double noundef %mul256) #8
  %119 = load float, ptr %binHz.addr, align 4
  %conv258 = fpext float %119 to double
  %div259 = fdiv double %call257, %conv258
  %add260 = fadd double %div259, 1.000000e+00
  %conv261 = fptosi double %add260 to i32
  store i32 %conv261, ptr %hi_bin, align 4
  %120 = load i32, ptr %lo_bin, align 4
  %cmp262 = icmp slt i32 %120, 0
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %for.body238
  store i32 0, ptr %lo_bin, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %for.body238
  %121 = load i32, ptr %lo_bin, align 4
  %122 = load i32, ptr %n.addr, align 4
  %cmp266 = icmp sgt i32 %121, %122
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %if.end265
  %123 = load i32, ptr %n.addr, align 4
  store i32 %123, ptr %lo_bin, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.end265
  %124 = load i32, ptr %lo_bin, align 4
  %125 = load i32, ptr %l, align 4
  %cmp270 = icmp slt i32 %124, %125
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.end269
  %126 = load i32, ptr %lo_bin, align 4
  store i32 %126, ptr %l, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end269
  %127 = load i32, ptr %hi_bin, align 4
  %cmp274 = icmp slt i32 %127, 0
  br i1 %cmp274, label %if.then276, label %if.end277

if.then276:                                       ; preds = %if.end273
  store i32 0, ptr %hi_bin, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then276, %if.end273
  %128 = load i32, ptr %hi_bin, align 4
  %129 = load i32, ptr %n.addr, align 4
  %cmp278 = icmp sgt i32 %128, %129
  br i1 %cmp278, label %if.then280, label %if.end281

if.then280:                                       ; preds = %if.end277
  %130 = load i32, ptr %n.addr, align 4
  store i32 %130, ptr %hi_bin, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.then280, %if.end277
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc308, %if.end281
  %131 = load i32, ptr %l, align 4
  %132 = load i32, ptr %hi_bin, align 4
  %cmp283 = icmp slt i32 %131, %132
  br i1 %cmp283, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond282
  %133 = load i32, ptr %l, align 4
  %134 = load i32, ptr %n.addr, align 4
  %cmp285 = icmp slt i32 %133, %134
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond282
  %135 = phi i1 [ false, %for.cond282 ], [ %cmp285, %land.rhs ]
  br i1 %135, label %for.body287, label %for.end310

for.body287:                                      ; preds = %land.end
  %136 = load ptr, ptr %brute_buffer, align 8
  %137 = load i32, ptr %l, align 4
  %idxprom288 = sext i32 %137 to i64
  %arrayidx289 = getelementptr inbounds float, ptr %136, i64 %idxprom288
  %138 = load float, ptr %arrayidx289, align 4
  %139 = load i32, ptr %k, align 4
  %idxprom290 = sext i32 %139 to i64
  %arrayidx291 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom290
  %140 = load i32, ptr %m, align 4
  %idxprom292 = sext i32 %140 to i64
  %arrayidx293 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx291, i64 0, i64 %idxprom292
  %141 = load i32, ptr %j, align 4
  %idxprom294 = sext i32 %141 to i64
  %arrayidx295 = getelementptr inbounds [56 x float], ptr %arrayidx293, i64 0, i64 %idxprom294
  %142 = load float, ptr %arrayidx295, align 4
  %cmp296 = fcmp ogt float %138, %142
  br i1 %cmp296, label %if.then298, label %if.end307

if.then298:                                       ; preds = %for.body287
  %143 = load i32, ptr %k, align 4
  %idxprom299 = sext i32 %143 to i64
  %arrayidx300 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom299
  %144 = load i32, ptr %m, align 4
  %idxprom301 = sext i32 %144 to i64
  %arrayidx302 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx300, i64 0, i64 %idxprom301
  %145 = load i32, ptr %j, align 4
  %idxprom303 = sext i32 %145 to i64
  %arrayidx304 = getelementptr inbounds [56 x float], ptr %arrayidx302, i64 0, i64 %idxprom303
  %146 = load float, ptr %arrayidx304, align 4
  %147 = load ptr, ptr %brute_buffer, align 8
  %148 = load i32, ptr %l, align 4
  %idxprom305 = sext i32 %148 to i64
  %arrayidx306 = getelementptr inbounds float, ptr %147, i64 %idxprom305
  store float %146, ptr %arrayidx306, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then298, %for.body287
  br label %for.inc308

for.inc308:                                       ; preds = %if.end307
  %149 = load i32, ptr %l, align 4
  %inc309 = add nsw i32 %149, 1
  store i32 %inc309, ptr %l, align 4
  br label %for.cond282, !llvm.loop !16

for.end310:                                       ; preds = %land.end
  br label %for.inc311

for.inc311:                                       ; preds = %for.end310
  %150 = load i32, ptr %j, align 4
  %inc312 = add nsw i32 %150, 1
  store i32 %inc312, ptr %j, align 4
  br label %for.cond235, !llvm.loop !17

for.end313:                                       ; preds = %for.cond235
  br label %for.cond314

for.cond314:                                      ; preds = %for.inc336, %for.end313
  %151 = load i32, ptr %l, align 4
  %152 = load i32, ptr %n.addr, align 4
  %cmp315 = icmp slt i32 %151, %152
  br i1 %cmp315, label %for.body317, label %for.end338

for.body317:                                      ; preds = %for.cond314
  %153 = load ptr, ptr %brute_buffer, align 8
  %154 = load i32, ptr %l, align 4
  %idxprom318 = sext i32 %154 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %153, i64 %idxprom318
  %155 = load float, ptr %arrayidx319, align 4
  %156 = load i32, ptr %k, align 4
  %idxprom320 = sext i32 %156 to i64
  %arrayidx321 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom320
  %157 = load i32, ptr %m, align 4
  %idxprom322 = sext i32 %157 to i64
  %arrayidx323 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx321, i64 0, i64 %idxprom322
  %arrayidx324 = getelementptr inbounds [56 x float], ptr %arrayidx323, i64 0, i64 55
  %158 = load float, ptr %arrayidx324, align 4
  %cmp325 = fcmp ogt float %155, %158
  br i1 %cmp325, label %if.then327, label %if.end335

if.then327:                                       ; preds = %for.body317
  %159 = load i32, ptr %k, align 4
  %idxprom328 = sext i32 %159 to i64
  %arrayidx329 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom328
  %160 = load i32, ptr %m, align 4
  %idxprom330 = sext i32 %160 to i64
  %arrayidx331 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx329, i64 0, i64 %idxprom330
  %arrayidx332 = getelementptr inbounds [56 x float], ptr %arrayidx331, i64 0, i64 55
  %161 = load float, ptr %arrayidx332, align 4
  %162 = load ptr, ptr %brute_buffer, align 8
  %163 = load i32, ptr %l, align 4
  %idxprom333 = sext i32 %163 to i64
  %arrayidx334 = getelementptr inbounds float, ptr %162, i64 %idxprom333
  store float %161, ptr %arrayidx334, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then327, %for.body317
  br label %for.inc336

for.inc336:                                       ; preds = %if.end335
  %164 = load i32, ptr %l, align 4
  %inc337 = add nsw i32 %164, 1
  store i32 %inc337, ptr %l, align 4
  br label %for.cond314, !llvm.loop !18

for.end338:                                       ; preds = %for.cond314
  br label %for.inc339

for.inc339:                                       ; preds = %for.end338
  %165 = load i32, ptr %k, align 4
  %inc340 = add nsw i32 %165, 1
  store i32 %inc340, ptr %k, align 4
  br label %for.cond231, !llvm.loop !19

for.end341:                                       ; preds = %for.cond231
  %166 = load i32, ptr %i, align 4
  %add342 = add nsw i32 %166, 1
  %cmp343 = icmp slt i32 %add342, 17
  br i1 %cmp343, label %if.then345, label %if.end456

if.then345:                                       ; preds = %for.end341
  store i32 0, ptr %l346, align 4
  %167 = load i32, ptr %i, align 4
  %add347 = add nsw i32 %167, 1
  store i32 %add347, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond348

for.cond348:                                      ; preds = %for.inc428, %if.then345
  %168 = load i32, ptr %j, align 4
  %cmp349 = icmp slt i32 %168, 56
  br i1 %cmp349, label %for.body351, label %for.end430

for.body351:                                      ; preds = %for.cond348
  %169 = load i32, ptr %j, align 4
  %conv353 = sitofp i32 %169 to double
  %170 = load i32, ptr %i, align 4
  %conv355 = sitofp i32 %170 to double
  %mul356 = fmul double %conv355, 5.000000e-01
  %171 = call double @llvm.fmuladd.f64(double %conv353, double 1.250000e-01, double %mul356)
  %sub357 = fsub double %171, 2.062500e+00
  %add358 = fadd double %sub357, 0x4017DCF680000000
  %mul359 = fmul double %add358, 0x3FE62E42A0000000
  %call360 = call double @exp(double noundef %mul359) #8
  %172 = load float, ptr %binHz.addr, align 4
  %conv361 = fpext float %172 to double
  %div362 = fdiv double %call360, %conv361
  %conv363 = fptosi double %div362 to i32
  store i32 %conv363, ptr %lo_bin352, align 4
  %173 = load i32, ptr %j, align 4
  %conv365 = sitofp i32 %173 to double
  %174 = load i32, ptr %i, align 4
  %conv367 = sitofp i32 %174 to double
  %mul368 = fmul double %conv367, 5.000000e-01
  %175 = call double @llvm.fmuladd.f64(double %conv365, double 1.250000e-01, double %mul368)
  %sub369 = fsub double %175, 1.937500e+00
  %add370 = fadd double %sub369, 0x4017DCF680000000
  %mul371 = fmul double %add370, 0x3FE62E42A0000000
  %call372 = call double @exp(double noundef %mul371) #8
  %176 = load float, ptr %binHz.addr, align 4
  %conv373 = fpext float %176 to double
  %div374 = fdiv double %call372, %conv373
  %add375 = fadd double %div374, 1.000000e+00
  %conv376 = fptosi double %add375 to i32
  store i32 %conv376, ptr %hi_bin364, align 4
  %177 = load i32, ptr %lo_bin352, align 4
  %cmp377 = icmp slt i32 %177, 0
  br i1 %cmp377, label %if.then379, label %if.end380

if.then379:                                       ; preds = %for.body351
  store i32 0, ptr %lo_bin352, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.then379, %for.body351
  %178 = load i32, ptr %lo_bin352, align 4
  %179 = load i32, ptr %n.addr, align 4
  %cmp381 = icmp sgt i32 %178, %179
  br i1 %cmp381, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.end380
  %180 = load i32, ptr %n.addr, align 4
  store i32 %180, ptr %lo_bin352, align 4
  br label %if.end384

if.end384:                                        ; preds = %if.then383, %if.end380
  %181 = load i32, ptr %lo_bin352, align 4
  %182 = load i32, ptr %l346, align 4
  %cmp385 = icmp slt i32 %181, %182
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %if.end384
  %183 = load i32, ptr %lo_bin352, align 4
  store i32 %183, ptr %l346, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then387, %if.end384
  %184 = load i32, ptr %hi_bin364, align 4
  %cmp389 = icmp slt i32 %184, 0
  br i1 %cmp389, label %if.then391, label %if.end392

if.then391:                                       ; preds = %if.end388
  store i32 0, ptr %hi_bin364, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.then391, %if.end388
  %185 = load i32, ptr %hi_bin364, align 4
  %186 = load i32, ptr %n.addr, align 4
  %cmp393 = icmp sgt i32 %185, %186
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.end392
  %187 = load i32, ptr %n.addr, align 4
  store i32 %187, ptr %hi_bin364, align 4
  br label %if.end396

if.end396:                                        ; preds = %if.then395, %if.end392
  br label %for.cond397

for.cond397:                                      ; preds = %for.inc425, %if.end396
  %188 = load i32, ptr %l346, align 4
  %189 = load i32, ptr %hi_bin364, align 4
  %cmp398 = icmp slt i32 %188, %189
  br i1 %cmp398, label %land.rhs400, label %land.end403

land.rhs400:                                      ; preds = %for.cond397
  %190 = load i32, ptr %l346, align 4
  %191 = load i32, ptr %n.addr, align 4
  %cmp401 = icmp slt i32 %190, %191
  br label %land.end403

land.end403:                                      ; preds = %land.rhs400, %for.cond397
  %192 = phi i1 [ false, %for.cond397 ], [ %cmp401, %land.rhs400 ]
  br i1 %192, label %for.body404, label %for.end427

for.body404:                                      ; preds = %land.end403
  %193 = load ptr, ptr %brute_buffer, align 8
  %194 = load i32, ptr %l346, align 4
  %idxprom405 = sext i32 %194 to i64
  %arrayidx406 = getelementptr inbounds float, ptr %193, i64 %idxprom405
  %195 = load float, ptr %arrayidx406, align 4
  %196 = load i32, ptr %k, align 4
  %idxprom407 = sext i32 %196 to i64
  %arrayidx408 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom407
  %197 = load i32, ptr %m, align 4
  %idxprom409 = sext i32 %197 to i64
  %arrayidx410 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx408, i64 0, i64 %idxprom409
  %198 = load i32, ptr %j, align 4
  %idxprom411 = sext i32 %198 to i64
  %arrayidx412 = getelementptr inbounds [56 x float], ptr %arrayidx410, i64 0, i64 %idxprom411
  %199 = load float, ptr %arrayidx412, align 4
  %cmp413 = fcmp ogt float %195, %199
  br i1 %cmp413, label %if.then415, label %if.end424

if.then415:                                       ; preds = %for.body404
  %200 = load i32, ptr %k, align 4
  %idxprom416 = sext i32 %200 to i64
  %arrayidx417 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom416
  %201 = load i32, ptr %m, align 4
  %idxprom418 = sext i32 %201 to i64
  %arrayidx419 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx417, i64 0, i64 %idxprom418
  %202 = load i32, ptr %j, align 4
  %idxprom420 = sext i32 %202 to i64
  %arrayidx421 = getelementptr inbounds [56 x float], ptr %arrayidx419, i64 0, i64 %idxprom420
  %203 = load float, ptr %arrayidx421, align 4
  %204 = load ptr, ptr %brute_buffer, align 8
  %205 = load i32, ptr %l346, align 4
  %idxprom422 = sext i32 %205 to i64
  %arrayidx423 = getelementptr inbounds float, ptr %204, i64 %idxprom422
  store float %203, ptr %arrayidx423, align 4
  br label %if.end424

if.end424:                                        ; preds = %if.then415, %for.body404
  br label %for.inc425

for.inc425:                                       ; preds = %if.end424
  %206 = load i32, ptr %l346, align 4
  %inc426 = add nsw i32 %206, 1
  store i32 %inc426, ptr %l346, align 4
  br label %for.cond397, !llvm.loop !20

for.end427:                                       ; preds = %land.end403
  br label %for.inc428

for.inc428:                                       ; preds = %for.end427
  %207 = load i32, ptr %j, align 4
  %inc429 = add nsw i32 %207, 1
  store i32 %inc429, ptr %j, align 4
  br label %for.cond348, !llvm.loop !21

for.end430:                                       ; preds = %for.cond348
  br label %for.cond431

for.cond431:                                      ; preds = %for.inc453, %for.end430
  %208 = load i32, ptr %l346, align 4
  %209 = load i32, ptr %n.addr, align 4
  %cmp432 = icmp slt i32 %208, %209
  br i1 %cmp432, label %for.body434, label %for.end455

for.body434:                                      ; preds = %for.cond431
  %210 = load ptr, ptr %brute_buffer, align 8
  %211 = load i32, ptr %l346, align 4
  %idxprom435 = sext i32 %211 to i64
  %arrayidx436 = getelementptr inbounds float, ptr %210, i64 %idxprom435
  %212 = load float, ptr %arrayidx436, align 4
  %213 = load i32, ptr %k, align 4
  %idxprom437 = sext i32 %213 to i64
  %arrayidx438 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom437
  %214 = load i32, ptr %m, align 4
  %idxprom439 = sext i32 %214 to i64
  %arrayidx440 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx438, i64 0, i64 %idxprom439
  %arrayidx441 = getelementptr inbounds [56 x float], ptr %arrayidx440, i64 0, i64 55
  %215 = load float, ptr %arrayidx441, align 4
  %cmp442 = fcmp ogt float %212, %215
  br i1 %cmp442, label %if.then444, label %if.end452

if.then444:                                       ; preds = %for.body434
  %216 = load i32, ptr %k, align 4
  %idxprom445 = sext i32 %216 to i64
  %arrayidx446 = getelementptr inbounds [17 x [8 x [56 x float]]], ptr %workc, i64 0, i64 %idxprom445
  %217 = load i32, ptr %m, align 4
  %idxprom447 = sext i32 %217 to i64
  %arrayidx448 = getelementptr inbounds [8 x [56 x float]], ptr %arrayidx446, i64 0, i64 %idxprom447
  %arrayidx449 = getelementptr inbounds [56 x float], ptr %arrayidx448, i64 0, i64 55
  %218 = load float, ptr %arrayidx449, align 4
  %219 = load ptr, ptr %brute_buffer, align 8
  %220 = load i32, ptr %l346, align 4
  %idxprom450 = sext i32 %220 to i64
  %arrayidx451 = getelementptr inbounds float, ptr %219, i64 %idxprom450
  store float %218, ptr %arrayidx451, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.then444, %for.body434
  br label %for.inc453

for.inc453:                                       ; preds = %if.end452
  %221 = load i32, ptr %l346, align 4
  %inc454 = add nsw i32 %221, 1
  store i32 %inc454, ptr %l346, align 4
  br label %for.cond431, !llvm.loop !22

for.end455:                                       ; preds = %for.cond431
  br label %if.end456

if.end456:                                        ; preds = %for.end455, %for.end341
  store i32 0, ptr %j, align 4
  br label %for.cond457

for.cond457:                                      ; preds = %for.inc506, %if.end456
  %222 = load i32, ptr %j, align 4
  %cmp458 = icmp slt i32 %222, 56
  br i1 %cmp458, label %for.body460, label %for.end508

for.body460:                                      ; preds = %for.cond457
  %223 = load i32, ptr %j, align 4
  %conv462 = sitofp i32 %223 to double
  %224 = load i32, ptr %i, align 4
  %conv464 = sitofp i32 %224 to double
  %mul465 = fmul double %conv464, 5.000000e-01
  %225 = call double @llvm.fmuladd.f64(double %conv462, double 1.250000e-01, double %mul465)
  %sub466 = fsub double %225, 2.000000e+00
  %add467 = fadd double %sub466, 0x4017DCF680000000
  %mul468 = fmul double %add467, 0x3FE62E42A0000000
  %call469 = call double @exp(double noundef %mul468) #8
  %226 = load float, ptr %binHz.addr, align 4
  %conv470 = fpext float %226 to double
  %div471 = fdiv double %call469, %conv470
  %conv472 = fptosi double %div471 to i32
  store i32 %conv472, ptr %bin461, align 4
  %227 = load i32, ptr %bin461, align 4
  %cmp473 = icmp slt i32 %227, 0
  br i1 %cmp473, label %if.then475, label %if.else483

if.then475:                                       ; preds = %for.body460
  %228 = load ptr, ptr %ret, align 8
  %229 = load i32, ptr %i, align 4
  %idxprom476 = sext i32 %229 to i64
  %arrayidx477 = getelementptr inbounds ptr, ptr %228, i64 %idxprom476
  %230 = load ptr, ptr %arrayidx477, align 8
  %231 = load i32, ptr %m, align 4
  %idxprom478 = sext i32 %231 to i64
  %arrayidx479 = getelementptr inbounds ptr, ptr %230, i64 %idxprom478
  %232 = load ptr, ptr %arrayidx479, align 8
  %233 = load i32, ptr %j, align 4
  %add480 = add nsw i32 %233, 2
  %idxprom481 = sext i32 %add480 to i64
  %arrayidx482 = getelementptr inbounds float, ptr %232, i64 %idxprom481
  store float -9.990000e+02, ptr %arrayidx482, align 4
  br label %if.end505

if.else483:                                       ; preds = %for.body460
  %234 = load i32, ptr %bin461, align 4
  %235 = load i32, ptr %n.addr, align 4
  %cmp484 = icmp sge i32 %234, %235
  br i1 %cmp484, label %if.then486, label %if.else494

if.then486:                                       ; preds = %if.else483
  %236 = load ptr, ptr %ret, align 8
  %237 = load i32, ptr %i, align 4
  %idxprom487 = sext i32 %237 to i64
  %arrayidx488 = getelementptr inbounds ptr, ptr %236, i64 %idxprom487
  %238 = load ptr, ptr %arrayidx488, align 8
  %239 = load i32, ptr %m, align 4
  %idxprom489 = sext i32 %239 to i64
  %arrayidx490 = getelementptr inbounds ptr, ptr %238, i64 %idxprom489
  %240 = load ptr, ptr %arrayidx490, align 8
  %241 = load i32, ptr %j, align 4
  %add491 = add nsw i32 %241, 2
  %idxprom492 = sext i32 %add491 to i64
  %arrayidx493 = getelementptr inbounds float, ptr %240, i64 %idxprom492
  store float -9.990000e+02, ptr %arrayidx493, align 4
  br label %if.end504

if.else494:                                       ; preds = %if.else483
  %242 = load ptr, ptr %brute_buffer, align 8
  %243 = load i32, ptr %bin461, align 4
  %idxprom495 = sext i32 %243 to i64
  %arrayidx496 = getelementptr inbounds float, ptr %242, i64 %idxprom495
  %244 = load float, ptr %arrayidx496, align 4
  %245 = load ptr, ptr %ret, align 8
  %246 = load i32, ptr %i, align 4
  %idxprom497 = sext i32 %246 to i64
  %arrayidx498 = getelementptr inbounds ptr, ptr %245, i64 %idxprom497
  %247 = load ptr, ptr %arrayidx498, align 8
  %248 = load i32, ptr %m, align 4
  %idxprom499 = sext i32 %248 to i64
  %arrayidx500 = getelementptr inbounds ptr, ptr %247, i64 %idxprom499
  %249 = load ptr, ptr %arrayidx500, align 8
  %250 = load i32, ptr %j, align 4
  %add501 = add nsw i32 %250, 2
  %idxprom502 = sext i32 %add501 to i64
  %arrayidx503 = getelementptr inbounds float, ptr %249, i64 %idxprom502
  store float %244, ptr %arrayidx503, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.else494, %if.then486
  br label %if.end505

if.end505:                                        ; preds = %if.end504, %if.then475
  br label %for.inc506

for.inc506:                                       ; preds = %if.end505
  %251 = load i32, ptr %j, align 4
  %inc507 = add nsw i32 %251, 1
  store i32 %inc507, ptr %j, align 4
  br label %for.cond457, !llvm.loop !23

for.end508:                                       ; preds = %for.cond457
  store i32 0, ptr %j, align 4
  br label %for.cond509

for.cond509:                                      ; preds = %for.inc524, %for.end508
  %252 = load i32, ptr %j, align 4
  %cmp510 = icmp slt i32 %252, 16
  br i1 %cmp510, label %for.body512, label %for.end526

for.body512:                                      ; preds = %for.cond509
  %253 = load ptr, ptr %ret, align 8
  %254 = load i32, ptr %i, align 4
  %idxprom513 = sext i32 %254 to i64
  %arrayidx514 = getelementptr inbounds ptr, ptr %253, i64 %idxprom513
  %255 = load ptr, ptr %arrayidx514, align 8
  %256 = load i32, ptr %m, align 4
  %idxprom515 = sext i32 %256 to i64
  %arrayidx516 = getelementptr inbounds ptr, ptr %255, i64 %idxprom515
  %257 = load ptr, ptr %arrayidx516, align 8
  %258 = load i32, ptr %j, align 4
  %add517 = add nsw i32 %258, 2
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds float, ptr %257, i64 %idxprom518
  %259 = load float, ptr %arrayidx519, align 4
  %cmp520 = fcmp ogt float %259, -2.000000e+02
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %for.body512
  br label %for.end526

if.end523:                                        ; preds = %for.body512
  br label %for.inc524

for.inc524:                                       ; preds = %if.end523
  %260 = load i32, ptr %j, align 4
  %inc525 = add nsw i32 %260, 1
  store i32 %inc525, ptr %j, align 4
  br label %for.cond509, !llvm.loop !24

for.end526:                                       ; preds = %if.then522, %for.cond509
  %261 = load i32, ptr %j, align 4
  %conv527 = sitofp i32 %261 to float
  %262 = load ptr, ptr %ret, align 8
  %263 = load i32, ptr %i, align 4
  %idxprom528 = sext i32 %263 to i64
  %arrayidx529 = getelementptr inbounds ptr, ptr %262, i64 %idxprom528
  %264 = load ptr, ptr %arrayidx529, align 8
  %265 = load i32, ptr %m, align 4
  %idxprom530 = sext i32 %265 to i64
  %arrayidx531 = getelementptr inbounds ptr, ptr %264, i64 %idxprom530
  %266 = load ptr, ptr %arrayidx531, align 8
  %arrayidx532 = getelementptr inbounds float, ptr %266, i64 0
  store float %conv527, ptr %arrayidx532, align 4
  store i32 55, ptr %j, align 4
  br label %for.cond533

for.cond533:                                      ; preds = %for.inc548, %for.end526
  %267 = load i32, ptr %j, align 4
  %cmp534 = icmp sgt i32 %267, 17
  br i1 %cmp534, label %for.body536, label %for.end549

for.body536:                                      ; preds = %for.cond533
  %268 = load ptr, ptr %ret, align 8
  %269 = load i32, ptr %i, align 4
  %idxprom537 = sext i32 %269 to i64
  %arrayidx538 = getelementptr inbounds ptr, ptr %268, i64 %idxprom537
  %270 = load ptr, ptr %arrayidx538, align 8
  %271 = load i32, ptr %m, align 4
  %idxprom539 = sext i32 %271 to i64
  %arrayidx540 = getelementptr inbounds ptr, ptr %270, i64 %idxprom539
  %272 = load ptr, ptr %arrayidx540, align 8
  %273 = load i32, ptr %j, align 4
  %add541 = add nsw i32 %273, 2
  %idxprom542 = sext i32 %add541 to i64
  %arrayidx543 = getelementptr inbounds float, ptr %272, i64 %idxprom542
  %274 = load float, ptr %arrayidx543, align 4
  %cmp544 = fcmp ogt float %274, -2.000000e+02
  br i1 %cmp544, label %if.then546, label %if.end547

if.then546:                                       ; preds = %for.body536
  br label %for.end549

if.end547:                                        ; preds = %for.body536
  br label %for.inc548

for.inc548:                                       ; preds = %if.end547
  %275 = load i32, ptr %j, align 4
  %dec = add nsw i32 %275, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond533, !llvm.loop !25

for.end549:                                       ; preds = %if.then546, %for.cond533
  %276 = load i32, ptr %j, align 4
  %conv550 = sitofp i32 %276 to float
  %277 = load ptr, ptr %ret, align 8
  %278 = load i32, ptr %i, align 4
  %idxprom551 = sext i32 %278 to i64
  %arrayidx552 = getelementptr inbounds ptr, ptr %277, i64 %idxprom551
  %279 = load ptr, ptr %arrayidx552, align 8
  %280 = load i32, ptr %m, align 4
  %idxprom553 = sext i32 %280 to i64
  %arrayidx554 = getelementptr inbounds ptr, ptr %279, i64 %idxprom553
  %281 = load ptr, ptr %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds float, ptr %281, i64 1
  store float %conv550, ptr %arrayidx555, align 4
  br label %for.inc556

for.inc556:                                       ; preds = %for.end549
  %282 = load i32, ptr %m, align 4
  %inc557 = add nsw i32 %282, 1
  store i32 %inc557, ptr %m, align 4
  br label %for.cond213, !llvm.loop !26

for.end558:                                       ; preds = %for.cond213
  br label %for.inc559

for.inc559:                                       ; preds = %for.end558
  %283 = load i32, ptr %i, align 4
  %inc560 = add nsw i32 %283, 1
  store i32 %inc560, ptr %i, align 4
  br label %for.cond173, !llvm.loop !27

for.end561:                                       ; preds = %for.cond173
  %284 = load ptr, ptr %ret, align 8
  ret ptr %284
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
declare hidden void @attenuate_curve(ptr noundef, float noundef) #5

; Function Attrs: nounwind uwtable
declare hidden void @max_curve(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
declare hidden void @min_curve(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
