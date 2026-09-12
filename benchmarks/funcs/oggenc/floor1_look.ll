; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor1 = type { [65 x i32], [65 x i32], [65 x i32], [63 x i32], [63 x i32], i32, i32, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @floor1_look(ptr noundef %vd, ptr noundef %in) #2 {
entry:
  %vd.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %sortpointer = alloca [65 x ptr], align 16
  %info = alloca ptr, align 8
  %look = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %lx = alloca i32, align 4
  %hx = alloca i32, align 4
  %currentx = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  store ptr %0, ptr %info, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 1328) #3
  store ptr %call, ptr %look, align 8
  store i32 0, ptr %n, align 4
  %1 = load ptr, ptr %info, align 8
  %2 = load ptr, ptr %look, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %2, i32 0, i32 8
  store ptr %1, ptr %vi, align 8
  %3 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %3, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 1
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %look, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %5, i32 0, i32 6
  store i32 %4, ptr %n1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %partitions, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %info, align 8
  %class_dim = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %info, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %class_dim, i64 0, i64 %idxprom3
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = load i32, ptr %n, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %n, align 4
  %add5 = add nsw i32 %16, 2
  store i32 %add5, ptr %n, align 4
  %17 = load i32, ptr %n, align 4
  %18 = load ptr, ptr %look, align 8
  %posts = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %18, i32 0, i32 5
  store i32 %17, ptr %posts, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %n, align 4
  %cmp7 = icmp slt i32 %19, %20
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %21 = load ptr, ptr %info, align 8
  %postlist9 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %21, i32 0, i32 7
  %arraydecay = getelementptr inbounds [65 x i32], ptr %postlist9, i64 0, i64 0
  %22 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext
  %23 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds [65 x ptr], ptr %sortpointer, i64 0, i64 %idxprom10
  store ptr %add.ptr, ptr %arrayidx11, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %24 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %24, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end14:                                        ; preds = %for.cond6
  %arraydecay15 = getelementptr inbounds [65 x ptr], ptr %sortpointer, i64 0, i64 0
  %25 = load i32, ptr %n, align 4
  %conv = sext i32 %25 to i64
  call void @qsort(ptr noundef %arraydecay15, i64 noundef %conv, i64 noundef 8, ptr noundef @icomp)
  store i32 0, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %for.end14
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %n, align 4
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond16
  %28 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds [65 x ptr], ptr %sortpointer, i64 0, i64 %idxprom20
  %29 = load ptr, ptr %arrayidx21, align 8
  %30 = load ptr, ptr %info, align 8
  %postlist22 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %30, i32 0, i32 7
  %arraydecay23 = getelementptr inbounds [65 x i32], ptr %postlist22, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv24 = trunc i64 %sub.ptr.div to i32
  %31 = load ptr, ptr %look, align 8
  %forward_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds [65 x i32], ptr %forward_index, i64 0, i64 %idxprom25
  store i32 %conv24, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %33 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond16, !llvm.loop !9

for.end29:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end29
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %n, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body33, label %for.end41

for.body33:                                       ; preds = %for.cond30
  %36 = load i32, ptr %i, align 4
  %37 = load ptr, ptr %look, align 8
  %reverse_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %look, align 8
  %forward_index34 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds [65 x i32], ptr %forward_index34, i64 0, i64 %idxprom35
  %40 = load i32, ptr %arrayidx36, align 4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds [65 x i32], ptr %reverse_index, i64 0, i64 %idxprom37
  store i32 %36, ptr %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body33
  %41 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %41, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond30, !llvm.loop !10

for.end41:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc54, %for.end41
  %42 = load i32, ptr %i, align 4
  %43 = load i32, ptr %n, align 4
  %cmp43 = icmp slt i32 %42, %43
  br i1 %cmp43, label %for.body45, label %for.end56

for.body45:                                       ; preds = %for.cond42
  %44 = load ptr, ptr %info, align 8
  %postlist46 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %look, align 8
  %forward_index47 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %46 to i64
  %arrayidx49 = getelementptr inbounds [65 x i32], ptr %forward_index47, i64 0, i64 %idxprom48
  %47 = load i32, ptr %arrayidx49, align 4
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds [65 x i32], ptr %postlist46, i64 0, i64 %idxprom50
  %48 = load i32, ptr %arrayidx51, align 4
  %49 = load ptr, ptr %look, align 8
  %sorted_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds [65 x i32], ptr %sorted_index, i64 0, i64 %idxprom52
  store i32 %48, ptr %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body45
  %51 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.cond42, !llvm.loop !11

for.end56:                                        ; preds = %for.cond42
  %52 = load ptr, ptr %info, align 8
  %mult = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %52, i32 0, i32 6
  %53 = load i32, ptr %mult, align 4
  switch i32 %53, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb57
    i32 3, label %sw.bb59
    i32 4, label %sw.bb61
  ]

