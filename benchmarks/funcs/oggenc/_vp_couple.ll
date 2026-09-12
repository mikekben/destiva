; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

@stereo_threshholds = external hidden global [9 x double], align 16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind uwtable
declare hidden float @unitnorm(float noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @_vp_couple(i32 noundef %blobno, ptr noundef %g, ptr noundef %p, ptr noundef %vi, ptr noundef %res, ptr noundef %mag_memo, ptr noundef %mag_sort, ptr noundef %ifloor, ptr noundef %nonzero, i32 noundef %sliding_lowpass) #1 {
entry:
  %blobno.addr = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %mag_memo.addr = alloca ptr, align 8
  %mag_sort.addr = alloca ptr, align 8
  %ifloor.addr = alloca ptr, align 8
  %nonzero.addr = alloca ptr, align 8
  %sliding_lowpass.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %rM = alloca ptr, align 8
  %rA = alloca ptr, align 8
  %qM = alloca ptr, align 8
  %qA = alloca ptr, align 8
  %floorM = alloca ptr, align 8
  %floorA = alloca ptr, align 8
  %prepoint = alloca float, align 4
  %postpoint = alloca float, align 4
  %partition = alloca i32, align 4
  %limit = alloca i32, align 4
  %pointlimit = alloca i32, align 4
  %acc = alloca float, align 4
  %l = alloca i32, align 4
  %l150 = alloca i32, align 4
  store i32 %blobno, ptr %blobno.addr, align 4
  store ptr %g, ptr %g.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %res, ptr %res.addr, align 8
  store ptr %mag_memo, ptr %mag_memo.addr, align 8
  store ptr %mag_sort, ptr %mag_sort.addr, align 8
  store ptr %ifloor, ptr %ifloor.addr, align 8
  store ptr %nonzero, ptr %nonzero.addr, align 8
  store i32 %sliding_lowpass, ptr %sliding_lowpass.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc181, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %vi.addr, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %coupling_steps, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end183

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %nonzero.addr, align 8
  %6 = load ptr, ptr %vi.addr, align 8
  %coupling_mag = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr %coupling_mag, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load ptr, ptr %nonzero.addr, align 8
  %11 = load ptr, ptr %vi.addr, align 8
  %coupling_ang = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], ptr %coupling_ang, i64 0, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %14 = load i32, ptr %arrayidx7, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then, label %if.end180

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %15 = load ptr, ptr %res.addr, align 8
  %16 = load ptr, ptr %vi.addr, align 8
  %coupling_mag9 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], ptr %coupling_mag9, i64 0, i64 %idxprom10
  %18 = load i32, ptr %arrayidx11, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %15, i64 %idxprom12
  %19 = load ptr, ptr %arrayidx13, align 8
  store ptr %19, ptr %rM, align 8
  %20 = load ptr, ptr %res.addr, align 8
  %21 = load ptr, ptr %vi.addr, align 8
  %coupling_ang14 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], ptr %coupling_ang14, i64 0, i64 %idxprom15
  %23 = load i32, ptr %arrayidx16, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %20, i64 %idxprom17
  %24 = load ptr, ptr %arrayidx18, align 8
  store ptr %24, ptr %rA, align 8
  %25 = load ptr, ptr %rM, align 8
  %26 = load i32, ptr %n, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds float, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %qM, align 8
  %27 = load ptr, ptr %rA, align 8
  %28 = load i32, ptr %n, align 4
  %idx.ext19 = sext i32 %28 to i64
  %add.ptr20 = getelementptr inbounds float, ptr %27, i64 %idx.ext19
  store ptr %add.ptr20, ptr %qA, align 8
  %29 = load ptr, ptr %ifloor.addr, align 8
  %30 = load ptr, ptr %vi.addr, align 8
  %coupling_mag21 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [256 x i32], ptr %coupling_mag21, i64 0, i64 %idxprom22
  %32 = load i32, ptr %arrayidx23, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %29, i64 %idxprom24
  %33 = load ptr, ptr %arrayidx25, align 8
  store ptr %33, ptr %floorM, align 8
  %34 = load ptr, ptr %ifloor.addr, align 8
  %35 = load ptr, ptr %vi.addr, align 8
  %coupling_ang26 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], ptr %coupling_ang26, i64 0, i64 %idxprom27
  %37 = load i32, ptr %arrayidx28, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %34, i64 %idxprom29
  %38 = load ptr, ptr %arrayidx30, align 8
  store ptr %38, ptr %floorA, align 8
  %39 = load ptr, ptr %g.addr, align 8
  %coupling_prepointamp = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %39, i32 0, i32 8
  %40 = load i32, ptr %blobno.addr, align 4
  %idxprom31 = sext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds [15 x i32], ptr %coupling_prepointamp, i64 0, i64 %idxprom31
  %41 = load i32, ptr %arrayidx32, align 4
  %idxprom33 = sext i32 %41 to i64
  %arrayidx34 = getelementptr inbounds [9 x double], ptr @stereo_threshholds, i64 0, i64 %idxprom33
  %42 = load double, ptr %arrayidx34, align 8
  %conv = fptrunc double %42 to float
  store float %conv, ptr %prepoint, align 4
  %43 = load ptr, ptr %g.addr, align 8
  %coupling_postpointamp = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %43, i32 0, i32 9
  %44 = load i32, ptr %blobno.addr, align 4
  %idxprom35 = sext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds [15 x i32], ptr %coupling_postpointamp, i64 0, i64 %idxprom35
  %45 = load i32, ptr %arrayidx36, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds [9 x double], ptr @stereo_threshholds, i64 0, i64 %idxprom37
  %46 = load double, ptr %arrayidx38, align 8
  %conv39 = fptrunc double %46 to float
  store float %conv39, ptr %postpoint, align 4
  %47 = load ptr, ptr %p.addr, align 8
  %vi40 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %vi40, align 8
  %normal_point_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %48, i32 0, i32 19
  %49 = load i32, ptr %normal_point_p, align 8
  %tobool41 = icmp ne i32 %49, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %50 = load ptr, ptr %p.addr, align 8
  %vi42 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %vi42, align 8
  %normal_partition = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %51, i32 0, i32 21
  %52 = load i32, ptr %normal_partition, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %53 = load ptr, ptr %p.addr, align 8
  %n43 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %n43, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %54, %cond.false ]
  store i32 %cond, ptr %partition, align 4
  %55 = load ptr, ptr %g.addr, align 8
  %coupling_pointlimit = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %p.addr, align 8
  %vi44 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %vi44, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %blockflag, align 8
  %idxprom45 = sext i32 %58 to i64
  %arrayidx46 = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit, i64 0, i64 %idxprom45
  %59 = load i32, ptr %blobno.addr, align 4
  %idxprom47 = sext i32 %59 to i64
  %arrayidx48 = getelementptr inbounds [15 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %60 = load i32, ptr %arrayidx48, align 4
  store i32 %60, ptr %limit, align 4
  %61 = load i32, ptr %limit, align 4
  store i32 %61, ptr %pointlimit, align 4
  %62 = load ptr, ptr %nonzero.addr, align 8
  %63 = load ptr, ptr %vi.addr, align 8
  %coupling_mag49 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %64 to i64
  %arrayidx51 = getelementptr inbounds [256 x i32], ptr %coupling_mag49, i64 0, i64 %idxprom50
  %65 = load i32, ptr %arrayidx51, align 4
  %idxprom52 = sext i32 %65 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %62, i64 %idxprom52
  store i32 1, ptr %arrayidx53, align 4
  %66 = load ptr, ptr %nonzero.addr, align 8
  %67 = load ptr, ptr %vi.addr, align 8
  %coupling_ang54 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %67, i32 0, i32 6
  %68 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %68 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], ptr %coupling_ang54, i64 0, i64 %idxprom55
  %69 = load i32, ptr %arrayidx56, align 4
  %idxprom57 = sext i32 %69 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %66, i64 %idxprom57
  store i32 1, ptr %arrayidx58, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc177, %cond.end
  %70 = load i32, ptr %j, align 4
  %71 = load ptr, ptr %p.addr, align 8
  %n60 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %n60, align 8
  %cmp61 = icmp slt i32 %70, %72
  br i1 %cmp61, label %for.body63, label %for.end179

