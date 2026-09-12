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
define dso_local i32 @sqlite3_clear_bindings(ptr noundef %pStmt) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pStmt.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db, align 8
  %mutex1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex1, align 8
  store ptr %3, ptr %mutex, align 8
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %p, align 8
  %nVar = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 4
  %7 = load i16, ptr %nVar, align 8
  %conv = sext i16 %7 to i32
  %cmp = icmp slt i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 22
  %9 = load ptr, ptr %aVar, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %9, i64 %idxprom
  call void @sqlite3VdbeMemRelease(ptr noundef %arrayidx)
  %11 = load ptr, ptr %p, align 8
  %aVar3 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 22
  %12 = load ptr, ptr %aVar3, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds %struct.sqlite3_value, ptr %12, i64 %idxprom4
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx5, i32 0, i32 1
  store i16 1, ptr %flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %p, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 46
  %16 = load i32, ptr %expmask, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %17 = load ptr, ptr %p, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 35
  %bf.load = load i16, ptr %expired, align 1
  %bf.clear = and i16 %bf.load, -4
  %bf.set = or i16 %bf.clear, 1
  store i16 %bf.set, ptr %expired, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %18 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %18)
  %19 = load i32, ptr %rc, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

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
