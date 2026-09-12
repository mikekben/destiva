; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
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
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.6 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.704 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.705 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HaltConstraint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3UniqueConstraint(ptr noundef %pParse, i32 noundef %onError, ptr noundef %pIdx) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %j = alloca i32, align 4
  %errMsg = alloca %struct.sqlite3_str, align 8
  %pTab = alloca ptr, align 8
  %zCol = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pTable, align 8
  store ptr %1, ptr %pTab, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db1, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %6 = load i32, ptr %arrayidx, align 4
  call void @sqlite3StrAccumInit(ptr noundef %errMsg, ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef %6)
  %7 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %aColExpr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pIdx.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %errMsg, ptr noundef @.str.704, ptr noundef %10)
  br label %if.end10

if.else:                                          ; preds = %entry
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, ptr %j, align 4
  %12 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %12, i32 0, i32 13
  %13 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %13 to i32
  %cmp = icmp slt i32 %11, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %aCol, align 8
  %16 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %aiColumn, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %17, i64 %idxprom
  %19 = load i16, ptr %arrayidx3, align 2
  %idxprom4 = sext i16 %19 to i64
  %arrayidx5 = getelementptr inbounds %struct.Column, ptr %15, i64 %idxprom4
  %zName6 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx5, i32 0, i32 0
  %20 = load ptr, ptr %zName6, align 8
  store ptr %20, ptr %zCol, align 8
  %21 = load i32, ptr %j, align 4
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  call void @sqlite3_str_append(ptr noundef %errMsg, ptr noundef @.str.705, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  %22 = load ptr, ptr %pTab, align 8
  %zName9 = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName9, align 8
  call void @sqlite3_str_appendall(ptr noundef %errMsg, ptr noundef %23)
  call void @sqlite3_str_append(ptr noundef %errMsg, ptr noundef @.str.6, i32 noundef 1)
  %24 = load ptr, ptr %zCol, align 8
  call void @sqlite3_str_appendall(ptr noundef %errMsg, ptr noundef %24)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then
  %call = call ptr @sqlite3StrAccumFinish(ptr noundef %errMsg)
  store ptr %call, ptr %zErr, align 8
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %pIdx.addr, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp11 = icmp eq i32 %bf.cast, 2
  %28 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, i32 1555, i32 2067
  %29 = load i32, ptr %onError.addr, align 4
  %30 = load ptr, ptr %zErr, align 8
  call void @sqlite3HaltConstraint(ptr noundef %26, i32 noundef %cond, i32 noundef %29, ptr noundef %30, i8 noundef signext -7, i8 noundef zeroext 2)
  ret void
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
