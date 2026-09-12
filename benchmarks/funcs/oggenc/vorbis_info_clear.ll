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
%struct.vorbis_func_mapping = type { ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_floor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16
@_mapping_P = external dso_local global [1 x ptr], align 8

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_info_clear(ptr noundef %vi) #1 {
entry:
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end75

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %ci, align 8
  %modes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %modes, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ci, align 8
  %mode_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %mode_param, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %9 = load ptr, ptr %ci, align 8
  %mode_param3 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [64 x ptr], ptr %mode_param3, i64 0, i64 %idxprom4
  %11 = load ptr, ptr %arrayidx5, align 8
  call void @free(ptr noundef %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %ci, align 8
  %maps = getelementptr inbounds nuw %struct.codec_setup_info, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %maps, align 4
  %cmp7 = icmp slt i32 %13, %15
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond6
  %16 = load ptr, ptr %ci, align 8
  %map_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %16, i32 0, i32 8
  %17 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [64 x i32], ptr %map_type, i64 0, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [0 x ptr], ptr @_mapping_P, i64 0, i64 %idxprom11
  %19 = load ptr, ptr %arrayidx12, align 8
  %free_info = getelementptr inbounds nuw %struct.vorbis_func_mapping, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %free_info, align 8
  %21 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom13
  %23 = load ptr, ptr %arrayidx14, align 8
  call void %20(ptr noundef %23)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body8
  %24 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end17:                                        ; preds = %for.cond6
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc28, %for.end17
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %floors, align 8
  %cmp19 = icmp slt i32 %25, %27
  br i1 %cmp19, label %for.body20, label %for.end30

for.body20:                                       ; preds = %for.cond18
  %28 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom21
  %30 = load i32, ptr %arrayidx22, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom23
  %31 = load ptr, ptr %arrayidx24, align 8
  %free_info25 = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %free_info25, align 8
  %33 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 11
  %34 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom26
  %35 = load ptr, ptr %arrayidx27, align 8
  call void %32(ptr noundef %35)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body20
  %36 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end30:                                        ; preds = %for.cond18
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.end30
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %residues, align 4
  %cmp32 = icmp slt i32 %37, %39
  br i1 %cmp32, label %for.body33, label %for.end43

for.body33:                                       ; preds = %for.cond31
  %40 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %40, i32 0, i32 12
  %41 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %41 to i64
  %arrayidx35 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom34
  %42 = load i32, ptr %arrayidx35, align 4
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds [0 x ptr], ptr @_residue_P, i64 0, i64 %idxprom36
  %43 = load ptr, ptr %arrayidx37, align 8
  %free_info38 = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %free_info38, align 8
  %45 = load ptr, ptr %ci, align 8
  %residue_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %45, i32 0, i32 13
  %46 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %46 to i64
  %arrayidx40 = getelementptr inbounds [64 x ptr], ptr %residue_param, i64 0, i64 %idxprom39
  %47 = load ptr, ptr %arrayidx40, align 8
  call void %44(ptr noundef %47)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body33
  %48 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %48, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond31, !llvm.loop !10

for.end43:                                        ; preds = %for.cond31
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc59, %for.end43
  %49 = load i32, ptr %i, align 4
  %50 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %50, i32 0, i32 5
  %51 = load i32, ptr %books, align 8
  %cmp45 = icmp slt i32 %49, %51
  br i1 %cmp45, label %for.body46, label %for.end61

for.body46:                                       ; preds = %for.cond44
  %52 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %52, i32 0, i32 14
  %53 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %53 to i64
  %arrayidx48 = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom47
  %54 = load ptr, ptr %arrayidx48, align 8
  %tobool49 = icmp ne ptr %54, null
  br i1 %tobool49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %for.body46
  %55 = load ptr, ptr %ci, align 8
  %book_param51 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %55, i32 0, i32 14
  %56 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %56 to i64
  %arrayidx53 = getelementptr inbounds [256 x ptr], ptr %book_param51, i64 0, i64 %idxprom52
  %57 = load ptr, ptr %arrayidx53, align 8
  call void @vorbis_staticbook_destroy(ptr noundef %57)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %for.body46
  %58 = load ptr, ptr %ci, align 8
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %58, i32 0, i32 15
  %59 = load ptr, ptr %fullbooks, align 8
  %tobool55 = icmp ne ptr %59, null
  br i1 %tobool55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end54
  %60 = load ptr, ptr %ci, align 8
  %fullbooks57 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %60, i32 0, i32 15
  %61 = load ptr, ptr %fullbooks57, align 8
  %62 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %61, i64 %idx.ext
  call void @vorbis_book_clear(ptr noundef %add.ptr)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %63 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, ptr %i, align 4
  br label %for.cond44, !llvm.loop !11

for.end61:                                        ; preds = %for.cond44
  %64 = load ptr, ptr %ci, align 8
  %fullbooks62 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %64, i32 0, i32 15
  %65 = load ptr, ptr %fullbooks62, align 8
  %tobool63 = icmp ne ptr %65, null
  br i1 %tobool63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %for.end61
  %66 = load ptr, ptr %ci, align 8
  %fullbooks65 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %66, i32 0, i32 15
  %67 = load ptr, ptr %fullbooks65, align 8
  call void @free(ptr noundef %67) #3
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.end61
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc72, %if.end66
  %68 = load i32, ptr %i, align 4
  %69 = load ptr, ptr %ci, align 8
  %psys = getelementptr inbounds nuw %struct.codec_setup_info, ptr %69, i32 0, i32 6
  %70 = load i32, ptr %psys, align 4
  %cmp68 = icmp slt i32 %68, %70
  br i1 %cmp68, label %for.body69, label %for.end74

for.body69:                                       ; preds = %for.cond67
  %71 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %71, i32 0, i32 16
  %72 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %72 to i64
  %arrayidx71 = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom70
  %73 = load ptr, ptr %arrayidx71, align 8
  call void @_vi_psy_free(ptr noundef %73)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body69
  %74 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %74, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond67, !llvm.loop !12

for.end74:                                        ; preds = %for.cond67
  %75 = load ptr, ptr %ci, align 8
  call void @free(ptr noundef %75) #3
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %entry
  %76 = load ptr, ptr %vi.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %76, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_staticbook_destroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_book_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vi_psy_free(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
