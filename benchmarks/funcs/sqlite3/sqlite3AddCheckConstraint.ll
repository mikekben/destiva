; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsReadonly(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddCheckConstraint(ptr noundef %pParse, ptr noundef %pCheckExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pCheckExpr.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pCheckExpr, ptr %pCheckExpr.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %pNewTable, align 8
  store ptr %1, ptr %pTab, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pTab, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 51
  %6 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.else, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 35
  %iDb = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  %10 = load i8, ptr %iDb, align 4
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds nuw %struct.Db, ptr %8, i64 %idxprom
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %11 = load ptr, ptr %pBt, align 8
  %call = call i32 @sqlite3BtreeIsReadonly(ptr noundef %11)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pTab, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pCheck, align 8
  %15 = load ptr, ptr %pCheckExpr.addr, align 8
  %call5 = call ptr @sqlite3ExprListAppend(ptr noundef %12, ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %pTab, align 8
  %pCheck6 = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 6
  store ptr %call5, ptr %pCheck6, align 8
  %17 = load ptr, ptr %pParse.addr, align 8
  %constraintName = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 25
  %n = getelementptr inbounds nuw %struct.Token, ptr %constraintName, i32 0, i32 1
  %18 = load i32, ptr %n, align 8
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pTab, align 8
  %pCheck9 = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %pCheck9, align 8
  %22 = load ptr, ptr %pParse.addr, align 8
  %constraintName10 = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 25
  call void @sqlite3ExprListSetName(ptr noundef %19, ptr noundef %21, ptr noundef %constraintName10, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %23 = load ptr, ptr %pParse.addr, align 8
  %db11 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db11, align 8
  %25 = load ptr, ptr %pCheckExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %24, ptr noundef %25)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetName(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
