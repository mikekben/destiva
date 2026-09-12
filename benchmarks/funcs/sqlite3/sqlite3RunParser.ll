; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }
%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.AutoincInfo = type { ptr, ptr, i32, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.552 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.553 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3RunParser(ptr noundef %pParse, ptr noundef %zSql, ptr noundef %pzErrMsg) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %nErr = alloca i32, align 4
  %pEngine = alloca ptr, align 8
  %n = alloca i32, align 4
  %tokenType = alloca i32, align 4
  %lastTokenParsed = alloca i32, align 4
  %db = alloca ptr, align 8
  %mxSqlLen = alloca i32, align 4
  %sEngine = alloca %struct.yyParser, align 8
  %p = alloca ptr, align 8
  %p135 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store i32 0, ptr %nErr, align 4
  store i32 0, ptr %n, align 4
  store i32 -1, ptr %lastTokenParsed, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 1
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %mxSqlLen, align 4
  %4 = load ptr, ptr %db, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 36
  %5 = load i32, ptr %nVdbeActive, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %db, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 60
  store volatile i32 0, ptr %u1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 3
  store i32 0, ptr %rc, align 8
  %8 = load ptr, ptr %zSql.addr, align 8
  %9 = load ptr, ptr %pParse.addr, align 8
  %zTail = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 57
  store ptr %8, ptr %zTail, align 8
  store ptr %sEngine, ptr %pEngine, align 8
  %10 = load ptr, ptr %pEngine, align 8
  %11 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ParserInit(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %db, align 8
  %pParse2 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 53
  %13 = load ptr, ptr %pParse2, align 8
  %14 = load ptr, ptr %pParse.addr, align 8
  %pParentParse = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 37
  store ptr %13, ptr %pParentParse, align 8
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %db, align 8
  %pParse3 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 53
  store ptr %15, ptr %pParse3, align 8
  br label %while.body

while.body:                                       ; preds = %if.end63, %if.then15, %if.end
  %17 = load ptr, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3GetToken(ptr noundef %17, ptr noundef %tokenType)
  store i32 %call, ptr %n, align 4
  %18 = load i32, ptr %n, align 4
  %19 = load i32, ptr %mxSqlLen, align 4
  %sub = sub nsw i32 %19, %18
  store i32 %sub, ptr %mxSqlLen, align 4
  %20 = load i32, ptr %mxSqlLen, align 4
  %cmp4 = icmp slt i32 %20, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %while.body
  %21 = load ptr, ptr %pParse.addr, align 8
  %rc6 = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 3
  store i32 18, ptr %rc6, align 8
  br label %while.end

if.end7:                                          ; preds = %while.body
  %22 = load i32, ptr %tokenType, align 4
  %cmp8 = icmp sge i32 %22, 159
  br i1 %cmp8, label %if.then9, label %if.end53

if.then9:                                         ; preds = %if.end7
  %23 = load ptr, ptr %db, align 8
  %u110 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 60
  %24 = load volatile i32, ptr %u110, align 8
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %25 = load ptr, ptr %pParse.addr, align 8
  %rc12 = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 3
  store i32 9, ptr %rc12, align 8
  br label %while.end

if.end13:                                         ; preds = %if.then9
  %26 = load i32, ptr %tokenType, align 4
  %cmp14 = icmp eq i32 %26, 177
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %27 = load i32, ptr %n, align 4
  %28 = load ptr, ptr %zSql.addr, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %zSql.addr, align 8
  br label %while.body

if.end16:                                         ; preds = %if.end13
  %29 = load ptr, ptr %zSql.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx17, align 1
  %conv = sext i8 %30 to i32
  %cmp18 = icmp eq i32 %conv, 0
  br i1 %cmp18, label %if.then20, label %if.else30

if.then20:                                        ; preds = %if.end16
  %31 = load i32, ptr %lastTokenParsed, align 4
  %cmp21 = icmp eq i32 %31, 1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  store i32 0, ptr %tokenType, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then20
  %32 = load i32, ptr %lastTokenParsed, align 4
  %cmp24 = icmp eq i32 %32, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  br label %while.end

if.else27:                                        ; preds = %if.else
  store i32 1, ptr %tokenType, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else27
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  store i32 0, ptr %n, align 4
  br label %if.end52

if.else30:                                        ; preds = %if.end16
  %33 = load i32, ptr %tokenType, align 4
  %cmp31 = icmp eq i32 %33, 159
  br i1 %cmp31, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else30
  %34 = load ptr, ptr %zSql.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %34, i64 6
  %call35 = call i32 @analyzeWindowKeyword(ptr noundef %arrayidx34)
  store i32 %call35, ptr %tokenType, align 4
  br label %if.end51

if.else36:                                        ; preds = %if.else30
  %35 = load i32, ptr %tokenType, align 4
  %cmp37 = icmp eq i32 %35, 160
  br i1 %cmp37, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.else36
  %36 = load ptr, ptr %zSql.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %36, i64 4
  %37 = load i32, ptr %lastTokenParsed, align 4
  %call41 = call i32 @analyzeOverKeyword(ptr noundef %arrayidx40, i32 noundef %37)
  store i32 %call41, ptr %tokenType, align 4
  br label %if.end50

if.else42:                                        ; preds = %if.else36
  %38 = load i32, ptr %tokenType, align 4
  %cmp43 = icmp eq i32 %38, 161
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.else42
  %39 = load ptr, ptr %zSql.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %39, i64 6
  %40 = load i32, ptr %lastTokenParsed, align 4
  %call47 = call i32 @analyzeFilterKeyword(ptr noundef %arrayidx46, i32 noundef %40)
  store i32 %call47, ptr %tokenType, align 4
  br label %if.end49

if.else48:                                        ; preds = %if.else42
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load i32, ptr %n, align 4
  %43 = load ptr, ptr %zSql.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %41, ptr noundef @.str.552, i32 noundef %42, ptr noundef %43)
  br label %while.end

if.end49:                                         ; preds = %if.then45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then39
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then33
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end29
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end7
  %44 = load ptr, ptr %zSql.addr, align 8
  %45 = load ptr, ptr %pParse.addr, align 8
  %sLastToken = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 47
  %z = getelementptr inbounds nuw %struct.Token, ptr %sLastToken, i32 0, i32 0
  store ptr %44, ptr %z, align 8
  %46 = load i32, ptr %n, align 4
  %47 = load ptr, ptr %pParse.addr, align 8
  %sLastToken54 = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 47
  %n55 = getelementptr inbounds nuw %struct.Token, ptr %sLastToken54, i32 0, i32 1
  store i32 %46, ptr %n55, align 8
  %48 = load ptr, ptr %pEngine, align 8
  %49 = load i32, ptr %tokenType, align 4
  %50 = load ptr, ptr %pParse.addr, align 8
  %sLastToken56 = getelementptr inbounds nuw %struct.Parse, ptr %50, i32 0, i32 47
  %51 = getelementptr inbounds nuw { ptr, i32 }, ptr %sLastToken56, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds nuw { ptr, i32 }, ptr %sLastToken56, i32 0, i32 1
  %54 = load i32, ptr %53, align 8
  call void @sqlite3Parser(ptr noundef %48, i32 noundef %49, ptr %52, i32 %54)
  %55 = load i32, ptr %tokenType, align 4
  store i32 %55, ptr %lastTokenParsed, align 4
  %56 = load i32, ptr %n, align 4
  %57 = load ptr, ptr %zSql.addr, align 8
  %idx.ext57 = sext i32 %56 to i64
  %add.ptr58 = getelementptr inbounds i8, ptr %57, i64 %idx.ext57
  store ptr %add.ptr58, ptr %zSql.addr, align 8
  %58 = load ptr, ptr %pParse.addr, align 8
  %rc59 = getelementptr inbounds nuw %struct.Parse, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %rc59, align 8
  %cmp60 = icmp ne i32 %59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end53
  br label %while.end

if.end63:                                         ; preds = %if.end53
  br label %while.body

while.end:                                        ; preds = %if.then62, %if.else48, %if.then26, %if.then11, %if.then5
  %60 = load ptr, ptr %pEngine, align 8
  call void @sqlite3ParserFinalize(ptr noundef %60)
  %61 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %61, i32 0, i32 19
  %62 = load i8, ptr %mallocFailed, align 1
  %tobool64 = icmp ne i8 %62, 0
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %while.end
  %63 = load ptr, ptr %pParse.addr, align 8
  %rc66 = getelementptr inbounds nuw %struct.Parse, ptr %63, i32 0, i32 3
  store i32 7, ptr %rc66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %while.end
  %64 = load ptr, ptr %pParse.addr, align 8
  %rc68 = getelementptr inbounds nuw %struct.Parse, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %rc68, align 8
  %cmp69 = icmp ne i32 %65, 0
  br i1 %cmp69, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %if.end67
  %66 = load ptr, ptr %pParse.addr, align 8
  %rc71 = getelementptr inbounds nuw %struct.Parse, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %rc71, align 8
  %cmp72 = icmp ne i32 %67, 101
  br i1 %cmp72, label %land.lhs.true74, label %if.end82

land.lhs.true74:                                  ; preds = %land.lhs.true
  %68 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %zErrMsg, align 8
  %cmp75 = icmp eq ptr %69, null
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %land.lhs.true74
  %70 = load ptr, ptr %db, align 8
  %71 = load ptr, ptr %pParse.addr, align 8
  %rc78 = getelementptr inbounds nuw %struct.Parse, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %rc78, align 8
  %call79 = call ptr @sqlite3ErrStr(i32 noundef %72)
  %call80 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %70, ptr noundef @.str.20, ptr noundef %call79)
  %73 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg81 = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 1
  store ptr %call80, ptr %zErrMsg81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %land.lhs.true74, %land.lhs.true, %if.end67
  %74 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg83 = getelementptr inbounds nuw %struct.Parse, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %zErrMsg83, align 8
  %tobool84 = icmp ne ptr %75, null
  br i1 %tobool84, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end82
  %76 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg86 = getelementptr inbounds nuw %struct.Parse, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %zErrMsg86, align 8
  %78 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %77, ptr %78, align 8
  %79 = load ptr, ptr %pParse.addr, align 8
  %rc87 = getelementptr inbounds nuw %struct.Parse, ptr %79, i32 0, i32 3
  %80 = load i32, ptr %rc87, align 8
  %81 = load ptr, ptr %pzErrMsg.addr, align 8
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %pParse.addr, align 8
  %zTail88 = getelementptr inbounds nuw %struct.Parse, ptr %83, i32 0, i32 57
  %84 = load ptr, ptr %zTail88, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %80, ptr noundef @.str.553, ptr noundef %82, ptr noundef %84)
  %85 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg89 = getelementptr inbounds nuw %struct.Parse, ptr %85, i32 0, i32 1
  store ptr null, ptr %zErrMsg89, align 8
  %86 = load i32, ptr %nErr, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, ptr %nErr, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end82
  %87 = load ptr, ptr %zSql.addr, align 8
  %88 = load ptr, ptr %pParse.addr, align 8
  %zTail91 = getelementptr inbounds nuw %struct.Parse, ptr %88, i32 0, i32 57
  store ptr %87, ptr %zTail91, align 8
  %89 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %89, i32 0, i32 2
  %90 = load ptr, ptr %pVdbe, align 8
  %tobool92 = icmp ne ptr %90, null
  br i1 %tobool92, label %land.lhs.true93, label %if.end104

