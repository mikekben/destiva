; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@mem0 = external hidden global { ptr, i64, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_free(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end2

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @sqlite3Config, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3MallocSize(ptr noundef %3)
  call void @sqlite3StatusDown(i32 noundef 0, i32 noundef %call)
  call void @sqlite3StatusDown(i32 noundef 9, i32 noundef 1)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 1), align 8
  %5 = load ptr, ptr %p.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_leave(ptr noundef %6)
  br label %if.end2

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 1), align 8
  %8 = load ptr, ptr %p.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusDown(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
