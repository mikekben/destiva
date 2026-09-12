; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.683 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.684 = external hidden unnamed_addr constant [56 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ColumnType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddPrimaryKey(ptr noundef %pParse, ptr noundef %pList, i32 noundef %onError, i32 noundef %autoInc, i32 noundef %sortOrder) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %autoInc.addr = alloca i32, align 4
  %sortOrder.addr = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %i = alloca i32, align 4
  %nTerm = alloca i32, align 4
  %pCExpr = alloca ptr, align 8
  %zCName = alloca ptr, align 8
  %pCExpr62 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store i32 %autoInc, ptr %autoInc.addr, align 4
  store i32 %sortOrder, ptr %sortOrder.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %pNewTable, align 8
  store ptr %1, ptr %pTab, align 8
  store ptr null, ptr %pCol, align 8
  store i32 -1, ptr %iCol, align 4
  %2 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %primary_key_exit

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %tabFlags, align 8
  %and = and i32 %4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %5, ptr noundef @.str.683, ptr noundef %7)
  br label %primary_key_exit

if.end2:                                          ; preds = %if.end
  %8 = load ptr, ptr %pTab, align 8
  %tabFlags3 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %tabFlags3, align 8
  %or = or i32 %9, 4
  store i32 %or, ptr %tabFlags3, align 8
  %10 = load ptr, ptr %pList.addr, align 8
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %11 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 11
  %12 = load i16, ptr %nCol, align 2
  %conv = sext i16 %12 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %iCol, align 4
  %13 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %aCol, align 8
  %15 = load i32, ptr %iCol, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %16 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %16, i32 0, i32 6
  %17 = load i8, ptr %colFlags, align 1
  %conv6 = zext i8 %17 to i32
  %or7 = or i32 %conv6, 1
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %colFlags, align 1
  store i32 1, ptr %nTerm, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end2
  %18 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nExpr, align 8
  store i32 %19, ptr %nTerm, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %if.else
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %nTerm, align 4
  %cmp9 = icmp slt i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom11
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx12, i32 0, i32 0
  %24 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprSkipCollate(ptr noundef %24)
  store ptr %call, ptr %pCExpr, align 8
  %25 = load ptr, ptr %pCExpr, align 8
  call void @sqlite3StringToId(ptr noundef %25)
  %26 = load ptr, ptr %pCExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 0
  %27 = load i8, ptr %op, align 8
  %conv13 = zext i8 %27 to i32
  %cmp14 = icmp eq i32 %conv13, 59
  br i1 %cmp14, label %if.then16, label %if.end39

if.then16:                                        ; preds = %for.body
  %28 = load ptr, ptr %pCExpr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %u, align 8
  store ptr %29, ptr %zCName, align 8
  store i32 0, ptr %iCol, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then16
  %30 = load i32, ptr %iCol, align 4
  %31 = load ptr, ptr %pTab, align 8
  %nCol18 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 11
  %32 = load i16, ptr %nCol18, align 2
  %conv19 = sext i16 %32 to i32
  %cmp20 = icmp slt i32 %30, %conv19
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond17
  %33 = load ptr, ptr %zCName, align 8
  %34 = load ptr, ptr %pTab, align 8
  %aCol23 = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %aCol23, align 8
  %36 = load i32, ptr %iCol, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds %struct.Column, ptr %35, i64 %idxprom24
  %zName26 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx25, i32 0, i32 0
  %37 = load ptr, ptr %zName26, align 8
  %call27 = call i32 @sqlite3StrICmp(ptr noundef %33, ptr noundef %37)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %for.body22
  %38 = load ptr, ptr %pTab, align 8
  %aCol31 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %aCol31, align 8
  %40 = load i32, ptr %iCol, align 4
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds %struct.Column, ptr %39, i64 %idxprom32
  store ptr %arrayidx33, ptr %pCol, align 8
  %41 = load ptr, ptr %pCol, align 8
  %colFlags34 = getelementptr inbounds nuw %struct.Column, ptr %41, i32 0, i32 6
  %42 = load i8, ptr %colFlags34, align 1
  %conv35 = zext i8 %42 to i32
  %or36 = or i32 %conv35, 1
  %conv37 = trunc i32 %or36 to i8
  store i8 %conv37, ptr %colFlags34, align 1
  br label %for.end

if.end38:                                         ; preds = %for.body22
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %43 = load i32, ptr %iCol, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %iCol, align 4
  br label %for.cond17, !llvm.loop !6

for.end:                                          ; preds = %if.then30, %for.cond17
  br label %if.end39

if.end39:                                         ; preds = %for.end, %for.body
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %44 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %44, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end42:                                        ; preds = %for.cond
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %if.then5
  %45 = load i32, ptr %nTerm, align 4
  %cmp44 = icmp eq i32 %45, 1
  br i1 %cmp44, label %land.lhs.true, label %if.else78

