; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SystemError(ptr noundef %db, i32 noundef %rc) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc.addr = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %rc, ptr %rc.addr, align 4
  %0 = load i32, ptr %rc.addr, align 4
  %cmp = icmp eq i32 %0, 3082
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %rc.addr, align 4
  %and = and i32 %1, 255
  store i32 %and, ptr %rc.addr, align 4
  %2 = load i32, ptr %rc.addr, align 4
  %cmp1 = icmp eq i32 %2, 14
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, ptr %rc.addr, align 4
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load ptr, ptr %db.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVfs, align 8
  %call = call i32 @sqlite3OsGetLastError(ptr noundef %5)
  %6 = load ptr, ptr %db.addr, align 8
  %iSysErrno = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 14
  store i32 %call, ptr %iSysErrno, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsGetLastError(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
