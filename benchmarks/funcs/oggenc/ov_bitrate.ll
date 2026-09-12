; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i64 @ov_bitrate(ptr noundef %vf, i32 noundef %i) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %bits = alloca i64, align 8
  %i9 = alloca i32, align 4
  %br = alloca float, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -131, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %i.addr, align 4
  %3 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %links, align 8
  %cmp1 = icmp sge i32 %2, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i64 -131, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %7 = load i32, ptr %i.addr, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @ov_bitrate(ptr noundef %8, i32 noundef 0)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end3
  %9 = load i32, ptr %i.addr, align 4
  %cmp7 = icmp slt i32 %9, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  store i64 0, ptr %bits, align 8
  store i32 0, ptr %i9, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %10 = load i32, ptr %i9, align 4
  %11 = load ptr, ptr %vf.addr, align 8
  %links10 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %links10, align 8
  %cmp11 = icmp slt i32 %10, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %vf.addr, align 8
  %offsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %offsets, align 8
  %15 = load i32, ptr %i9, align 4
  %add = add nsw i32 %15, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom
  %16 = load i64, ptr %arrayidx, align 8
  %17 = load ptr, ptr %vf.addr, align 8
  %dataoffsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %dataoffsets, align 8
  %19 = load i32, ptr %i9, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %18, i64 %idxprom12
  %20 = load i64, ptr %arrayidx13, align 8
  %sub = sub nsw i64 %16, %20
  %mul = mul nsw i64 %sub, 8
  %21 = load i64, ptr %bits, align 8
  %add14 = add nsw i64 %21, %mul
  store i64 %add14, ptr %bits, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i9, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i9, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load i64, ptr %bits, align 8
  %conv = sitofp i64 %23 to double
  %24 = load ptr, ptr %vf.addr, align 8
  %call15 = call double @ov_time_total(ptr noundef %24, i32 noundef -1)
  %div = fdiv double %conv, %call15
  %conv16 = fptrunc double %div to float
  store float %conv16, ptr %br, align 4
  %25 = load float, ptr %br, align 4
  %conv17 = fpext float %25 to double
  %26 = call double @llvm.rint.f64(double %conv17)
  %conv18 = fptosi double %26 to i64
  store i64 %conv18, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end6
  %27 = load ptr, ptr %vf.addr, align 8
  %seekable19 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %seekable19, align 8
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %if.then21, label %if.else35

if.then21:                                        ; preds = %if.else
  %29 = load ptr, ptr %vf.addr, align 8
  %offsets22 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %offsets22, align 8
  %31 = load i32, ptr %i.addr, align 4
  %add23 = add nsw i32 %31, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %30, i64 %idxprom24
  %32 = load i64, ptr %arrayidx25, align 8
  %33 = load ptr, ptr %vf.addr, align 8
  %dataoffsets26 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %dataoffsets26, align 8
  %35 = load i32, ptr %i.addr, align 4
  %idxprom27 = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds i64, ptr %34, i64 %idxprom27
  %36 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub nsw i64 %32, %36
  %mul30 = mul nsw i64 %sub29, 8
  %conv31 = sitofp i64 %mul30 to double
  %37 = load ptr, ptr %vf.addr, align 8
  %38 = load i32, ptr %i.addr, align 4
  %call32 = call double @ov_time_total(ptr noundef %37, i32 noundef %38)
  %div33 = fdiv double %conv31, %call32
  %39 = call double @llvm.rint.f64(double %div33)
  %conv34 = fptosi double %39 to i64
  store i64 %conv34, ptr %retval, align 8
  br label %return