land.lhs.true93:                                  ; preds = %if.end90
  %91 = load ptr, ptr %pParse.addr, align 8
  %nErr94 = getelementptr inbounds nuw %struct.Parse, ptr %91, i32 0, i32 16
  %92 = load i32, ptr %nErr94, align 8
  %cmp95 = icmp sgt i32 %92, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.end104

land.lhs.true97:                                  ; preds = %land.lhs.true93
  %93 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %93, i32 0, i32 6
  %94 = load i8, ptr %nested, align 2
  %conv98 = zext i8 %94 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then101, label %if.end104

if.then101:                                       ; preds = %land.lhs.true97
  %95 = load ptr, ptr %pParse.addr, align 8
  %pVdbe102 = getelementptr inbounds nuw %struct.Parse, ptr %95, i32 0, i32 2
  %96 = load ptr, ptr %pVdbe102, align 8
  call void @sqlite3VdbeDelete(ptr noundef %96)
  %97 = load ptr, ptr %pParse.addr, align 8
  %pVdbe103 = getelementptr inbounds nuw %struct.Parse, ptr %97, i32 0, i32 2
  store ptr null, ptr %pVdbe103, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %land.lhs.true97, %land.lhs.true93, %if.end90
  %98 = load ptr, ptr %pParse.addr, align 8
  %nested105 = getelementptr inbounds nuw %struct.Parse, ptr %98, i32 0, i32 6
  %99 = load i8, ptr %nested105, align 2
  %conv106 = zext i8 %99 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end104
  %100 = load ptr, ptr %db, align 8
  %101 = load ptr, ptr %pParse.addr, align 8
  %aTableLock = getelementptr inbounds nuw %struct.Parse, ptr %101, i32 0, i32 33
  %102 = load ptr, ptr %aTableLock, align 8
  call void @sqlite3DbFree(ptr noundef %100, ptr noundef %102)
  %103 = load ptr, ptr %pParse.addr, align 8
  %aTableLock110 = getelementptr inbounds nuw %struct.Parse, ptr %103, i32 0, i32 33
  store ptr null, ptr %aTableLock110, align 8
  %104 = load ptr, ptr %pParse.addr, align 8
  %nTableLock = getelementptr inbounds nuw %struct.Parse, ptr %104, i32 0, i32 32
  store i32 0, ptr %nTableLock, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end104
  %105 = load ptr, ptr %pParse.addr, align 8
  %apVtabLock = getelementptr inbounds nuw %struct.Parse, ptr %105, i32 0, i32 63
  %106 = load ptr, ptr %apVtabLock, align 8
  call void @sqlite3_free(ptr noundef %106)
  %107 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %107, i32 0, i32 51
  %108 = load i8, ptr %eParseMode, align 4
  %conv112 = zext i8 %108 to i32
  %cmp113 = icmp ne i32 %conv112, 0
  br i1 %cmp113, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end111
  %109 = load ptr, ptr %db, align 8
  %110 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %110, i32 0, i32 58
  %111 = load ptr, ptr %pNewTable, align 8
  call void @sqlite3DeleteTable(ptr noundef %109, ptr noundef %111)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end111
  %112 = load ptr, ptr %pParse.addr, align 8
  %eParseMode117 = getelementptr inbounds nuw %struct.Parse, ptr %112, i32 0, i32 51
  %113 = load i8, ptr %eParseMode117, align 4
  %conv118 = zext i8 %113 to i32
  %cmp119 = icmp sge i32 %conv118, 2
  br i1 %cmp119, label %if.end122, label %if.then121

