; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.952 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WindowAlloc(ptr noundef %pParse, i32 noundef %eType, i32 noundef %eStart, ptr noundef %pStart, i32 noundef %eEnd, ptr noundef %pEnd, i8 noundef zeroext %eExclude) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %eType.addr = alloca i32, align 4
  %eStart.addr = alloca i32, align 4
  %pStart.addr = alloca ptr, align 8
  %eEnd.addr = alloca i32, align 4
  %pEnd.addr = alloca ptr, align 8
  %eExclude.addr = alloca i8, align 1
  %pWin = alloca ptr, align 8
  %bImplicitFrame = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %eType, ptr %eType.addr, align 4
  store i32 %eStart, ptr %eStart.addr, align 4
  store ptr %pStart, ptr %pStart.addr, align 8
  store i32 %eEnd, ptr %eEnd.addr, align 4
  store ptr %pEnd, ptr %pEnd.addr, align 8
  store i8 %eExclude, ptr %eExclude.addr, align 1
  store ptr null, ptr %pWin, align 8
  store i32 0, ptr %bImplicitFrame, align 4
  %0 = load i32, ptr %eType.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %bImplicitFrame, align 4
  store i32 89, ptr %eType.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %eStart.addr, align 4
  %cmp1 = icmp eq i32 %1, 85
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %eEnd.addr, align 4
  %cmp2 = icmp eq i32 %2, 88
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %3 = load i32, ptr %eStart.addr, align 4
  %cmp3 = icmp eq i32 %3, 86
  br i1 %cmp3, label %land.lhs.true4, label %if.end9

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %eEnd.addr, align 4
  %cmp5 = icmp eq i32 %4, 88
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true4
  %5 = load i32, ptr %eEnd.addr, align 4
  %cmp7 = icmp eq i32 %5, 85
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %land.lhs.true4, %land.lhs.true
  %6 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %6, ptr noundef @.str.952)
  br label %windowAllocErr

if.end9:                                          ; preds = %lor.lhs.false6, %lor.lhs.false
  %7 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %8, i64 noundef 144)
  store ptr %call, ptr %pWin, align 8
  %9 = load ptr, ptr %pWin, align 8
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %windowAllocErr

if.end12:                                         ; preds = %if.end9
  %10 = load i32, ptr %eType.addr, align 4
  %conv = trunc i32 %10 to i8
  %11 = load ptr, ptr %pWin, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 4
  store i8 %conv, ptr %eFrmType, align 8
  %12 = load i32, ptr %eStart.addr, align 4
  %conv13 = trunc i32 %12 to i8
  %13 = load ptr, ptr %pWin, align 8
  %eStart14 = getelementptr inbounds nuw %struct.Window, ptr %13, i32 0, i32 5
  store i8 %conv13, ptr %eStart14, align 1
  %14 = load i32, ptr %eEnd.addr, align 4
  %conv15 = trunc i32 %14 to i8
  %15 = load ptr, ptr %pWin, align 8
  %eEnd16 = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 6
  store i8 %conv15, ptr %eEnd16, align 2
  %16 = load i8, ptr %eExclude.addr, align 1
  %conv17 = zext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %land.lhs.true20, label %if.end26

land.lhs.true20:                                  ; preds = %if.end12
  %17 = load ptr, ptr %pParse.addr, align 8
  %db21 = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %db21, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 15
  %19 = load i16, ptr %dbOptFlags, align 4
  %conv22 = zext i16 %19 to i32
  %and = and i32 %conv22, 2
  %cmp23 = icmp ne i32 %and, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true20
  store i8 66, ptr %eExclude.addr, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true20, %if.end12
  %20 = load i8, ptr %eExclude.addr, align 1
  %21 = load ptr, ptr %pWin, align 8
  %eExclude27 = getelementptr inbounds nuw %struct.Window, ptr %21, i32 0, i32 8
  store i8 %20, ptr %eExclude27, align 4
  %22 = load i32, ptr %bImplicitFrame, align 4
  %conv28 = trunc i32 %22 to i8
  %23 = load ptr, ptr %pWin, align 8
  %bImplicitFrame29 = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 7
  store i8 %conv28, ptr %bImplicitFrame29, align 1
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pEnd.addr, align 8
  %call30 = call ptr @sqlite3WindowOffsetExpr(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %pWin, align 8
  %pEnd31 = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 10
  store ptr %call30, ptr %pEnd31, align 8
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %pStart.addr, align 8
  %call32 = call ptr @sqlite3WindowOffsetExpr(ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %pWin, align 8
  %pStart33 = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 9
  store ptr %call32, ptr %pStart33, align 8
  %30 = load ptr, ptr %pWin, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

windowAllocErr:                                   ; preds = %if.then11, %if.then8
  %31 = load ptr, ptr %pParse.addr, align 8
  %db34 = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %db34, align 8
  %33 = load ptr, ptr %pEnd.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %pParse.addr, align 8
  %db35 = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %db35, align 8
  %36 = load ptr, ptr %pStart.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %35, ptr noundef %36)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %windowAllocErr, %if.end26
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WindowOffsetExpr(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
