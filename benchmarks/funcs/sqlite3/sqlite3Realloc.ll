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
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3StatusValue(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3Realloc(ptr noundef %pOld, i64 noundef %nBytes) #0 {
entry:
  %retval = alloca ptr, align 8
  %pOld.addr = alloca ptr, align 8
  %nBytes.addr = alloca i64, align 8
  %nOld = alloca i32, align 4
  %nNew = alloca i32, align 4
  %nDiff = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pOld, ptr %pOld.addr, align 8
  store i64 %nBytes, ptr %nBytes.addr, align 8
  %0 = load ptr, ptr %pOld.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %nBytes.addr, align 8
  %call = call ptr @sqlite3Malloc(i64 noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %nBytes.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %pOld.addr, align 8
  call void @sqlite3_free(ptr noundef %3)
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %nBytes.addr, align 8
  %cmp4 = icmp uge i64 %4, 2147483392
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load ptr, ptr %pOld.addr, align 8
  %call7 = call i32 @sqlite3MallocSize(ptr noundef %5)
  store i32 %call7, ptr %nOld, align 4
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 4), align 8
  %7 = load i64, ptr %nBytes.addr, align 8
  %conv = trunc i64 %7 to i32
  %call8 = call i32 %6(i32 noundef %conv)
  store i32 %call8, ptr %nNew, align 4
  %8 = load i32, ptr %nOld, align 4
  %9 = load i32, ptr %nNew, align 4
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  %10 = load ptr, ptr %pOld.addr, align 8
  store ptr %10, ptr %pNew, align 8
  br label %if.end41

if.else:                                          ; preds = %if.end6
  %11 = load i32, ptr @sqlite3Config, align 8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then12, label %if.else38

if.then12:                                        ; preds = %if.else
  %12 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_enter(ptr noundef %12)
  %13 = load i64, ptr %nBytes.addr, align 8
  %conv13 = trunc i64 %13 to i32
  call void @sqlite3StatusHighwater(i32 noundef 5, i32 noundef %conv13)
  %14 = load i32, ptr %nNew, align 4
  %15 = load i32, ptr %nOld, align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, ptr %nDiff, align 4
  %16 = load i32, ptr %nDiff, align 4
  %cmp14 = icmp sgt i32 %16, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.then12
  %call16 = call i64 @sqlite3StatusValue(i32 noundef 0)
  %17 = load i64, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  %18 = load i32, ptr %nDiff, align 4
  %conv17 = sext i32 %18 to i64
  %sub18 = sub nsw i64 %17, %conv17
  %cmp19 = icmp sge i64 %call16, %sub18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  %19 = load i32, ptr %nDiff, align 4
  call void @sqlite3MallocAlarm(i32 noundef %19)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true, %if.then12
  %20 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 2), align 8
  %21 = load ptr, ptr %pOld.addr, align 8
  %22 = load i32, ptr %nNew, align 4
  %call23 = call ptr %20(ptr noundef %21, i32 noundef %22)
  store ptr %call23, ptr %pNew, align 8
  %23 = load ptr, ptr %pNew, align 8
  %cmp24 = icmp eq ptr %23, null
  br i1 %cmp24, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %if.end22
  %24 = load i64, ptr getelementptr inbounds nuw (%struct.Mem0Global, ptr @mem0, i32 0, i32 1), align 8
  %cmp27 = icmp sgt i64 %24, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %land.lhs.true26
  %25 = load i64, ptr %nBytes.addr, align 8
  %conv30 = trunc i64 %25 to i32
  call void @sqlite3MallocAlarm(i32 noundef %conv30)
  %26 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 2), align 8
  %27 = load ptr, ptr %pOld.addr, align 8
  %28 = load i32, ptr %nNew, align 4
  %call31 = call ptr %26(ptr noundef %27, i32 noundef %28)
  store ptr %call31, ptr %pNew, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true26, %if.end22
  %29 = load ptr, ptr %pNew, align 8
  %tobool33 = icmp ne ptr %29, null
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end32
  %30 = load ptr, ptr %pNew, align 8
  %call35 = call i32 @sqlite3MallocSize(ptr noundef %30)
  store i32 %call35, ptr %nNew, align 4
  %31 = load i32, ptr %nNew, align 4
  %32 = load i32, ptr %nOld, align 4
  %sub36 = sub nsw i32 %31, %32
  call void @sqlite3StatusUp(i32 noundef 0, i32 noundef %sub36)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32
  %33 = load ptr, ptr @mem0, align 8
  call void @sqlite3_mutex_leave(ptr noundef %33)
  br label %if.end40

if.else38:                                        ; preds = %if.else
  %34 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 2), align 8
  %35 = load ptr, ptr %pOld.addr, align 8
  %36 = load i32, ptr %nNew, align 4
  %call39 = call ptr %34(ptr noundef %35, i32 noundef %36)
  store ptr %call39, ptr %pNew, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.end37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then11
  %37 = load ptr, ptr %pNew, align 8
  store ptr %37, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then5, %if.then2, %if.then
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
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