if.then121:                                       ; preds = %if.end116
  %114 = load ptr, ptr %db, align 8
  %115 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %115, i32 0, i32 60
  %116 = load ptr, ptr %pNewTrigger, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %114, ptr noundef %116)
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end116
  %117 = load ptr, ptr %pParse.addr, align 8
  %pWithToFree = getelementptr inbounds nuw %struct.Parse, ptr %117, i32 0, i32 67
  %118 = load ptr, ptr %pWithToFree, align 8
  %tobool123 = icmp ne ptr %118, null
  br i1 %tobool123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end122
  %119 = load ptr, ptr %db, align 8
  %120 = load ptr, ptr %pParse.addr, align 8
  %pWithToFree125 = getelementptr inbounds nuw %struct.Parse, ptr %120, i32 0, i32 67
  %121 = load ptr, ptr %pWithToFree125, align 8
  call void @sqlite3WithDelete(ptr noundef %119, ptr noundef %121)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end122
  %122 = load ptr, ptr %db, align 8
  %123 = load ptr, ptr %pParse.addr, align 8
  %pVList = getelementptr inbounds nuw %struct.Parse, ptr %123, i32 0, i32 55
  %124 = load ptr, ptr %pVList, align 8
  call void @sqlite3DbFree(ptr noundef %122, ptr noundef %124)
  br label %while.cond

