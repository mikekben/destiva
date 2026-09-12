; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ogg_sync_buffer(ptr noundef %oy, i64 noundef %size) #3 {
entry:
  %oy.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %newsize = alloca i64, align 8
  store ptr %oy, ptr %oy.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %oy.addr, align 8
  %returned = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %returned, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %oy.addr, align 8
  %returned1 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %returned1, align 8
  %4 = load ptr, ptr %oy.addr, align 8
  %fill = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %fill, align 4
  %sub = sub nsw i32 %5, %3
  store i32 %sub, ptr %fill, align 4
  %6 = load ptr, ptr %oy.addr, align 8
  %fill2 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %fill2, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %oy.addr, align 8
  %data = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %data, align 8
  %10 = load ptr, ptr %oy.addr, align 8
  %data4 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %data4, align 8
  %12 = load ptr, ptr %oy.addr, align 8
  %returned5 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %returned5, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %14 = load ptr, ptr %oy.addr, align 8
  %fill6 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %fill6, align 4
  %conv = sext i32 %15 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %9, ptr align 1 %add.ptr, i64 %conv, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %16 = load ptr, ptr %oy.addr, align 8
  %returned7 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %16, i32 0, i32 3
  store i32 0, ptr %returned7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %17 = load i64, ptr %size.addr, align 8
  %18 = load ptr, ptr %oy.addr, align 8
  %storage = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %storage, align 8
  %20 = load ptr, ptr %oy.addr, align 8
  %fill9 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %fill9, align 4
  %sub10 = sub nsw i32 %19, %21
  %conv11 = sext i32 %sub10 to i64
  %cmp12 = icmp sgt i64 %17, %conv11
  br i1 %cmp12, label %if.then14, label %if.end28

if.then14:                                        ; preds = %if.end8
  %22 = load i64, ptr %size.addr, align 8
  %23 = load ptr, ptr %oy.addr, align 8
  %fill15 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %fill15, align 4
  %conv16 = sext i32 %24 to i64
  %add = add nsw i64 %22, %conv16
  %add17 = add nsw i64 %add, 4096
  store i64 %add17, ptr %newsize, align 8
  %25 = load ptr, ptr %oy.addr, align 8
  %data18 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %data18, align 8
  %tobool19 = icmp ne ptr %26, null
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then14
  %27 = load ptr, ptr %oy.addr, align 8
  %data21 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %data21, align 8
  %29 = load i64, ptr %newsize, align 8
  %call = call ptr @realloc(ptr noundef %28, i64 noundef %29) #4
  %30 = load ptr, ptr %oy.addr, align 8
  %data22 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %30, i32 0, i32 0
  store ptr %call, ptr %data22, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then14
  %31 = load i64, ptr %newsize, align 8
  %call23 = call noalias ptr @malloc(i64 noundef %31) #5
  %32 = load ptr, ptr %oy.addr, align 8
  %data24 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %32, i32 0, i32 0
  store ptr %call23, ptr %data24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %33 = load i64, ptr %newsize, align 8
  %conv26 = trunc i64 %33 to i32
  %34 = load ptr, ptr %oy.addr, align 8
  %storage27 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %34, i32 0, i32 1
  store i32 %conv26, ptr %storage27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end8
  %35 = load ptr, ptr %oy.addr, align 8
  %data29 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %data29, align 8
  %37 = load ptr, ptr %oy.addr, align 8
  %fill30 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %fill30, align 4
  %idx.ext31 = sext i32 %38 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %36, i64 %idx.ext31
  ret ptr %add.ptr32
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
