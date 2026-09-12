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
%struct.ve_setup_data_template = type { i32, ptr, ptr, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@setup_list = external hidden global [23 x ptr], align 16

; Function Attrs: nounwind uwtable
define hidden void @get_setup_template(ptr noundef %vi, i64 noundef %ch, i64 noundef %srate, double noundef %req, i32 noundef %q_or_bitrate) #0 {
entry:
  %vi.addr = alloca ptr, align 8
  %ch.addr = alloca i64, align 8
  %srate.addr = alloca i64, align 8
  %req.addr = alloca double, align 8
  %q_or_bitrate.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %mappings = alloca i32, align 4
  %map = alloca ptr, align 8
  %low = alloca float, align 4
  %high = alloca float, align 4
  %del = alloca float, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %ch, ptr %ch.addr, align 8
  store i64 %srate, ptr %srate.addr, align 8
  store double %req, ptr %req.addr, align 8
  store i32 %q_or_bitrate, ptr %q_or_bitrate.addr, align 4
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load i32, ptr %q_or_bitrate.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %ch.addr, align 8
  %conv = sitofp i64 %4 to double
  %5 = load double, ptr %req.addr, align 8
  %div = fdiv double %5, %conv
  store double %div, ptr %req.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end84, %if.then42, %if.then33, %if.end
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8
  %coupling_restriction = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %coupling_restriction, align 8
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom6
  %12 = load ptr, ptr %arrayidx7, align 8
  %coupling_restriction8 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %coupling_restriction8, align 8
  %conv9 = sext i32 %13 to i64
  %14 = load i64, ptr %ch.addr, align 8
  %cmp10 = icmp eq i64 %conv9, %14
  br i1 %cmp10, label %if.then12, label %if.end84

if.then12:                                        ; preds = %lor.lhs.false, %while.body
  %15 = load i64, ptr %srate.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom13
  %17 = load ptr, ptr %arrayidx14, align 8
  %samplerate_min_restriction = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %17, i32 0, i32 4
  %18 = load i64, ptr %samplerate_min_restriction, align 8
  %cmp15 = icmp sge i64 %15, %18
  br i1 %cmp15, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %if.then12
  %19 = load i64, ptr %srate.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom17
  %21 = load ptr, ptr %arrayidx18, align 8
  %samplerate_max_restriction = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %21, i32 0, i32 5
  %22 = load i64, ptr %samplerate_max_restriction, align 8
  %cmp19 = icmp sle i64 %19, %22
  br i1 %cmp19, label %if.then21, label %if.end83

if.then21:                                        ; preds = %land.lhs.true
  %23 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom22
  %24 = load ptr, ptr %arrayidx23, align 8
  %mappings24 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %mappings24, align 8
  store i32 %25, ptr %mappings, align 4
  %26 = load i32, ptr %q_or_bitrate.addr, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %27 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom26
  %28 = load ptr, ptr %arrayidx27, align 8
  %rate_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %rate_mapping, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %30 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom28
  %31 = load ptr, ptr %arrayidx29, align 8
  %quality_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %quality_mapping, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ %32, %cond.false ]
  store ptr %cond, ptr %map, align 8
  %33 = load double, ptr %req.addr, align 8
  %34 = load ptr, ptr %map, align 8
  %arrayidx30 = getelementptr inbounds double, ptr %34, i64 0
  %35 = load double, ptr %arrayidx30, align 8
  %cmp31 = fcmp olt double %33, %35
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %cond.end
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

if.end34:                                         ; preds = %cond.end
  %37 = load double, ptr %req.addr, align 8
  %38 = load ptr, ptr %map, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom35
  %40 = load ptr, ptr %arrayidx36, align 8
  %mappings37 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %mappings37, align 8
  %idxprom38 = sext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %38, i64 %idxprom38
  %42 = load double, ptr %arrayidx39, align 8
  %cmp40 = fcmp ogt double %37, %42
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end34
  %43 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %43, 1
  store i32 %inc43, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

