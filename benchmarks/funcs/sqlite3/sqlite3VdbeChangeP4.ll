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
define hidden void @sqlite3VdbeChangeP4(ptr noundef %p, i32 noundef %addr, ptr noundef %zP4, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %zP4.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %addr, ptr %addr.addr, align 4
  store ptr %zP4, ptr %zP4.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %n.addr, align 4
  %cmp = icmp ne i32 %4, -12
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %db, align 8
  %6 = load i32, ptr %n.addr, align 4
  %7 = load ptr, ptr %zP4.addr, align 8
  call void @freeP4(ptr noundef %5, i32 noundef %6, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end27

if.end3:                                          ; preds = %entry
  %8 = load i32, ptr %addr.addr, align 4
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 24
  %10 = load i32, ptr %nOp, align 8
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %addr.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 23
  %12 = load ptr, ptr %aOp, align 8
  %13 = load i32, ptr %addr.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %12, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  %14 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp sge i32 %14, 0
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %15 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %p4type, align 1
  %conv = sext i8 %16 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  %17 = load ptr, ptr %p.addr, align 8
  %18 = load ptr, ptr %pOp, align 8
  %19 = load ptr, ptr %zP4.addr, align 8
  %20 = load i32, ptr %n.addr, align 4
  call void @vdbeChangeP4Full(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20)
  br label %if.end27

if.end10:                                         ; preds = %lor.lhs.false
  %21 = load i32, ptr %n.addr, align 4
  %cmp11 = icmp eq i32 %21, -3
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %22 = load ptr, ptr %zP4.addr, align 8
  %23 = ptrtoint ptr %22 to i64
  %conv14 = trunc i64 %23 to i32
  %24 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %24, i32 0, i32 6
  store i32 %conv14, ptr %p4, align 8
  %25 = load ptr, ptr %pOp, align 8
  %p4type15 = getelementptr inbounds nuw %struct.VdbeOp, ptr %25, i32 0, i32 1
  store i8 -3, ptr %p4type15, align 1
  br label %if.end27

if.else:                                          ; preds = %if.end10
  %26 = load ptr, ptr %zP4.addr, align 8
  %cmp16 = icmp ne ptr %26, null
  br i1 %cmp16, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.else
  %27 = load ptr, ptr %zP4.addr, align 8
  %28 = load ptr, ptr %pOp, align 8
  %p419 = getelementptr inbounds nuw %struct.VdbeOp, ptr %28, i32 0, i32 6
  store ptr %27, ptr %p419, align 8
  %29 = load i32, ptr %n.addr, align 4
  %conv20 = trunc i32 %29 to i8
  %30 = load ptr, ptr %pOp, align 8
  %p4type21 = getelementptr inbounds nuw %struct.VdbeOp, ptr %30, i32 0, i32 1
  store i8 %conv20, ptr %p4type21, align 1
  %31 = load i32, ptr %n.addr, align 4
  %cmp22 = icmp eq i32 %31, -12
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then18
  %32 = load ptr, ptr %zP4.addr, align 8
  call void @sqlite3VtabLock(ptr noundef %32)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then13, %if.then9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @freeP4(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeChangeP4Full(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
