; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_step(ptr noundef %pStmt) #0 {
entry:
  %retval = alloca i32, align 4
  %pStmt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %v = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %db = alloca ptr, align 8
  %savedPc = alloca i32, align 4
  %zErr = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %v, align 8
  store i32 0, ptr %cnt, align 4
  %1 = load ptr, ptr %v, align 8
  %call = call i32 @vdbeSafetyNotNull(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @sqlite3MisuseError(i32 noundef 82360)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %v, align 8
  %db2 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %5)
  %6 = load ptr, ptr %v, align 8
  %doingRerun = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 35
  %bf.load = load i16, ptr %doingRerun, align 1
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr %doingRerun, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %7 = load ptr, ptr %v, align 8
  %call3 = call i32 @sqlite3Step(ptr noundef %7)
  store i32 %call3, ptr %rc, align 4
  %cmp = icmp eq i32 %call3, 17
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %cnt, align 4
  %cmp4 = icmp slt i32 %8, 50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %v, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 10
  %11 = load i32, ptr %pc, align 4
  store i32 %11, ptr %savedPc, align 4
  %12 = load ptr, ptr %v, align 8
  %call5 = call i32 @sqlite3Reprepare(ptr noundef %12)
  store i32 %call5, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %while.body
  %14 = load ptr, ptr %db, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 59
  %15 = load ptr, ptr %pErr, align 8
  %call8 = call ptr @sqlite3_value_text(ptr noundef %15)
  store ptr %call8, ptr %zErr, align 8
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %v, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 28
  %18 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 19
  %20 = load i8, ptr %mallocFailed, align 1
  %tobool9 = icmp ne i8 %20, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then7
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %zErr, align 8
  %call11 = call ptr @sqlite3DbStrDup(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %v, align 8
  %zErrMsg12 = getelementptr inbounds nuw %struct.Vdbe, ptr %23, i32 0, i32 28
  store ptr %call11, ptr %zErrMsg12, align 8
  %24 = load ptr, ptr %db, align 8
  %25 = load i32, ptr %rc, align 4
  %call13 = call i32 @sqlite3ApiExit(ptr noundef %24, i32 noundef %25)
  store i32 %call13, ptr %rc, align 4
  %26 = load ptr, ptr %v, align 8
  %rc14 = getelementptr inbounds nuw %struct.Vdbe, ptr %26, i32 0, i32 11
  store i32 %call13, ptr %rc14, align 8
  br label %if.end17

if.else:                                          ; preds = %if.then7
  %27 = load ptr, ptr %v, align 8
  %zErrMsg15 = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 28
  store ptr null, ptr %zErrMsg15, align 8
  store i32 7, ptr %rc, align 4
  %28 = load ptr, ptr %v, align 8
  %rc16 = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 11
  store i32 7, ptr %rc16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  br label %while.end

if.end18:                                         ; preds = %while.body
  %29 = load ptr, ptr %pStmt.addr, align 8
  %call19 = call i32 @sqlite3_reset(ptr noundef %29)
  %30 = load i32, ptr %savedPc, align 4
  %cmp20 = icmp sge i32 %30, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  %31 = load ptr, ptr %v, align 8
  %doingRerun22 = getelementptr inbounds nuw %struct.Vdbe, ptr %31, i32 0, i32 35
  %bf.load23 = load i16, ptr %doingRerun22, align 1
  %bf.clear24 = and i16 %bf.load23, -17
  %bf.set25 = or i16 %bf.clear24, 16
  store i16 %bf.set25, ptr %doingRerun22, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end17, %land.end
  %32 = load ptr, ptr %db, align 8
  %mutex27 = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %mutex27, align 8
  call void @sqlite3_mutex_leave(ptr noundef %33)
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSafetyNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Step(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Reprepare(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

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
