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
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_vfs_register(ptr noundef %pVfs, i32 noundef %makeDflt) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %makeDflt.addr = alloca i32, align 4
  %mutex = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %makeDflt, ptr %makeDflt.addr, align 4
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %0 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %rc, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call1, ptr %mutex, align 8
  %2 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  %3 = load ptr, ptr %pVfs.addr, align 8
  call void @vfsUnlink(ptr noundef %3)
  %4 = load i32, ptr %makeDflt.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr @vfsList, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr @vfsList, align 8
  %7 = load ptr, ptr %pVfs.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %7, i32 0, i32 3
  store ptr %6, ptr %pNext, align 8
  %8 = load ptr, ptr %pVfs.addr, align 8
  store ptr %8, ptr @vfsList, align 8
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr @vfsList, align 8
  %pNext4 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pNext4, align 8
  %11 = load ptr, ptr %pVfs.addr, align 8
  %pNext5 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %11, i32 0, i32 3
  store ptr %10, ptr %pNext5, align 8
  %12 = load ptr, ptr %pVfs.addr, align 8
  %13 = load ptr, ptr @vfsList, align 8
  %pNext6 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %13, i32 0, i32 3
  store ptr %12, ptr %pNext6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %14 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden void @vfsUnlink(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
