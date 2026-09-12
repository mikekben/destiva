; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.680 = external hidden unnamed_addr constant [45 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddDefaultValue(ptr noundef %pParse, ptr noundef %pExpr, ptr noundef %zStart, ptr noundef %zEnd) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %db = alloca ptr, align 8
  %x = alloca %struct.Expr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 58
  %3 = load ptr, ptr %pNewTable, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %aCol, align 8
  %7 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 11
  %8 = load i16, ptr %nCol, align 2
  %conv = sext i16 %8 to i32
  %sub = sub nsw i32 %conv, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %9 = load ptr, ptr %pExpr.addr, align 8
  %10 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %11 = load i8, ptr %busy, align 1
  %call = call i32 @sqlite3ExprIsConstantOrFunction(ptr noundef %9, i8 noundef zeroext %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.680, ptr noundef %14)
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %pCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pDflt, align 8
  call void @sqlite3ExprDelete(ptr noundef %15, ptr noundef %17)
  call void @llvm.memset.p0.i64(ptr align 8 %x, i8 0, i64 72, i1 false)
  %op = getelementptr inbounds nuw %struct.Expr, ptr %x, i32 0, i32 0
  store i8 -80, ptr %op, align 8
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %zStart.addr, align 8
  %20 = load ptr, ptr %zEnd.addr, align 8
  %call3 = call ptr @sqlite3DbSpanDup(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %u = getelementptr inbounds nuw %struct.Expr, ptr %x, i32 0, i32 3
  store ptr %call3, ptr %u, align 8
  %21 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %x, i32 0, i32 4
  store ptr %21, ptr %pLeft, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %x, i32 0, i32 2
  store i32 4096, ptr %flags, align 4
  %22 = load ptr, ptr %db, align 8
  %call4 = call ptr @sqlite3ExprDup(ptr noundef %22, ptr noundef %x, i32 noundef 1)
  %23 = load ptr, ptr %pCol, align 8
  %pDflt5 = getelementptr inbounds nuw %struct.Column, ptr %23, i32 0, i32 1
  store ptr %call4, ptr %pDflt5, align 8
  %24 = load ptr, ptr %db, align 8
  %u6 = getelementptr inbounds nuw %struct.Expr, ptr %x, i32 0, i32 3
  %25 = load ptr, ptr %u6, align 8
  call void @sqlite3DbFree(ptr noundef %24, ptr noundef %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %26 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 51
  %27 = load i8, ptr %eParseMode, align 4
  %conv8 = zext i8 %27 to i32
  %cmp9 = icmp sge i32 %conv8, 2
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3RenameExprUnmap(ptr noundef %28, ptr noundef %29)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7
  %30 = load ptr, ptr %db, align 8
  %31 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %30, ptr noundef %31)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantOrFunction(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbSpanDup(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameExprUnmap(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
