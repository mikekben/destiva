; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3StatType = type { [10 x i64], [10 x i64] }

@statMutex = external hidden constant [10 x i8], align 1
@sqlite3Stat = external hidden global %struct.sqlite3StatType, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_status64(i32 noundef %op, ptr noundef %pCurrent, ptr noundef %pHighwater, i32 noundef %resetFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %pCurrent.addr = alloca ptr, align 8
  %pHighwater.addr = alloca ptr, align 8
  %resetFlag.addr = alloca i32, align 4
  %pMutex = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pCurrent, ptr %pCurrent.addr, align 8
  store ptr %pHighwater, ptr %pHighwater.addr, align 8
  store i32 %resetFlag, ptr %resetFlag.addr, align 4
  %0 = load i32, ptr %op.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %op.addr, align 4
  %cmp1 = icmp sge i32 %1, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @sqlite3MisuseError(i32 noundef 20837)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %op.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr @statMutex, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call2 = call ptr @sqlite3Pcache1Mutex()
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call3 = call ptr @sqlite3MallocMutex()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  store ptr %cond, ptr %pMutex, align 8
  %4 = load ptr, ptr %pMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %4)
  %5 = load i32, ptr %op.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10 x i64], ptr @sqlite3Stat, i64 0, i64 %idxprom4
  %6 = load i64, ptr %arrayidx5, align 8
  %7 = load ptr, ptr %pCurrent.addr, align 8
  store i64 %6, ptr %7, align 8
  %8 = load i32, ptr %op.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom6
  %9 = load i64, ptr %arrayidx7, align 8
  %10 = load ptr, ptr %pHighwater.addr, align 8
  store i64 %9, ptr %10, align 8
  %11 = load i32, ptr %resetFlag.addr, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %cond.end
  %12 = load i32, ptr %op.addr, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [10 x i64], ptr @sqlite3Stat, i64 0, i64 %idxprom10
  %13 = load i64, ptr %arrayidx11, align 8
  %14 = load i32, ptr %op.addr, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom12
  store i64 %13, ptr %arrayidx13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %cond.end
  %15 = load ptr, ptr %pMutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %15)
  %16 = load ptr, ptr %pMutex, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Pcache1Mutex() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocMutex() #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
