; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define hidden ptr @_2class(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, i32 noundef %ch) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %l = alloca i64, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %samples_per_partition = alloca i32, align 4
  %possible_partitions = alloca i32, align 4
  %n = alloca i32, align 4
  %partvals = alloca i32, align 4
  %partword = alloca ptr, align 8
  %magmax = alloca float, align 4
  %angmax = alloca float, align 4
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
  %call = call ptr @_vorbis_block_alloc(ptr noundef %13, i64 noundef 8)
  store ptr %call, ptr %partword, align 8
  %14 = load ptr, ptr %vb.addr, align 8
  %15 = load i32, ptr %n, align 4
  %16 = load i32, ptr %ch.addr, align 4
  %mul = mul nsw i32 %15, %16
  %17 = load i32, ptr %samples_per_partition, align 4
  %div2 = sdiv i32 %mul, %17
  %conv3 = sext i32 %div2 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call ptr @_vorbis_block_alloc(ptr noundef %14, i64 noundef %mul4)
  %18 = load ptr, ptr %partword, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 0
  store ptr %call5, ptr %arrayidx, align 8
  %19 = load ptr, ptr %partword, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx6, align 8
  %21 = load i32, ptr %n, align 4
  %22 = load i32, ptr %ch.addr, align 4
  %mul7 = mul nsw i32 %21, %22
  %23 = load i32, ptr %samples_per_partition, align 4
  %div8 = sdiv i32 %mul7, %23
  %conv9 = sext i32 %div8 to i64
  %mul10 = mul i64 %conv9, 8
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %mul10, i1 false)
  store i64 0, ptr %i, align 8
  %24 = load ptr, ptr %info, align 8
  %begin11 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %begin11, align 8
  %26 = load i32, ptr %ch.addr, align 4
  %conv12 = sext i32 %26 to i64
  %div13 = sdiv i64 %25, %conv12
  store i64 %div13, ptr %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc71, %entry
  %27 = load i64, ptr %i, align 8
  %28 = load i32, ptr %partvals, align 4
  %conv14 = sext i32 %28 to i64
  %cmp = icmp slt i64 %27, %conv14
  br i1 %cmp, label %for.body, label %for.end73

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %magmax, align 4
  store float 0.000000e+00, ptr %angmax, align 4
  store i64 0, ptr %j, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc49, %for.body
  %29 = load i64, ptr %j, align 8
  %30 = load i32, ptr %samples_per_partition, align 4
  %conv17 = sext i32 %30 to i64
  %cmp18 = icmp slt i64 %29, %conv17
  br i1 %cmp18, label %for.body20, label %for.end51

for.body20:                                       ; preds = %for.cond16
  %31 = load ptr, ptr %in.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %31, i64 0
  %32 = load ptr, ptr %arrayidx21, align 8
  %33 = load i64, ptr %l, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %32, i64 %33
  %34 = load float, ptr %arrayidx22, align 4
  %conv23 = fpext float %34 to double
  %35 = call double @llvm.fabs.f64(double %conv23)
  %36 = load float, ptr %magmax, align 4
  %conv24 = fpext float %36 to double
  %cmp25 = fcmp ogt double %35, %conv24
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %37 = load ptr, ptr %in.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %37, i64 0
  %38 = load ptr, ptr %arrayidx27, align 8
  %39 = load i64, ptr %l, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %38, i64 %39
  %40 = load float, ptr %arrayidx28, align 4
  %conv29 = fpext float %40 to double
  %41 = call double @llvm.fabs.f64(double %conv29)
  %conv30 = fptrunc double %41 to float
  store float %conv30, ptr %magmax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20
  store i64 1, ptr %k, align 8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.end
  %42 = load i64, ptr %k, align 8
  %43 = load i32, ptr %ch.addr, align 4
  %conv32 = sext i32 %43 to i64
  %cmp33 = icmp slt i64 %42, %conv32
  br i1 %cmp33, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond31
  %44 = load ptr, ptr %in.addr, align 8
  %45 = load i64, ptr %k, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %44, i64 %45
  %46 = load ptr, ptr %arrayidx36, align 8
  %47 = load i64, ptr %l, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %46, i64 %47
  %48 = load float, ptr %arrayidx37, align 4
  %conv38 = fpext float %48 to double
  %49 = call double @llvm.fabs.f64(double %conv38)
  %50 = load float, ptr %angmax, align 4
  %conv39 = fpext float %50 to double
  %cmp40 = fcmp ogt double %49, %conv39
  br i1 %cmp40, label %if.then42, label %if.end47

