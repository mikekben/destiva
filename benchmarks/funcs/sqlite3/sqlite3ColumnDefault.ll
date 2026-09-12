; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeDb(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ColumnDefault(ptr noundef %v, ptr noundef %pTab, i32 noundef %i, i32 noundef %iReg) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %iReg.addr = alloca i32, align 4
  %pValue = alloca ptr, align 8
  %enc = alloca i8, align 1
  %pCol = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %iReg, ptr %iReg.addr, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pSelect, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %pValue, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %call = call ptr @sqlite3VdbeDb(ptr noundef %2)
  %enc1 = getelementptr inbounds nuw %struct.sqlite3, ptr %call, i32 0, i32 16
  %3 = load i8, ptr %enc1, align 2
  store i8 %3, ptr %enc, align 1
  %4 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %aCol, align 8
  %6 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %call2 = call ptr @sqlite3VdbeDb(ptr noundef %7)
  %8 = load ptr, ptr %pCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pDflt, align 8
  %10 = load i8, ptr %enc, align 1
  %11 = load ptr, ptr %pCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %11, i32 0, i32 4
  %12 = load i8, ptr %affinity, align 1
  %call3 = call i32 @sqlite3ValueFromExpr(ptr noundef %call2, ptr noundef %9, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef %pValue)
  %13 = load ptr, ptr %pValue, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr %v.addr, align 8
  %15 = load ptr, ptr %pValue, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %14, ptr noundef %15, i32 noundef -11)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %16 = load ptr, ptr %pTab.addr, align 8
  %aCol7 = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %aCol7, align 8
  %18 = load i32, ptr %i.addr, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.Column, ptr %17, i64 %idxprom8
  %affinity10 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx9, i32 0, i32 4
  %19 = load i8, ptr %affinity10, align 1
  %conv = sext i8 %19 to i32
  %cmp = icmp eq i32 %conv, 69
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end6
  %20 = load ptr, ptr %v.addr, align 8
  %21 = load i32, ptr %iReg.addr, align 4
  %call13 = call i32 @sqlite3VdbeAddOp1(ptr noundef %20, i32 noundef 84, i32 noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end6
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ValueFromExpr(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
