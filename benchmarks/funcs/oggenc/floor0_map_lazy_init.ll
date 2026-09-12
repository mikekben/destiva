; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor0 = type { i32, i32, ptr, [2 x i32], ptr, i64, i64 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_floor0 = type { i32, i64, i64, i32, i32, i32, [16 x i32], float, float }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind
declare double @atan(double noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @floor0_map_lazy_init(ptr noundef %vb, ptr noundef %infoX, ptr noundef %look) #3 {
entry:
  %vb.addr = alloca ptr, align 8
  %infoX.addr = alloca ptr, align 8
  %look.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %info = alloca ptr, align 8
  %W3 = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %scale = alloca float, align 4
  %val = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %infoX, ptr %infoX.addr, align 8
  store ptr %look, ptr %look.addr, align 8
  %0 = load ptr, ptr %look.addr, align 8
  %linearmap = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %linearmap, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %3
  %4 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end99, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %vb.addr, align 8
  %vd1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %vd1, align 8
  store ptr %6, ptr %vd, align 8
  %7 = load ptr, ptr %vd, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %vi2, align 8
  store ptr %8, ptr %vi, align 8
  %9 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %codec_setup, align 8
  store ptr %10, ptr %ci, align 8
  %11 = load ptr, ptr %infoX.addr, align 8
  store ptr %11, ptr %info, align 8
  %12 = load ptr, ptr %vb.addr, align 8
  %W4 = getelementptr inbounds nuw %struct.vorbis_block, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %W4, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, ptr %W3, align 4
  %14 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %W3, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %idxprom
  %16 = load i64, ptr %arrayidx5, align 8
  %div = sdiv i64 %16, 2
  %conv6 = trunc i64 %div to i32
  store i32 %conv6, ptr %n, align 4
  %17 = load ptr, ptr %look.addr, align 8
  %ln = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %ln, align 8
  %conv7 = sitofp i32 %18 to double
  %19 = load ptr, ptr %info, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %rate, align 8
  %conv8 = sitofp i64 %20 to float
  %div9 = fdiv float %conv8, 2.000000e+00
  %mul = fmul float 0x3F483F91E0000000, %div9
  %conv10 = fpext float %mul to double
  %call = call double @atan(double noundef %conv10) #4
  %21 = load ptr, ptr %info, align 8
  %rate12 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %rate12, align 8
  %conv13 = sitofp i64 %22 to float
  %div14 = fdiv float %conv13, 2.000000e+00
  %23 = load ptr, ptr %info, align 8
  %rate15 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %rate15, align 8
  %conv16 = sitofp i64 %24 to float
  %div17 = fdiv float %conv16, 2.000000e+00
  %mul18 = fmul float %div14, %div17
  %mul19 = fmul float %mul18, 0x3E53DD3DC0000000
  %conv20 = fpext float %mul19 to double
  %call21 = call double @atan(double noundef %conv20) #4
  %mul22 = fmul double 0x4001EB8520000000, %call21
  %25 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call, double %mul22)
  %26 = load ptr, ptr %info, align 8
  %rate23 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %rate23, align 8
  %conv24 = sitofp i64 %27 to float
  %div25 = fdiv float %conv24, 2.000000e+00
  %mul26 = fmul float 0x3F1A36E2E0000000, %div25
  %conv27 = fpext float %mul26 to double
  %add = fadd double %25, %conv27
  %div28 = fdiv double %conv7, %add
  %conv29 = fptrunc double %div28 to float
  store float %conv29, ptr %scale, align 4
  %28 = load i32, ptr %n, align 4
  %add30 = add nsw i32 %28, 1
  %conv31 = sext i32 %add30 to i64
  %mul32 = mul i64 %conv31, 4
  %call33 = call noalias ptr @malloc(i64 noundef %mul32) #5
  %29 = load ptr, ptr %look.addr, align 8
  %linearmap34 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %linearmap34, align 8
  %31 = load i32, ptr %W3, align 4
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %30, i64 %idxprom35
  store ptr %call33, ptr %arrayidx36, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %32 = load i32, ptr %j, align 4
  %33 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %info, align 8
  %rate38 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %rate38, align 8
  %conv39 = sitofp i64 %35 to float
  %div40 = fdiv float %conv39, 2.000000e+00
  %36 = load i32, ptr %n, align 4
  %conv41 = sitofp i32 %36 to float
  %div42 = fdiv float %div40, %conv41
  %37 = load i32, ptr %j, align 4
  %conv43 = sitofp i32 %37 to float
  %mul44 = fmul float %div42, %conv43
  %mul45 = fmul float 0x3F483F91E0000000, %mul44
  %conv46 = fpext float %mul45 to double
  %call47 = call double @atan(double noundef %conv46) #4
  %38 = load ptr, ptr %info, align 8
  %rate49 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %38, i32 0, i32 1
  %39 = load i64, ptr %rate49, align 8
  %conv50 = sitofp i64 %39 to float
  %div51 = fdiv float %conv50, 2.000000e+00
  %40 = load i32, ptr %n, align 4
  %conv52 = sitofp i32 %40 to float
  %div53 = fdiv float %div51, %conv52
  %41 = load i32, ptr %j, align 4
  %conv54 = sitofp i32 %41 to float
  %mul55 = fmul float %div53, %conv54
  %42 = load ptr, ptr %info, align 8
  %rate56 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %rate56, align 8
  %conv57 = sitofp i64 %43 to float
  %div58 = fdiv float %conv57, 2.000000e+00
  %44 = load i32, ptr %n, align 4
  %conv59 = sitofp i32 %44 to float
  %div60 = fdiv float %div58, %conv59
  %45 = load i32, ptr %j, align 4
  %conv61 = sitofp i32 %45 to float
  %mul62 = fmul float %div60, %conv61
  %mul63 = fmul float %mul55, %mul62
  %mul64 = fmul float %mul63, 0x3E53DD3DC0000000
  %conv65 = fpext float %mul64 to double
  %call66 = call double @atan(double noundef %conv65) #4
  %mul67 = fmul double 0x4001EB8520000000, %call66
  %46 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call47, double %mul67)
  %47 = load ptr, ptr %info, align 8
  %rate68 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %47, i32 0, i32 1
  %48 = load i64, ptr %rate68, align 8
  %conv69 = sitofp i64 %48 to float
  %div70 = fdiv float %conv69, 2.000000e+00
  %49 = load i32, ptr %n, align 4
  %conv71 = sitofp i32 %49 to float
  %div72 = fdiv float %div70, %conv71
  %50 = load i32, ptr %j, align 4
  %conv73 = sitofp i32 %50 to float
  %mul74 = fmul float %div72, %conv73
  %mul75 = fmul float 0x3F1A36E2E0000000, %mul74
  %conv76 = fpext float %mul75 to double
  %add77 = fadd double %46, %conv76
  %51 = load float, ptr %scale, align 4
  %conv78 = fpext float %51 to double
  %mul79 = fmul double %add77, %conv78
  %52 = call double @llvm.floor.f64(double %mul79)
  %conv80 = fptosi double %52 to i32
  store i32 %conv80, ptr %val, align 4
  %53 = load i32, ptr %val, align 4
  %54 = load ptr, ptr %look.addr, align 8
  %ln81 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %ln81, align 8
  %cmp82 = icmp sge i32 %53, %55
  br i1 %cmp82, label %if.then84, label %if.end