for.body63:                                       ; preds = %for.cond59
  store float 0.000000e+00, ptr %acc, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc, %for.body63
  %73 = load i32, ptr %k, align 4
  %74 = load i32, ptr %partition, align 4
  %cmp65 = icmp slt i32 %73, %74
  br i1 %cmp65, label %for.body67, label %for.end

for.body67:                                       ; preds = %for.cond64
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %j, align 4
  %add = add nsw i32 %75, %76
  store i32 %add, ptr %l, align 4
  %77 = load i32, ptr %l, align 4
  %78 = load i32, ptr %sliding_lowpass.addr, align 4
  %cmp68 = icmp slt i32 %77, %78
  br i1 %cmp68, label %if.then70, label %if.else132

if.then70:                                        ; preds = %for.body67
  %79 = load i32, ptr %l, align 4
  %80 = load i32, ptr %limit, align 4
  %cmp71 = icmp sge i32 %79, %80
  br i1 %cmp71, label %land.lhs.true, label %lor.lhs.false86

land.lhs.true:                                    ; preds = %if.then70
  %81 = load ptr, ptr %rM, align 8
  %82 = load i32, ptr %l, align 4
  %idxprom73 = sext i32 %82 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %81, i64 %idxprom73
  %83 = load float, ptr %arrayidx74, align 4
  %conv75 = fpext float %83 to double
  %84 = call double @llvm.fabs.f64(double %conv75)
  %85 = load float, ptr %postpoint, align 4
  %conv76 = fpext float %85 to double
  %cmp77 = fcmp olt double %84, %conv76
  br i1 %cmp77, label %land.lhs.true79, label %lor.lhs.false86

