; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Hash = type { i32, i32, ptr, ptr }

@.str.706 = external hidden unnamed_addr constant [63 x i8], align 1
@.str.707 = external hidden unnamed_addr constant [94 x i8], align 1
@.str.708 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CreateForeignKey(ptr noundef %pParse, ptr noundef %pFromCol, ptr noundef %pTo, ptr noundef %pToCol, i32 noundef %flags) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pFromCol.addr = alloca ptr, align 8
  %pTo.addr = alloca ptr, align 8
  %pToCol.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %pFKey = alloca ptr, align 8
  %pNextTo = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %i = alloca i32, align 4
  %nCol = alloca i32, align 4
  %z = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %j = alloca i32, align 4
  %n143 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pFromCol, ptr %pFromCol.addr, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pToCol, ptr %pToCol.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pFKey, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 58
  %3 = load ptr, ptr %pNewTable, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 51
  %6 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %fk_end

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pFromCol.addr, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %nCol7 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 11
  %9 = load i16, ptr %nCol7, align 2
  %conv8 = sext i16 %9 to i32
  %sub = sub nsw i32 %conv8, 1
  store i32 %sub, ptr %iCol, align 4
  %10 = load i32, ptr %iCol, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then6
  br label %fk_end

if.end12:                                         ; preds = %if.then6
  %11 = load ptr, ptr %pToCol.addr, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %12 = load ptr, ptr %pToCol.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nExpr, align 8
  %cmp13 = icmp ne i32 %13, 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %aCol, align 8
  %17 = load i32, ptr %iCol, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %16, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 0
  %18 = load ptr, ptr %zName, align 8
  %19 = load ptr, ptr %pTo.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %14, ptr noundef @.str.706, ptr noundef %18, ptr noundef %19)
  br label %fk_end

if.end16:                                         ; preds = %land.lhs.true, %if.end12
  store i32 1, ptr %nCol, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %pToCol.addr, align 8
  %tobool17 = icmp ne ptr %20, null
  br i1 %tobool17, label %land.lhs.true18, label %if.else24

land.lhs.true18:                                  ; preds = %if.else
  %21 = load ptr, ptr %pToCol.addr, align 8
  %nExpr19 = getelementptr inbounds nuw %struct.ExprList, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %nExpr19, align 8
  %23 = load ptr, ptr %pFromCol.addr, align 8
  %nExpr20 = getelementptr inbounds nuw %struct.ExprList, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %nExpr20, align 8
  %cmp21 = icmp ne i32 %22, %24
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %land.lhs.true18
  %25 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %25, ptr noundef @.str.707)
  br label %fk_end

if.else24:                                        ; preds = %land.lhs.true18, %if.else
  %26 = load ptr, ptr %pFromCol.addr, align 8
  %nExpr25 = getelementptr inbounds nuw %struct.ExprList, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %nExpr25, align 8
  store i32 %27, ptr %nCol, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end16
  %28 = load i32, ptr %nCol, align 4
  %sub28 = sub nsw i32 %28, 1
  %conv29 = sext i32 %sub28 to i64
  %mul = mul i64 %conv29, 16
  %add = add i64 80, %mul
  %29 = load ptr, ptr %pTo.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %n, align 8
  %conv30 = zext i32 %30 to i64
  %add31 = add i64 %add, %conv30
  %add32 = add i64 %add31, 1
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, ptr %nByte, align 4
  %31 = load ptr, ptr %pToCol.addr, align 8
  %tobool34 = icmp ne ptr %31, null
  br i1 %tobool34, label %if.then35, label %if.end44

if.then35:                                        ; preds = %if.end27
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then35
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %pToCol.addr, align 8
  %nExpr36 = getelementptr inbounds nuw %struct.ExprList, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %nExpr36, align 8
  %cmp37 = icmp slt i32 %32, %34
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %pToCol.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom39
  %zName41 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx40, i32 0, i32 1
  %37 = load ptr, ptr %zName41, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %37)
  %add42 = add nsw i32 %call, 1
  %38 = load i32, ptr %nByte, align 4
  %add43 = add nsw i32 %38, %add42
  store i32 %add43, ptr %nByte, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.end27
  %40 = load ptr, ptr %db, align 8
  %41 = load i32, ptr %nByte, align 4
  %conv45 = sext i32 %41 to i64
  %call46 = call ptr @sqlite3DbMallocZero(ptr noundef %40, i64 noundef %conv45)
  store ptr %call46, ptr %pFKey, align 8
  %42 = load ptr, ptr %pFKey, align 8
  %cmp47 = icmp eq ptr %42, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  br label %fk_end

