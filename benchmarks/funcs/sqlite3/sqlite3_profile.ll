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
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_profile(ptr noundef %db, ptr noundef %xProfile, ptr noundef %pArg) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %xProfile.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %xProfile, ptr %xProfile.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %pProfileArg = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 46
  %3 = load ptr, ptr %pProfileArg, align 8
  store ptr %3, ptr %pOld, align 8
  %4 = load ptr, ptr %xProfile.addr, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %xProfile1 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 45
  store ptr %4, ptr %xProfile1, align 8
  %6 = load ptr, ptr %pArg.addr, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %pProfileArg2 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 46
  store ptr %6, ptr %pProfileArg2, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 26
  %9 = load i8, ptr %mTrace, align 8
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 15
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, ptr %mTrace, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %xProfile4 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 45
  %11 = load ptr, ptr %xProfile4, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %db.addr, align 8
  %mTrace5 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 26
  %13 = load i8, ptr %mTrace5, align 8
  %conv6 = zext i8 %13 to i32
  %or = or i32 %conv6, 128
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, ptr %mTrace5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %db.addr, align 8
  %mutex8 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %mutex8, align 8
  call void @sqlite3_mutex_leave(ptr noundef %15)
  %16 = load ptr, ptr %pOld, align 8
  ret ptr %16
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
