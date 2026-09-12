; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden ptr @mapping0_unpack(ptr noundef %vi, ptr noundef %opb) #2 {
entry:
  %retval = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %info = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %testM = alloca i32, align 4
  %testA = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 3208) #3
  store ptr %call, ptr %info, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %info, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 3208, i1 false)
  %3 = load ptr, ptr %opb.addr, align 8
  %call1 = call i64 @oggpack_read(ptr noundef %3, i32 noundef 1)
  %tobool = icmp ne i64 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %opb.addr, align 8
  %call2 = call i64 @oggpack_read(ptr noundef %4, i32 noundef 4)
  %add = add nsw i64 %call2, 1
  %conv = trunc i64 %add to i32
  %5 = load ptr, ptr %info, align 8
  %submaps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %5, i32 0, i32 0
  store i32 %conv, ptr %submaps, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %info, align 8
  %submaps3 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %6, i32 0, i32 0
  store i32 1, ptr %submaps3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %opb.addr, align 8
  %call4 = call i64 @oggpack_read(ptr noundef %7, i32 noundef 1)
  %tobool5 = icmp ne i64 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end38

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %opb.addr, align 8
  %call7 = call i64 @oggpack_read(ptr noundef %8, i32 noundef 8)
  %add8 = add nsw i64 %call7, 1
  %conv9 = trunc i64 %add8 to i32
  %9 = load ptr, ptr %info, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %9, i32 0, i32 4
  store i32 %conv9, ptr %coupling_steps, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %info, align 8
  %coupling_steps10 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %coupling_steps10, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %opb.addr, align 8
  %14 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %channels, align 4
  %call12 = call i32 @ilog(i32 noundef %15)
  %call13 = call i64 @oggpack_read(ptr noundef %13, i32 noundef %call12)
  %conv14 = trunc i64 %call13 to i32
  %16 = load ptr, ptr %info, align 8
  %coupling_mag = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr %coupling_mag, i64 0, i64 %idxprom
  store i32 %conv14, ptr %arrayidx, align 4
  store i32 %conv14, ptr %testM, align 4
  %18 = load ptr, ptr %opb.addr, align 8
  %19 = load ptr, ptr %vi.addr, align 8
  %channels15 = getelementptr inbounds nuw %struct.vorbis_info, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %channels15, align 4
  %call16 = call i32 @ilog(i32 noundef %20)
  %call17 = call i64 @oggpack_read(ptr noundef %18, i32 noundef %call16)
  %conv18 = trunc i64 %call17 to i32
  %21 = load ptr, ptr %info, align 8
  %coupling_ang = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], ptr %coupling_ang, i64 0, i64 %idxprom19
  store i32 %conv18, ptr %arrayidx20, align 4
  store i32 %conv18, ptr %testA, align 4
  %23 = load i32, ptr %testM, align 4
  %cmp21 = icmp slt i32 %23, 0
  br i1 %cmp21, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %24 = load i32, ptr %testA, align 4
  %cmp23 = icmp slt i32 %24, 0
  br i1 %cmp23, label %if.then36, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %25 = load i32, ptr %testM, align 4
  %26 = load i32, ptr %testA, align 4
  %cmp26 = icmp eq i32 %25, %26
  br i1 %cmp26, label %if.then36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %27 = load i32, ptr %testM, align 4
  %28 = load ptr, ptr %vi.addr, align 8
  %channels29 = getelementptr inbounds nuw %struct.vorbis_info, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %channels29, align 4
  %cmp30 = icmp sge i32 %27, %29
  br i1 %cmp30, label %if.then36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %30 = load i32, ptr %testA, align 4
  %31 = load ptr, ptr %vi.addr, align 8
  %channels33 = getelementptr inbounds nuw %struct.vorbis_info, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %channels33, align 4
  %cmp34 = icmp sge i32 %30, %32
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false, %for.body
  br label %err_out

if.end37:                                         ; preds = %lor.lhs.false32
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end
  %34 = load ptr, ptr %opb.addr, align 8
  %call39 = call i64 @oggpack_read(ptr noundef %34, i32 noundef 2)
  %cmp40 = icmp sgt i64 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  br label %err_out

if.end43:                                         ; preds = %if.end38
  %35 = load ptr, ptr %info, align 8
  %submaps44 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %submaps44, align 4
  %cmp45 = icmp sgt i32 %36, 1
  br i1 %cmp45, label %if.then47, label %if.end68