if.end50:                                         ; preds = %if.end44
  %43 = load ptr, ptr %p, align 8
  %44 = load ptr, ptr %pFKey, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %44, i32 0, i32 0
  store ptr %43, ptr %pFrom, align 8
  %45 = load ptr, ptr %p, align 8
  %pFKey51 = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %pFKey51, align 8
  %47 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %47, i32 0, i32 1
  store ptr %46, ptr %pNextFrom, align 8
  %48 = load ptr, ptr %pFKey, align 8
  %aCol52 = getelementptr inbounds nuw %struct.FKey, ptr %48, i32 0, i32 9
  %49 = load i32, ptr %nCol, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol52, i64 0, i64 %idxprom53
  store ptr %arrayidx54, ptr %z, align 8
  %50 = load ptr, ptr %z, align 8
  %51 = load ptr, ptr %pFKey, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %51, i32 0, i32 2
  store ptr %50, ptr %zTo, align 8
  %52 = load ptr, ptr %pParse.addr, align 8
  %eParseMode55 = getelementptr inbounds nuw %struct.Parse, ptr %52, i32 0, i32 51
  %53 = load i8, ptr %eParseMode55, align 4
  %conv56 = zext i8 %53 to i32
  %cmp57 = icmp sge i32 %conv56, 2
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end50
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %z, align 8
  %56 = load ptr, ptr %pTo.addr, align 8
  %call60 = call ptr @sqlite3RenameTokenMap(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end50
  %57 = load ptr, ptr %z, align 8
  %58 = load ptr, ptr %pTo.addr, align 8
  %z62 = getelementptr inbounds nuw %struct.Token, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %z62, align 8
  %60 = load ptr, ptr %pTo.addr, align 8
  %n63 = getelementptr inbounds nuw %struct.Token, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %n63, align 8
  %conv64 = zext i32 %61 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %59, i64 %conv64, i1 false)
  %62 = load ptr, ptr %z, align 8
  %63 = load ptr, ptr %pTo.addr, align 8
  %n65 = getelementptr inbounds nuw %struct.Token, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %n65, align 8
  %idxprom66 = zext i32 %64 to i64
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %62, i64 %idxprom66
  store i8 0, ptr %arrayidx67, align 1
  %65 = load ptr, ptr %z, align 8
  call void @sqlite3Dequote(ptr noundef %65)
  %66 = load ptr, ptr %pTo.addr, align 8
  %n68 = getelementptr inbounds nuw %struct.Token, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %n68, align 8
  %add69 = add i32 %67, 1
  %68 = load ptr, ptr %z, align 8
  %idx.ext = zext i32 %add69 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %z, align 8
  %69 = load i32, ptr %nCol, align 4
  %70 = load ptr, ptr %pFKey, align 8
  %nCol70 = getelementptr inbounds nuw %struct.FKey, ptr %70, i32 0, i32 5
  store i32 %69, ptr %nCol70, align 8
  %71 = load ptr, ptr %pFromCol.addr, align 8
  %cmp71 = icmp eq ptr %71, null
  br i1 %cmp71, label %if.then73, label %if.else79

if.then73:                                        ; preds = %if.end61
  %72 = load ptr, ptr %p, align 8
  %nCol74 = getelementptr inbounds nuw %struct.Table, ptr %72, i32 0, i32 11
  %73 = load i16, ptr %nCol74, align 2
  %conv75 = sext i16 %73 to i32
  %sub76 = sub nsw i32 %conv75, 1
  %74 = load ptr, ptr %pFKey, align 8
  %aCol77 = getelementptr inbounds nuw %struct.FKey, ptr %74, i32 0, i32 9
  %arrayidx78 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol77, i64 0, i64 0
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx78, i32 0, i32 0
  store i32 %sub76, ptr %iFrom, align 8
  br label %if.end136

if.else79:                                        ; preds = %if.end61
  store i32 0, ptr %i, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc133, %if.else79
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %nCol, align 4
  %cmp81 = icmp slt i32 %75, %76
  br i1 %cmp81, label %for.body83, label %for.end135

