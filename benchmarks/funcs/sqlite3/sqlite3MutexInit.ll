; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3MutexInit() #0 {
entry:
  %rc = alloca i32, align 4
  %pFrom = alloca ptr, align 8
  %pTo = alloca ptr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mutex_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 13), i32 0, i32 2), align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  store ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 13), ptr %pTo, align 8
  %1 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %tobool1 = icmp ne i8 %1, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call = call ptr @sqlite3DefaultMutex()
  store ptr %call, ptr %pFrom, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call3 = call ptr @sqlite3NoopMutex()
  store ptr %call3, ptr %pFrom, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %2 = load ptr, ptr %pFrom, align 8
  %xMutexInit = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %xMutexInit, align 8
  %4 = load ptr, ptr %pTo, align 8
  %xMutexInit4 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %4, i32 0, i32 0
  store ptr %3, ptr %xMutexInit4, align 8
  %5 = load ptr, ptr %pFrom, align 8
  %xMutexEnd = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %xMutexEnd, align 8
  %7 = load ptr, ptr %pTo, align 8
  %xMutexEnd5 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %7, i32 0, i32 1
  store ptr %6, ptr %xMutexEnd5, align 8
  %8 = load ptr, ptr %pFrom, align 8
  %xMutexFree = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %xMutexFree, align 8
  %10 = load ptr, ptr %pTo, align 8
  %xMutexFree6 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %10, i32 0, i32 3
  store ptr %9, ptr %xMutexFree6, align 8
  %11 = load ptr, ptr %pFrom, align 8
  %xMutexEnter = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %xMutexEnter, align 8
  %13 = load ptr, ptr %pTo, align 8
  %xMutexEnter7 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %13, i32 0, i32 4
  store ptr %12, ptr %xMutexEnter7, align 8
  %14 = load ptr, ptr %pFrom, align 8
  %xMutexTry = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %xMutexTry, align 8
  %16 = load ptr, ptr %pTo, align 8
  %xMutexTry8 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %16, i32 0, i32 5
  store ptr %15, ptr %xMutexTry8, align 8
  %17 = load ptr, ptr %pFrom, align 8
  %xMutexLeave = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %xMutexLeave, align 8
  %19 = load ptr, ptr %pTo, align 8
  %xMutexLeave9 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %19, i32 0, i32 6
  store ptr %18, ptr %xMutexLeave9, align 8
  %20 = load ptr, ptr %pFrom, align 8
  %xMutexHeld = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %xMutexHeld, align 8
  %22 = load ptr, ptr %pTo, align 8
  %xMutexHeld10 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %22, i32 0, i32 7
  store ptr %21, ptr %xMutexHeld10, align 8
  %23 = load ptr, ptr %pFrom, align 8
  %xMutexNotheld = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %xMutexNotheld, align 8
  %25 = load ptr, ptr %pTo, align 8
  %xMutexNotheld11 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %25, i32 0, i32 8
  store ptr %24, ptr %xMutexNotheld11, align 8
  call void @sqlite3MemoryBarrier()
  %26 = load ptr, ptr %pFrom, align 8
  %xMutexAlloc = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %xMutexAlloc, align 8
  %28 = load ptr, ptr %pTo, align 8
  %xMutexAlloc12 = getelementptr inbounds nuw %struct.sqlite3_mutex_methods, ptr %28, i32 0, i32 2
  store ptr %27, ptr %xMutexAlloc12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %29 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 13), align 8
  %call14 = call i32 %29()
  store i32 %call14, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DefaultMutex() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NoopMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MemoryBarrier() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
