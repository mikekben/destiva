; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

@.str.792 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.793 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.794 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SrcListAppendFromTerm(ptr noundef %pParse, ptr noundef %p, ptr noundef %pTable, ptr noundef %pDatabase, ptr noundef %pAlias, ptr noundef %pSubquery, ptr noundef %pOn, ptr noundef %pUsing) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %pDatabase.addr = alloca ptr, align 8
  %pAlias.addr = alloca ptr, align 8
  %pSubquery.addr = alloca ptr, align 8
  %pOn.addr = alloca ptr, align 8
  %pUsing.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  store ptr %pDatabase, ptr %pDatabase.addr, align 8
  store ptr %pAlias, ptr %pAlias.addr, align 8
  store ptr %pSubquery, ptr %pSubquery.addr, align 8
  store ptr %pOn, ptr %pOn.addr, align 8
  store ptr %pUsing, ptr %pUsing.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pOn.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %pUsing.addr, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %pOn.addr, align 8
  %tobool4 = icmp ne ptr %6, null
  %7 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, ptr @.str.793, ptr @.str.794
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %5, ptr noundef @.str.792, ptr noundef %cond)
  br label %append_from_error

if.end:                                           ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %10 = load ptr, ptr %pTable.addr, align 8
  %11 = load ptr, ptr %pDatabase.addr, align 8
  %call = call ptr @sqlite3SrcListAppend(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store ptr %call, ptr %p.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %append_from_error

if.end6:                                          ; preds = %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %p.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %nSrc, align 8
  %sub = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 51
  %17 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %17 to i32
  %cmp7 = icmp sge i32 %conv, 2
  br i1 %cmp7, label %land.lhs.true9, label %if.end18

land.lhs.true9:                                   ; preds = %if.end6
  %18 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %zName, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %land.lhs.true9
  %20 = load ptr, ptr %pDatabase.addr, align 8
  %tobool12 = icmp ne ptr %20, null
  br i1 %tobool12, label %land.lhs.true13, label %cond.false

land.lhs.true13:                                  ; preds = %if.then11
  %21 = load ptr, ptr %pDatabase.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %z, align 8
  %tobool14 = icmp ne ptr %22, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true13
  %23 = load ptr, ptr %pDatabase.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true13, %if.then11
  %24 = load ptr, ptr %pTable.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi ptr [ %23, %cond.true ], [ %24, %cond.false ]
  store ptr %cond15, ptr %pToken, align 8
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %pItem, align 8
  %zName16 = getelementptr inbounds nuw %struct.SrcList_item, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %zName16, align 8
  %28 = load ptr, ptr %pToken, align 8
  %call17 = call ptr @sqlite3RenameTokenMap(ptr noundef %25, ptr noundef %27, ptr noundef %28)
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %land.lhs.true9, %if.end6
  %29 = load ptr, ptr %pAlias.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %n, align 8
  %tobool19 = icmp ne i32 %30, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %31 = load ptr, ptr %db, align 8
  %32 = load ptr, ptr %pAlias.addr, align 8
  %call21 = call ptr @sqlite3NameFromToken(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %pItem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %33, i32 0, i32 3
  store ptr %call21, ptr %zAlias, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %34 = load ptr, ptr %pSubquery.addr, align 8
  %35 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 0, i32 5
  store ptr %34, ptr %pSelect, align 8
  %36 = load ptr, ptr %pOn.addr, align 8
  %37 = load ptr, ptr %pItem, align 8
  %pOn23 = getelementptr inbounds nuw %struct.SrcList_item, ptr %37, i32 0, i32 11
  store ptr %36, ptr %pOn23, align 8
  %38 = load ptr, ptr %pUsing.addr, align 8
  %39 = load ptr, ptr %pItem, align 8
  %pUsing24 = getelementptr inbounds nuw %struct.SrcList_item, ptr %39, i32 0, i32 12
  store ptr %38, ptr %pUsing24, align 8
  %40 = load ptr, ptr %p.addr, align 8
  store ptr %40, ptr %retval, align 8
  br label %return

append_from_error:                                ; preds = %if.then5, %if.then
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %pOn.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %41, ptr noundef %42)
  %43 = load ptr, ptr %db, align 8
  %44 = load ptr, ptr %pUsing.addr, align 8
  call void @sqlite3IdListDelete(ptr noundef %43, ptr noundef %44)
  %45 = load ptr, ptr %db, align 8
  %46 = load ptr, ptr %pSubquery.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %45, ptr noundef %46)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %append_from_error, %if.end22
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
