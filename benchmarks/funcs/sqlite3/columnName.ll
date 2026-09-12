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
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text16(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_column_count(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @columnName(ptr noundef %pStmt, i32 noundef %N, i32 noundef %useUtf16, i32 noundef %useType) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %useUtf16.addr = alloca i32, align 4
  %useType.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %useUtf16, ptr %useUtf16.addr, align 4
  store i32 %useType, ptr %useType.addr, align 4
  store ptr null, ptr %ret, align 8
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db1, align 8
  store ptr %2, ptr %db, align 8
  %3 = load ptr, ptr %pStmt.addr, align 8
  %call = call i32 @sqlite3_column_count(ptr noundef %3)
  store i32 %call, ptr %n, align 4
  %4 = load i32, ptr %N.addr, align 4
  %5 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr %N.addr, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr %useType.addr, align 4
  %8 = load i32, ptr %n, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, ptr %N.addr, align 4
  %add = add nsw i32 %9, %mul
  store i32 %add, ptr %N.addr, align 4
  %10 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %11)
  %12 = load i32, ptr %useUtf16.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %13 = load ptr, ptr %p, align 8
  %aColName = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 26
  %14 = load ptr, ptr %aColName, align 8
  %15 = load i32, ptr %N.addr, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %14, i64 %idxprom
  %call4 = call ptr @sqlite3_value_text16(ptr noundef %arrayidx)
  store ptr %call4, ptr %ret, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %p, align 8
  %aColName5 = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 26
  %17 = load ptr, ptr %aColName5, align 8
  %18 = load i32, ptr %N.addr, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.sqlite3_value, ptr %17, i64 %idxprom6
  %call8 = call ptr @sqlite3_value_text(ptr noundef %arrayidx7)
  store ptr %call8, ptr %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %19 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 19
  %20 = load i8, ptr %mallocFailed, align 1
  %tobool9 = icmp ne i8 %20, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %21 = load ptr, ptr %db, align 8
  call void @sqlite3OomClear(ptr noundef %21)
  store ptr null, ptr %ret, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %22 = load ptr, ptr %db, align 8
  %mutex12 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %mutex12, align 8
  call void @sqlite3_mutex_leave(ptr noundef %23)
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %land.lhs.true, %entry
  %24 = load ptr, ptr %ret, align 8
  ret ptr %24
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomClear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
