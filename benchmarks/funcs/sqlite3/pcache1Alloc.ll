; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCacheGlobal = type { %struct.PGroup, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PgFreeslot = type { ptr }

@pcache1_g = external hidden global %struct.PCacheGlobal, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusHighwater(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusUp(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1Alloc(i32 noundef %nByte) #0 {
entry:
  %nByte.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %sz = alloca i32, align 4
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr null, ptr %p, align 8
  %0 = load i32, ptr %nByte.addr, align 4
  %1 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 4), align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %pNext = getelementptr inbounds nuw %struct.PgFreeslot, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pNext, align 8
  store ptr %6, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %7 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %8 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 6), align 4
  %cmp2 = icmp slt i32 %8, %9
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 12), align 4
  %10 = load i32, ptr %nByte.addr, align 4
  call void @sqlite3StatusHighwater(i32 noundef 7, i32 noundef %10)
  call void @sqlite3StatusUp(i32 noundef 1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %p, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end3
  %13 = load i32, ptr %nByte.addr, align 4
  %conv7 = sext i32 %13 to i64
  %call = call ptr @sqlite3Malloc(i64 noundef %conv7)
  store ptr %call, ptr %p, align 8
  %14 = load ptr, ptr %p, align 8
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %15 = load ptr, ptr %p, align 8
  %call10 = call i32 @sqlite3MallocSize(ptr noundef %15)
  store i32 %call10, ptr %sz, align 4
  %16 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_enter(ptr noundef %16)
  %17 = load i32, ptr %nByte.addr, align 4
  call void @sqlite3StatusHighwater(i32 noundef 7, i32 noundef %17)
  %18 = load i32, ptr %sz, align 4
  call void @sqlite3StatusUp(i32 noundef 2, i32 noundef %18)
  %19 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_leave(ptr noundef %19)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end3
  %20 = load ptr, ptr %p, align 8
  ret ptr %20
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
