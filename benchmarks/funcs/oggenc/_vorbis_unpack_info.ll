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

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_unpack_info(ptr noundef %vi, ptr noundef %opb) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -129, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %opb.addr, align 8
  %call = call i64 @oggpack_read(ptr noundef %3, i32 noundef 32)
  %conv = trunc i64 %call to i32
  %4 = load ptr, ptr %vi.addr, align 8
  %version = getelementptr inbounds nuw %struct.vorbis_info, ptr %4, i32 0, i32 0
  store i32 %conv, ptr %version, align 8
  %5 = load ptr, ptr %vi.addr, align 8
  %version1 = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %version1, align 8
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -134, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %opb.addr, align 8
  %call5 = call i64 @oggpack_read(ptr noundef %7, i32 noundef 8)
  %conv6 = trunc i64 %call5 to i32
  %8 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %8, i32 0, i32 1
  store i32 %conv6, ptr %channels, align 4
  %9 = load ptr, ptr %opb.addr, align 8
  %call7 = call i64 @oggpack_read(ptr noundef %9, i32 noundef 32)
  %10 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 2
  store i64 %call7, ptr %rate, align 8
  %11 = load ptr, ptr %opb.addr, align 8
  %call8 = call i64 @oggpack_read(ptr noundef %11, i32 noundef 32)
  %12 = load ptr, ptr %vi.addr, align 8
  %bitrate_upper = getelementptr inbounds nuw %struct.vorbis_info, ptr %12, i32 0, i32 3
  store i64 %call8, ptr %bitrate_upper, align 8
  %13 = load ptr, ptr %opb.addr, align 8
  %call9 = call i64 @oggpack_read(ptr noundef %13, i32 noundef 32)
  %14 = load ptr, ptr %vi.addr, align 8
  %bitrate_nominal = getelementptr inbounds nuw %struct.vorbis_info, ptr %14, i32 0, i32 4
  store i64 %call9, ptr %bitrate_nominal, align 8
  %15 = load ptr, ptr %opb.addr, align 8
  %call10 = call i64 @oggpack_read(ptr noundef %15, i32 noundef 32)
  %16 = load ptr, ptr %vi.addr, align 8
  %bitrate_lower = getelementptr inbounds nuw %struct.vorbis_info, ptr %16, i32 0, i32 5
  store i64 %call10, ptr %bitrate_lower, align 8
  %17 = load ptr, ptr %opb.addr, align 8
  %call11 = call i64 @oggpack_read(ptr noundef %17, i32 noundef 4)
  %sh_prom = trunc i64 %call11 to i32
  %shl = shl i32 1, %sh_prom
  %conv12 = sext i32 %shl to i64
  %18 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %18, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  store i64 %conv12, ptr %arrayidx, align 8
  %19 = load ptr, ptr %opb.addr, align 8
  %call13 = call i64 @oggpack_read(ptr noundef %19, i32 noundef 4)
  %sh_prom14 = trunc i64 %call13 to i32
  %shl15 = shl i32 1, %sh_prom14
  %conv16 = sext i32 %shl15 to i64
  %20 = load ptr, ptr %ci, align 8
  %blocksizes17 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %20, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %blocksizes17, i64 0, i64 1
  store i64 %conv16, ptr %arrayidx18, align 8
  %21 = load ptr, ptr %vi.addr, align 8
  %rate19 = getelementptr inbounds nuw %struct.vorbis_info, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %rate19, align 8
  %cmp20 = icmp slt i64 %22, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end4
  br label %err_out

if.end23:                                         ; preds = %if.end4
  %23 = load ptr, ptr %vi.addr, align 8
  %channels24 = getelementptr inbounds nuw %struct.vorbis_info, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %channels24, align 4
  %cmp25 = icmp slt i32 %24, 1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  br label %err_out

if.end28:                                         ; preds = %if.end23
  %25 = load ptr, ptr %ci, align 8
  %blocksizes29 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x i64], ptr %blocksizes29, i64 0, i64 0
  %26 = load i64, ptr %arrayidx30, align 8
  %cmp31 = icmp slt i64 %26, 8
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  br label %err_out

if.end34:                                         ; preds = %if.end28
  %27 = load ptr, ptr %ci, align 8
  %blocksizes35 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %27, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x i64], ptr %blocksizes35, i64 0, i64 1
  %28 = load i64, ptr %arrayidx36, align 8
  %29 = load ptr, ptr %ci, align 8
  %blocksizes37 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %29, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x i64], ptr %blocksizes37, i64 0, i64 0
  %30 = load i64, ptr %arrayidx38, align 8
  %cmp39 = icmp slt i64 %28, %30
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end34
  br label %err_out

if.end42:                                         ; preds = %if.end34
  %31 = load ptr, ptr %opb.addr, align 8
  %call43 = call i64 @oggpack_read(ptr noundef %31, i32 noundef 1)
  %cmp44 = icmp ne i64 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  br label %err_out

if.end47:                                         ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.then46, %if.then41, %if.then33, %if.then27, %if.then22
  %32 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %32)
  store i32 -133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err_out, %if.end47, %if.then3, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
