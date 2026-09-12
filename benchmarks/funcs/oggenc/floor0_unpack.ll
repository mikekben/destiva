; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info_floor0 = type { i32, i64, i64, i32, i32, i32, [16 x i32], float, float }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @floor0_unpack(ptr noundef %vi, ptr noundef %opb) #1 {
entry:
  %retval = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %j = alloca i32, align 4
  %info = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %call = call noalias ptr @malloc(i64 noundef 112) #2
  store ptr %call, ptr %info, align 8
  %2 = load ptr, ptr %opb.addr, align 8
  %call1 = call i64 @oggpack_read(ptr noundef %2, i32 noundef 8)
  %conv = trunc i64 %call1 to i32
  %3 = load ptr, ptr %info, align 8
  %order = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %3, i32 0, i32 0
  store i32 %conv, ptr %order, align 8
  %4 = load ptr, ptr %opb.addr, align 8
  %call2 = call i64 @oggpack_read(ptr noundef %4, i32 noundef 16)
  %5 = load ptr, ptr %info, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %5, i32 0, i32 1
  store i64 %call2, ptr %rate, align 8
  %6 = load ptr, ptr %opb.addr, align 8
  %call3 = call i64 @oggpack_read(ptr noundef %6, i32 noundef 16)
  %7 = load ptr, ptr %info, align 8
  %barkmap = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %7, i32 0, i32 2
  store i64 %call3, ptr %barkmap, align 8
  %8 = load ptr, ptr %opb.addr, align 8
  %call4 = call i64 @oggpack_read(ptr noundef %8, i32 noundef 6)
  %conv5 = trunc i64 %call4 to i32
  %9 = load ptr, ptr %info, align 8
  %ampbits = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %9, i32 0, i32 3
  store i32 %conv5, ptr %ampbits, align 8
  %10 = load ptr, ptr %opb.addr, align 8
  %call6 = call i64 @oggpack_read(ptr noundef %10, i32 noundef 8)
  %conv7 = trunc i64 %call6 to i32
  %11 = load ptr, ptr %info, align 8
  %ampdB = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %11, i32 0, i32 4
  store i32 %conv7, ptr %ampdB, align 4
  %12 = load ptr, ptr %opb.addr, align 8
  %call8 = call i64 @oggpack_read(ptr noundef %12, i32 noundef 4)
  %add = add nsw i64 %call8, 1
  %conv9 = trunc i64 %add to i32
  %13 = load ptr, ptr %info, align 8
  %numbooks = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %13, i32 0, i32 5
  store i32 %conv9, ptr %numbooks, align 8
  %14 = load ptr, ptr %info, align 8
  %order10 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %order10, align 8
  %cmp = icmp slt i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %err_out

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %info, align 8
  %rate12 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %rate12, align 8
  %cmp13 = icmp slt i64 %17, 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  br label %err_out

if.end16:                                         ; preds = %if.end
  %18 = load ptr, ptr %info, align 8
  %barkmap17 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %barkmap17, align 8
  %cmp18 = icmp slt i64 %19, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %err_out

if.end21:                                         ; preds = %if.end16
  %20 = load ptr, ptr %info, align 8
  %numbooks22 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %numbooks22, align 8
  %cmp23 = icmp slt i32 %21, 1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  br label %err_out

if.end26:                                         ; preds = %if.end21
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %22 = load i32, ptr %j, align 4
  %23 = load ptr, ptr %info, align 8
  %numbooks27 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %numbooks27, align 8
  %cmp28 = icmp slt i32 %22, %24
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %opb.addr, align 8
  %call30 = call i64 @oggpack_read(ptr noundef %25, i32 noundef 8)
  %conv31 = trunc i64 %call30 to i32
  %26 = load ptr, ptr %info, align 8
  %books = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %j, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %books, i64 0, i64 %idxprom
  store i32 %conv31, ptr %arrayidx, align 4
  %28 = load ptr, ptr %info, align 8
  %books32 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds [16 x i32], ptr %books32, i64 0, i64 %idxprom33
  %30 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp slt i32 %30, 0
  br i1 %cmp35, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %31 = load ptr, ptr %info, align 8
  %books37 = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [16 x i32], ptr %books37, i64 0, i64 %idxprom38
  %33 = load i32, ptr %arrayidx39, align 4
  %34 = load ptr, ptr %ci, align 8
  %books40 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %books40, align 8
  %cmp41 = icmp sge i32 %33, %35
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false, %for.body
  br label %err_out

if.end44:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %36 = load i32, ptr %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %info, align 8
  store ptr %37, ptr %retval, align 8
  br label %return

err_out:                                          ; preds = %if.then43, %if.then25, %if.then20, %if.then15, %if.then
  %38 = load ptr, ptr %info, align 8
  call void @floor0_free_info(ptr noundef %38)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %err_out, %for.end
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

; Function Attrs: nounwind uwtable
declare hidden void @floor0_free_info(ptr noundef) #1

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

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
