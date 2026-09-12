; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.30 = external hidden unnamed_addr constant [2 x i8], align 1
@stderr = external global ptr, align 8
@.str.112 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.113 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.114 = external hidden unnamed_addr constant [45 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @create_directories(ptr noundef %fn) #5 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %start = alloca ptr, align 8
  %statbuf = alloca %struct.stat, align 8
  %segment = alloca ptr, align 8
  store ptr %fn, ptr %fn.addr, align 8
  %0 = load ptr, ptr %fn.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #6
  %add = add i64 %call, 1
  %call1 = call noalias ptr @malloc(i64 noundef %add) #7
  store ptr %call1, ptr %segment, align 8
  %1 = load ptr, ptr %fn.addr, align 8
  store ptr %1, ptr %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %2 = load ptr, ptr %start, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  %call2 = call ptr @strpbrk(ptr noundef %add.ptr, ptr noundef @.str.30) #6
  store ptr %call2, ptr %end, align 8
  %cmp = icmp ne ptr %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %segment, align 8
  %4 = load ptr, ptr %fn.addr, align 8
  %5 = load ptr, ptr %end, align 8
  %6 = load ptr, ptr %fn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %sub.ptr.sub, i1 false)
  %7 = load ptr, ptr %segment, align 8
  %8 = load ptr, ptr %end, align 8
  %9 = load ptr, ptr %fn.addr, align 8
  %sub.ptr.lhs.cast3 = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast4 = ptrtoint ptr %9 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %sub.ptr.sub5
  store i8 0, ptr %arrayidx, align 1
  %10 = load ptr, ptr %segment, align 8
  %call6 = call i32 @stat(ptr noundef %10, ptr noundef %statbuf) #8
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else20

if.then:                                          ; preds = %while.body
  %call7 = call ptr @__errno_location() #9
  %11 = load i32, ptr %call7, align 4
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %12 = load ptr, ptr %segment, align 8
  %call10 = call i32 @mkdir(ptr noundef %12, i32 noundef 511) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then9
  %13 = load ptr, ptr @stderr, align 8
  %14 = load ptr, ptr %segment, align 8
  %call13 = call ptr @__errno_location() #9
  %15 = load i32, ptr %call13, align 4
  %call14 = call ptr @strerror(i32 noundef %15) #8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.112, ptr noundef %14, ptr noundef %call14) #8
  %16 = load ptr, ptr %segment, align 8
  call void @free(ptr noundef %16) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then9
  br label %if.end19

if.else:                                          ; preds = %if.then
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr %segment, align 8
  %call16 = call ptr @__errno_location() #9
  %19 = load i32, ptr %call16, align 4
  %call17 = call ptr @strerror(i32 noundef %19) #8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.113, ptr noundef %18, ptr noundef %call17) #8
  %20 = load ptr, ptr %segment, align 8
  call void @free(ptr noundef %20) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end
  br label %if.end25

if.else20:                                        ; preds = %while.body
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 3
  %21 = load i32, ptr %st_mode, align 8
  %and = and i32 %21, 61440
  %cmp21 = icmp eq i32 %and, 16384
  br i1 %cmp21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.else20
  %22 = load ptr, ptr @stderr, align 8
  %23 = load ptr, ptr %segment, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.114, ptr noundef %23) #8
  %24 = load ptr, ptr %segment, align 8
  call void @free(ptr noundef %24) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.else20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end19
  %25 = load ptr, ptr %end, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %add.ptr26, ptr %start, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %segment, align 8
  call void @free(ptr noundef %26) #8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then22, %if.else, %if.then12
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strpbrk(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @mkdir(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

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
