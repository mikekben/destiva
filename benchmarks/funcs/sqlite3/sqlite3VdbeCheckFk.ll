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

@.str.106 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeCheckFk(ptr noundef %p, i32 noundef %deferred) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %deferred.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %deferred, ptr %deferred.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load i32, ptr %deferred.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %db, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 80
  %4 = load i64, ptr %nDeferredCons, align 8
  %5 = load ptr, ptr %db, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 81
  %6 = load i64, ptr %nDeferredImmCons, align 8
  %add = add nsw i64 %4, %6
  %cmp = icmp sgt i64 %add, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %7 = load i32, ptr %deferred.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %p.addr, align 8
  %nFkConstraint = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 16
  %9 = load i64, ptr %nFkConstraint, align 8
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3, %land.lhs.true
  %10 = load ptr, ptr %p.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 11
  store i32 787, ptr %rc, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %errorAction = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 32
  store i8 2, ptr %errorAction, align 2
  %12 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %12, ptr noundef @.str.106)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeError(ptr noundef, ptr noundef, ...) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
