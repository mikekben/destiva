; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zzzz = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @snocString(ptr noundef %root, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @mkCell()
  store ptr %call, ptr %tmp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #3
  %add = add i64 5, %call1
  %conv = trunc i64 %add to i32
  %call2 = call ptr @myMalloc(i32 noundef %conv)
  %2 = load ptr, ptr %tmp, align 8
  %name3 = getelementptr inbounds nuw %struct.zzzz, ptr %2, i32 0, i32 0
  store ptr %call2, ptr %name3, align 8
  %3 = load ptr, ptr %tmp, align 8
  %name4 = getelementptr inbounds nuw %struct.zzzz, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name4, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %call5 = call ptr @strcpy(ptr noundef %4, ptr noundef %5) #4
  %6 = load ptr, ptr %tmp, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %root.addr, align 8
  store ptr %7, ptr %tmp6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load ptr, ptr %tmp6, align 8
  %link = getelementptr inbounds nuw %struct.zzzz, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %link, align 8
  %cmp7 = icmp ne ptr %9, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %tmp6, align 8
  %link9 = getelementptr inbounds nuw %struct.zzzz, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %link9, align 8
  store ptr %11, ptr %tmp6, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %tmp6, align 8
  %link10 = getelementptr inbounds nuw %struct.zzzz, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %link10, align 8
  %14 = load ptr, ptr %name.addr, align 8
  %call11 = call ptr @snocString(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %tmp6, align 8
  %link12 = getelementptr inbounds nuw %struct.zzzz, ptr %15, i32 0, i32 1
  store ptr %call11, ptr %link12, align 8
  %16 = load ptr, ptr %root.addr, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @mkCell() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @myMalloc(i32 noundef) #0

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
