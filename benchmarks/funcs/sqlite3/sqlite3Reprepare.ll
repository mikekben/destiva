; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Reprepare(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %db = alloca ptr, align 8
  %prepFlags = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3_sql(ptr noundef %0)
  store ptr %call, ptr %zSql, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %call1 = call ptr @sqlite3VdbeDb(ptr noundef %1)
  store ptr %call1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %call2 = call zeroext i8 @sqlite3VdbePrepareFlags(ptr noundef %2)
  store i8 %call2, ptr %prepFlags, align 1
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %zSql, align 8
  %5 = load i8, ptr %prepFlags, align 1
  %conv = zext i8 %5 to i32
  %6 = load ptr, ptr %p.addr, align 8
  %call3 = call i32 @sqlite3LockAndPrepare(ptr noundef %3, ptr noundef %4, i32 noundef -1, i32 noundef %conv, ptr noundef %6, ptr noundef %pNew, ptr noundef null)
  store i32 %call3, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 7
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  br label %if.end6

if.end6:                                          ; preds = %if.else
  %11 = load ptr, ptr %pNew, align 8
  %12 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeSwap(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %pNew, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %call7 = call i32 @sqlite3TransferBindings(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %pNew, align 8
  call void @sqlite3VdbeResetStepResult(ptr noundef %15)
  %16 = load ptr, ptr %pNew, align 8
  %call8 = call i32 @sqlite3VdbeFinalize(ptr noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.end
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TransferBindings(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_sql(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3LockAndPrepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeDb(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3VdbePrepareFlags(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSwap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResetStepResult(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