land.lhs.true79:                                  ; preds = %land.lhs.true
  %86 = load ptr, ptr %rA, align 8
  %87 = load i32, ptr %l, align 4
  %idxprom80 = sext i32 %87 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %86, i64 %idxprom80
  %88 = load float, ptr %arrayidx81, align 4
  %conv82 = fpext float %88 to double
  %89 = call double @llvm.fabs.f64(double %conv82)
  %90 = load float, ptr %postpoint, align 4
  %conv83 = fpext float %90 to double
  %cmp84 = fcmp olt double %89, %conv83
  br i1 %cmp84, label %if.then100, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %land.lhs.true79, %land.lhs.true, %if.then70
  %91 = load ptr, ptr %rM, align 8
  %92 = load i32, ptr %l, align 4
  %idxprom87 = sext i32 %92 to i64
  %arrayidx88 = getelementptr inbounds float, ptr %91, i64 %idxprom87
  %93 = load float, ptr %arrayidx88, align 4
  %conv89 = fpext float %93 to double
  %94 = call double @llvm.fabs.f64(double %conv89)
  %95 = load float, ptr %prepoint, align 4
  %conv90 = fpext float %95 to double
  %cmp91 = fcmp olt double %94, %conv90
  br i1 %cmp91, label %land.lhs.true93, label %if.else

land.lhs.true93:                                  ; preds = %lor.lhs.false86
  %96 = load ptr, ptr %rA, align 8
  %97 = load i32, ptr %l, align 4
  %idxprom94 = sext i32 %97 to i64
  %arrayidx95 = getelementptr inbounds float, ptr %96, i64 %idxprom94
  %98 = load float, ptr %arrayidx95, align 4
  %conv96 = fpext float %98 to double
  %99 = call double @llvm.fabs.f64(double %conv96)
  %100 = load float, ptr %prepoint, align 4
  %conv97 = fpext float %100 to double
  %cmp98 = fcmp olt double %99, %conv97
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %land.lhs.true93, %land.lhs.true79
  %101 = load ptr, ptr %mag_memo.addr, align 8
  %102 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %102 to i64
  %arrayidx102 = getelementptr inbounds ptr, ptr %101, i64 %idxprom101
  %103 = load ptr, ptr %arrayidx102, align 8
  %104 = load i32, ptr %l, align 4
  %idxprom103 = sext i32 %104 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %103, i64 %idxprom103
  %105 = load float, ptr %arrayidx104, align 4
  %106 = load ptr, ptr %floorM, align 8
  %107 = load i32, ptr %l, align 4
  %idxprom105 = sext i32 %107 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %106, i64 %idxprom105
  %108 = load i32, ptr %arrayidx106, align 4
  %109 = load ptr, ptr %floorA, align 8
  %110 = load i32, ptr %l, align 4
  %idxprom107 = sext i32 %110 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %109, i64 %idxprom107
  %111 = load i32, ptr %arrayidx108, align 4
  %112 = load ptr, ptr %qM, align 8
  %113 = load i32, ptr %l, align 4
  %idx.ext109 = sext i32 %113 to i64
  %add.ptr110 = getelementptr inbounds float, ptr %112, i64 %idx.ext109
  %114 = load ptr, ptr %qA, align 8
  %115 = load i32, ptr %l, align 4
  %idx.ext111 = sext i32 %115 to i64
  %add.ptr112 = getelementptr inbounds float, ptr %114, i64 %idx.ext111
  call void @precomputed_couple_point(float noundef %105, i32 noundef %108, i32 noundef %111, ptr noundef %add.ptr110, ptr noundef %add.ptr112)
  %116 = load ptr, ptr %qM, align 8
  %117 = load i32, ptr %l, align 4
  %idxprom113 = sext i32 %117 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %116, i64 %idxprom113
  %118 = load float, ptr %arrayidx114, align 4
  %conv115 = fpext float %118 to double
  %119 = call double @llvm.rint.f64(double %conv115)
  %cmp116 = fcmp oeq double %119, 0.000000e+00
  br i1 %cmp116, label %if.then118, label %if.end