sw.bb:                                            ; preds = %for.end56
  %54 = load ptr, ptr %look, align 8
  %quant_q = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %54, i32 0, i32 7
  store i32 256, ptr %quant_q, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %for.end56
  %55 = load ptr, ptr %look, align 8
  %quant_q58 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %55, i32 0, i32 7
  store i32 128, ptr %quant_q58, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.end56
  %56 = load ptr, ptr %look, align 8
  %quant_q60 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %56, i32 0, i32 7
  store i32 86, ptr %quant_q60, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %for.end56
  %57 = load ptr, ptr %look, align 8
  %quant_q62 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %57, i32 0, i32 7
  store i32 64, ptr %quant_q62, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb, %for.end56
  store i32 0, ptr %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc98, %sw.epilog
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %59, 2
  %cmp64 = icmp slt i32 %58, %sub
  br i1 %cmp64, label %for.body66, label %for.end100

for.body66:                                       ; preds = %for.cond63
  store i32 0, ptr %lo, align 4
  store i32 1, ptr %hi, align 4
  store i32 0, ptr %lx, align 4
  %60 = load ptr, ptr %look, align 8
  %n67 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %n67, align 8
  store i32 %61, ptr %hx, align 4
  %62 = load ptr, ptr %info, align 8
  %postlist68 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %62, i32 0, i32 7
  %63 = load i32, ptr %i, align 4
  %add69 = add nsw i32 %63, 2
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [65 x i32], ptr %postlist68, i64 0, i64 %idxprom70
  %64 = load i32, ptr %arrayidx71, align 4
  store i32 %64, ptr %currentx, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc91, %for.body66
  %65 = load i32, ptr %j, align 4
  %66 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %66, 2
  %cmp74 = icmp slt i32 %65, %add73
  br i1 %cmp74, label %for.body76, label %for.end93

for.body76:                                       ; preds = %for.cond72
  %67 = load ptr, ptr %info, align 8
  %postlist77 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %67, i32 0, i32 7
  %68 = load i32, ptr %j, align 4
  %idxprom78 = sext i32 %68 to i64
  %arrayidx79 = getelementptr inbounds [65 x i32], ptr %postlist77, i64 0, i64 %idxprom78
  %69 = load i32, ptr %arrayidx79, align 4
  store i32 %69, ptr %x, align 4
  %70 = load i32, ptr %x, align 4
  %71 = load i32, ptr %lx, align 4
  %cmp80 = icmp sgt i32 %70, %71
  br i1 %cmp80, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body76
  %72 = load i32, ptr %x, align 4
  %73 = load i32, ptr %currentx, align 4
  %cmp82 = icmp slt i32 %72, %73
  br i1 %cmp82, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %74 = load i32, ptr %j, align 4
  store i32 %74, ptr %lo, align 4
  %75 = load i32, ptr %x, align 4
  store i32 %75, ptr %lx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body76
  %76 = load i32, ptr %x, align 4
  %77 = load i32, ptr %hx, align 4
  %cmp84 = icmp slt i32 %76, %77
  br i1 %cmp84, label %land.lhs.true86, label %if.end90

land.lhs.true86:                                  ; preds = %if.end
  %78 = load i32, ptr %x, align 4
  %79 = load i32, ptr %currentx, align 4
  %cmp87 = icmp sgt i32 %78, %79
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %land.lhs.true86
  %80 = load i32, ptr %j, align 4
  store i32 %80, ptr %hi, align 4
  %81 = load i32, ptr %x, align 4
  store i32 %81, ptr %hx, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %land.lhs.true86, %if.end
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %82 = load i32, ptr %j, align 4
  %inc92 = add nsw i32 %82, 1
  store i32 %inc92, ptr %j, align 4
  br label %for.cond72, !llvm.loop !12

for.end93:                                        ; preds = %for.cond72
  %83 = load i32, ptr %lo, align 4
  %84 = load ptr, ptr %look, align 8
  %loneighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %84, i32 0, i32 4
  %85 = load i32, ptr %i, align 4
  %idxprom94 = sext i32 %85 to i64
  %arrayidx95 = getelementptr inbounds [63 x i32], ptr %loneighbor, i64 0, i64 %idxprom94
  store i32 %83, ptr %arrayidx95, align 4
  %86 = load i32, ptr %hi, align 4
  %87 = load ptr, ptr %look, align 8
  %hineighbor = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %i, align 4
  %idxprom96 = sext i32 %88 to i64
  %arrayidx97 = getelementptr inbounds [63 x i32], ptr %hineighbor, i64 0, i64 %idxprom96
  store i32 %86, ptr %arrayidx97, align 4
  br label %for.inc98

for.inc98:                                        ; preds = %for.end93
  %89 = load i32, ptr %i, align 4
  %inc99 = add nsw i32 %89, 1
  store i32 %inc99, ptr %i, align 4
  br label %for.cond63, !llvm.loop !13

for.end100:                                       ; preds = %for.cond63
  %90 = load ptr, ptr %look, align 8
  ret ptr %90
}

; Function Attrs: nounwind uwtable
declare hidden i32 @icomp(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
