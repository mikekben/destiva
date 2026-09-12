; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Incrblob = type { i32, i32, i16, ptr, ptr, ptr, ptr, ptr }
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
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_finalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_blob_close(ptr noundef %pBlob) #0 {
entry:
  %pBlob.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  store ptr %pBlob, ptr %pBlob.addr, align 8
  %0 = load ptr, ptr %pBlob.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %pStmt1 = getelementptr inbounds nuw %struct.Incrblob, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pStmt1, align 8
  store ptr %3, ptr %pStmt, align 8
  %4 = load ptr, ptr %p, align 8
  %db2 = getelementptr inbounds nuw %struct.Incrblob, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %db2, align 8
  store ptr %5, ptr %db, align 8
  %6 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %p, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %db, align 8
  %mutex3 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %mutex3, align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  %12 = load ptr, ptr %pStmt, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
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
