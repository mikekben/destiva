; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #2

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @res0_look(ptr noundef %vd, ptr noundef %vr) #4 {
entry:
  %vd.addr = alloca ptr, align 8
  %vr.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %look = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %acc = alloca i32, align 4
  %dim = alloca i32, align 4
  %maxstage = alloca i32, align 4
  %stages = alloca i32, align 4
  %val = alloca i64, align 8
  %mult = alloca i64, align 8
  %deco = alloca i64, align 8
  store ptr %vd, ptr %vd.addr, align 8
  store ptr %vr, ptr %vr.addr, align 8
  %0 = load ptr, ptr %vr.addr, align 8
  store ptr %0, ptr %info, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #5
  store ptr %call, ptr %look, align 8
  %1 = load ptr, ptr %vd.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  store i32 0, ptr %acc, align 4
  store i32 0, ptr %maxstage, align 4
  %4 = load ptr, ptr %info, align 8
  %5 = load ptr, ptr %look, align 8
  %info1 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %5, i32 0, i32 0
  store ptr %4, ptr %info1, align 8
  %6 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %partitions, align 4
  %8 = load ptr, ptr %look, align 8
  %parts = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %8, i32 0, i32 1
  store i32 %7, ptr %parts, align 8
  %9 = load ptr, ptr %ci, align 8
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 15
  %10 = load ptr, ptr %fullbooks, align 8
  %11 = load ptr, ptr %look, align 8
  %fullbooks2 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %11, i32 0, i32 3
  store ptr %10, ptr %fullbooks2, align 8
  %12 = load ptr, ptr %ci, align 8
  %fullbooks3 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %12, i32 0, i32 15
  %13 = load ptr, ptr %fullbooks3, align 8
  %14 = load ptr, ptr %info, align 8
  %groupbook = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %groupbook, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %13, i64 %idx.ext
  %16 = load ptr, ptr %look, align 8
  %phrasebook = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %16, i32 0, i32 4
  store ptr %add.ptr, ptr %phrasebook, align 8
  %17 = load ptr, ptr %look, align 8
  %phrasebook4 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %phrasebook4, align 8
  %dim5 = getelementptr inbounds nuw %struct.codebook, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %dim5, align 8
  %conv = trunc i64 %19 to i32
  store i32 %conv, ptr %dim, align 4
  %20 = load ptr, ptr %look, align 8
  %parts6 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %parts6, align 8
  %conv7 = sext i32 %21 to i64
  %call8 = call noalias ptr @calloc(i64 noundef %conv7, i64 noundef 8) #5
  %22 = load ptr, ptr %look, align 8
  %partbooks = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %22, i32 0, i32 5
  store ptr %call8, ptr %partbooks, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %23 = load i32, ptr %j, align 4
  %24 = load ptr, ptr %look, align 8
  %parts9 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %parts9, align 8
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %j, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4
  %call11 = call i32 @ilog(i32 noundef %28)
  store i32 %call11, ptr %stages, align 4
  %29 = load i32, ptr %stages, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end41

if.then:                                          ; preds = %for.body
  %30 = load i32, ptr %stages, align 4
  %31 = load i32, ptr %maxstage, align 4
  %cmp12 = icmp sgt i32 %30, %31
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %32 = load i32, ptr %stages, align 4
  store i32 %32, ptr %maxstage, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  %33 = load i32, ptr %stages, align 4
  %conv15 = sext i32 %33 to i64
  %call16 = call noalias ptr @calloc(i64 noundef %conv15, i64 noundef 8) #5
  %34 = load ptr, ptr %look, align 8
  %partbooks17 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %partbooks17, align 8
  %36 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %36 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %35, i64 %idxprom18
  store ptr %call16, ptr %arrayidx19, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.end
  %37 = load i32, ptr %k, align 4
  %38 = load i32, ptr %stages, align 4
  %cmp21 = icmp slt i32 %37, %38
  br i1 %cmp21, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond20
  %39 = load ptr, ptr %info, align 8
  %secondstages24 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %40 to i64
  %arrayidx26 = getelementptr inbounds [64 x i32], ptr %secondstages24, i64 0, i64 %idxprom25
  %41 = load i32, ptr %arrayidx26, align 4
  %42 = load i32, ptr %k, align 4
  %shl = shl i32 1, %42
  %and = and i32 %41, %shl
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %for.body23
  %43 = load ptr, ptr %ci, align 8
  %fullbooks29 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %43, i32 0, i32 15
  %44 = load ptr, ptr %fullbooks29, align 8
  %45 = load ptr, ptr %info, align 8
  %booklist = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %45, i32 0, i32 6
  %46 = load i32, ptr %acc, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %acc, align 4
  %idxprom30 = sext i32 %46 to i64
  %arrayidx31 = getelementptr inbounds [256 x i32], ptr %booklist, i64 0, i64 %idxprom30
  %47 = load i32, ptr %arrayidx31, align 4
  %idx.ext32 = sext i32 %47 to i64
  %add.ptr33 = getelementptr inbounds %struct.codebook, ptr %44, i64 %idx.ext32
  %48 = load ptr, ptr %look, align 8
  %partbooks34 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %partbooks34, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %50 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %49, i64 %idxprom35
  %51 = load ptr, ptr %arrayidx36, align 8
  %52 = load i32, ptr %k, align 4
  %idxprom37 = sext i32 %52 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %51, i64 %idxprom37
  store ptr %add.ptr33, ptr %arrayidx38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %for.body23
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %53 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %53, 1
  store i32 %inc40, ptr %k, align 4
  br label %for.cond20, !llvm.loop !6