if.else35:                                        ; preds = %if.else
  %40 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %vi, align 8
  %42 = load i32, ptr %i.addr, align 4
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds %struct.vorbis_info, ptr %41, i64 %idxprom36
  %bitrate_nominal = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx37, i32 0, i32 4
  %43 = load i64, ptr %bitrate_nominal, align 8
  %cmp38 = icmp sgt i64 %43, 0
  br i1 %cmp38, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.else35
  %44 = load ptr, ptr %vf.addr, align 8
  %vi41 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %44, i32 0, i32 10
  %45 = load ptr, ptr %vi41, align 8
  %46 = load i32, ptr %i.addr, align 4
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds %struct.vorbis_info, ptr %45, i64 %idxprom42
  %bitrate_nominal44 = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx43, i32 0, i32 4
  %47 = load i64, ptr %bitrate_nominal44, align 8
  store i64 %47, ptr %retval, align 8
  br label %return

if.else45:                                        ; preds = %if.else35
  %48 = load ptr, ptr %vf.addr, align 8
  %vi46 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %vi46, align 8
  %50 = load i32, ptr %i.addr, align 4
  %idxprom47 = sext i32 %50 to i64
  %arrayidx48 = getelementptr inbounds %struct.vorbis_info, ptr %49, i64 %idxprom47
  %bitrate_upper = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx48, i32 0, i32 3
  %51 = load i64, ptr %bitrate_upper, align 8
  %cmp49 = icmp sgt i64 %51, 0
  br i1 %cmp49, label %if.then51, label %if.end73

if.then51:                                        ; preds = %if.else45
  %52 = load ptr, ptr %vf.addr, align 8
  %vi52 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %52, i32 0, i32 10
  %53 = load ptr, ptr %vi52, align 8
  %54 = load i32, ptr %i.addr, align 4
  %idxprom53 = sext i32 %54 to i64
  %arrayidx54 = getelementptr inbounds %struct.vorbis_info, ptr %53, i64 %idxprom53
  %bitrate_lower = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx54, i32 0, i32 5
  %55 = load i64, ptr %bitrate_lower, align 8
  %cmp55 = icmp sgt i64 %55, 0
  br i1 %cmp55, label %if.then57, label %if.else68

if.then57:                                        ; preds = %if.then51
  %56 = load ptr, ptr %vf.addr, align 8
  %vi58 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %56, i32 0, i32 10
  %57 = load ptr, ptr %vi58, align 8
  %58 = load i32, ptr %i.addr, align 4
  %idxprom59 = sext i32 %58 to i64
  %arrayidx60 = getelementptr inbounds %struct.vorbis_info, ptr %57, i64 %idxprom59
  %bitrate_upper61 = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx60, i32 0, i32 3
  %59 = load i64, ptr %bitrate_upper61, align 8
  %60 = load ptr, ptr %vf.addr, align 8
  %vi62 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %60, i32 0, i32 10
  %61 = load ptr, ptr %vi62, align 8
  %62 = load i32, ptr %i.addr, align 4
  %idxprom63 = sext i32 %62 to i64
  %arrayidx64 = getelementptr inbounds %struct.vorbis_info, ptr %61, i64 %idxprom63
  %bitrate_lower65 = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx64, i32 0, i32 5
  %63 = load i64, ptr %bitrate_lower65, align 8
  %add66 = add nsw i64 %59, %63
  %div67 = sdiv i64 %add66, 2
  store i64 %div67, ptr %retval, align 8
  br label %return

if.else68:                                        ; preds = %if.then51
  %64 = load ptr, ptr %vf.addr, align 8
  %vi69 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %vi69, align 8
  %66 = load i32, ptr %i.addr, align 4
  %idxprom70 = sext i32 %66 to i64
  %arrayidx71 = getelementptr inbounds %struct.vorbis_info, ptr %65, i64 %idxprom70
  %bitrate_upper72 = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx71, i32 0, i32 3
  %67 = load i64, ptr %bitrate_upper72, align 8
  store i64 %67, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.else45
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.else68, %if.then57, %if.then40, %if.then21, %for.end, %if.then5, %if.then2, %if.then
  %68 = load i64, ptr %retval, align 8
  ret i64 %68
}

; Function Attrs: nounwind uwtable
declare dso_local double @ov_time_total(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
