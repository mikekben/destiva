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
%struct.TableLock = type { i32, i32, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSharable(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3TableLock(ptr noundef %pParse, i32 noundef %iDb, i32 noundef %iTab, i8 noundef zeroext %isWriteLock, ptr noundef %zName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %iTab.addr = alloca i32, align 4
  %isWriteLock.addr = alloca i8, align 1
  %zName.addr = alloca ptr, align 8
  %pToplevel = alloca ptr, align 8
  %i = alloca i32, align 4
  %nBytes = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store i32 %iTab, ptr %iTab.addr, align 4
  store i8 %isWriteLock, ptr %isWriteLock.addr, align 1
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pToplevel, align 8
  %5 = load i32, ptr %iDb.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end42

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %8, i64 %idxprom
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %10 = load ptr, ptr %pBt, align 8
  %call = call i32 @sqlite3BtreeSharable(ptr noundef %10)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  br label %if.end42

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %pToplevel, align 8
  %nTableLock = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 32
  %13 = load i32, ptr %nTableLock, align 8
  %cmp6 = icmp slt i32 %11, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pToplevel, align 8
  %aTableLock = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 33
  %15 = load ptr, ptr %aTableLock, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds %struct.TableLock, ptr %15, i64 %idxprom7
  store ptr %arrayidx8, ptr %p, align 8
  %17 = load ptr, ptr %p, align 8
  %iDb9 = getelementptr inbounds nuw %struct.TableLock, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %iDb9, align 8
  %19 = load i32, ptr %iDb.addr, align 4
  %cmp10 = icmp eq i32 %18, %19
  br i1 %cmp10, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %20 = load ptr, ptr %p, align 8
  %iTab11 = getelementptr inbounds nuw %struct.TableLock, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %iTab11, align 4
  %22 = load i32, ptr %iTab.addr, align 4
  %cmp12 = icmp eq i32 %21, %22
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %p, align 8
  %isWriteLock14 = getelementptr inbounds nuw %struct.TableLock, ptr %23, i32 0, i32 2
  %24 = load i8, ptr %isWriteLock14, align 8
  %conv = zext i8 %24 to i32
  %tobool15 = icmp ne i32 %conv, 0
  br i1 %tobool15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then13
  %25 = load i8, ptr %isWriteLock.addr, align 1
  %conv16 = zext i8 %25 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then13
  %26 = phi i1 [ true, %if.then13 ], [ %tobool17, %lor.rhs ]
  %lor.ext = zext i1 %26 to i32
  %conv18 = trunc i32 %lor.ext to i8
  %27 = load ptr, ptr %p, align 8
  %isWriteLock19 = getelementptr inbounds nuw %struct.TableLock, ptr %27, i32 0, i32 2
  store i8 %conv18, ptr %isWriteLock19, align 8
  br label %if.end42

if.end20:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %pToplevel, align 8
  %nTableLock21 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 32
  %30 = load i32, ptr %nTableLock21, align 8
  %add = add nsw i32 %30, 1
  %conv22 = sext i32 %add to i64
  %mul = mul i64 24, %conv22
  %conv23 = trunc i64 %mul to i32
  store i32 %conv23, ptr %nBytes, align 4
  %31 = load ptr, ptr %pToplevel, align 8
  %db24 = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %db24, align 8
  %33 = load ptr, ptr %pToplevel, align 8
  %aTableLock25 = getelementptr inbounds nuw %struct.Parse, ptr %33, i32 0, i32 33
  %34 = load ptr, ptr %aTableLock25, align 8
  %35 = load i32, ptr %nBytes, align 4
  %conv26 = sext i32 %35 to i64
  %call27 = call ptr @sqlite3DbReallocOrFree(ptr noundef %32, ptr noundef %34, i64 noundef %conv26)
  %36 = load ptr, ptr %pToplevel, align 8
  %aTableLock28 = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 33
  store ptr %call27, ptr %aTableLock28, align 8
  %37 = load ptr, ptr %pToplevel, align 8
  %aTableLock29 = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 33
  %38 = load ptr, ptr %aTableLock29, align 8
  %tobool30 = icmp ne ptr %38, null
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.end
  %39 = load ptr, ptr %pToplevel, align 8
  %aTableLock32 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 33
  %40 = load ptr, ptr %aTableLock32, align 8
  %41 = load ptr, ptr %pToplevel, align 8
  %nTableLock33 = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 32
  %42 = load i32, ptr %nTableLock33, align 8
  %inc34 = add nsw i32 %42, 1
  store i32 %inc34, ptr %nTableLock33, align 8
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds %struct.TableLock, ptr %40, i64 %idxprom35
  store ptr %arrayidx36, ptr %p, align 8
  %43 = load i32, ptr %iDb.addr, align 4
  %44 = load ptr, ptr %p, align 8
  %iDb37 = getelementptr inbounds nuw %struct.TableLock, ptr %44, i32 0, i32 0
  store i32 %43, ptr %iDb37, align 8
  %45 = load i32, ptr %iTab.addr, align 4
  %46 = load ptr, ptr %p, align 8
  %iTab38 = getelementptr inbounds nuw %struct.TableLock, ptr %46, i32 0, i32 1
  store i32 %45, ptr %iTab38, align 4
  %47 = load i8, ptr %isWriteLock.addr, align 1
  %48 = load ptr, ptr %p, align 8
  %isWriteLock39 = getelementptr inbounds nuw %struct.TableLock, ptr %48, i32 0, i32 2
  store i8 %47, ptr %isWriteLock39, align 8
  %49 = load ptr, ptr %zName.addr, align 8
  %50 = load ptr, ptr %p, align 8
  %zLockName = getelementptr inbounds nuw %struct.TableLock, ptr %50, i32 0, i32 3
  store ptr %49, ptr %zLockName, align 8
  br label %if.end42

if.else:                                          ; preds = %for.end
  %51 = load ptr, ptr %pToplevel, align 8
  %nTableLock40 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 32
  store i32 0, ptr %nTableLock40, align 8
  %52 = load ptr, ptr %pToplevel, align 8
  %db41 = getelementptr inbounds nuw %struct.Parse, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %db41, align 8
  call void @sqlite3OomFault(ptr noundef %53)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then31, %lor.end, %if.then4, %if.then
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
