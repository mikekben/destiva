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
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSetColName(ptr noundef %p, i32 noundef %idx, i32 noundef %var, ptr noundef %zName, ptr noundef %xDel) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %var.addr = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %xDel.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pColName = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  store i32 %var, ptr %var.addr, align 4
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %xDel, ptr %xDel.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 19
  %2 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %aColName = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 26
  %4 = load ptr, ptr %aColName, align 8
  %5 = load i32, ptr %idx.addr, align 4
  %6 = load i32, ptr %var.addr, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %nResColumn = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 31
  %8 = load i16, ptr %nResColumn, align 8
  %conv = zext i16 %8 to i32
  %mul = mul nsw i32 %6, %conv
  %add = add nsw i32 %5, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %pColName, align 8
  %9 = load ptr, ptr %pColName, align 8
  %10 = load ptr, ptr %zName.addr, align 8
  %11 = load ptr, ptr %xDel.addr, align 8
  %call = call i32 @sqlite3VdbeMemSetStr(ptr noundef %9, ptr noundef %10, i32 noundef -1, i8 noundef zeroext 1, ptr noundef %11)
  store i32 %call, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
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
