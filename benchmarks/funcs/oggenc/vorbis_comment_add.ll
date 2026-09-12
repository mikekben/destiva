; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_comment_add(ptr noundef %vc, ptr noundef %comment) #3 {
entry:
  %vc.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %comment, ptr %comment.addr, align 8
  %0 = load ptr, ptr %vc.addr, align 8
  %user_comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %user_comments, align 8
  %2 = load ptr, ptr %vc.addr, align 8
  %comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %comments, align 8
  %add = add nsw i32 %3, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %mul) #5
  %4 = load ptr, ptr %vc.addr, align 8
  %user_comments1 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %4, i32 0, i32 0
  store ptr %call, ptr %user_comments1, align 8
  %5 = load ptr, ptr %vc.addr, align 8
  %comment_lengths = getelementptr inbounds nuw %struct.vorbis_comment, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %comment_lengths, align 8
  %7 = load ptr, ptr %vc.addr, align 8
  %comments2 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %comments2, align 8
  %add3 = add nsw i32 %8, 2
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call ptr @realloc(ptr noundef %6, i64 noundef %mul5) #5
  %9 = load ptr, ptr %vc.addr, align 8
  %comment_lengths7 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %9, i32 0, i32 1
  store ptr %call6, ptr %comment_lengths7, align 8
  %10 = load ptr, ptr %comment.addr, align 8
  %call8 = call i64 @strlen(ptr noundef %10) #6
  %conv9 = trunc i64 %call8 to i32
  %11 = load ptr, ptr %vc.addr, align 8
  %comment_lengths10 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %comment_lengths10, align 8
  %13 = load ptr, ptr %vc.addr, align 8
  %comments11 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %comments11, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  store i32 %conv9, ptr %arrayidx, align 4
  %15 = load ptr, ptr %vc.addr, align 8
  %comment_lengths12 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %comment_lengths12, align 8
  %17 = load ptr, ptr %vc.addr, align 8
  %comments13 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %comments13, align 8
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 %idxprom14
  %19 = load i32, ptr %arrayidx15, align 4
  %add16 = add nsw i32 %19, 1
  %conv17 = sext i32 %add16 to i64
  %call18 = call noalias ptr @malloc(i64 noundef %conv17) #7
  %20 = load ptr, ptr %vc.addr, align 8
  %user_comments19 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %user_comments19, align 8
  %22 = load ptr, ptr %vc.addr, align 8
  %comments20 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %comments20, align 8
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %21, i64 %idxprom21
  store ptr %call18, ptr %arrayidx22, align 8
  %24 = load ptr, ptr %vc.addr, align 8
  %user_comments23 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %user_comments23, align 8
  %26 = load ptr, ptr %vc.addr, align 8
  %comments24 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %comments24, align 8
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %25, i64 %idxprom25
  %28 = load ptr, ptr %arrayidx26, align 8
  %29 = load ptr, ptr %comment.addr, align 8
  %call27 = call ptr @strcpy(ptr noundef %28, ptr noundef %29) #8
  %30 = load ptr, ptr %vc.addr, align 8
  %comments28 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %comments28, align 8
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %comments28, align 8
  %32 = load ptr, ptr %vc.addr, align 8
  %user_comments29 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %user_comments29, align 8
  %34 = load ptr, ptr %vc.addr, align 8
  %comments30 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %comments30, align 8
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %33, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