if.then118:                                       ; preds = %if.then100
  %120 = load ptr, ptr %qM, align 8
  %121 = load i32, ptr %l, align 4
  %idxprom119 = sext i32 %121 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %120, i64 %idxprom119
  %122 = load float, ptr %arrayidx120, align 4
  %123 = load ptr, ptr %qM, align 8
  %124 = load i32, ptr %l, align 4
  %idxprom121 = sext i32 %124 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %123, i64 %idxprom121
  %125 = load float, ptr %arrayidx122, align 4
  %126 = load float, ptr %acc, align 4
  %127 = call float @llvm.fmuladd.f32(float %122, float %125, float %126)
  store float %127, ptr %acc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then118, %if.then100
  br label %if.end131

if.else:                                          ; preds = %land.lhs.true93, %lor.lhs.false86
  %128 = load ptr, ptr %rM, align 8
  %129 = load i32, ptr %l, align 4
  %idxprom123 = sext i32 %129 to i64
  %arrayidx124 = getelementptr inbounds float, ptr %128, i64 %idxprom123
  %130 = load float, ptr %arrayidx124, align 4
  %131 = load ptr, ptr %rA, align 8
  %132 = load i32, ptr %l, align 4
  %idxprom125 = sext i32 %132 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %131, i64 %idxprom125
  %133 = load float, ptr %arrayidx126, align 4
  %134 = load ptr, ptr %qM, align 8
  %135 = load i32, ptr %l, align 4
  %idx.ext127 = sext i32 %135 to i64
  %add.ptr128 = getelementptr inbounds float, ptr %134, i64 %idx.ext127
  %136 = load ptr, ptr %qA, align 8
  %137 = load i32, ptr %l, align 4
  %idx.ext129 = sext i32 %137 to i64
  %add.ptr130 = getelementptr inbounds float, ptr %136, i64 %idx.ext129
  call void @couple_lossless(float noundef %130, float noundef %133, ptr noundef %add.ptr128, ptr noundef %add.ptr130)
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.end
  br label %if.end137

if.else132:                                       ; preds = %for.body67
  %138 = load ptr, ptr %qM, align 8
  %139 = load i32, ptr %l, align 4
  %idxprom133 = sext i32 %139 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %138, i64 %idxprom133
  store float 0.000000e+00, ptr %arrayidx134, align 4
  %140 = load ptr, ptr %qA, align 8
  %141 = load i32, ptr %l, align 4
  %idxprom135 = sext i32 %141 to i64
  %arrayidx136 = getelementptr inbounds float, ptr %140, i64 %idxprom135
  store float 0.000000e+00, ptr %arrayidx136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else132, %if.end131
  br label %for.inc

for.inc:                                          ; preds = %if.end137
  %142 = load i32, ptr %k, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond64, !llvm.loop !6

for.end:                                          ; preds = %for.cond64
  %143 = load ptr, ptr %p.addr, align 8
  %vi138 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %143, i32 0, i32 1
  %144 = load ptr, ptr %vi138, align 8
  %normal_point_p139 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %144, i32 0, i32 19
  %145 = load i32, ptr %normal_point_p139, align 8
  %tobool140 = icmp ne i32 %145, 0
  br i1 %tobool140, label %if.then141, label %if.end176

