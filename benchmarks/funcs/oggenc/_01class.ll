; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_01class(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, i32 noundef %ch) #2 {
entry:
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %samples_per_partition = alloca i32, align 4
  %possible_partitions = alloca i32, align 4
  %n = alloca i32, align 4
  %partvals = alloca i32, align 4
  %partword = alloca ptr, align 8
  %scale = alloca float, align 4
  %offset = alloca i32, align 4
  %max = alloca float, align 4
  %ent = alloca float, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  %0 = load ptr, ptr %vl.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %info1 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %info1, align 8
  store ptr %2, ptr %info, align 8
  %3 = load ptr, ptr %info, align 8
  %grouping = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %grouping, align 8
  store i32 %4, ptr %samples_per_partition, align 4
  %5 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %partitions, align 4
  store i32 %6, ptr %possible_partitions, align 4
  %7 = load ptr, ptr %info, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %end, align 8
  %9 = load ptr, ptr %info, align 8
  %begin = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %begin, align 8
  %sub = sub nsw i64 %8, %10
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %n, align 4
  %11 = load i32, ptr %n, align 4
  %12 = load i32, ptr %samples_per_partition, align 4
  %div = sdiv i32 %11, %12
  store i32 %div, ptr %partvals, align 4
  %13 = load ptr, ptr %vb.addr, align 8
  %14 = load i32, ptr %ch.addr, align 4
  %conv2 = sext i32 %14 to i64
  %mul = mul i64 %conv2, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %13, i64 noundef %mul)
  store ptr %call, ptr %partword, align 8
  %15 = load i32, ptr %samples_per_partition, align 4
  %conv3 = sitofp i32 %15 to double
  %div4 = fdiv double 1.000000e+02, %conv3
  %conv5 = fptrunc double %div4 to float
  store float %conv5, ptr %scale, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i64, ptr %i, align 8
  %17 = load i32, ptr %ch.addr, align 4
  %conv6 = sext i32 %17 to i64
  %cmp = icmp slt i64 %16, %conv6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %vb.addr, align 8
  %19 = load i32, ptr %n, align 4
  %20 = load i32, ptr %samples_per_partition, align 4
  %div8 = sdiv i32 %19, %20
  %conv9 = sext i32 %div8 to i64
  %mul10 = mul i64 %conv9, 8
  %call11 = call ptr @_vorbis_block_alloc(ptr noundef %18, i64 noundef %mul10)
  %21 = load ptr, ptr %partword, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %22
  store ptr %call11, ptr %arrayidx, align 8
  %23 = load ptr, ptr %partword, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %23, i64 %24
  %25 = load ptr, ptr %arrayidx12, align 8
  %26 = load i32, ptr %n, align 4
  %27 = load i32, ptr %samples_per_partition, align 4
  %div13 = sdiv i32 %26, %27
  %conv14 = sext i32 %div13 to i64
  %mul15 = mul i64 %conv14, 8
  call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 %mul15, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, ptr %i, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc89, %for.end
  %29 = load i64, ptr %i, align 8
  %30 = load i32, ptr %partvals, align 4
  %conv17 = sext i32 %30 to i64
  %cmp18 = icmp slt i64 %29, %conv17
  br i1 %cmp18, label %for.body20, label %for.end91

for.body20:                                       ; preds = %for.cond16
  %31 = load i64, ptr %i, align 8
  %32 = load i32, ptr %samples_per_partition, align 4
  %conv21 = sext i32 %32 to i64
  %mul22 = mul nsw i64 %31, %conv21
  %33 = load ptr, ptr %info, align 8
  %begin23 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %begin23, align 8
  %add = add nsw i64 %mul22, %34
  %conv24 = trunc i64 %add to i32
  store i32 %conv24, ptr %offset, align 4
  store i64 0, ptr %j, align 8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc86, %for.body20
  %35 = load i64, ptr %j, align 8
  %36 = load i32, ptr %ch.addr, align 4
  %conv26 = sext i32 %36 to i64
  %cmp27 = icmp slt i64 %35, %conv26
  br i1 %cmp27, label %for.body29, label %for.end88

for.body29:                                       ; preds = %for.cond25
  store float 0.000000e+00, ptr %max, align 4
  store float 0.000000e+00, ptr %ent, align 4
  store i64 0, ptr %k, align 8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.body29
  %37 = load i64, ptr %k, align 8
  %38 = load i32, ptr %samples_per_partition, align 4
  %conv31 = sext i32 %38 to i64
  %cmp32 = icmp slt i64 %37, %conv31
  br i1 %cmp32, label %for.body34, label %for.end59

