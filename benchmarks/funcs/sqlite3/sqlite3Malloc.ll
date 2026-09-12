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
define hidden ptr @sqlite3Malloc(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp uge i64 %1, 2147483392
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %p, align 8
  br label %if.end5

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr @sqlite3Config, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load i64, ptr %n.addr, align 8
  %conv = trunc i64 %4 to i32
  call void @mallocWithAlarm(i32 noundef %conv, ptr noundef %p)
  %5 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_leave(ptr noundef %5)
  br label %if.end

if.else3:                                         ; preds = %if.else
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), align 8
  %7 = load i64, ptr %n.addr, align 8
  %conv4 = trunc i64 %7 to i32
  %call = call ptr %6(i32 noundef %conv4)
  store ptr %call, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %p, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
declare hidden void @mallocWithAlarm(i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
