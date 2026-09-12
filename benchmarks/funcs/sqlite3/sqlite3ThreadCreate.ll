; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SQLiteThread = type { i64, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ThreadCreate(ptr noundef %ppThread, ptr noundef %xTask, ptr noundef %pIn) #0 {
entry:
  %retval = alloca i32, align 4
  %ppThread.addr = alloca ptr, align 8
  %xTask.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %ppThread, ptr %ppThread.addr, align 8
  store ptr %xTask, ptr %xTask.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  %0 = load ptr, ptr %ppThread.addr, align 8
  store ptr null, ptr %0, align 8
  %call = call ptr @sqlite3Malloc(i64 noundef 40)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 40, i1 false)
  %3 = load ptr, ptr %xTask.addr, align 8
  %4 = load ptr, ptr %p, align 8
  %xTask1 = getelementptr inbounds nuw %struct.SQLiteThread, ptr %4, i32 0, i32 3
  store ptr %3, ptr %xTask1, align 8
  %5 = load ptr, ptr %pIn.addr, align 8
  %6 = load ptr, ptr %p, align 8
  %pIn2 = getelementptr inbounds nuw %struct.SQLiteThread, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pIn2, align 8
  %call3 = call i32 @sqlite3FaultSim(i32 noundef 200)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %rc, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %p, align 8
  %tid = getelementptr inbounds nuw %struct.SQLiteThread, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %xTask.addr, align 8
  %9 = load ptr, ptr %pIn.addr, align 8
  %call5 = call i32 @pthread_create(ptr noundef %tid, ptr noundef null, ptr noundef %8, ptr noundef %9) #3
  store i32 %call5, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %10 = load i32, ptr %rc, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %p, align 8
  %done = getelementptr inbounds nuw %struct.SQLiteThread, ptr %11, i32 0, i32 1
  store i32 1, ptr %done, align 8
  %12 = load ptr, ptr %xTask.addr, align 8
  %13 = load ptr, ptr %pIn.addr, align 8
  %call9 = call ptr %12(ptr noundef %13)
  %14 = load ptr, ptr %p, align 8
  %pOut = getelementptr inbounds nuw %struct.SQLiteThread, ptr %14, i32 0, i32 2
  store ptr %call9, ptr %pOut, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %ppThread.addr, align 8
  store ptr %15, ptr %16, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
