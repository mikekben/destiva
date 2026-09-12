; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.147 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_add(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_comment_add_tag(ptr noundef %vc, ptr noundef %tag, ptr noundef %contents) #2 {
entry:
  %vc.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %contents.addr = alloca ptr, align 8
  %comment = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  store ptr %contents, ptr %contents.addr, align 8
  %0 = load ptr, ptr %tag.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %1 = load ptr, ptr %contents.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #3
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %2 = alloca i8, i64 %add2, align 16
  store ptr %2, ptr %comment, align 8
  %3 = load ptr, ptr %comment, align 8
  %4 = load ptr, ptr %tag.addr, align 8
  %call3 = call ptr @strcpy(ptr noundef %3, ptr noundef %4) #4
  %5 = load ptr, ptr %comment, align 8
  %call4 = call ptr @strcat(ptr noundef %5, ptr noundef @.str.147) #4
  %6 = load ptr, ptr %comment, align 8
  %7 = load ptr, ptr %contents.addr, align 8
  %call5 = call ptr @strcat(ptr noundef %6, ptr noundef %7) #4
  %8 = load ptr, ptr %vc.addr, align 8
  %9 = load ptr, ptr %comment, align 8
  call void @vorbis_comment_add(ptr noundef %8, ptr noundef %9)
  ret void
}

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
