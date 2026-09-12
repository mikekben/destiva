; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Mem0Global = type { ptr, i64, i32 }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@mem0 = external hidden global { ptr, i64, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3StatusValue(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @mallocWithAlarm(i32 noundef %n, ptr noundef %pp) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nFull = alloca i32, align 4
  %nUsed = alloca i64, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 4), align 8
  %1 = load i32, ptr %n.addr, align 4
  %call = call i32 %0(i32 noundef %1)
  store i32 %call, ptr %nFull, align 4
  %2 = load i32, ptr %n.addr, align 4
  call void @sqlite3StatusHighwater(i32 noundef 5, i32 noundef %2)
  %3 = load i64, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i64 @sqlite3StatusValue(i32 noundef 0)
  store i64 %call1, ptr %nUsed, align 8
  %4 = load i64, ptr %nUsed, align 8
  %5 = load i64, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  %6 = load i32, ptr %nFull, align 4
  %conv = sext i32 %6 to i64
  %sub = sub nsw i64 %5, %conv
  %cmp2 = icmp sge i64 %4, %sub
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store i32 1, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 2), align 8
  %7 = load i32, ptr %nFull, align 4
  call void @sqlite3MallocAlarm(i32 noundef %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 2), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), align 8
  %9 = load i32, ptr %nFull, align 4
  %call6 = call ptr %8(i32 noundef %9)
  store ptr %call6, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %p, align 8
  %call8 = call i32 @sqlite3MallocSize(ptr noundef %11)
  store i32 %call8, ptr %nFull, align 4
  %12 = load i32, ptr %nFull, align 4
  call void @sqlite3StatusUp(i32 noundef 0, i32 noundef %12)
  call void @sqlite3StatusUp(i32 noundef 9, i32 noundef 1)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %pp.addr, align 8
  store ptr %13, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusHighwater(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MallocAlarm(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StatusUp(i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
