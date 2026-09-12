; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDefHash = type { [23 x ptr] }
%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3BuiltinFunctions = external hidden global %struct.FuncDefHash, align 8
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_initialize() #0 {
entry:
  %retval = alloca i32, align 4
  %pMaster = alloca ptr, align 8
  %rc = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 27), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @sqlite3MutexInit()
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call4, ptr %pMaster, align 8
  %3 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  store i32 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 29), align 4
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 30), align 8
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = call i32 @sqlite3MallocInit()
  store i32 %call7, ptr %rc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end8
  store i32 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 30), align 8
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  %tobool10 = icmp ne ptr %6, null
  br i1 %tobool10, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.then9
  %call12 = call ptr @sqlite3MutexAlloc(i32 noundef 1)
  store ptr %call12, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  %7 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %conv = zext i8 %7 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then11
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  %tobool14 = icmp ne ptr %8, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  store i32 7, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end8
  %9 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %9, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %10 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 32), align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 32), align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  %11 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  %12 = load i32, ptr %rc, align 4
  %cmp23 = icmp ne i32 %12, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  %13 = load i32, ptr %rc, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %14 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  call void @sqlite3_mutex_enter(ptr noundef %14)
  %15 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 27), align 4
  %cmp27 = icmp eq i32 %15, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.end47

land.lhs.true29:                                  ; preds = %if.end26
  %16 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 28), align 8
  %cmp30 = icmp eq i32 %16, 0
  br i1 %cmp30, label %if.then32, label %if.end47

if.then32:                                        ; preds = %land.lhs.true29
  store i32 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 28), align 8
  call void @llvm.memset.p0.i64(ptr align 8 @sqlite3BuiltinFunctions, i8 0, i64 184, i1 false)
  call void @sqlite3RegisterBuiltinFunctions()
  %17 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 31), align 4
  %cmp33 = icmp eq i32 %17, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %call36 = call i32 @sqlite3PcacheInitialize()
  store i32 %call36, ptr %rc, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  %18 = load i32, ptr %rc, align 4
  %cmp38 = icmp eq i32 %18, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  store i32 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 31), align 4
  %call41 = call i32 @sqlite3OsInit()
  store i32 %call41, ptr %rc, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37
  %19 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %19, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %20 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 21), align 8
  %21 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 22), align 8
  %22 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 23), align 4
  call void @sqlite3PCacheBufferSetup(ptr noundef %20, i32 noundef %21, i32 noundef %22)
  store i32 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 27), align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  store i32 0, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 28), align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true29, %if.end26
  %23 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  call void @sqlite3_mutex_leave(ptr noundef %23)
  %24 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_enter(ptr noundef %24)
  %25 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 32), align 8
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 32), align 8
  %26 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 32), align 8
  %cmp48 = icmp sle i32 %26, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  %27 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  call void @sqlite3_mutex_free(ptr noundef %27)
  store ptr null, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 33), align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47
  %28 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_mutex_leave(ptr noundef %28)
  %29 = load i32, ptr %rc, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then25, %if.then2, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MutexInit() #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocInit() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RegisterBuiltinFunctions() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheInitialize() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsInit() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PCacheBufferSetup(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
