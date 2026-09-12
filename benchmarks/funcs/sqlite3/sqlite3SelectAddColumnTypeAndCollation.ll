; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pSelect, i8 noundef signext %aff) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %aff.addr = alloca i8, align 1
  %db = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %pCol = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %a = alloca ptr, align 8
  %zType = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i8 %aff, ptr %aff.addr, align 1
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr %pSelect.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pSrc, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %5, ptr %pSrcList, align 8
  %6 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pEList, align 8
  %a2 = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a2, i64 0, i64 0
  store ptr %arraydecay, ptr %a, align 8
  store i32 0, ptr %i, align 4
  %8 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aCol, align 8
  store ptr %9, ptr %pCol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 11
  %12 = load i16, ptr %nCol, align 2
  %conv = sext i16 %12 to i32
  %cmp = icmp slt i32 %10, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %a, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.ExprList_item, ptr %13, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %15 = load ptr, ptr %pExpr, align 8
  store ptr %15, ptr %p, align 8
  %16 = load ptr, ptr %p, align 8
  %call = call ptr @columnTypeImpl(ptr noundef %sNC, ptr noundef %16)
  store ptr %call, ptr %zType, align 8
  %17 = load ptr, ptr %p, align 8
  %call4 = call signext i8 @sqlite3ExprAffinity(ptr noundef %17)
  %18 = load ptr, ptr %pCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %18, i32 0, i32 4
  store i8 %call4, ptr %affinity, align 1
  %19 = load ptr, ptr %zType, align 8
  %tobool5 = icmp ne ptr %19, null
  br i1 %tobool5, label %if.then6, label %if.end26

if.then6:                                         ; preds = %for.body
  %20 = load ptr, ptr %zType, align 8
  %call7 = call i32 @sqlite3Strlen30(ptr noundef %20)
  store i32 %call7, ptr %m, align 4
  %21 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zName, align 8
  %call8 = call i32 @sqlite3Strlen30(ptr noundef %22)
  store i32 %call8, ptr %n, align 4
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pCol, align 8
  %zName9 = getelementptr inbounds nuw %struct.Column, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zName9, align 8
  %26 = load i32, ptr %n, align 4
  %27 = load i32, ptr %m, align 4
  %add = add nsw i32 %26, %27
  %add10 = add nsw i32 %add, 2
  %conv11 = sext i32 %add10 to i64
  %call12 = call ptr @sqlite3DbReallocOrFree(ptr noundef %23, ptr noundef %25, i64 noundef %conv11)
  %28 = load ptr, ptr %pCol, align 8
  %zName13 = getelementptr inbounds nuw %struct.Column, ptr %28, i32 0, i32 0
  store ptr %call12, ptr %zName13, align 8
  %29 = load ptr, ptr %pCol, align 8
  %zName14 = getelementptr inbounds nuw %struct.Column, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %zName14, align 8
  %tobool15 = icmp ne ptr %30, null
  br i1 %tobool15, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.then6
  %31 = load ptr, ptr %pCol, align 8
  %zName17 = getelementptr inbounds nuw %struct.Column, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %zName17, align 8
  %33 = load i32, ptr %n, align 4
  %add18 = add nsw i32 %33, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %32, i64 %idxprom19
  %34 = load ptr, ptr %zType, align 8
  %35 = load i32, ptr %m, align 4
  %add21 = add nsw i32 %35, 1
  %conv22 = sext i32 %add21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx20, ptr align 1 %34, i64 %conv22, i1 false)
  %36 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %36, i32 0, i32 6
  %37 = load i8, ptr %colFlags, align 1
  %conv23 = zext i8 %37 to i32
  %or = or i32 %conv23, 4
  %conv24 = trunc i32 %or to i8
  store i8 %conv24, ptr %colFlags, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.then6
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %for.body
  %38 = load ptr, ptr %pCol, align 8
  %affinity27 = getelementptr inbounds nuw %struct.Column, ptr %38, i32 0, i32 4
  %39 = load i8, ptr %affinity27, align 1
  %conv28 = sext i8 %39 to i32
  %cmp29 = icmp sle i32 %conv28, 64
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end26
  %40 = load i8, ptr %aff.addr, align 1
  %41 = load ptr, ptr %pCol, align 8
  %affinity32 = getelementptr inbounds nuw %struct.Column, ptr %41, i32 0, i32 4
  store i8 %40, ptr %affinity32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end26
  %42 = load ptr, ptr %pParse.addr, align 8
  %43 = load ptr, ptr %p, align 8
  %call34 = call ptr @sqlite3ExprCollSeq(ptr noundef %42, ptr noundef %43)
  store ptr %call34, ptr %pColl, align 8
  %44 = load ptr, ptr %pColl, align 8
  %tobool35 = icmp ne ptr %44, null
  br i1 %tobool35, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end33
  %45 = load ptr, ptr %pCol, align 8
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %zColl, align 8
  %cmp36 = icmp eq ptr %46, null
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %db, align 8
  %48 = load ptr, ptr %pColl, align 8
  %zName39 = getelementptr inbounds nuw %struct.CollSeq, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %zName39, align 8
  %call40 = call ptr @sqlite3DbStrDup(ptr noundef %47, ptr noundef %49)
  %50 = load ptr, ptr %pCol, align 8
  %zColl41 = getelementptr inbounds nuw %struct.Column, ptr %50, i32 0, i32 2
  store ptr %call40, ptr %zColl41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %land.lhs.true, %if.end33
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %51 = load i32, ptr %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %i, align 4
  %52 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %53 = load ptr, ptr %pTab.addr, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 13
  store i16 1, ptr %szTabRow, align 2
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @columnTypeImpl(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
