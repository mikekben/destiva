; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.4 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.111 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.399 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.400 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.401 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.402 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.403 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.404 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeParameterIndex(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeExpandSql(ptr noundef %p, ptr noundef %zRawSql) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zRawSql.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %idx = alloca i32, align 4
  %nextIndex = alloca i32, align 4
  %n = alloca i32, align 4
  %nToken = alloca i32, align 4
  %i = alloca i32, align 4
  %pVar = alloca ptr, align 8
  %out = alloca %struct.sqlite3_str, align 8
  %utf8 = alloca %struct.sqlite3_value, align 8
  %zBase = alloca [100 x i8], align 16
  %zStart = alloca ptr, align 8
  %nOut = alloca i32, align 4
  %enc = alloca i8, align 1
  %nOut92 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zRawSql, ptr %zRawSql.addr, align 8
  store i32 0, ptr %idx, align 4
  store i32 1, ptr %nextIndex, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zBase, i64 0, i64 0
  %2 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  call void @sqlite3StrAccumInit(ptr noundef %out, ptr noundef null, ptr noundef %arraydecay, i32 noundef 100, i32 noundef %3)
  %4 = load ptr, ptr %db, align 8
  %nVdbeExec = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 39
  %5 = load i32, ptr %nVdbeExec, align 4
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then
  %6 = load ptr, ptr %zRawSql.addr, align 8
  %7 = load i8, ptr %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end9

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %zRawSql.addr, align 8
  store ptr %8, ptr %zStart, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %while.body7, %while.body
  %9 = load ptr, ptr %zRawSql.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %zRawSql.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv = sext i8 %10 to i32
  %cmp3 = icmp ne i32 %conv, 10
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %11 = load ptr, ptr %zRawSql.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv5 = sext i8 %12 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %13 = phi i1 [ false, %while.cond2 ], [ %tobool6, %land.rhs ]
  br i1 %13, label %while.body7, label %while.end

while.body7:                                      ; preds = %land.end
  br label %while.cond2, !llvm.loop !6

while.end:                                        ; preds = %land.end
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef @.str.399, i32 noundef 3)
  %14 = load ptr, ptr %zStart, align 8
  %15 = load ptr, ptr %zRawSql.addr, align 8
  %16 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef %14, i32 noundef %conv8)
  br label %while.cond, !llvm.loop !8

while.end9:                                       ; preds = %while.cond
  br label %if.end108

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %p.addr, align 8
  %nVar = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 4
  %18 = load i16, ptr %nVar, align 8
  %conv10 = sext i16 %18 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  %19 = load ptr, ptr %zRawSql.addr, align 8
  %20 = load ptr, ptr %zRawSql.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %20)
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef %19, i32 noundef %call)
  br label %if.end107

if.else14:                                        ; preds = %if.else
  br label %while.cond15

while.cond15:                                     ; preds = %if.end105, %if.else14
  %21 = load ptr, ptr %zRawSql.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx16, align 1
  %tobool17 = icmp ne i8 %22, 0
  br i1 %tobool17, label %while.body18, label %while.end106

while.body18:                                     ; preds = %while.cond15
  %23 = load ptr, ptr %zRawSql.addr, align 8
  %call19 = call i32 @findNextHostParameter(ptr noundef %23, ptr noundef %nToken)
  store i32 %call19, ptr %n, align 4
  %24 = load ptr, ptr %zRawSql.addr, align 8
  %25 = load i32, ptr %n, align 4
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef %24, i32 noundef %25)
  %26 = load i32, ptr %n, align 4
  %27 = load ptr, ptr %zRawSql.addr, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  store ptr %add.ptr, ptr %zRawSql.addr, align 8
  %28 = load i32, ptr %nToken, align 4
  %cmp20 = icmp eq i32 %28, 0
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %while.body18
  br label %while.end106

if.end:                                           ; preds = %while.body18
  %29 = load ptr, ptr %zRawSql.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %30 to i32
  %cmp25 = icmp eq i32 %conv24, 63
  br i1 %cmp25, label %if.then27, label %if.else35

