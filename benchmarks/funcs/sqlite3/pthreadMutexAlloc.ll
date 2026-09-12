; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }

@pthreadMutexAlloc.staticMutexes = external hidden global [12 x %struct.sqlite3_mutex], align 16

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pthreadMutexAlloc(i32 noundef %iType) #0 {
entry:
  %iType.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %recursiveAttr = alloca %union.pthread_mutexattr_t, align 4
  store i32 %iType, ptr %iType.addr, align 4
  %0 = load i32, ptr %iType.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = call ptr @sqlite3MallocZero(i64 noundef 40)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call1 = call i32 @pthread_mutexattr_init(ptr noundef %recursiveAttr) #2
  %call2 = call i32 @pthread_mutexattr_settype(ptr noundef %recursiveAttr, i32 noundef 1) #2
  %2 = load ptr, ptr %p, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3_mutex, ptr %2, i32 0, i32 0
  %call3 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef %recursiveAttr) #2
  %call4 = call i32 @pthread_mutexattr_destroy(ptr noundef %recursiveAttr) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = call ptr @sqlite3MallocZero(i64 noundef 40)
  store ptr %call6, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %tobool7 = icmp ne ptr %3, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %sw.bb5
  %4 = load ptr, ptr %p, align 8
  %mutex9 = getelementptr inbounds nuw %struct.sqlite3_mutex, ptr %4, i32 0, i32 0
  %call10 = call i32 @pthread_mutex_init(ptr noundef %mutex9, ptr noundef null) #2
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %sw.bb5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load i32, ptr %iType.addr, align 4
  %sub = sub nsw i32 %5, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [12 x %struct.sqlite3_mutex], ptr @pthreadMutexAlloc.staticMutexes, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end11, %if.end
  %6 = load ptr, ptr %p, align 8
  ret ptr %6
}

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_destroy(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
