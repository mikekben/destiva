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
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.12 = type { i16, i16 }

@.str.660 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveAlias(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveOutOfRangeError(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ResolveOrderGroupBy(ptr noundef %pParse, ptr noundef %pSelect, ptr noundef %pOrderBy, ptr noundef %zType) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %zType.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %db = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %zType, ptr %zType.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pOrderBy.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 51
  %7 = load i8, ptr %eParseMode, align 4
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp sge i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nExpr, align 8
  %10 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 2
  %11 = load i32, ptr %arrayidx, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %zType.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.660, ptr noundef %13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %14 = load ptr, ptr %pSelect.addr, align 8
  %pEList11 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pEList11, align 8
  store ptr %15, ptr %pEList, align 8
  store i32 0, ptr %i, align 4
  %16 = load ptr, ptr %pOrderBy.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr12 = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nExpr12, align 8
  %cmp13 = icmp slt i32 %17, %19
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %20, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %21 = load i16, ptr %iOrderByCol, align 4
  %tobool15 = icmp ne i16 %21, 0
  br i1 %tobool15, label %if.then16, label %if.end29

if.then16:                                        ; preds = %for.body
  %22 = load ptr, ptr %pItem, align 8
  %u17 = getelementptr inbounds nuw %struct.ExprList_item, ptr %22, i32 0, i32 5
  %iOrderByCol18 = getelementptr inbounds nuw %struct.anon.12, ptr %u17, i32 0, i32 0
  %23 = load i16, ptr %iOrderByCol18, align 4
  %conv19 = zext i16 %23 to i32
  %24 = load ptr, ptr %pEList, align 8
  %nExpr20 = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nExpr20, align 8
  %cmp21 = icmp sgt i32 %conv19, %25
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then16
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %zType.addr, align 8
  %28 = load i32, ptr %i, align 4
  %add = add nsw i32 %28, 1
  %29 = load ptr, ptr %pEList, align 8
  %nExpr24 = getelementptr inbounds nuw %struct.ExprList, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %nExpr24, align 8
  call void @resolveOutOfRangeError(ptr noundef %26, ptr noundef %27, i32 noundef %add, i32 noundef %30)
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then16
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pEList, align 8
  %33 = load ptr, ptr %pItem, align 8
  %u26 = getelementptr inbounds nuw %struct.ExprList_item, ptr %33, i32 0, i32 5
  %iOrderByCol27 = getelementptr inbounds nuw %struct.anon.12, ptr %u26, i32 0, i32 0
  %34 = load i16, ptr %iOrderByCol27, align 4
  %conv28 = zext i16 %34 to i32
  %sub = sub nsw i32 %conv28, 1
  %35 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pExpr, align 8
  %37 = load ptr, ptr %zType.addr, align 8
  call void @resolveAlias(ptr noundef %31, ptr noundef %32, i32 noundef %sub, ptr noundef %36, ptr noundef %37, i32 noundef 0)
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  %39 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then23, %if.then9, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