while.cond:                                       ; preds = %while.body128, %if.end126
  %125 = load ptr, ptr %pParse.addr, align 8
  %pAinc = getelementptr inbounds nuw %struct.Parse, ptr %125, i32 0, i32 34
  %126 = load ptr, ptr %pAinc, align 8
  %tobool127 = icmp ne ptr %126, null
  br i1 %tobool127, label %while.body128, label %while.end131

while.body128:                                    ; preds = %while.cond
  %127 = load ptr, ptr %pParse.addr, align 8
  %pAinc129 = getelementptr inbounds nuw %struct.Parse, ptr %127, i32 0, i32 34
  %128 = load ptr, ptr %pAinc129, align 8
  store ptr %128, ptr %p, align 8
  %129 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.AutoincInfo, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %pNext, align 8
  %131 = load ptr, ptr %pParse.addr, align 8
  %pAinc130 = getelementptr inbounds nuw %struct.Parse, ptr %131, i32 0, i32 34
  store ptr %130, ptr %pAinc130, align 8
  %132 = load ptr, ptr %db, align 8
  %133 = load ptr, ptr %p, align 8
  call void @sqlite3DbFreeNN(ptr noundef %132, ptr noundef %133)
  br label %while.cond, !llvm.loop !6

while.end131:                                     ; preds = %while.cond
  br label %while.cond132