for.body83:                                       ; preds = %for.cond80
  store i32 0, ptr %j, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc107, %for.body83
  %77 = load i32, ptr %j, align 4
  %78 = load ptr, ptr %p, align 8
  %nCol85 = getelementptr inbounds nuw %struct.Table, ptr %78, i32 0, i32 11
  %79 = load i16, ptr %nCol85, align 2
  %conv86 = sext i16 %79 to i32
  %cmp87 = icmp slt i32 %77, %conv86
  br i1 %cmp87, label %for.body89, label %for.end109

for.body89:                                       ; preds = %for.cond84
  %80 = load ptr, ptr %p, align 8
  %aCol90 = getelementptr inbounds nuw %struct.Table, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %aCol90, align 8
  %82 = load i32, ptr %j, align 4
  %idxprom91 = sext i32 %82 to i64
  %arrayidx92 = getelementptr inbounds %struct.Column, ptr %81, i64 %idxprom91
  %zName93 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx92, i32 0, i32 0
  %83 = load ptr, ptr %zName93, align 8
  %84 = load ptr, ptr %pFromCol.addr, align 8
  %a94 = getelementptr inbounds nuw %struct.ExprList, ptr %84, i32 0, i32 1
  %85 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %85 to i64
  %arrayidx96 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a94, i64 0, i64 %idxprom95
  %zName97 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx96, i32 0, i32 1
  %86 = load ptr, ptr %zName97, align 8
  %call98 = call i32 @sqlite3StrICmp(ptr noundef %83, ptr noundef %86)
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.end106

if.then101:                                       ; preds = %for.body89
  %87 = load i32, ptr %j, align 4
  %88 = load ptr, ptr %pFKey, align 8
  %aCol102 = getelementptr inbounds nuw %struct.FKey, ptr %88, i32 0, i32 9
  %89 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %89 to i64
  %arrayidx104 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol102, i64 0, i64 %idxprom103
  %iFrom105 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx104, i32 0, i32 0
  store i32 %87, ptr %iFrom105, align 8
  br label %for.end109

if.end106:                                        ; preds = %for.body89
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106
  %90 = load i32, ptr %j, align 4
  %inc108 = add nsw i32 %90, 1
  store i32 %inc108, ptr %j, align 4
  br label %for.cond84, !llvm.loop !8

for.end109:                                       ; preds = %if.then101, %for.cond84
  %91 = load i32, ptr %j, align 4
  %92 = load ptr, ptr %p, align 8
  %nCol110 = getelementptr inbounds nuw %struct.Table, ptr %92, i32 0, i32 11
  %93 = load i16, ptr %nCol110, align 2
  %conv111 = sext i16 %93 to i32
  %cmp112 = icmp sge i32 %91, %conv111
  br i1 %cmp112, label %if.then114, label %if.end119

if.then114:                                       ; preds = %for.end109
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load ptr, ptr %pFromCol.addr, align 8
  %a115 = getelementptr inbounds nuw %struct.ExprList, ptr %95, i32 0, i32 1
  %96 = load i32, ptr %i, align 4
  %idxprom116 = sext i32 %96 to i64
  %arrayidx117 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a115, i64 0, i64 %idxprom116
  %zName118 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx117, i32 0, i32 1
  %97 = load ptr, ptr %zName118, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %94, ptr noundef @.str.708, ptr noundef %97)
  br label %fk_end

if.end119:                                        ; preds = %for.end109
  %98 = load ptr, ptr %pParse.addr, align 8
  %eParseMode120 = getelementptr inbounds nuw %struct.Parse, ptr %98, i32 0, i32 51
  %99 = load i8, ptr %eParseMode120, align 4
  %conv121 = zext i8 %99 to i32
  %cmp122 = icmp sge i32 %conv121, 2
  br i1 %cmp122, label %if.then124, label %if.end132

if.then124:                                       ; preds = %if.end119
  %100 = load ptr, ptr %pParse.addr, align 8
  %101 = load ptr, ptr %pFKey, align 8
  %aCol125 = getelementptr inbounds nuw %struct.FKey, ptr %101, i32 0, i32 9
  %102 = load i32, ptr %i, align 4
  %idxprom126 = sext i32 %102 to i64
  %arrayidx127 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol125, i64 0, i64 %idxprom126
  %103 = load ptr, ptr %pFromCol.addr, align 8
  %a128 = getelementptr inbounds nuw %struct.ExprList, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %104 to i64
  %arrayidx130 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a128, i64 0, i64 %idxprom129
  %zName131 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx130, i32 0, i32 1
  %105 = load ptr, ptr %zName131, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %100, ptr noundef %arrayidx127, ptr noundef %105)
  br label %if.end132