if.then27:                                        ; preds = %if.end
  %31 = load i32, ptr %nToken, align 4
  %cmp28 = icmp sgt i32 %31, 1
  br i1 %cmp28, label %if.then30, label %if.else33

if.then30:                                        ; preds = %if.then27
  %32 = load ptr, ptr %zRawSql.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %32, i64 1
  %call32 = call i32 @sqlite3GetInt32(ptr noundef %arrayidx31, ptr noundef %idx)
  br label %if.end34

if.else33:                                        ; preds = %if.then27
  %33 = load i32, ptr %nextIndex, align 4
  store i32 %33, ptr %idx, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then30
  br label %if.end37

if.else35:                                        ; preds = %if.end
  %34 = load ptr, ptr %p.addr, align 8
  %35 = load ptr, ptr %zRawSql.addr, align 8
  %36 = load i32, ptr %nToken, align 4
  %call36 = call i32 @sqlite3VdbeParameterIndex(ptr noundef %34, ptr noundef %35, i32 noundef %36)
  store i32 %call36, ptr %idx, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end34
  %37 = load i32, ptr %nToken, align 4
  %38 = load ptr, ptr %zRawSql.addr, align 8
  %idx.ext38 = sext i32 %37 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %38, i64 %idx.ext38
  store ptr %add.ptr39, ptr %zRawSql.addr, align 8
  %39 = load i32, ptr %idx, align 4
  %add = add nsw i32 %39, 1
  store i32 %add, ptr %nextIndex, align 4
  %40 = load ptr, ptr %p.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %40, i32 0, i32 22
  %41 = load ptr, ptr %aVar, align 8
  %42 = load i32, ptr %idx, align 4
  %sub = sub nsw i32 %42, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx40 = getelementptr inbounds %struct.sqlite3_value, ptr %41, i64 %idxprom
  store ptr %arrayidx40, ptr %pVar, align 8
  %43 = load ptr, ptr %pVar, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %43, i32 0, i32 1
  %44 = load i16, ptr %flags, align 8
  %conv41 = zext i16 %44 to i32
  %and = and i32 %conv41, 1
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end37
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef @.str.4, i32 noundef 4)
  br label %if.end105

if.else44:                                        ; preds = %if.end37
  %45 = load ptr, ptr %pVar, align 8
  %flags45 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %45, i32 0, i32 1
  %46 = load i16, ptr %flags45, align 8
  %conv46 = zext i16 %46 to i32
  %and47 = and i32 %conv46, 36
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else44
  %47 = load ptr, ptr %pVar, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %47, i32 0, i32 0
  %48 = load i64, ptr %u, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %out, ptr noundef @.str.111, i64 noundef %48)
  br label %if.end104

if.else50:                                        ; preds = %if.else44
  %49 = load ptr, ptr %pVar, align 8
  %flags51 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %49, i32 0, i32 1
  %50 = load i16, ptr %flags51, align 8
  %conv52 = zext i16 %50 to i32
  %and53 = and i32 %conv52, 8
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else50
  %51 = load ptr, ptr %pVar, align 8
  %u56 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %51, i32 0, i32 0
  %52 = load double, ptr %u56, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %out, ptr noundef @.str.112, double noundef %52)
  br label %if.end103

if.else57:                                        ; preds = %if.else50
  %53 = load ptr, ptr %pVar, align 8
  %flags58 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %53, i32 0, i32 1
  %54 = load i16, ptr %flags58, align 8
  %conv59 = zext i16 %54 to i32
  %and60 = and i32 %conv59, 2
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.else84

if.then62:                                        ; preds = %if.else57
  %55 = load ptr, ptr %db, align 8
  %enc63 = getelementptr inbounds nuw %struct.sqlite3, ptr %55, i32 0, i32 16
  %56 = load i8, ptr %enc63, align 2
  store i8 %56, ptr %enc, align 1
  %57 = load i8, ptr %enc, align 1
  %conv64 = zext i8 %57 to i32
  %cmp65 = icmp ne i32 %conv64, 1
  br i1 %cmp65, label %if.then67, label %if.end76

