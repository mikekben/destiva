; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mem0Global = type { ptr, i64, i32 }

@mem0 = external hidden global { ptr, i64, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_release_memory(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @sqlite3_soft_heap_limit64(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %priorLimit = alloca i64, align 8
  %excess = alloca i64, align 8
  %nUsed = alloca i64, align 8
  %rc = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %0 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load i64, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  store i64 %2, ptr %priorLimit, align 8
  %3 = load i64, ptr %n.addr, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_leave(ptr noundef %4)
  %5 = load i64, ptr %priorLimit, align 8
  store i64 %5, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %6 = load i64, ptr %n.addr, align 8
  store i64 %6, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  %call3 = call i64 @sqlite3StatusValue(i32 noundef 0)
  store i64 %call3, ptr %nUsed, align 8
  %7 = load i64, ptr %n.addr, align 8
  %cmp4 = icmp sgt i64 %7, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end2
  %8 = load i64, ptr %n.addr, align 8
  %9 = load i64, ptr %nUsed, align 8
  %cmp5 = icmp sle i64 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end2
  %10 = phi i1 [ false, %if.end2 ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 2), align 8
  %11 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  %call6 = call i64 @sqlite3_memory_used()
  %12 = load i64, ptr %n.addr, align 8
  %sub = sub nsw i64 %call6, %12
  store i64 %sub, ptr %excess, align 8
  %13 = load i64, ptr %excess, align 8
  %cmp7 = icmp sgt i64 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.end
  %14 = load i64, ptr %excess, align 8
  %and = and i64 %14, 2147483647
  %conv = trunc i64 %and to i32
  %call9 = call i32 @sqlite3_release_memory(i32 noundef %conv)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.end
  %15 = load i64, ptr %priorLimit, align 8
  store i64 %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then1, %if.then
  %16 = load i64, ptr %retval, align 8
  ret i64 %16
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3StatusValue(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_memory_used() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
