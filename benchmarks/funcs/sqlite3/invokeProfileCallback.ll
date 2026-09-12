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
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
define hidden void @invokeProfileCallback(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iNow = alloca i64, align 8
  %iElapse = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs, align 8
  %call = call i32 @sqlite3OsCurrentTimeInt64(ptr noundef %1, ptr noundef %iNow)
  %2 = load i64, ptr %iNow, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %startTime = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 30
  %4 = load i64, ptr %startTime, align 8
  %sub = sub nsw i64 %2, %4
  %mul = mul nsw i64 %sub, 1000000
  store i64 %mul, ptr %iElapse, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %xProfile = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 45
  %6 = load ptr, ptr %xProfile, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %db.addr, align 8
  %xProfile1 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 45
  %8 = load ptr, ptr %xProfile1, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %pProfileArg = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 46
  %10 = load ptr, ptr %pProfileArg, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 41
  %12 = load ptr, ptr %zSql, align 8
  %13 = load i64, ptr %iElapse, align 8
  call void %8(ptr noundef %10, ptr noundef %12, i64 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %db.addr, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 26
  %15 = load i8, ptr %mTrace, align 8
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %16 = load ptr, ptr %db.addr, align 8
  %xTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 43
  %17 = load ptr, ptr %xTrace, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %pTraceArg = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 44
  %19 = load ptr, ptr %pTraceArg, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %call4 = call i32 %17(i32 noundef 2, ptr noundef %19, ptr noundef %20, ptr noundef %iElapse)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %21 = load ptr, ptr %p.addr, align 8
  %startTime6 = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 30
  store i64 0, ptr %startTime6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsCurrentTimeInt64(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