if.end132:                                        ; preds = %if.then124, %if.end119
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %106 = load i32, ptr %i, align 4
  %inc134 = add nsw i32 %106, 1
  store i32 %inc134, ptr %i, align 4
  br label %for.cond80, !llvm.loop !9

for.end135:                                       ; preds = %for.cond80
  br label %if.end136

if.end136:                                        ; preds = %for.end135, %if.then73
  %107 = load ptr, ptr %pToCol.addr, align 8
  %tobool137 = icmp ne ptr %107, null
  br i1 %tobool137, label %if.then138, label %if.end175

if.then138:                                       ; preds = %if.end136
  store i32 0, ptr %i, align 4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc172, %if.then138
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %nCol, align 4
  %cmp140 = icmp slt i32 %108, %109
  br i1 %cmp140, label %for.body142, label %for.end174

for.body142:                                      ; preds = %for.cond139
  %110 = load ptr, ptr %pToCol.addr, align 8
  %a144 = getelementptr inbounds nuw %struct.ExprList, ptr %110, i32 0, i32 1
  %111 = load i32, ptr %i, align 4
  %idxprom145 = sext i32 %111 to i64
  %arrayidx146 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a144, i64 0, i64 %idxprom145
  %zName147 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx146, i32 0, i32 1
  %112 = load ptr, ptr %zName147, align 8
  %call148 = call i32 @sqlite3Strlen30(ptr noundef %112)
  store i32 %call148, ptr %n143, align 4
  %113 = load ptr, ptr %z, align 8
  %114 = load ptr, ptr %pFKey, align 8
  %aCol149 = getelementptr inbounds nuw %struct.FKey, ptr %114, i32 0, i32 9
  %115 = load i32, ptr %i, align 4
  %idxprom150 = sext i32 %115 to i64
  %arrayidx151 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol149, i64 0, i64 %idxprom150
  %zCol = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx151, i32 0, i32 1
  store ptr %113, ptr %zCol, align 8
  %116 = load ptr, ptr %pParse.addr, align 8
  %eParseMode152 = getelementptr inbounds nuw %struct.Parse, ptr %116, i32 0, i32 51
  %117 = load i8, ptr %eParseMode152, align 4
  %conv153 = zext i8 %117 to i32
  %cmp154 = icmp sge i32 %conv153, 2
  br i1 %cmp154, label %if.then156, label %if.end161

if.then156:                                       ; preds = %for.body142
  %118 = load ptr, ptr %pParse.addr, align 8
  %119 = load ptr, ptr %z, align 8
  %120 = load ptr, ptr %pToCol.addr, align 8
  %a157 = getelementptr inbounds nuw %struct.ExprList, ptr %120, i32 0, i32 1
  %121 = load i32, ptr %i, align 4
  %idxprom158 = sext i32 %121 to i64
  %arrayidx159 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a157, i64 0, i64 %idxprom158
  %zName160 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx159, i32 0, i32 1
  %122 = load ptr, ptr %zName160, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %118, ptr noundef %119, ptr noundef %122)
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %for.body142
  %123 = load ptr, ptr %z, align 8
  %124 = load ptr, ptr %pToCol.addr, align 8
  %a162 = getelementptr inbounds nuw %struct.ExprList, ptr %124, i32 0, i32 1
  %125 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %125 to i64
  %arrayidx164 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a162, i64 0, i64 %idxprom163
  %zName165 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx164, i32 0, i32 1
  %126 = load ptr, ptr %zName165, align 8
  %127 = load i32, ptr %n143, align 4
  %conv166 = sext i32 %127 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %126, i64 %conv166, i1 false)
  %128 = load ptr, ptr %z, align 8
  %129 = load i32, ptr %n143, align 4
  %idxprom167 = sext i32 %129 to i64
  %arrayidx168 = getelementptr inbounds i8, ptr %128, i64 %idxprom167
  store i8 0, ptr %arrayidx168, align 1
  %130 = load i32, ptr %n143, align 4
  %add169 = add nsw i32 %130, 1
  %131 = load ptr, ptr %z, align 8
  %idx.ext170 = sext i32 %add169 to i64
  %add.ptr171 = getelementptr inbounds i8, ptr %131, i64 %idx.ext170
  store ptr %add.ptr171, ptr %z, align 8
  br label %for.inc172