for.body34:                                       ; preds = %for.cond30
  %39 = load ptr, ptr %in.addr, align 8
  %40 = load i64, ptr %j, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %39, i64 %40
  %41 = load ptr, ptr %arrayidx35, align 8
  %42 = load i32, ptr %offset, align 4
  %conv36 = sext i32 %42 to i64
  %43 = load i64, ptr %k, align 8
  %add37 = add nsw i64 %conv36, %43
  %arrayidx38 = getelementptr inbounds float, ptr %41, i64 %add37
  %44 = load float, ptr %arrayidx38, align 4
  %conv39 = fpext float %44 to double
  %45 = call double @llvm.fabs.f64(double %conv39)
  %46 = load float, ptr %max, align 4
  %conv40 = fpext float %46 to double
  %cmp41 = fcmp ogt double %45, %conv40
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %for.body34
  %47 = load ptr, ptr %in.addr, align 8
  %48 = load i64, ptr %j, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %47, i64 %48
  %49 = load ptr, ptr %arrayidx43, align 8
  %50 = load i32, ptr %offset, align 4
  %conv44 = sext i32 %50 to i64
  %51 = load i64, ptr %k, align 8
  %add45 = add nsw i64 %conv44, %51
  %arrayidx46 = getelementptr inbounds float, ptr %49, i64 %add45
  %52 = load float, ptr %arrayidx46, align 4
  %conv47 = fpext float %52 to double
  %53 = call double @llvm.fabs.f64(double %conv47)
  %conv48 = fptrunc double %53 to float
  store float %conv48, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body34
  %54 = load ptr, ptr %in.addr, align 8
  %55 = load i64, ptr %j, align 8
  %arrayidx49 = getelementptr inbounds ptr, ptr %54, i64 %55
  %56 = load ptr, ptr %arrayidx49, align 8
  %57 = load i32, ptr %offset, align 4
  %conv50 = sext i32 %57 to i64
  %58 = load i64, ptr %k, align 8
  %add51 = add nsw i64 %conv50, %58
  %arrayidx52 = getelementptr inbounds float, ptr %56, i64 %add51
  %59 = load float, ptr %arrayidx52, align 4
  %conv53 = fpext float %59 to double
  %60 = call double @llvm.rint.f64(double %conv53)
  %61 = call double @llvm.fabs.f64(double %60)
  %62 = load float, ptr %ent, align 4
  %conv54 = fpext float %62 to double
  %add55 = fadd double %conv54, %61
  %conv56 = fptrunc double %add55 to float
  store float %conv56, ptr %ent, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %if.end
  %63 = load i64, ptr %k, align 8
  %inc58 = add nsw i64 %63, 1
  store i64 %inc58, ptr %k, align 8
  br label %for.cond30, !llvm.loop !8

for.end59:                                        ; preds = %for.cond30
  %64 = load float, ptr %scale, align 4
  %65 = load float, ptr %ent, align 4
  %mul60 = fmul float %65, %64
  store float %mul60, ptr %ent, align 4
  store i64 0, ptr %k, align 8
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc81, %for.end59
  %66 = load i64, ptr %k, align 8
  %67 = load i32, ptr %possible_partitions, align 4
  %sub62 = sub nsw i32 %67, 1
  %conv63 = sext i32 %sub62 to i64
  %cmp64 = icmp slt i64 %66, %conv63
  br i1 %cmp64, label %for.body66, label %for.end83

for.body66:                                       ; preds = %for.cond61
  %68 = load float, ptr %max, align 4
  %69 = load ptr, ptr %info, align 8
  %classmetric1 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %69, i32 0, i32 7
  %70 = load i64, ptr %k, align 8
  %arrayidx67 = getelementptr inbounds [64 x float], ptr %classmetric1, i64 0, i64 %70
  %71 = load float, ptr %arrayidx67, align 4
  %cmp68 = fcmp ole float %68, %71
  br i1 %cmp68, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %for.body66
  %72 = load ptr, ptr %info, align 8
  %classmetric2 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %72, i32 0, i32 8
  %73 = load i64, ptr %k, align 8
  %arrayidx70 = getelementptr inbounds [64 x float], ptr %classmetric2, i64 0, i64 %73
  %74 = load float, ptr %arrayidx70, align 4
  %cmp71 = fcmp olt float %74, 0.000000e+00
  br i1 %cmp71, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %75 = load float, ptr %ent, align 4
  %conv73 = fptosi float %75 to i32
  %conv74 = sitofp i32 %conv73 to float
  %76 = load ptr, ptr %info, align 8
  %classmetric275 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %76, i32 0, i32 8
  %77 = load i64, ptr %k, align 8
  %arrayidx76 = getelementptr inbounds [64 x float], ptr %classmetric275, i64 0, i64 %77
  %78 = load float, ptr %arrayidx76, align 4
  %cmp77 = fcmp olt float %conv74, %78
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.end83

if.end80:                                         ; preds = %lor.lhs.false, %for.body66
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %79 = load i64, ptr %k, align 8
  %inc82 = add nsw i64 %79, 1
  store i64 %inc82, ptr %k, align 8
  br label %for.cond61, !llvm.loop !9

for.end83:                                        ; preds = %if.then79, %for.cond61
  %80 = load i64, ptr %k, align 8
  %81 = load ptr, ptr %partword, align 8
  %82 = load i64, ptr %j, align 8
  %arrayidx84 = getelementptr inbounds ptr, ptr %81, i64 %82
  %83 = load ptr, ptr %arrayidx84, align 8
  %84 = load i64, ptr %i, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %83, i64 %84
  store i64 %80, ptr %arrayidx85, align 8
  br label %for.inc86

for.inc86:                                        ; preds = %for.end83
  %85 = load i64, ptr %j, align 8
  %inc87 = add nsw i64 %85, 1
  store i64 %inc87, ptr %j, align 8
  br label %for.cond25, !llvm.loop !10

for.end88:                                        ; preds = %for.cond25
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %86 = load i64, ptr %i, align 8
  %inc90 = add nsw i64 %86, 1
  store i64 %inc90, ptr %i, align 8
  br label %for.cond16, !llvm.loop !11

for.end91:                                        ; preds = %for.cond16
  %87 = load ptr, ptr %look, align 8
  %frames = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %87, i32 0, i32 10
  %88 = load i64, ptr %frames, align 8
  %inc92 = add nsw i64 %88, 1
  store i64 %inc92, ptr %frames, align 8
  %89 = load ptr, ptr %partword, align 8
  ret ptr %89
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