if.then141:                                       ; preds = %for.end
  store i32 0, ptr %k, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc173, %if.then141
  %146 = load i32, ptr %k, align 4
  %147 = load i32, ptr %partition, align 4
  %cmp143 = icmp slt i32 %146, %147
  br i1 %cmp143, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond142
  %148 = load float, ptr %acc, align 4
  %conv145 = fpext float %148 to double
  %149 = load ptr, ptr %p.addr, align 8
  %vi146 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %149, i32 0, i32 1
  %150 = load ptr, ptr %vi146, align 8
  %normal_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %150, i32 0, i32 22
  %151 = load double, ptr %normal_thresh, align 8
  %cmp147 = fcmp oge double %conv145, %151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond142
  %152 = phi i1 [ false, %for.cond142 ], [ %cmp147, %land.rhs ]
  br i1 %152, label %for.body149, label %for.end175

for.body149:                                      ; preds = %land.end
  %153 = load ptr, ptr %mag_sort.addr, align 8
  %154 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %154 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %153, i64 %idxprom151
  %155 = load ptr, ptr %arrayidx152, align 8
  %156 = load i32, ptr %j, align 4
  %157 = load i32, ptr %k, align 4
  %add153 = add nsw i32 %156, %157
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %155, i64 %idxprom154
  %158 = load i32, ptr %arrayidx155, align 4
  store i32 %158, ptr %l150, align 4
  %159 = load i32, ptr %l150, align 4
  %160 = load i32, ptr %sliding_lowpass.addr, align 4
  %cmp156 = icmp slt i32 %159, %160
  br i1 %cmp156, label %land.lhs.true158, label %if.end172

land.lhs.true158:                                 ; preds = %for.body149
  %161 = load i32, ptr %l150, align 4
  %162 = load i32, ptr %pointlimit, align 4
  %cmp159 = icmp sge i32 %161, %162
  br i1 %cmp159, label %land.lhs.true161, label %if.end172

land.lhs.true161:                                 ; preds = %land.lhs.true158
  %163 = load ptr, ptr %qM, align 8
  %164 = load i32, ptr %l150, align 4
  %idxprom162 = sext i32 %164 to i64
  %arrayidx163 = getelementptr inbounds float, ptr %163, i64 %idxprom162
  %165 = load float, ptr %arrayidx163, align 4
  %conv164 = fpext float %165 to double
  %166 = call double @llvm.rint.f64(double %conv164)
  %cmp165 = fcmp oeq double %166, 0.000000e+00
  br i1 %cmp165, label %if.then167, label %if.end172

if.then167:                                       ; preds = %land.lhs.true161
  %167 = load ptr, ptr %qM, align 8
  %168 = load i32, ptr %l150, align 4
  %idxprom168 = sext i32 %168 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %167, i64 %idxprom168
  %169 = load float, ptr %arrayidx169, align 4
  %call = call float @unitnorm(float noundef %169)
  %170 = load ptr, ptr %qM, align 8
  %171 = load i32, ptr %l150, align 4
  %idxprom170 = sext i32 %171 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %170, i64 %idxprom170
  store float %call, ptr %arrayidx171, align 4
  %172 = load float, ptr %acc, align 4
  %sub = fsub float %172, 1.000000e+00
  store float %sub, ptr %acc, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %land.lhs.true161, %land.lhs.true158, %for.body149
  br label %for.inc173

for.inc173:                                       ; preds = %if.end172
  %173 = load i32, ptr %k, align 4
  %inc174 = add nsw i32 %173, 1
  store i32 %inc174, ptr %k, align 4
  br label %for.cond142, !llvm.loop !8

for.end175:                                       ; preds = %land.end
  br label %if.end176

if.end176:                                        ; preds = %for.end175, %for.end
  br label %for.inc177

for.inc177:                                       ; preds = %if.end176
  %174 = load i32, ptr %partition, align 4
  %175 = load i32, ptr %j, align 4
  %add178 = add nsw i32 %175, %174
  store i32 %add178, ptr %j, align 4
  br label %for.cond59, !llvm.loop !9

for.end179:                                       ; preds = %for.cond59
  br label %if.end180

if.end180:                                        ; preds = %for.end179, %lor.lhs.false
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %176 = load i32, ptr %i, align 4
  %inc182 = add nsw i32 %176, 1
  store i32 %inc182, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end183:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @precomputed_couple_point(float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @couple_lossless(float noundef, float noundef, ptr noundef, ptr noundef) #1

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
