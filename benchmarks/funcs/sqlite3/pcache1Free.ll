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
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusDown(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1Free(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pSlot = alloca ptr, align 8
  %nFreed = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end5

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 7), align 8
  %4 = ptrtoint ptr %3 to i64
  %cmp1 = icmp uge i64 %2, %4
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 8), align 8
  %8 = ptrtoint ptr %7 to i64
  %cmp2 = icmp ult i64 %6, %8
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_enter(ptr noundef %9)
  call void @sqlite3StatusDown(i32 noundef 1, i32 noundef 1)
  %10 = load ptr, ptr %p.addr, align 8
  store ptr %10, ptr %pSlot, align 8
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %12 = load ptr, ptr %pSlot, align 8
  %pNext = getelementptr inbounds nuw %struct.PgFreeslot, ptr %12, i32 0, i32 0
  store ptr %11, ptr %pNext, align 8
  %13 = load ptr, ptr %pSlot, align 8
  store ptr %13, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %14 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %15 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  %16 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 6), align 4
  %cmp4 = icmp slt i32 %15, %16
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 12), align 4
  %17 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_leave(ptr noundef %17)
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %nFreed, align 4
  %18 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3MallocSize(ptr noundef %18)
  store i32 %call, ptr %nFreed, align 4
  %19 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_enter(ptr noundef %19)
  %20 = load i32, ptr %nFreed, align 4
  call void @sqlite3StatusDown(i32 noundef 2, i32 noundef %20)
  %21 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 9), align 8
  call void @sqlite3_mutex_leave(ptr noundef %21)
  %22 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %22)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %if.then
  ret void
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
