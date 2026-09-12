; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

@.str.147 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @vorbis_comment_query(ptr noundef %vc, ptr noundef %tag, i32 noundef %count) #2 {
entry:
  %retval = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %found = alloca i32, align 4
  %taglen = alloca i32, align 4
  %fulltag = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i32 0, ptr %found, align 4
  %0 = load ptr, ptr %tag.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %taglen, align 4
  %1 = load i32, ptr %taglen, align 4
  %add1 = add nsw i32 %1, 1
  %conv2 = sext i32 %add1 to i64
  %2 = alloca i8, i64 %conv2, align 16
  store ptr %2, ptr %fulltag, align 8
  %3 = load ptr, ptr %fulltag, align 8
  %4 = load ptr, ptr %tag.addr, align 8
  %call3 = call ptr @strcpy(ptr noundef %3, ptr noundef %4) #4
  %5 = load ptr, ptr %fulltag, align 8
  %call4 = call ptr @strcat(ptr noundef %5, ptr noundef @.str.147) #4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, ptr %i, align 8
  %7 = load ptr, ptr %vc.addr, align 8
  %comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %comments, align 8
  %conv5 = sext i32 %8 to i64
  %cmp = icmp slt i64 %6, %conv5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %vc.addr, align 8
  %user_comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %user_comments, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = load ptr, ptr %fulltag, align 8
  %14 = load i32, ptr %taglen, align 4
  %call7 = call i32 @tagcompare(ptr noundef %12, ptr noundef %13, i32 noundef %14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %count.addr, align 4
  %16 = load i32, ptr %found, align 4
  %cmp8 = icmp eq i32 %15, %16
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  %17 = load ptr, ptr %vc.addr, align 8
  %user_comments11 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %user_comments11, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %18, i64 %19
  %20 = load ptr, ptr %arrayidx12, align 8
  %21 = load i32, ptr %taglen, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %22 = load i32, ptr %found, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %23 = load i64, ptr %i, align 8
  %inc14 = add nsw i64 %23, 1
  store i64 %inc14, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nounwind uwtable
declare hidden i32 @tagcompare(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

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
