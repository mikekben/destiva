; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_clear(ptr noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_v_readstring(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_unpack_comment(ptr noundef %vc, ptr noundef %opb) #0 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vendorlen = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %opb.addr, align 8
  %call = call i64 @oggpack_read(ptr noundef %0, i32 noundef 32)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %vendorlen, align 4
  %1 = load i32, ptr %vendorlen, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %err_out

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %vendorlen, align 4
  %add = add nsw i32 %2, 1
  %conv2 = sext i32 %add to i64
  %call3 = call noalias ptr @calloc(i64 noundef %conv2, i64 noundef 1) #2
  %3 = load ptr, ptr %vc.addr, align 8
  %vendor = getelementptr inbounds nuw %struct.vorbis_comment, ptr %3, i32 0, i32 3
  store ptr %call3, ptr %vendor, align 8
  %4 = load ptr, ptr %opb.addr, align 8
  %5 = load ptr, ptr %vc.addr, align 8
  %vendor4 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %vendor4, align 8
  %7 = load i32, ptr %vendorlen, align 4
  call void @_v_readstring(ptr noundef %4, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %opb.addr, align 8
  %call5 = call i64 @oggpack_read(ptr noundef %8, i32 noundef 32)
  %conv6 = trunc i64 %call5 to i32
  %9 = load ptr, ptr %vc.addr, align 8
  %comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %9, i32 0, i32 2
  store i32 %conv6, ptr %comments, align 8
  %10 = load ptr, ptr %vc.addr, align 8
  %comments7 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %comments7, align 8
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %err_out

if.end11:                                         ; preds = %if.end
  %12 = load ptr, ptr %vc.addr, align 8
  %comments12 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %comments12, align 8
  %add13 = add nsw i32 %13, 1
  %conv14 = sext i32 %add13 to i64
  %call15 = call noalias ptr @calloc(i64 noundef %conv14, i64 noundef 8) #2
  %14 = load ptr, ptr %vc.addr, align 8
  %user_comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %14, i32 0, i32 0
  store ptr %call15, ptr %user_comments, align 8
  %15 = load ptr, ptr %vc.addr, align 8
  %comments16 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %comments16, align 8
  %add17 = add nsw i32 %16, 1
  %conv18 = sext i32 %add17 to i64
  %call19 = call noalias ptr @calloc(i64 noundef %conv18, i64 noundef 4) #2
  %17 = load ptr, ptr %vc.addr, align 8
  %comment_lengths = getelementptr inbounds nuw %struct.vorbis_comment, ptr %17, i32 0, i32 1
  store ptr %call19, ptr %comment_lengths, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %18 = load i32, ptr %i, align 4
  %19 = load ptr, ptr %vc.addr, align 8
  %comments20 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %comments20, align 8
  %cmp21 = icmp slt i32 %18, %20
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %opb.addr, align 8
  %call23 = call i64 @oggpack_read(ptr noundef %21, i32 noundef 32)
  %conv24 = trunc i64 %call23 to i32
  store i32 %conv24, ptr %len, align 4
  %22 = load i32, ptr %len, align 4
  %cmp25 = icmp slt i32 %22, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %err_out

if.end28:                                         ; preds = %for.body
  %23 = load i32, ptr %len, align 4
  %24 = load ptr, ptr %vc.addr, align 8
  %comment_lengths29 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %comment_lengths29, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  store i32 %23, ptr %arrayidx, align 4
  %27 = load i32, ptr %len, align 4
  %add30 = add nsw i32 %27, 1
  %conv31 = sext i32 %add30 to i64
  %call32 = call noalias ptr @calloc(i64 noundef %conv31, i64 noundef 1) #2
  %28 = load ptr, ptr %vc.addr, align 8
  %user_comments33 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %user_comments33, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %29, i64 %idxprom34
  store ptr %call32, ptr %arrayidx35, align 8
  %31 = load ptr, ptr %opb.addr, align 8
  %32 = load ptr, ptr %vc.addr, align 8
  %user_comments36 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %user_comments36, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %33, i64 %idxprom37
  %35 = load ptr, ptr %arrayidx38, align 8
  %36 = load i32, ptr %len, align 4
  call void @_v_readstring(ptr noundef %31, ptr noundef %35, i32 noundef %36)
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %opb.addr, align 8
  %call39 = call i64 @oggpack_read(ptr noundef %38, i32 noundef 1)
  %cmp40 = icmp ne i64 %call39, 1
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.end
  br label %err_out

if.end43:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.then42, %if.then27, %if.then10, %if.then
  %39 = load ptr, ptr %vc.addr, align 8
  call void @vorbis_comment_clear(ptr noundef %39)
  store i32 -133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err_out, %if.end43
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

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
