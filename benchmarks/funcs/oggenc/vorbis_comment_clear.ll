; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_comment_clear(ptr noundef %vc) #1 {
entry:
  %vc.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %vc, ptr %vc.addr, align 8
  %0 = load ptr, ptr %vc.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, ptr %i, align 8
  %2 = load ptr, ptr %vc.addr, align 8
  %comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %comments, align 8
  %conv = sext i32 %3 to i64
  %cmp = icmp slt i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %vc.addr, align 8
  %user_comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %user_comments, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %vc.addr, align 8
  %user_comments4 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %user_comments4, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 %10
  %11 = load ptr, ptr %arrayidx5, align 8
  call void @free(ptr noundef %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, ptr %i, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %vc.addr, align 8
  %user_comments6 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %user_comments6, align 8
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.end
  %15 = load ptr, ptr %vc.addr, align 8
  %user_comments9 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %user_comments9, align 8
  call void @free(ptr noundef %16) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.end
  %17 = load ptr, ptr %vc.addr, align 8
  %comment_lengths = getelementptr inbounds nuw %struct.vorbis_comment, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %comment_lengths, align 8
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %19 = load ptr, ptr %vc.addr, align 8
  %comment_lengths13 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %comment_lengths13, align 8
  call void @free(ptr noundef %20) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %21 = load ptr, ptr %vc.addr, align 8
  %vendor = getelementptr inbounds nuw %struct.vorbis_comment, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %vendor, align 8
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %23 = load ptr, ptr %vc.addr, align 8
  %vendor17 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %vendor17, align 8
  call void @free(ptr noundef %24) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry
  %25 = load ptr, ptr %vc.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

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
