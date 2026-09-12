; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }

@.str.656 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.657 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.658 = external hidden unnamed_addr constant [64 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqliteProcessJoin(ptr noundef %pParse, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pLeft = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pRightTab = alloca ptr, align 8
  %isOuter = alloca i32, align 4
  %zName = alloca ptr, align 8
  %iLeft = alloca i32, align 4
  %iLeftCol = alloca i32, align 4
  %pList = alloca ptr, align 8
  %zName57 = alloca ptr, align 8
  %iLeft58 = alloca i32, align 4
  %iLeftCol59 = alloca i32, align 4
  %iRightCol = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pSrc1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pSrc1, align 8
  store ptr %1, ptr %pSrc, align 8
  %2 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arrayidx, ptr %pLeft, align 8
  %3 = load ptr, ptr %pLeft, align 8
  %arrayidx2 = getelementptr inbounds %struct.SrcList_item, ptr %3, i64 1
  store ptr %arrayidx2, ptr %pRight, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc79, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nSrc, align 8
  %sub = sub nsw i32 %6, 1
  %cmp = icmp slt i32 %4, %sub
  br i1 %cmp, label %for.body, label %for.end82

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pRight, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pTab, align 8
  store ptr %8, ptr %pRightTab, align 8
  %9 = load ptr, ptr %pLeft, align 8
  %pTab3 = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pTab3, align 8
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load ptr, ptr %pRightTab, align 8
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc79

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pRight, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %12, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %13 = load i8, ptr %jointype, align 4
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 32
  %cmp6 = icmp ne i32 %and, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, ptr %isOuter, align 4
  %14 = load ptr, ptr %pRight, align 8
  %fg8 = getelementptr inbounds nuw %struct.SrcList_item, ptr %14, i32 0, i32 9
  %jointype9 = getelementptr inbounds nuw %struct.anon, ptr %fg8, i32 0, i32 0
  %15 = load i8, ptr %jointype9, align 4
  %conv10 = zext i8 %15 to i32
  %and11 = and i32 %conv10, 4
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %pRight, align 8
  %pOn = getelementptr inbounds nuw %struct.SrcList_item, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %pOn, align 8
  %tobool13 = icmp ne ptr %17, null
  br i1 %tobool13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then12
  %18 = load ptr, ptr %pRight, align 8
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pUsing, align 8
  %tobool15 = icmp ne ptr %19, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false14, %if.then12
  %20 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %20, ptr noundef @.str.656, i32 noundef 0)
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false14
  store i32 0, ptr %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %if.end17
  %21 = load i32, ptr %j, align 4
  %22 = load ptr, ptr %pRightTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 11
  %23 = load i16, ptr %nCol, align 2
  %conv19 = sext i16 %23 to i32
  %cmp20 = icmp slt i32 %21, %conv19
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %pRightTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %aCol, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds %struct.Column, ptr %25, i64 %idxprom
  %zName24 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx23, i32 0, i32 0
  %27 = load ptr, ptr %zName24, align 8
  store ptr %27, ptr %zName, align 8
  %28 = load ptr, ptr %pSrc, align 8
  %29 = load i32, ptr %i, align 4
  %add = add nsw i32 %29, 1
  %30 = load ptr, ptr %zName, align 8
  %call = call i32 @tableAndColumnIndex(ptr noundef %28, i32 noundef %add, ptr noundef %30, ptr noundef %iLeft, ptr noundef %iLeftCol)
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body22
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pSrc, align 8
  %33 = load i32, ptr %iLeft, align 4
  %34 = load i32, ptr %iLeftCol, align 4
  %35 = load i32, ptr %i, align 4
  %add27 = add nsw i32 %35, 1
  %36 = load i32, ptr %j, align 4
  %37 = load i32, ptr %isOuter, align 4
  %38 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %38, i32 0, i32 9
  call void @addWhereTerm(ptr noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %add27, i32 noundef %36, i32 noundef %37, ptr noundef %pWhere)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body22
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %39 = load i32, ptr %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond18, !llvm.loop !6

for.end:                                          ; preds = %for.cond18
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.end
  %40 = load ptr, ptr %pRight, align 8
  %pOn30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %40, i32 0, i32 11
  %41 = load ptr, ptr %pOn30, align 8
  %tobool31 = icmp ne ptr %41, null
  br i1 %tobool31, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end29
  %42 = load ptr, ptr %pRight, align 8
  %pUsing32 = getelementptr inbounds nuw %struct.SrcList_item, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pUsing32, align 8
  %tobool33 = icmp ne ptr %43, null
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %44, ptr noundef @.str.657)
  store i32 1, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true, %if.end29
  %45 = load ptr, ptr %pRight, align 8
  %pOn36 = getelementptr inbounds nuw %struct.SrcList_item, ptr %45, i32 0, i32 11
  %46 = load ptr, ptr %pOn36, align 8
  %tobool37 = icmp ne ptr %46, null
  br i1 %tobool37, label %if.then38, label %if.end48

