; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @mapping0_pack(ptr noundef %vi, ptr noundef %vm, ptr noundef %opb) #0 {
entry:
  %vi.addr = alloca ptr, align 8
  %vm.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %info = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %vm, ptr %vm.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vm.addr, align 8
  store ptr %0, ptr %info, align 8
  %1 = load ptr, ptr %info, align 8
  %submaps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %submaps, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %3, i64 noundef 1, i32 noundef 1)
  %4 = load ptr, ptr %opb.addr, align 8
  %5 = load ptr, ptr %info, align 8
  %submaps1 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %submaps1, align 4
  %sub = sub nsw i32 %6, 1
  %conv = sext i32 %sub to i64
  call void @oggpack_write(ptr noundef %4, i64 noundef %conv, i32 noundef 4)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %7, i64 noundef 0, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %info, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %coupling_steps, align 4
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %if.then4, label %if.else17

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %10, i64 noundef 1, i32 noundef 1)
  %11 = load ptr, ptr %opb.addr, align 8
  %12 = load ptr, ptr %info, align 8
  %coupling_steps5 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %coupling_steps5, align 4
  %sub6 = sub nsw i32 %13, 1
  %conv7 = sext i32 %sub6 to i64
  call void @oggpack_write(ptr noundef %11, i64 noundef %conv7, i32 noundef 8)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %info, align 8
  %coupling_steps8 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %coupling_steps8, align 4
  %cmp9 = icmp slt i32 %14, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %opb.addr, align 8
  %18 = load ptr, ptr %info, align 8
  %coupling_mag = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr %coupling_mag, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %conv11 = sext i32 %20 to i64
  %21 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %channels, align 4
  %call = call i32 @ilog(i32 noundef %22)
  call void @oggpack_write(ptr noundef %17, i64 noundef %conv11, i32 noundef %call)
  %23 = load ptr, ptr %opb.addr, align 8
  %24 = load ptr, ptr %info, align 8
  %coupling_ang = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], ptr %coupling_ang, i64 0, i64 %idxprom12
  %26 = load i32, ptr %arrayidx13, align 4
  %conv14 = sext i32 %26 to i64
  %27 = load ptr, ptr %vi.addr, align 8
  %channels15 = getelementptr inbounds nuw %struct.vorbis_info, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %channels15, align 4
  %call16 = call i32 @ilog(i32 noundef %28)
  call void @oggpack_write(ptr noundef %23, i64 noundef %conv14, i32 noundef %call16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.else17:                                        ; preds = %if.end
  %30 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %30, i64 noundef 0, i32 noundef 1)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %for.end
  %31 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %31, i64 noundef 0, i32 noundef 2)
  %32 = load ptr, ptr %info, align 8
  %submaps19 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %submaps19, align 4
  %cmp20 = icmp sgt i32 %33, 1
  br i1 %cmp20, label %if.then22, label %if.end34

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %if.then22
  %34 = load i32, ptr %i, align 4
  %35 = load ptr, ptr %vi.addr, align 8
  %channels24 = getelementptr inbounds nuw %struct.vorbis_info, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %channels24, align 4
  %cmp25 = icmp slt i32 %34, %36
  br i1 %cmp25, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond23
  %37 = load ptr, ptr %opb.addr, align 8
  %38 = load ptr, ptr %info, align 8
  %chmuxlist = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], ptr %chmuxlist, i64 0, i64 %idxprom28
  %40 = load i32, ptr %arrayidx29, align 4
  %conv30 = sext i32 %40 to i64
  call void @oggpack_write(ptr noundef %37, i64 noundef %conv30, i32 noundef 4)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body27
  %41 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %41, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end33:                                        ; preds = %for.cond23
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %if.end18
  store i32 0, ptr %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %if.end34
  %42 = load i32, ptr %i, align 4
  %43 = load ptr, ptr %info, align 8
  %submaps36 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %submaps36, align 4
  %cmp37 = icmp slt i32 %42, %44
  br i1 %cmp37, label %for.body39, label %for.end48

for.body39:                                       ; preds = %for.cond35
  %45 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %45, i64 noundef 0, i32 noundef 8)
  %46 = load ptr, ptr %opb.addr, align 8
  %47 = load ptr, ptr %info, align 8
  %floorsubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds [16 x i32], ptr %floorsubmap, i64 0, i64 %idxprom40
  %49 = load i32, ptr %arrayidx41, align 4
  %conv42 = sext i32 %49 to i64
  call void @oggpack_write(ptr noundef %46, i64 noundef %conv42, i32 noundef 8)
  %50 = load ptr, ptr %opb.addr, align 8
  %51 = load ptr, ptr %info, align 8
  %residuesubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds [16 x i32], ptr %residuesubmap, i64 0, i64 %idxprom43
  %53 = load i32, ptr %arrayidx44, align 4
  %conv45 = sext i32 %53 to i64
  call void @oggpack_write(ptr noundef %50, i64 noundef %conv45, i32 noundef 8)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body39
  %54 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %54, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond35, !llvm.loop !9

for.end48:                                        ; preds = %for.cond35
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
!9 = distinct !{!9, !7}