if.end44:                                         ; preds = %if.end34
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %44 = load i32, ptr %j, align 4
  %45 = load i32, ptr %mappings, align 4
  %cmp45 = icmp slt i32 %44, %45
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load double, ptr %req.addr, align 8
  %47 = load ptr, ptr %map, align 8
  %48 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %48 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %47, i64 %idxprom47
  %49 = load double, ptr %arrayidx48, align 8
  %cmp49 = fcmp oge double %46, %49
  br i1 %cmp49, label %land.lhs.true51, label %if.end57

land.lhs.true51:                                  ; preds = %for.body
  %50 = load double, ptr %req.addr, align 8
  %51 = load ptr, ptr %map, align 8
  %52 = load i32, ptr %j, align 4
  %add = add nsw i32 %52, 1
  %idxprom52 = sext i32 %add to i64
  %arrayidx53 = getelementptr inbounds double, ptr %51, i64 %idxprom52
  %53 = load double, ptr %arrayidx53, align 8
  %cmp54 = fcmp olt double %50, %53
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true51
  br label %for.end

if.end57:                                         ; preds = %land.lhs.true51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %54 = load i32, ptr %j, align 4
  %inc58 = add nsw i32 %54, 1
  store i32 %inc58, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then56, %for.cond
  %55 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds [23 x ptr], ptr @setup_list, i64 0, i64 %idxprom59
  %56 = load ptr, ptr %arrayidx60, align 8
  %57 = load ptr, ptr %hi, align 8
  %setup = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %57, i32 0, i32 0
  store ptr %56, ptr %setup, align 8
  %58 = load i32, ptr %j, align 4
  %59 = load i32, ptr %mappings, align 4
  %cmp61 = icmp eq i32 %58, %59
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %for.end
  %60 = load i32, ptr %j, align 4
  %conv64 = sitofp i32 %60 to double
  %sub = fsub double %conv64, 1.000000e-03
  %61 = load ptr, ptr %hi, align 8
  %base_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %61, i32 0, i32 2
  store double %sub, ptr %base_setting, align 8
  br label %if.end82

if.else:                                          ; preds = %for.end
  %62 = load ptr, ptr %map, align 8
  %63 = load i32, ptr %j, align 4
  %idxprom65 = sext i32 %63 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %62, i64 %idxprom65
  %64 = load double, ptr %arrayidx66, align 8
  %conv67 = fptrunc double %64 to float
  store float %conv67, ptr %low, align 4
  %65 = load ptr, ptr %map, align 8
  %66 = load i32, ptr %j, align 4
  %add68 = add nsw i32 %66, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %65, i64 %idxprom69
  %67 = load double, ptr %arrayidx70, align 8
  %conv71 = fptrunc double %67 to float
  store float %conv71, ptr %high, align 4
  %68 = load double, ptr %req.addr, align 8
  %69 = load float, ptr %low, align 4
  %conv72 = fpext float %69 to double
  %sub73 = fsub double %68, %conv72
  %70 = load float, ptr %high, align 4
  %71 = load float, ptr %low, align 4
  %sub74 = fsub float %70, %71
  %conv75 = fpext float %sub74 to double
  %div76 = fdiv double %sub73, %conv75
  %conv77 = fptrunc double %div76 to float
  store float %conv77, ptr %del, align 4
  %72 = load i32, ptr %j, align 4
  %conv78 = sitofp i32 %72 to float
  %73 = load float, ptr %del, align 4
  %add79 = fadd float %conv78, %73
  %conv80 = fpext float %add79 to double
  %74 = load ptr, ptr %hi, align 8
  %base_setting81 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %74, i32 0, i32 2
  store double %conv80, ptr %base_setting81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then63
  br label %return

if.end83:                                         ; preds = %land.lhs.true, %if.then12
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %lor.lhs.false
  %75 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %75, 1
  store i32 %inc85, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %76 = load ptr, ptr %hi, align 8
  %setup86 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %76, i32 0, i32 0
  store ptr null, ptr %setup86, align 8
  br label %return

return:                                           ; preds = %while.end, %if.end82
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