if.then67:                                        ; preds = %if.then62
  call void @llvm.memset.p0.i64(ptr align 8 %utf8, i8 0, i64 56, i1 false)
  %58 = load ptr, ptr %db, align 8
  %db68 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %utf8, i32 0, i32 9
  store ptr %58, ptr %db68, align 8
  %59 = load ptr, ptr %pVar, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %z, align 8
  %61 = load ptr, ptr %pVar, align 8
  %n69 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %n69, align 4
  %63 = load i8, ptr %enc, align 1
  %call70 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %utf8, ptr noundef %60, i32 noundef %62, i8 noundef zeroext %63, ptr noundef null)
  %call71 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %utf8, i32 noundef 1)
  %cmp72 = icmp eq i32 7, %call71
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then67
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %out, i32 0, i32 5
  store i8 7, ptr %accError, align 4
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %out, i32 0, i32 2
  store i32 0, ptr %nAlloc, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then67
  store ptr %utf8, ptr %pVar, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then62
  %64 = load ptr, ptr %pVar, align 8
  %n77 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %n77, align 4
  store i32 %65, ptr %nOut, align 4
  %66 = load i32, ptr %nOut, align 4
  %67 = load ptr, ptr %pVar, align 8
  %z78 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %67, i32 0, i32 5
  %68 = load ptr, ptr %z78, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %out, ptr noundef @.str.400, i32 noundef %66, ptr noundef %68)
  %69 = load i8, ptr %enc, align 1
  %conv79 = zext i8 %69 to i32
  %cmp80 = icmp ne i32 %conv79, 1
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end76
  call void @sqlite3VdbeMemRelease(ptr noundef %utf8)
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end76
  br label %if.end102

if.else84:                                        ; preds = %if.else57
  %70 = load ptr, ptr %pVar, align 8
  %flags85 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %70, i32 0, i32 1
  %71 = load i16, ptr %flags85, align 8
  %conv86 = zext i16 %71 to i32
  %and87 = and i32 %conv86, 16384
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else84
  %72 = load ptr, ptr %pVar, align 8
  %u90 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %72, i32 0, i32 0
  %73 = load i32, ptr %u90, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %out, ptr noundef @.str.401, i32 noundef %73)
  br label %if.end101

if.else91:                                        ; preds = %if.else84
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef @.str.402, i32 noundef 2)
  %74 = load ptr, ptr %pVar, align 8
  %n93 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %74, i32 0, i32 4
  %75 = load i32, ptr %n93, align 4
  store i32 %75, ptr %nOut92, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else91
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %nOut92, align 4
  %cmp94 = icmp slt i32 %76, %77
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load ptr, ptr %pVar, align 8
  %z96 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %78, i32 0, i32 5
  %79 = load ptr, ptr %z96, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom97 = sext i32 %80 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %79, i64 %idxprom97
  %81 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %81 to i32
  %and100 = and i32 %conv99, 255
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %out, ptr noundef @.str.403, i32 noundef %and100)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, ptr %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @sqlite3_str_append(ptr noundef %out, ptr noundef @.str.404, i32 noundef 1)
  br label %if.end101

if.end101:                                        ; preds = %for.end, %if.then89
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end83
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then55
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then49
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then43
  br label %while.cond15, !llvm.loop !10

while.end106:                                     ; preds = %if.then22, %while.cond15
  br label %if.end107

if.end107:                                        ; preds = %while.end106, %if.then13
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %while.end9
  %accError109 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %out, i32 0, i32 5
  %83 = load i8, ptr %accError109, align 4
  %tobool110 = icmp ne i8 %83, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  call void @sqlite3_str_reset(ptr noundef %out)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end108
  %call113 = call ptr @sqlite3StrAccumFinish(ptr noundef %out)
  ret ptr %call113
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @findNextHostParameter(ptr noundef, ptr noundef) #0

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