if.then38:                                        ; preds = %if.end35
  %47 = load i32, ptr %isOuter, align 4
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then38
  %48 = load ptr, ptr %pRight, align 8
  %pOn41 = getelementptr inbounds nuw %struct.SrcList_item, ptr %48, i32 0, i32 11
  %49 = load ptr, ptr %pOn41, align 8
  %50 = load ptr, ptr %pRight, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %50, i32 0, i32 10
  %51 = load i32, ptr %iCursor, align 8
  call void @setJoinExpr(ptr noundef %49, i32 noundef %51)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then38
  %52 = load ptr, ptr %pParse.addr, align 8
  %53 = load ptr, ptr %p.addr, align 8
  %pWhere43 = getelementptr inbounds nuw %struct.Select, ptr %53, i32 0, i32 9
  %54 = load ptr, ptr %pWhere43, align 8
  %55 = load ptr, ptr %pRight, align 8
  %pOn44 = getelementptr inbounds nuw %struct.SrcList_item, ptr %55, i32 0, i32 11
  %56 = load ptr, ptr %pOn44, align 8
  %call45 = call ptr @sqlite3ExprAnd(ptr noundef %52, ptr noundef %54, ptr noundef %56)
  %57 = load ptr, ptr %p.addr, align 8
  %pWhere46 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 9
  store ptr %call45, ptr %pWhere46, align 8
  %58 = load ptr, ptr %pRight, align 8
  %pOn47 = getelementptr inbounds nuw %struct.SrcList_item, ptr %58, i32 0, i32 11
  store ptr null, ptr %pOn47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.end35
  %59 = load ptr, ptr %pRight, align 8
  %pUsing49 = getelementptr inbounds nuw %struct.SrcList_item, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %pUsing49, align 8
  %tobool50 = icmp ne ptr %60, null
  br i1 %tobool50, label %if.then51, label %if.end78

if.then51:                                        ; preds = %if.end48
  %61 = load ptr, ptr %pRight, align 8
  %pUsing52 = getelementptr inbounds nuw %struct.SrcList_item, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %pUsing52, align 8
  store ptr %62, ptr %pList, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc75, %if.then51
  %63 = load i32, ptr %j, align 4
  %64 = load ptr, ptr %pList, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %nId, align 8
  %cmp54 = icmp slt i32 %63, %65
  br i1 %cmp54, label %for.body56, label %for.end77

for.body56:                                       ; preds = %for.cond53
  %66 = load ptr, ptr %pList, align 8
  %a60 = getelementptr inbounds nuw %struct.IdList, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %a60, align 8
  %68 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %68 to i64
  %arrayidx62 = getelementptr inbounds %struct.IdList_item, ptr %67, i64 %idxprom61
  %zName63 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx62, i32 0, i32 0
  %69 = load ptr, ptr %zName63, align 8
  store ptr %69, ptr %zName57, align 8
  %70 = load ptr, ptr %pRightTab, align 8
  %71 = load ptr, ptr %zName57, align 8
  %call64 = call i32 @columnIndex(ptr noundef %70, ptr noundef %71)
  store i32 %call64, ptr %iRightCol, align 4
  %72 = load i32, ptr %iRightCol, align 4
  %cmp65 = icmp slt i32 %72, 0
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %for.body56
  %73 = load ptr, ptr %pSrc, align 8
  %74 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %74, 1
  %75 = load ptr, ptr %zName57, align 8
  %call69 = call i32 @tableAndColumnIndex(ptr noundef %73, i32 noundef %add68, ptr noundef %75, ptr noundef %iLeft58, ptr noundef %iLeftCol59)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false67, %for.body56
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %zName57, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %76, ptr noundef @.str.658, ptr noundef %77)
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %lor.lhs.false67
  %78 = load ptr, ptr %pParse.addr, align 8
  %79 = load ptr, ptr %pSrc, align 8
  %80 = load i32, ptr %iLeft58, align 4
  %81 = load i32, ptr %iLeftCol59, align 4
  %82 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %82, 1
  %83 = load i32, ptr %iRightCol, align 4
  %84 = load i32, ptr %isOuter, align 4
  %85 = load ptr, ptr %p.addr, align 8
  %pWhere74 = getelementptr inbounds nuw %struct.Select, ptr %85, i32 0, i32 9
  call void @addWhereTerm(ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %add73, i32 noundef %83, i32 noundef %84, ptr noundef %pWhere74)
  br label %for.inc75

for.inc75:                                        ; preds = %if.end72
  %86 = load i32, ptr %j, align 4
  %inc76 = add nsw i32 %86, 1
  store i32 %inc76, ptr %j, align 4
  br label %for.cond53, !llvm.loop !8

for.end77:                                        ; preds = %for.cond53
  br label %if.end78

if.end78:                                         ; preds = %for.end77, %if.end48
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78, %if.then
  %87 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %87, 1
  store i32 %inc80, ptr %i, align 4
  %88 = load ptr, ptr %pRight, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %88, i32 1
  store ptr %incdec.ptr, ptr %pRight, align 8
  %89 = load ptr, ptr %pLeft, align 8
  %incdec.ptr81 = getelementptr inbounds nuw %struct.SrcList_item, ptr %89, i32 1
  store ptr %incdec.ptr81, ptr %pLeft, align 8
  br label %for.cond, !llvm.loop !9

for.end82:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end82, %if.then71, %if.then34, %if.then16
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
declare hidden i32 @tableAndColumnIndex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addWhereTerm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setJoinExpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @columnIndex(ptr noundef, ptr noundef) #0

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
!9 = distinct !{!9, !7}
