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
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_zeroblob(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_bind_zeroblob64(ptr noundef %pStmt, i32 noundef %i, i64 noundef %n) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %p, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db1, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %7 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp ugt i64 %4, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 18, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pStmt.addr, align 8
  %9 = load i32, ptr %i.addr, align 4
  %10 = load i64, ptr %n.addr, align 8
  %conv3 = trunc i64 %10 to i32
  %call = call i32 @sqlite3_bind_zeroblob(ptr noundef %8, i32 noundef %9, i32 noundef %conv3)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %p, align 8
  %db4 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db4, align 8
  %13 = load i32, ptr %rc, align 4
  %call5 = call i32 @sqlite3ApiExit(ptr noundef %12, i32 noundef %13)
  store i32 %call5, ptr %rc, align 4
  %14 = load ptr, ptr %p, align 8
  %db6 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db6, align 8
  %mutex7 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %mutex7, align 8
  call void @sqlite3_mutex_leave(ptr noundef %16)
  %17 = load i32, ptr %rc, align 4
  ret i32 %17
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