for.inc172:                                       ; preds = %if.end161
  %132 = load i32, ptr %i, align 4
  %inc173 = add nsw i32 %132, 1
  store i32 %inc173, ptr %i, align 4
  br label %for.cond139, !llvm.loop !10

for.end174:                                       ; preds = %for.cond139
  br label %if.end175

if.end175:                                        ; preds = %for.end174, %if.end136
  %133 = load ptr, ptr %pFKey, align 8
  %isDeferred = getelementptr inbounds nuw %struct.FKey, ptr %133, i32 0, i32 6
  store i8 0, ptr %isDeferred, align 4
  %134 = load i32, ptr %flags.addr, align 4
  %and = and i32 %134, 255
  %conv176 = trunc i32 %and to i8
  %135 = load ptr, ptr %pFKey, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %135, i32 0, i32 7
  %arrayidx177 = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 0
  store i8 %conv176, ptr %arrayidx177, align 1
  %136 = load i32, ptr %flags.addr, align 4
  %shr = ashr i32 %136, 8
  %and178 = and i32 %shr, 255
  %conv179 = trunc i32 %and178 to i8
  %137 = load ptr, ptr %pFKey, align 8
  %aAction180 = getelementptr inbounds nuw %struct.FKey, ptr %137, i32 0, i32 7
  %arrayidx181 = getelementptr inbounds [2 x i8], ptr %aAction180, i64 0, i64 1
  store i8 %conv179, ptr %arrayidx181, align 1
  %138 = load ptr, ptr %p, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %138, i32 0, i32 20
  %139 = load ptr, ptr %pSchema, align 8
  %fkeyHash = getelementptr inbounds nuw %struct.Schema, ptr %139, i32 0, i32 5
  %140 = load ptr, ptr %pFKey, align 8
  %zTo182 = getelementptr inbounds nuw %struct.FKey, ptr %140, i32 0, i32 2
  %141 = load ptr, ptr %zTo182, align 8
  %142 = load ptr, ptr %pFKey, align 8
  %call183 = call ptr @sqlite3HashInsert(ptr noundef %fkeyHash, ptr noundef %141, ptr noundef %142)
  store ptr %call183, ptr %pNextTo, align 8
  %143 = load ptr, ptr %pNextTo, align 8
  %144 = load ptr, ptr %pFKey, align 8
  %cmp184 = icmp eq ptr %143, %144
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end175
  %145 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %145)
  br label %fk_end

if.end187:                                        ; preds = %if.end175
  %146 = load ptr, ptr %pNextTo, align 8
  %tobool188 = icmp ne ptr %146, null
  br i1 %tobool188, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end187
  %147 = load ptr, ptr %pNextTo, align 8
  %148 = load ptr, ptr %pFKey, align 8
  %pNextTo190 = getelementptr inbounds nuw %struct.FKey, ptr %148, i32 0, i32 3
  store ptr %147, ptr %pNextTo190, align 8
  %149 = load ptr, ptr %pFKey, align 8
  %150 = load ptr, ptr %pNextTo, align 8
  %pPrevTo = getelementptr inbounds nuw %struct.FKey, ptr %150, i32 0, i32 4
  store ptr %149, ptr %pPrevTo, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end187
  %151 = load ptr, ptr %pFKey, align 8
  %152 = load ptr, ptr %p, align 8
  %pFKey192 = getelementptr inbounds nuw %struct.Table, ptr %152, i32 0, i32 4
  store ptr %151, ptr %pFKey192, align 8
  store ptr null, ptr %pFKey, align 8
  br label %fk_end

fk_end:                                           ; preds = %if.end191, %if.then186, %if.then114, %if.then49, %if.then23, %if.then15, %if.then11, %if.then
  %153 = load ptr, ptr %db, align 8
  %154 = load ptr, ptr %pFKey, align 8
  call void @sqlite3DbFree(ptr noundef %153, ptr noundef %154)
  %155 = load ptr, ptr %db, align 8
  %156 = load ptr, ptr %pFromCol.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %155, ptr noundef %156)
  %157 = load ptr, ptr %db, align 8
  %158 = load ptr, ptr %pToCol.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %157, ptr noundef %158)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Dequote(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!10 = distinct !{!10, !7}