if.then84:                                        ; preds = %for.body
  %56 = load ptr, ptr %look.addr, align 8
  %ln85 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %ln85, align 8
  %sub = sub nsw i32 %57, 1
  store i32 %sub, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then84, %for.body
  %58 = load i32, ptr %val, align 4
  %59 = load ptr, ptr %look.addr, align 8
  %linearmap86 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %linearmap86, align 8
  %61 = load i32, ptr %W3, align 4
  %idxprom87 = sext i32 %61 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %60, i64 %idxprom87
  %62 = load ptr, ptr %arrayidx88, align 8
  %63 = load i32, ptr %j, align 4
  %idxprom89 = sext i32 %63 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %62, i64 %idxprom89
  store i32 %58, ptr %arrayidx90, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %64 = load i32, ptr %j, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %look.addr, align 8
  %linearmap91 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %linearmap91, align 8
  %67 = load i32, ptr %W3, align 4
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %66, i64 %idxprom92
  %68 = load ptr, ptr %arrayidx93, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %68, i64 %idxprom94
  store i32 -1, ptr %arrayidx95, align 4
  %70 = load i32, ptr %n, align 4
  %71 = load ptr, ptr %look.addr, align 8
  %n96 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %W3, align 4
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [2 x i32], ptr %n96, i64 0, i64 %idxprom97
  store i32 %70, ptr %arrayidx98, align 4
  br label %if.end99

if.end99:                                         ; preds = %for.end, %entry
  ret void
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
