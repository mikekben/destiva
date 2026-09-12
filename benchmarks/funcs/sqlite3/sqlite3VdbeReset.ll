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

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeReset(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3VdbeHalt(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %pc, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %call2 = call i32 @sqlite3VdbeTransferError(ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8
  %runOnlyOnce = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 35
  %bf.load = load i16, ptr %runOnlyOnce, align 1
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %p.addr, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 35
  %bf.load4 = load i16, ptr %expired, align 1
  %bf.clear5 = and i16 %bf.load4, -4
  %bf.set = or i16 %bf.clear5, 1
  store i16 %bf.set, ptr %expired, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end17

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %rc, align 8
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8
  %expired7 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 35
  %bf.load8 = load i16, ptr %expired7, align 1
  %bf.clear9 = and i16 %bf.load8, 3
  %bf.cast10 = zext i16 %bf.clear9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %rc13 = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 11
  %13 = load i32, ptr %rc13, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 28
  %15 = load ptr, ptr %zErrMsg, align 8
  %tobool14 = icmp ne ptr %15, null
  %16 = zext i1 %tobool14 to i64
  %cond = select i1 %tobool14, ptr @.str.20, ptr null
  %17 = load ptr, ptr %p.addr, align 8
  %zErrMsg15 = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 28
  %18 = load ptr, ptr %zErrMsg15, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %11, i32 noundef %13, ptr noundef %cond, ptr noundef %18)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %zErrMsg18 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 28
  %21 = load ptr, ptr %zErrMsg18, align 8
  call void @sqlite3DbFree(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %p.addr, align 8
  %zErrMsg19 = getelementptr inbounds nuw %struct.Vdbe, ptr %22, i32 0, i32 28
  store ptr null, ptr %zErrMsg19, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %pResultSet = getelementptr inbounds nuw %struct.Vdbe, ptr %23, i32 0, i32 27
  store ptr null, ptr %pResultSet, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 6
  store i32 1224384374, ptr %magic, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %rc20 = getelementptr inbounds nuw %struct.Vdbe, ptr %25, i32 0, i32 11
  %26 = load i32, ptr %rc20, align 8
  %27 = load ptr, ptr %db, align 8
  %errMask = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 13
  %28 = load i32, ptr %errMask, align 4
  %and = and i32 %26, %28
  ret i32 %and
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeHalt(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeTransferError(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
