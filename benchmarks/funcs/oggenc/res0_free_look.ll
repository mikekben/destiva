; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @res0_free_look(ptr noundef %i) #2 {
entry:
  %i.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %look = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %i.addr, align 8
  store ptr %1, ptr %look, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %j, align 4
  %3 = load ptr, ptr %look, align 8
  %parts = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %parts, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %look, align 8
  %partbooks = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %partbooks, align 8
  %7 = load i32, ptr %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %9 = load ptr, ptr %look, align 8
  %partbooks3 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %partbooks3, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %10, i64 %idxprom4
  %12 = load ptr, ptr %arrayidx5, align 8
  call void @free(ptr noundef %12) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %look, align 8
  %partbooks6 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %partbooks6, align 8
  call void @free(ptr noundef %15) #3
  store i32 0, ptr %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc12, %for.end
  %16 = load i32, ptr %j, align 4
  %17 = load ptr, ptr %look, align 8
  %partvals = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %partvals, align 8
  %cmp8 = icmp slt i32 %16, %18
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond7
  %19 = load ptr, ptr %look, align 8
  %decodemap = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %decodemap, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %20, i64 %idxprom10
  %22 = load ptr, ptr %arrayidx11, align 8
  call void @free(ptr noundef %22) #3
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %23 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %23, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond7, !llvm.loop !8

for.end14:                                        ; preds = %for.cond7
  %24 = load ptr, ptr %look, align 8
  %decodemap15 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %decodemap15, align 8
  call void @free(ptr noundef %25) #3
  %26 = load ptr, ptr %look, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 80, i1 false)
  %27 = load ptr, ptr %look, align 8
  call void @free(ptr noundef %27) #3
  br label %if.end16

if.end16:                                         ; preds = %for.end14, %entry
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