land.lhs.true:                                    ; preds = %if.end43
  %46 = load ptr, ptr %pCol, align 8
  %tobool46 = icmp ne ptr %46, null
  br i1 %tobool46, label %land.lhs.true47, label %if.else78

land.lhs.true47:                                  ; preds = %land.lhs.true
  %47 = load ptr, ptr %pCol, align 8
  %call48 = call ptr @sqlite3ColumnType(ptr noundef %47, ptr noundef @.str.3)
  %call49 = call i32 @sqlite3StrICmp(ptr noundef %call48, ptr noundef @.str.29)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.else78

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %48 = load i32, ptr %sortOrder.addr, align 4
  %cmp53 = icmp ne i32 %48, 1
  br i1 %cmp53, label %if.then55, label %if.else78

if.then55:                                        ; preds = %land.lhs.true52
  %49 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %49, i32 0, i32 51
  %50 = load i8, ptr %eParseMode, align 4
  %conv56 = zext i8 %50 to i32
  %cmp57 = icmp sge i32 %conv56, 2
  br i1 %cmp57, label %land.lhs.true59, label %if.end67

land.lhs.true59:                                  ; preds = %if.then55
  %51 = load ptr, ptr %pList.addr, align 8
  %tobool60 = icmp ne ptr %51, null
  br i1 %tobool60, label %if.then61, label %if.end67

if.then61:                                        ; preds = %land.lhs.true59
  %52 = load ptr, ptr %pList.addr, align 8
  %a63 = getelementptr inbounds nuw %struct.ExprList, ptr %52, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a63, i64 0, i64 0
  %pExpr65 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx64, i32 0, i32 0
  %53 = load ptr, ptr %pExpr65, align 8
  %call66 = call ptr @sqlite3ExprSkipCollate(ptr noundef %53)
  store ptr %call66, ptr %pCExpr62, align 8
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %55, i32 0, i32 10
  %56 = load ptr, ptr %pCExpr62, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %54, ptr noundef %iPKey, ptr noundef %56)
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %land.lhs.true59, %if.then55
  %57 = load i32, ptr %iCol, align 4
  %conv68 = trunc i32 %57 to i16
  %58 = load ptr, ptr %pTab, align 8
  %iPKey69 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 10
  store i16 %conv68, ptr %iPKey69, align 4
  %59 = load i32, ptr %onError.addr, align 4
  %conv70 = trunc i32 %59 to i8
  %60 = load ptr, ptr %pTab, align 8
  %keyConf = getelementptr inbounds nuw %struct.Table, ptr %60, i32 0, i32 14
  store i8 %conv70, ptr %keyConf, align 4
  %61 = load i32, ptr %autoInc.addr, align 4
  %mul = mul nsw i32 %61, 8
  %62 = load ptr, ptr %pTab, align 8
  %tabFlags71 = getelementptr inbounds nuw %struct.Table, ptr %62, i32 0, i32 9
  %63 = load i32, ptr %tabFlags71, align 8
  %or72 = or i32 %63, %mul
  store i32 %or72, ptr %tabFlags71, align 8
  %64 = load ptr, ptr %pList.addr, align 8
  %tobool73 = icmp ne ptr %64, null
  br i1 %tobool73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end67
  %65 = load ptr, ptr %pList.addr, align 8
  %a75 = getelementptr inbounds nuw %struct.ExprList, ptr %65, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a75, i64 0, i64 0
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx76, i32 0, i32 3
  %66 = load i8, ptr %sortFlags, align 8
  %67 = load ptr, ptr %pParse.addr, align 8
  %iPkSortOrder = getelementptr inbounds nuw %struct.Parse, ptr %67, i32 0, i32 49
  store i8 %66, ptr %iPkSortOrder, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end67
  br label %if.end83

if.else78:                                        ; preds = %land.lhs.true52, %land.lhs.true47, %land.lhs.true, %if.end43
  %68 = load i32, ptr %autoInc.addr, align 4
  %tobool79 = icmp ne i32 %68, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else78
  %69 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %69, ptr noundef @.str.684)
  br label %if.end82

if.else81:                                        ; preds = %if.else78
  %70 = load ptr, ptr %pParse.addr, align 8
  %71 = load ptr, ptr %pList.addr, align 8
  %72 = load i32, ptr %onError.addr, align 4
  %73 = load i32, ptr %sortOrder.addr, align 4
  call void @sqlite3CreateIndex(ptr noundef %70, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %71, i32 noundef %72, ptr noundef null, ptr noundef null, i32 noundef %73, i32 noundef 0, i8 noundef zeroext 2)
  store ptr null, ptr %pList.addr, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end77
  br label %primary_key_exit

primary_key_exit:                                 ; preds = %if.end83, %if.then1, %if.then
  %74 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %db, align 8
  %76 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %75, ptr noundef %76)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CreateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StringToId(ptr noundef) #0

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
!8 = distinct !{!8, !7}
