; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vfsList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_vfs_find(ptr noundef %zVfs) #0 {
entry:
  %retval = alloca ptr, align 8
  %zVfs.addr = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %zVfs, ptr %zVfs.addr, align 8
  store ptr null, ptr %pVfs, align 8
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %0 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call1, ptr %mutex, align 8
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr @vfsList, align 8
  store ptr %2, ptr %pVfs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %pVfs, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %zVfs.addr, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end4:                                          ; preds = %for.body
  %5 = load ptr, ptr %zVfs.addr, align 8
  %6 = load ptr, ptr %pVfs, align 8
  %zName = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %zName, align 8
  %call5 = call i32 @strcmp(ptr noundef %5, ptr noundef %7) #2
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %for.end

if.end8:                                          ; preds = %if.end4
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %8 = load ptr, ptr %pVfs, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pNext, align 8
  store ptr %9, ptr %pVfs, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then7, %if.then3, %for.cond
  %10 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %10)
  %11 = load ptr, ptr %pVfs, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
