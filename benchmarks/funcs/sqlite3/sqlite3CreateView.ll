; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.585 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.719 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StartTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndTable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CreateView(ptr noundef %pParse, ptr noundef %pBegin, ptr noundef %pName1, ptr noundef %pName2, ptr noundef %pCNames, ptr noundef %pSelect, i32 noundef %isTemp, i32 noundef %noErr) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pBegin.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %pCNames.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %isTemp.addr = alloca i32, align 4
  %noErr.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %z = alloca ptr, align 8
  %sEnd = alloca %struct.Token, align 8
  %sFix = alloca %struct.DbFixer, align 8
  %pName = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pBegin, ptr %pBegin.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store ptr %pCNames, ptr %pCNames.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i32 %isTemp, ptr %isTemp.addr, align 4
  store i32 %noErr, ptr %noErr.addr, align 4
  store ptr null, ptr %pName, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nVar = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 48
  %3 = load i16, ptr %nVar, align 8
  %conv = sext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %4, ptr noundef @.str.719)
  br label %create_view_fail

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %pName1.addr, align 8
  %7 = load ptr, ptr %pName2.addr, align 8
  %8 = load i32, ptr %isTemp.addr, align 4
  %9 = load i32, ptr %noErr.addr, align 4
  call void @sqlite3StartTable(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef %9)
  %10 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 58
  %11 = load ptr, ptr %pNewTable, align 8
  store ptr %11, ptr %p, align 8
  %12 = load ptr, ptr %p, align 8
  %cmp3 = icmp eq ptr %12, null
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 16
  %14 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  br label %create_view_fail

if.end6:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pName1.addr, align 8
  %17 = load ptr, ptr %pName2.addr, align 8
  %call = call i32 @sqlite3TwoPartName(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %pName)
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %p, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 20
  %20 = load ptr, ptr %pSchema, align 8
  %call7 = call i32 @sqlite3SchemaToIndex(ptr noundef %18, ptr noundef %20)
  store i32 %call7, ptr %iDb, align 4
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load i32, ptr %iDb, align 4
  %23 = load ptr, ptr %pName, align 8
  call void @sqlite3FixInit(ptr noundef %sFix, ptr noundef %21, i32 noundef %22, ptr noundef @.str.585, ptr noundef %23)
  %24 = load ptr, ptr %pSelect.addr, align 8
  %call8 = call i32 @sqlite3FixSelect(ptr noundef %sFix, ptr noundef %24)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %create_view_fail

if.end11:                                         ; preds = %if.end6
  %25 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 51
  %26 = load i8, ptr %eParseMode, align 4
  %conv12 = zext i8 %26 to i32
  %cmp13 = icmp sge i32 %conv12, 2
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %27 = load ptr, ptr %pSelect.addr, align 8
  %28 = load ptr, ptr %p, align 8
  %pSelect16 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 3
  store ptr %27, ptr %pSelect16, align 8
  store ptr null, ptr %pSelect.addr, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pSelect.addr, align 8
  %call17 = call ptr @sqlite3SelectDup(ptr noundef %29, ptr noundef %30, i32 noundef 1)
  %31 = load ptr, ptr %p, align 8
  %pSelect18 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 3
  store ptr %call17, ptr %pSelect18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %32 = load ptr, ptr %db, align 8
  %33 = load ptr, ptr %pCNames.addr, align 8
  %call20 = call ptr @sqlite3ExprListDup(ptr noundef %32, ptr noundef %33, i32 noundef 1)
  %34 = load ptr, ptr %p, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 6
  store ptr %call20, ptr %pCheck, align 8
  %35 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 19
  %36 = load i8, ptr %mallocFailed, align 1
  %tobool21 = icmp ne i8 %36, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  br label %create_view_fail

if.end23:                                         ; preds = %if.end19
  %37 = load ptr, ptr %pParse.addr, align 8
  %sLastToken = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 47
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sEnd, ptr align 8 %sLastToken, i64 16, i1 false)
  %z24 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 0
  %38 = load ptr, ptr %z24, align 8
  %arrayidx = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx, align 1
  %conv25 = sext i8 %39 to i32
  %cmp26 = icmp ne i32 %conv25, 59
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  %n29 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 1
  %40 = load i32, ptr %n29, align 8
  %z30 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 0
  %41 = load ptr, ptr %z30, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %z30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23
  %n32 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 1
  store i32 0, ptr %n32, align 8
  %z33 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 0
  %42 = load ptr, ptr %z33, align 8
  %43 = load ptr, ptr %pBegin.addr, align 8
  %z34 = getelementptr inbounds nuw %struct.Token, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %z34, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv35 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv35, ptr %n, align 4
  %45 = load ptr, ptr %pBegin.addr, align 8
  %z36 = getelementptr inbounds nuw %struct.Token, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %z36, align 8
  store ptr %46, ptr %z, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end31
  %47 = load ptr, ptr %z, align 8
  %48 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %48, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %47, i64 %idxprom
  %49 = load i8, ptr %arrayidx37, align 1
  %idxprom38 = zext i8 %49 to i64
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom38
  %50 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %50 to i32
  %and = and i32 %conv40, 1
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i32, ptr %n, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %52 = load ptr, ptr %z, align 8
  %53 = load i32, ptr %n, align 4
  %sub42 = sub nsw i32 %53, 1
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %52, i64 %idxprom43
  %z45 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 0
  store ptr %arrayidx44, ptr %z45, align 8
  %n46 = getelementptr inbounds nuw %struct.Token, ptr %sEnd, i32 0, i32 1
  store i32 1, ptr %n46, align 8
  %54 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3EndTable(ptr noundef %54, ptr noundef null, ptr noundef %sEnd, i8 noundef zeroext 0, ptr noundef null)
  br label %create_view_fail

create_view_fail:                                 ; preds = %while.end, %if.then22, %if.then10, %if.then5, %if.then
  %55 = load ptr, ptr %db, align 8
  %56 = load ptr, ptr %pSelect.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %55, ptr noundef %56)
  %57 = load ptr, ptr %pParse.addr, align 8
  %eParseMode47 = getelementptr inbounds nuw %struct.Parse, ptr %57, i32 0, i32 51
  %58 = load i8, ptr %eParseMode47, align 4
  %conv48 = zext i8 %58 to i32
  %cmp49 = icmp sge i32 %conv48, 2
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %create_view_fail
  %59 = load ptr, ptr %pParse.addr, align 8
  %60 = load ptr, ptr %pCNames.addr, align 8
  call void @sqlite3RenameExprlistUnmap(ptr noundef %59, ptr noundef %60)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %create_view_fail
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %pCNames.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %61, ptr noundef %62)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FixInit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSelect(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameExprlistUnmap(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