while.cond132:                                    ; preds = %while.body134, %while.end131
  %134 = load ptr, ptr %pParse.addr, align 8
  %pZombieTab = getelementptr inbounds nuw %struct.Parse, ptr %134, i32 0, i32 64
  %135 = load ptr, ptr %pZombieTab, align 8
  %tobool133 = icmp ne ptr %135, null
  br i1 %tobool133, label %while.body134, label %while.end138

while.body134:                                    ; preds = %while.cond132
  %136 = load ptr, ptr %pParse.addr, align 8
  %pZombieTab136 = getelementptr inbounds nuw %struct.Parse, ptr %136, i32 0, i32 64
  %137 = load ptr, ptr %pZombieTab136, align 8
  store ptr %137, ptr %p135, align 8
  %138 = load ptr, ptr %p135, align 8
  %pNextZombie = getelementptr inbounds nuw %struct.Table, ptr %138, i32 0, i32 21
  %139 = load ptr, ptr %pNextZombie, align 8
  %140 = load ptr, ptr %pParse.addr, align 8
  %pZombieTab137 = getelementptr inbounds nuw %struct.Parse, ptr %140, i32 0, i32 64
  store ptr %139, ptr %pZombieTab137, align 8
  %141 = load ptr, ptr %db, align 8
  %142 = load ptr, ptr %p135, align 8
  call void @sqlite3DeleteTable(ptr noundef %141, ptr noundef %142)
  br label %while.cond132, !llvm.loop !8

while.end138:                                     ; preds = %while.cond132
  %143 = load ptr, ptr %pParse.addr, align 8
  %pParentParse139 = getelementptr inbounds nuw %struct.Parse, ptr %143, i32 0, i32 37
  %144 = load ptr, ptr %pParentParse139, align 8
  %145 = load ptr, ptr %db, align 8
  %pParse140 = getelementptr inbounds nuw %struct.sqlite3, ptr %145, i32 0, i32 53
  store ptr %144, ptr %pParse140, align 8
  %146 = load ptr, ptr %pParse.addr, align 8
  %pParentParse141 = getelementptr inbounds nuw %struct.Parse, ptr %146, i32 0, i32 37
  store ptr null, ptr %pParentParse141, align 8
  %147 = load i32, ptr %nErr, align 4
  ret i32 %147
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDelete(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @analyzeWindowKeyword(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @analyzeOverKeyword(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @analyzeFilterKeyword(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Parser(ptr noundef, i32 noundef, ptr, i32) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserFinalize(ptr noundef) #0

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
