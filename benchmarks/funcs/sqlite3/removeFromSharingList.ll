; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3SharedCacheList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @removeFromSharingList(ptr noundef %pBt) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %pMaster = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %removed = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 0, ptr %removed, align 4
  %call = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call, ptr %pMaster, align 8
  %0 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_enter(ptr noundef %0)
  %1 = load ptr, ptr %pBt.addr, align 8
  %nRef = getelementptr inbounds nuw %struct.BtShared, ptr %1, i32 0, i32 23
  %2 = load i32, ptr %nRef, align 8
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %nRef, align 8
  %3 = load ptr, ptr %pBt.addr, align 8
  %nRef1 = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 23
  %4 = load i32, ptr %nRef1, align 8
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @sqlite3SharedCacheList, align 8
  %6 = load ptr, ptr %pBt.addr, align 8
  %cmp2 = icmp eq ptr %5, %6
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %pBt.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 24
  %8 = load ptr, ptr %pNext, align 8
  store ptr %8, ptr @sqlite3SharedCacheList, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr @sqlite3SharedCacheList, align 8
  store ptr %9, ptr %pList, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %10 = load ptr, ptr %pList, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %pList, align 8
  %pNext4 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 24
  %12 = load ptr, ptr %pNext4, align 8
  %13 = load ptr, ptr %pBt.addr, align 8
  %cmp5 = icmp ne ptr %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %pList, align 8
  %pNext6 = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 24
  %16 = load ptr, ptr %pNext6, align 8
  store ptr %16, ptr %pList, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pList, align 8
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.end
  %18 = load ptr, ptr %pBt.addr, align 8
  %pNext9 = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 24
  %19 = load ptr, ptr %pNext9, align 8
  %20 = load ptr, ptr %pList, align 8
  %pNext10 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 24
  store ptr %19, ptr %pNext10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.end
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %21 = load ptr, ptr %pBt.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 21
  %22 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_free(ptr noundef %22)
  store i32 1, ptr %removed, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %23 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_leave(ptr noundef %23)
  %24 = load i32, ptr %removed, align 4
  ret i32 %24
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
