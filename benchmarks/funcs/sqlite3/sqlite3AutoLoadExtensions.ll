; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_api_routines = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3AutoExtList = type { i32, ptr }

@sqlite3Apis = external hidden constant %struct.sqlite3_api_routines, align 8
@sqlite3Autoext = external hidden global { i32, [4 x i8], ptr }, align 8
@.str.1075 = external hidden unnamed_addr constant [39 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AutoLoadExtensions(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %go = alloca i32, align 4
  %rc = alloca i32, align 4
  %xInit = alloca ptr, align 8
  %zErrmsg = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %pThunk = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 1, ptr %go, align 4
  %0 = load i32, ptr @sqlite3Autoext, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %go, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call, ptr %mutex, align 8
  store ptr @sqlite3Apis, ptr %pThunk, align 8
  %2 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr @sqlite3Autoext, align 8
  %cmp1 = icmp uge i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  store ptr null, ptr %xInit, align 8
  store i32 0, ptr %go, align 4
  br label %if.end3

if.else:                                          ; preds = %for.body
  %5 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %xInit, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %8)
  store ptr null, ptr %zErrmsg, align 8
  %9 = load ptr, ptr %xInit, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %10 = load ptr, ptr %xInit, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pThunk, align 8
  %call5 = call i32 %10(ptr noundef %11, ptr noundef %zErrmsg, ptr noundef %12)
  store i32 %call5, ptr %rc, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load i32, ptr %rc, align 4
  %15 = load ptr, ptr %zErrmsg, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %13, i32 noundef %14, ptr noundef @.str.1075, ptr noundef %15)
  store i32 0, ptr %go, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.end3
  %16 = load ptr, ptr %zErrmsg, align 8
  call void @sqlite3_free(ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %17 = load i32, ptr %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
