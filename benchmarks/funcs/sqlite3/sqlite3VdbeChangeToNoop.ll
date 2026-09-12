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
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @freeP4(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef %p, i32 noundef %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %addr, ptr %addr.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 19
  %2 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 23
  %4 = load ptr, ptr %aOp, align 8
  %5 = load i32, ptr %addr.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db1, align 8
  %8 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %p4type, align 1
  %conv = sext i8 %9 to i32
  %10 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %p4, align 8
  call void @freeP4(ptr noundef %7, i32 noundef %conv, ptr noundef %11)
  %12 = load ptr, ptr %pOp, align 8
  %p4type2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %12, i32 0, i32 1
  store i8 0, ptr %p4type2, align 1
  %13 = load ptr, ptr %pOp, align 8
  %p43 = getelementptr inbounds nuw %struct.VdbeOp, ptr %13, i32 0, i32 6
  store ptr null, ptr %p43, align 8
  %14 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %14, i32 0, i32 0
  store i8 -86, ptr %opcode, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
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
