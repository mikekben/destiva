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
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @columnMem(ptr noundef %pStmt, i32 noundef %i) #0 {
entry:
  %retval = alloca ptr, align 8
  %pStmt.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pVm = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %pVm, align 8
  %1 = load ptr, ptr %pVm, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @columnNullValue()
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVm, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %4)
  %5 = load ptr, ptr %pVm, align 8
  %pResultSet = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %pResultSet, align 8
  %cmp1 = icmp ne ptr %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %i.addr, align 4
  %8 = load ptr, ptr %pVm, align 8
  %nResColumn = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 31
  %9 = load i16, ptr %nResColumn, align 8
  %conv = zext i16 %9 to i32
  %cmp2 = icmp slt i32 %7, %conv
  br i1 %cmp2, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr %i.addr, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true4
  %11 = load ptr, ptr %pVm, align 8
  %pResultSet8 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 27
  %12 = load ptr, ptr %pResultSet8, align 8
  %13 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %12, i64 %idxprom
  store ptr %arrayidx, ptr %pOut, align 8
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %14 = load ptr, ptr %pVm, align 8
  %db9 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db9, align 8
  call void @sqlite3Error(ptr noundef %15, i32 noundef 25)
  %call10 = call ptr @columnNullValue()
  store ptr %call10, ptr %pOut, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %16 = load ptr, ptr %pOut, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nounwind uwtable
declare hidden ptr @columnNullValue() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