for.end:                                          ; preds = %for.cond20
  br label %if.end41

if.end41:                                         ; preds = %for.end, %for.body
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %54 = load i32, ptr %j, align 4
  %inc43 = add nsw i32 %54, 1
  store i32 %inc43, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end44:                                        ; preds = %for.cond
  %55 = load ptr, ptr %look, align 8
  %parts45 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %parts45, align 8
  %conv46 = sitofp i32 %56 to float
  %conv47 = fpext float %conv46 to double
  %57 = load i32, ptr %dim, align 4
  %conv48 = sitofp i32 %57 to float
  %conv49 = fpext float %conv48 to double
  %call50 = call double @pow(double noundef %conv47, double noundef %conv49) #6
  %58 = call double @llvm.rint.f64(double %call50)
  %conv51 = fptosi double %58 to i32
  %59 = load ptr, ptr %look, align 8
  %partvals = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %59, i32 0, i32 6
  store i32 %conv51, ptr %partvals, align 8
  %60 = load i32, ptr %maxstage, align 4
  %61 = load ptr, ptr %look, align 8
  %stages52 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %61, i32 0, i32 2
  store i32 %60, ptr %stages52, align 4
  %62 = load ptr, ptr %look, align 8
  %partvals53 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %62, i32 0, i32 6
  %63 = load i32, ptr %partvals53, align 8
  %conv54 = sext i32 %63 to i64
  %mul = mul i64 %conv54, 8
  %call55 = call noalias ptr @malloc(i64 noundef %mul) #7
  %64 = load ptr, ptr %look, align 8
  %decodemap = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %64, i32 0, i32 7
  store ptr %call55, ptr %decodemap, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc89, %for.end44
  %65 = load i32, ptr %j, align 4
  %66 = load ptr, ptr %look, align 8
  %partvals57 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %partvals57, align 8
  %cmp58 = icmp slt i32 %65, %67
  br i1 %cmp58, label %for.body60, label %for.end91

for.body60:                                       ; preds = %for.cond56
  %68 = load i32, ptr %j, align 4
  %conv61 = sext i32 %68 to i64
  store i64 %conv61, ptr %val, align 8
  %69 = load ptr, ptr %look, align 8
  %partvals62 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %69, i32 0, i32 6
  %70 = load i32, ptr %partvals62, align 8
  %71 = load ptr, ptr %look, align 8
  %parts63 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %parts63, align 8
  %div = sdiv i32 %70, %72
  %conv64 = sext i32 %div to i64
  store i64 %conv64, ptr %mult, align 8
  %73 = load i32, ptr %dim, align 4
  %conv65 = sext i32 %73 to i64
  %mul66 = mul i64 %conv65, 4
  %call67 = call noalias ptr @malloc(i64 noundef %mul66) #7
  %74 = load ptr, ptr %look, align 8
  %decodemap68 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %decodemap68, align 8
  %76 = load i32, ptr %j, align 4
  %idxprom69 = sext i32 %76 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %75, i64 %idxprom69
  store ptr %call67, ptr %arrayidx70, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc86, %for.body60
  %77 = load i32, ptr %k, align 4
  %78 = load i32, ptr %dim, align 4
  %cmp72 = icmp slt i32 %77, %78
  br i1 %cmp72, label %for.body74, label %for.end88

for.body74:                                       ; preds = %for.cond71
  %79 = load i64, ptr %val, align 8
  %80 = load i64, ptr %mult, align 8
  %div75 = sdiv i64 %79, %80
  store i64 %div75, ptr %deco, align 8
  %81 = load i64, ptr %deco, align 8
  %82 = load i64, ptr %mult, align 8
  %mul76 = mul nsw i64 %81, %82
  %83 = load i64, ptr %val, align 8
  %sub = sub nsw i64 %83, %mul76
  store i64 %sub, ptr %val, align 8
  %84 = load ptr, ptr %look, align 8
  %parts77 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %84, i32 0, i32 1
  %85 = load i32, ptr %parts77, align 8
  %conv78 = sext i32 %85 to i64
  %86 = load i64, ptr %mult, align 8
  %div79 = sdiv i64 %86, %conv78
  store i64 %div79, ptr %mult, align 8
  %87 = load i64, ptr %deco, align 8
  %conv80 = trunc i64 %87 to i32
  %88 = load ptr, ptr %look, align 8
  %decodemap81 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %88, i32 0, i32 7
  %89 = load ptr, ptr %decodemap81, align 8
  %90 = load i32, ptr %j, align 4
  %idxprom82 = sext i32 %90 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %89, i64 %idxprom82
  %91 = load ptr, ptr %arrayidx83, align 8
  %92 = load i32, ptr %k, align 4
  %idxprom84 = sext i32 %92 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %91, i64 %idxprom84
  store i32 %conv80, ptr %arrayidx85, align 4
  br label %for.inc86

for.inc86:                                        ; preds = %for.body74
  %93 = load i32, ptr %k, align 4
  %inc87 = add nsw i32 %93, 1
  store i32 %inc87, ptr %k, align 4
  br label %for.cond71, !llvm.loop !9

for.end88:                                        ; preds = %for.cond71
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %94 = load i32, ptr %j, align 4
  %inc90 = add nsw i32 %94, 1
  store i32 %inc90, ptr %j, align 4
  br label %for.cond56, !llvm.loop !10

for.end91:                                        ; preds = %for.cond56
  %95 = load ptr, ptr %look, align 8
  ret ptr %95
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
