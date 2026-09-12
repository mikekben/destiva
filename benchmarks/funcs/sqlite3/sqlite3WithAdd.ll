; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.947 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WithAdd(ptr noundef %pParse, ptr noundef %pWith, ptr noundef %pName, ptr noundef %pArglist, ptr noundef %pQuery) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWith.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %pArglist.addr = alloca ptr, align 8
  %pQuery.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %i = alloca i32, align 4
  %nByte = alloca i64, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWith, ptr %pWith.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %pArglist, ptr %pArglist.addr, align 8
  store ptr %pQuery, ptr %pQuery.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  %4 = load ptr, ptr %pName.addr, align 8
  %call = call ptr @sqlite3NameFromToken(ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %zName, align 8
  %5 = load ptr, ptr %zName, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pWith.addr, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %pWith.addr, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nCte, align 8
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %zName, align 8
  %11 = load ptr, ptr %pWith.addr, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  %zName4 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx, i32 0, i32 0
  %13 = load ptr, ptr %zName4, align 8
  %call5 = call i32 @sqlite3StrICmp(ptr noundef %10, ptr noundef %13)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %14, ptr noundef @.str.947, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end8

if.end8:                                          ; preds = %for.end, %land.lhs.true, %entry
  %17 = load ptr, ptr %pWith.addr, align 8
  %tobool9 = icmp ne ptr %17, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %18 = load ptr, ptr %pWith.addr, align 8
  %nCte11 = getelementptr inbounds nuw %struct.With, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nCte11, align 8
  %conv = sext i32 %19 to i64
  %mul = mul i64 32, %conv
  %add = add i64 48, %mul
  store i64 %add, ptr %nByte, align 8
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pWith.addr, align 8
  %22 = load i64, ptr %nByte, align 8
  %call12 = call ptr @sqlite3DbRealloc(ptr noundef %20, ptr noundef %21, i64 noundef %22)
  store ptr %call12, ptr %pNew, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end8
  %23 = load ptr, ptr %db, align 8
  %call13 = call ptr @sqlite3DbMallocZero(ptr noundef %23, i64 noundef 48)
  store ptr %call13, ptr %pNew, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %24 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 19
  %25 = load i8, ptr %mallocFailed, align 1
  %tobool15 = icmp ne i8 %25, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  %26 = load ptr, ptr %db, align 8
  %27 = load ptr, ptr %pArglist.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pQuery.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %db, align 8
  %31 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %pWith.addr, align 8
  store ptr %32, ptr %pNew, align 8
  br label %if.end37

if.else17:                                        ; preds = %if.end14
  %33 = load ptr, ptr %pQuery.addr, align 8
  %34 = load ptr, ptr %pNew, align 8
  %a18 = getelementptr inbounds nuw %struct.With, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %pNew, align 8
  %nCte19 = getelementptr inbounds nuw %struct.With, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nCte19, align 8
  %idxprom20 = sext i32 %36 to i64
  %arrayidx21 = getelementptr inbounds [1 x %struct.Cte], ptr %a18, i64 0, i64 %idxprom20
  %pSelect = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx21, i32 0, i32 2
  store ptr %33, ptr %pSelect, align 8
  %37 = load ptr, ptr %pArglist.addr, align 8
  %38 = load ptr, ptr %pNew, align 8
  %a22 = getelementptr inbounds nuw %struct.With, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pNew, align 8
  %nCte23 = getelementptr inbounds nuw %struct.With, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %nCte23, align 8
  %idxprom24 = sext i32 %40 to i64
  %arrayidx25 = getelementptr inbounds [1 x %struct.Cte], ptr %a22, i64 0, i64 %idxprom24
  %pCols = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx25, i32 0, i32 1
  store ptr %37, ptr %pCols, align 8
  %41 = load ptr, ptr %zName, align 8
  %42 = load ptr, ptr %pNew, align 8
  %a26 = getelementptr inbounds nuw %struct.With, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pNew, align 8
  %nCte27 = getelementptr inbounds nuw %struct.With, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %nCte27, align 8
  %idxprom28 = sext i32 %44 to i64
  %arrayidx29 = getelementptr inbounds [1 x %struct.Cte], ptr %a26, i64 0, i64 %idxprom28
  %zName30 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx29, i32 0, i32 0
  store ptr %41, ptr %zName30, align 8
  %45 = load ptr, ptr %pNew, align 8
  %a31 = getelementptr inbounds nuw %struct.With, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %pNew, align 8
  %nCte32 = getelementptr inbounds nuw %struct.With, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %nCte32, align 8
  %idxprom33 = sext i32 %47 to i64
  %arrayidx34 = getelementptr inbounds [1 x %struct.Cte], ptr %a31, i64 0, i64 %idxprom33
  %zCteErr = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx34, i32 0, i32 3
  store ptr null, ptr %zCteErr, align 8
  %48 = load ptr, ptr %pNew, align 8
  %nCte35 = getelementptr inbounds nuw %struct.With, ptr %48, i32 0, i32 0
  %49 = load i32, ptr %nCte35, align 8
  %inc36 = add nsw i32 %49, 1
  store i32 %inc36, ptr %nCte35, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else17, %if.then16
  %50 = load ptr, ptr %pNew, align 8
  ret ptr %50
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
