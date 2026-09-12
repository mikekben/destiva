; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @resolveOrderByTermToExprList(ptr noundef %pParse, ptr noundef %pSelect, ptr noundef %pE) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %pE.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pEList = alloca ptr, align 8
  %nc = alloca %struct.NameContext, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %savedSuppErr = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pE, ptr %pE.addr, align 8
  %0 = load ptr, ptr %pSelect.addr, align 8
  %pEList1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pEList1, align 8
  store ptr %1, ptr %pEList, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %nc, i8 0, i64 56, i1 false)
  %2 = load ptr, ptr %pParse.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.NameContext, ptr %nc, i32 0, i32 0
  store ptr %2, ptr %pParse2, align 8
  %3 = load ptr, ptr %pSelect.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %pSrc, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %nc, i32 0, i32 1
  store ptr %4, ptr %pSrcList, align 8
  %5 = load ptr, ptr %pEList, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %nc, i32 0, i32 2
  store ptr %5, ptr %uNC, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %nc, i32 0, i32 6
  store i32 129, ptr %ncFlags, align 8
  %nErr = getelementptr inbounds nuw %struct.NameContext, ptr %nc, i32 0, i32 5
  store i32 0, ptr %nErr, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db3, align 8
  store ptr %7, ptr %db, align 8
  %8 = load ptr, ptr %db, align 8
  %suppressErr = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 23
  %9 = load i8, ptr %suppressErr, align 1
  store i8 %9, ptr %savedSuppErr, align 1
  %10 = load ptr, ptr %db, align 8
  %suppressErr4 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 23
  store i8 1, ptr %suppressErr4, align 1
  %11 = load ptr, ptr %pE.addr, align 8
  %call = call i32 @sqlite3ResolveExprNames(ptr noundef %nc, ptr noundef %11)
  store i32 %call, ptr %rc, align 4
  %12 = load i8, ptr %savedSuppErr, align 1
  %13 = load ptr, ptr %db, align 8
  %suppressErr5 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 23
  store i8 %12, ptr %suppressErr5, align 1
  %14 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %20 = load ptr, ptr %pExpr, align 8
  %21 = load ptr, ptr %pE.addr, align 8
  %call6 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %20, ptr noundef %21, i32 noundef -1)
  %cmp7 = icmp slt i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %add = add nsw i32 %22, 1
  store i32 %add, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