if.then42:                                        ; preds = %for.body35
  %51 = load ptr, ptr %in.addr, align 8
  %52 = load i64, ptr %k, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %51, i64 %52
  %53 = load ptr, ptr %arrayidx43, align 8
  %54 = load i64, ptr %l, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %53, i64 %54
  %55 = load float, ptr %arrayidx44, align 4
  %conv45 = fpext float %55 to double
  %56 = call double @llvm.fabs.f64(double %conv45)
  %conv46 = fptrunc double %56 to float
  store float %conv46, ptr %angmax, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %for.body35
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %57 = load i64, ptr %k, align 8
  %inc = add nsw i64 %57, 1
  store i64 %inc, ptr %k, align 8
  br label %for.cond31, !llvm.loop !6

for.end:                                          ; preds = %for.cond31
  %58 = load i64, ptr %l, align 8
  %inc48 = add nsw i64 %58, 1
  store i64 %inc48, ptr %l, align 8
  br label %for.inc49

for.inc49:                                        ; preds = %for.end
  %59 = load i32, ptr %ch.addr, align 4
  %conv50 = sext i32 %59 to i64
  %60 = load i64, ptr %j, align 8
  %add = add nsw i64 %60, %conv50
  store i64 %add, ptr %j, align 8
  br label %for.cond16, !llvm.loop !8

for.end51:                                        ; preds = %for.cond16
  store i64 0, ptr %j, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %for.end51
  %61 = load i64, ptr %j, align 8
  %62 = load i32, ptr %possible_partitions, align 4
  %sub53 = sub nsw i32 %62, 1
  %conv54 = sext i32 %sub53 to i64
  %cmp55 = icmp slt i64 %61, %conv54
  br i1 %cmp55, label %for.body57, label %for.end68

for.body57:                                       ; preds = %for.cond52
  %63 = load float, ptr %magmax, align 4
  %64 = load ptr, ptr %info, align 8
  %classmetric1 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %64, i32 0, i32 7
  %65 = load i64, ptr %j, align 8
  %arrayidx58 = getelementptr inbounds [64 x float], ptr %classmetric1, i64 0, i64 %65
  %66 = load float, ptr %arrayidx58, align 4
  %cmp59 = fcmp ole float %63, %66
  br i1 %cmp59, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %for.body57
  %67 = load float, ptr %angmax, align 4
  %68 = load ptr, ptr %info, align 8
  %classmetric2 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %68, i32 0, i32 8
  %69 = load i64, ptr %j, align 8
  %arrayidx61 = getelementptr inbounds [64 x float], ptr %classmetric2, i64 0, i64 %69
  %70 = load float, ptr %arrayidx61, align 4
  %cmp62 = fcmp ole float %67, %70
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true
  br label %for.end68

if.end65:                                         ; preds = %land.lhs.true, %for.body57
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %71 = load i64, ptr %j, align 8
  %inc67 = add nsw i64 %71, 1
  store i64 %inc67, ptr %j, align 8
  br label %for.cond52, !llvm.loop !9

for.end68:                                        ; preds = %if.then64, %for.cond52
  %72 = load i64, ptr %j, align 8
  %73 = load ptr, ptr %partword, align 8
  %arrayidx69 = getelementptr inbounds ptr, ptr %73, i64 0
  %74 = load ptr, ptr %arrayidx69, align 8
  %75 = load i64, ptr %i, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %74, i64 %75
  store i64 %72, ptr %arrayidx70, align 8
  br label %for.inc71

for.inc71:                                        ; preds = %for.end68
  %76 = load i64, ptr %i, align 8
  %inc72 = add nsw i64 %76, 1
  store i64 %inc72, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end73:                                        ; preds = %for.cond
  %77 = load ptr, ptr %look, align 8
  %frames = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %77, i32 0, i32 10
  %78 = load i64, ptr %frames, align 8
  %inc74 = add nsw i64 %78, 1
  store i64 %inc74, ptr %frames, align 8
  %79 = load ptr, ptr %partword, align 8
  ret ptr %79
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
