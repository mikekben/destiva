; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @_vp_psy_clear(ptr noundef %p) #2 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %ath = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %ath, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %p.addr, align 8
  %ath3 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %ath3, align 8
  call void @free(ptr noundef %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %p.addr, align 8
  %octave = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %octave, align 8
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %octave6 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %octave6, align 8
  call void @free(ptr noundef %8) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %bark = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %bark, align 8
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %p.addr, align 8
  %bark10 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %bark10, align 8
  call void @free(ptr noundef %12) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %13 = load ptr, ptr %p.addr, align 8
  %tonecurves = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %tonecurves, align 8
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %if.then13, label %if.end27

if.then13:                                        ; preds = %if.end11
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.then13
  %15 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %15, 17
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %16 = load i32, ptr %j, align 4
  %cmp15 = icmp slt i32 %16, 8
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %17 = load ptr, ptr %p.addr, align 8
  %tonecurves17 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %tonecurves17, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %20, i64 %idxprom18
  %22 = load ptr, ptr %arrayidx19, align 8
  call void @free(ptr noundef %22) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond14, !llvm.loop !6

for.end:                                          ; preds = %for.cond14
  %24 = load ptr, ptr %p.addr, align 8
  %tonecurves20 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %tonecurves20, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %25, i64 %idxprom21
  %27 = load ptr, ptr %arrayidx22, align 8
  call void @free(ptr noundef %27) #3
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %28 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %28, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  %29 = load ptr, ptr %p.addr, align 8
  %tonecurves26 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %tonecurves26, align 8
  call void @free(ptr noundef %30) #3
  br label %if.end27

if.end27:                                         ; preds = %for.end25, %if.end11
  %31 = load ptr, ptr %p.addr, align 8
  %noiseoffset = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %noiseoffset, align 8
  %tobool28 = icmp ne ptr %32, null
  br i1 %tobool28, label %if.then29, label %if.end40

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %if.then29
  %33 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %33, 3
  br i1 %cmp31, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.cond30
  %34 = load ptr, ptr %p.addr, align 8
  %noiseoffset33 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %noiseoffset33, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %35, i64 %idxprom34
  %37 = load ptr, ptr %arrayidx35, align 8
  call void @free(ptr noundef %37) #3
  br label %for.inc36

for.inc36:                                        ; preds = %for.body32
  %38 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond30, !llvm.loop !9

for.end38:                                        ; preds = %for.cond30
  %39 = load ptr, ptr %p.addr, align 8
  %noiseoffset39 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %noiseoffset39, align 8
  call void @free(ptr noundef %40) #3
  br label %if.end40

if.end40:                                         ; preds = %for.end38, %if.end27
  %41 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %41, i8 0, i64 88, i1 false)
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %entry
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