if.then47:                                        ; preds = %if.end43
  store i32 0, ptr %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc65, %if.then47
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %vi.addr, align 8
  %channels49 = getelementptr inbounds nuw %struct.vorbis_info, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %channels49, align 4
  %cmp50 = icmp slt i32 %37, %39
  br i1 %cmp50, label %for.body52, label %for.end67

for.body52:                                       ; preds = %for.cond48
  %40 = load ptr, ptr %opb.addr, align 8
  %call53 = call i64 @oggpack_read(ptr noundef %40, i32 noundef 4)
  %conv54 = trunc i64 %call53 to i32
  %41 = load ptr, ptr %info, align 8
  %chmuxlist = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], ptr %chmuxlist, i64 0, i64 %idxprom55
  store i32 %conv54, ptr %arrayidx56, align 4
  %43 = load ptr, ptr %info, align 8
  %chmuxlist57 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], ptr %chmuxlist57, i64 0, i64 %idxprom58
  %45 = load i32, ptr %arrayidx59, align 4
  %46 = load ptr, ptr %info, align 8
  %submaps60 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %submaps60, align 4
  %cmp61 = icmp sge i32 %45, %47
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body52
  br label %err_out

if.end64:                                         ; preds = %for.body52
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %48 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond48, !llvm.loop !8

for.end67:                                        ; preds = %for.cond48
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %if.end43
  store i32 0, ptr %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc97, %if.end68
  %49 = load i32, ptr %i, align 4
  %50 = load ptr, ptr %info, align 8
  %submaps70 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %submaps70, align 4
  %cmp71 = icmp slt i32 %49, %51
  br i1 %cmp71, label %for.body73, label %for.end99

for.body73:                                       ; preds = %for.cond69
  %52 = load ptr, ptr %opb.addr, align 8
  %call74 = call i64 @oggpack_read(ptr noundef %52, i32 noundef 8)
  %53 = load ptr, ptr %opb.addr, align 8
  %call75 = call i64 @oggpack_read(ptr noundef %53, i32 noundef 8)
  %conv76 = trunc i64 %call75 to i32
  %54 = load ptr, ptr %info, align 8
  %floorsubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [16 x i32], ptr %floorsubmap, i64 0, i64 %idxprom77
  store i32 %conv76, ptr %arrayidx78, align 4
  %56 = load ptr, ptr %info, align 8
  %floorsubmap79 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %57 to i64
  %arrayidx81 = getelementptr inbounds [16 x i32], ptr %floorsubmap79, i64 0, i64 %idxprom80
  %58 = load i32, ptr %arrayidx81, align 4
  %59 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %59, i32 0, i32 3
  %60 = load i32, ptr %floors, align 8
  %cmp82 = icmp sge i32 %58, %60
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.body73
  br label %err_out

if.end85:                                         ; preds = %for.body73
  %61 = load ptr, ptr %opb.addr, align 8
  %call86 = call i64 @oggpack_read(ptr noundef %61, i32 noundef 8)
  %conv87 = trunc i64 %call86 to i32
  %62 = load ptr, ptr %info, align 8
  %residuesubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %62, i32 0, i32 3
  %63 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %63 to i64
  %arrayidx89 = getelementptr inbounds [16 x i32], ptr %residuesubmap, i64 0, i64 %idxprom88
  store i32 %conv87, ptr %arrayidx89, align 4
  %64 = load ptr, ptr %info, align 8
  %residuesubmap90 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %65 to i64
  %arrayidx92 = getelementptr inbounds [16 x i32], ptr %residuesubmap90, i64 0, i64 %idxprom91
  %66 = load i32, ptr %arrayidx92, align 4
  %67 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %67, i32 0, i32 4
  %68 = load i32, ptr %residues, align 4
  %cmp93 = icmp sge i32 %66, %68
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end85
  br label %err_out

if.end96:                                         ; preds = %if.end85
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %69 = load i32, ptr %i, align 4
  %inc98 = add nsw i32 %69, 1
  store i32 %inc98, ptr %i, align 4
  br label %for.cond69, !llvm.loop !9

for.end99:                                        ; preds = %for.cond69
  %70 = load ptr, ptr %info, align 8
  store ptr %70, ptr %retval, align 8
  br label %return

err_out:                                          ; preds = %if.then95, %if.then84, %if.then63, %if.then42, %if.then36
  %71 = load ptr, ptr %info, align 8
  call void @mapping0_free_info(ptr noundef %71)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %err_out, %for.end99
  %72 = load ptr, ptr %retval, align 8
  ret ptr %72
}

; Function Attrs: nounwind uwtable
declare hidden void @mapping0_free_info(ptr noundef) #2

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

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
