; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor0 = type { i32, i32, ptr, [2 x i32], ptr, i64, i64 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_info_floor0 = type { i32, i64, i64, i32, i32, i32, [16 x i32], float, float }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @_ilog(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @vorbis_book_decodev_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @floor0_inverse1(ptr noundef %vb, ptr noundef %i) #0 {
entry:
  %retval = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ampraw = alloca i32, align 4
  %maxval = alloca i64, align 8
  %amp = alloca float, align 4
  %booknum = alloca i32, align 4
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %last = alloca float, align 4
  %lsp = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %vi, align 8
  store ptr %2, ptr %info, align 8
  %3 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %info, align 8
  %ampbits = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %ampbits, align 8
  %call = call i64 @oggpack_read(ptr noundef %opb, i32 noundef %5)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %ampraw, align 4
  %6 = load i32, ptr %ampraw, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end63

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %info, align 8
  %ampbits2 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %ampbits2, align 8
  %shl = shl i32 1, %8
  %sub = sub nsw i32 %shl, 1
  %conv3 = sext i32 %sub to i64
  store i64 %conv3, ptr %maxval, align 8
  %9 = load i32, ptr %ampraw, align 4
  %conv4 = sitofp i32 %9 to float
  %10 = load i64, ptr %maxval, align 8
  %conv5 = sitofp i64 %10 to float
  %div = fdiv float %conv4, %conv5
  %11 = load ptr, ptr %info, align 8
  %ampdB = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %ampdB, align 4
  %conv6 = sitofp i32 %12 to float
  %mul = fmul float %div, %conv6
  store float %mul, ptr %amp, align 4
  %13 = load ptr, ptr %vb.addr, align 8
  %opb7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %info, align 8
  %numbooks = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %numbooks, align 8
  %call8 = call i32 @_ilog(i32 noundef %15)
  %call9 = call i64 @oggpack_read(ptr noundef %opb7, i32 noundef %call8)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %booknum, align 4
  %16 = load i32, ptr %booknum, align 4
  %cmp11 = icmp ne i32 %16, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, ptr %booknum, align 4
  %18 = load ptr, ptr %info, align 8
  %numbooks13 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %numbooks13, align 8
  %cmp14 = icmp slt i32 %17, %19
  br i1 %cmp14, label %if.then16, label %if.end62

if.then16:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %vd, align 8
  %vi17 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %vi17, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %codec_setup, align 8
  store ptr %23, ptr %ci, align 8
  %24 = load ptr, ptr %ci, align 8
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %24, i32 0, i32 15
  %25 = load ptr, ptr %fullbooks, align 8
  %26 = load ptr, ptr %info, align 8
  %books = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %booknum, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %books, i64 0, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %b, align 8
  store float 0.000000e+00, ptr %last, align 4
  %29 = load ptr, ptr %vb.addr, align 8
  %30 = load ptr, ptr %look, align 8
  %m = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %m, align 4
  %conv18 = sext i32 %31 to i64
  %32 = load ptr, ptr %b, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %dim, align 8
  %add = add nsw i64 %conv18, %33
  %add19 = add nsw i64 %add, 1
  %mul20 = mul i64 4, %add19
  %call21 = call ptr @_vorbis_block_alloc(ptr noundef %29, i64 noundef %mul20)
  store ptr %call21, ptr %lsp, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %34 = load i32, ptr %j, align 4
  %35 = load ptr, ptr %look, align 8
  %m22 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %m22, align 4
  %cmp23 = icmp slt i32 %34, %36
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %b, align 8
  %38 = load ptr, ptr %lsp, align 8
  %39 = load i32, ptr %j, align 4
  %idx.ext25 = sext i32 %39 to i64
  %add.ptr26 = getelementptr inbounds float, ptr %38, i64 %idx.ext25
  %40 = load ptr, ptr %vb.addr, align 8
  %opb27 = getelementptr inbounds nuw %struct.vorbis_block, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %b, align 8
  %dim28 = getelementptr inbounds nuw %struct.codebook, ptr %41, i32 0, i32 0
  %42 = load i64, ptr %dim28, align 8
  %conv29 = trunc i64 %42 to i32
  %call30 = call i64 @vorbis_book_decodev_set(ptr noundef %37, ptr noundef %add.ptr26, ptr noundef %opb27, i32 noundef %conv29)
  %cmp31 = icmp eq i64 %call30, -1
  br i1 %cmp31, label %if.then33, label %if.end

if.then33:                                        ; preds = %for.body
  br label %eop

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load ptr, ptr %b, align 8
  %dim34 = getelementptr inbounds nuw %struct.codebook, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %dim34, align 8
  %45 = load i32, ptr %j, align 4
  %conv35 = sext i32 %45 to i64
  %add36 = add nsw i64 %conv35, %44
  %conv37 = trunc i64 %add36 to i32
  store i32 %conv37, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.end54, %for.end
  %46 = load i32, ptr %j, align 4
  %47 = load ptr, ptr %look, align 8
  %m39 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %m39, align 4
  %cmp40 = icmp slt i32 %46, %48
  br i1 %cmp40, label %for.body42, label %for.end58

for.body42:                                       ; preds = %for.cond38
  store i32 0, ptr %k, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc52, %for.body42
  %49 = load i32, ptr %k, align 4
  %conv44 = sext i32 %49 to i64
  %50 = load ptr, ptr %b, align 8
  %dim45 = getelementptr inbounds nuw %struct.codebook, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %dim45, align 8
  %cmp46 = icmp slt i64 %conv44, %51
  br i1 %cmp46, label %for.body48, label %for.end54

for.body48:                                       ; preds = %for.cond43
  %52 = load float, ptr %last, align 4
  %53 = load ptr, ptr %lsp, align 8
  %54 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %54 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %53, i64 %idxprom49
  %55 = load float, ptr %arrayidx50, align 4
  %add51 = fadd float %55, %52
  store float %add51, ptr %arrayidx50, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body48
  %56 = load i32, ptr %k, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %k, align 4
  %57 = load i32, ptr %j, align 4
  %inc53 = add nsw i32 %57, 1
  store i32 %inc53, ptr %j, align 4
  br label %for.cond43, !llvm.loop !8

for.end54:                                        ; preds = %for.cond43
  %58 = load ptr, ptr %lsp, align 8
  %59 = load i32, ptr %j, align 4
  %sub55 = sub nsw i32 %59, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %58, i64 %idxprom56
  %60 = load float, ptr %arrayidx57, align 4
  store float %60, ptr %last, align 4
  br label %for.cond38, !llvm.loop !9

for.end58:                                        ; preds = %for.cond38
  %61 = load float, ptr %amp, align 4
  %62 = load ptr, ptr %lsp, align 8
  %63 = load ptr, ptr %look, align 8
  %m59 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %m59, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %62, i64 %idxprom60
  store float %61, ptr %arrayidx61, align 4
  %65 = load ptr, ptr %lsp, align 8
  store ptr %65, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %land.lhs.true, %if.then
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %entry
  br label %eop

eop:                                              ; preds = %if.end63, %if.then33
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %eop, %for.end58
  %66 = load ptr, ptr %retval, align 8
  ret ptr %66
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
!9 = distinct !{!9, !7}
