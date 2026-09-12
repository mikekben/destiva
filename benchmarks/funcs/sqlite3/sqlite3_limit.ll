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

@aHardLimit = external hidden constant [12 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_limit(ptr noundef %db, i32 noundef %limitId, i32 noundef %newLimit) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %limitId.addr = alloca i32, align 4
  %newLimit.addr = alloca i32, align 4
  %oldLimit = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %limitId, ptr %limitId.addr, align 4
  store i32 %newLimit, ptr %newLimit.addr, align 4
  %0 = load i32, ptr %limitId.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %limitId.addr, align 4
  %cmp1 = icmp sge i32 %1, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %db.addr, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 33
  %3 = load i32, ptr %limitId.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %oldLimit, align 4
  %5 = load i32, ptr %newLimit.addr, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %newLimit.addr, align 4
  %7 = load i32, ptr %limitId.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [12 x i32], ptr @aHardLimit, i64 0, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %6, %8
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then3
  %9 = load i32, ptr %limitId.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr @aHardLimit, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4
  store i32 %10, ptr %newLimit.addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then3
  %11 = load i32, ptr %newLimit.addr, align 4
  %12 = load ptr, ptr %db.addr, align 8
  %aLimit11 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 33
  %13 = load i32, ptr %limitId.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [12 x i32], ptr %aLimit11, i64 0, i64 %idxprom12
  store i32 %11, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end
  %14 = load i32, ptr %oldLimit, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
