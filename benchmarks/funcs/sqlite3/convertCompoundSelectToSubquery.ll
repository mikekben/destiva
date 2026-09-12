; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppendFromTerm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @convertCompoundSelectToSubquery(ptr noundef %pWalker, ptr noundef %p) #2 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %db = alloca ptr, align 8
  %a = alloca ptr, align 8
  %pNewSrc = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %dummy = alloca %struct.Token, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %pPrior, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pOrderBy, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  store ptr %4, ptr %pX, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load ptr, ptr %pX, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pX, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %op, align 8
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 131
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load ptr, ptr %pX, align 8
  %op6 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %op6, align 8
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 134
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %cmp8, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %10, %lor.end ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %pX, align 8
  %pPrior10 = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 13
  %13 = load ptr, ptr %pPrior10, align 8
  store ptr %13, ptr %pX, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %14 = load ptr, ptr %pX, align 8
  %cmp11 = icmp eq ptr %14, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.end
  %15 = load ptr, ptr %p.addr, align 8
  %pOrderBy15 = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pOrderBy15, align 8
  %a16 = getelementptr inbounds nuw %struct.ExprList, ptr %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a16, i64 0, i64 0
  store ptr %arraydecay, ptr %a, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %pOrderBy17 = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pOrderBy17, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nExpr, align 8
  %sub = sub nsw i32 %19, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %if.end14
  %20 = load i32, ptr %i, align 4
  %cmp19 = icmp sge i32 %20, 0
  br i1 %cmp19, label %for.body21, label %for.end26

for.body21:                                       ; preds = %for.cond18
  %21 = load ptr, ptr %a, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.ExprList_item, ptr %21, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %23 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 256
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  br label %for.end26

if.end24:                                         ; preds = %for.body21
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %25 = load i32, ptr %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end26:                                        ; preds = %if.then23, %for.cond18
  %26 = load i32, ptr %i, align 4
  %cmp27 = icmp slt i32 %26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end26
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %for.end26
  %27 = load ptr, ptr %pWalker.addr, align 8
  %pParse31 = getelementptr inbounds nuw %struct.Walker, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pParse31, align 8
  store ptr %28, ptr %pParse, align 8
  %29 = load ptr, ptr %pParse, align 8
  %db32 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %db32, align 8
  store ptr %30, ptr %db, align 8
  %31 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %31, i64 noundef 128)
  store ptr %call, ptr %pNew, align 8
  %32 = load ptr, ptr %pNew, align 8
  %cmp33 = icmp eq ptr %32, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  store i32 2, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end30
  call void @llvm.memset.p0.i64(ptr align 8 %dummy, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %pParse, align 8
  %34 = load ptr, ptr %pNew, align 8
  %call37 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %dummy, ptr noundef %34, ptr noundef null, ptr noundef null)
  store ptr %call37, ptr %pNewSrc, align 8
  %35 = load ptr, ptr %pNewSrc, align 8
  %cmp38 = icmp eq ptr %35, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  store i32 2, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %36 = load ptr, ptr %pNew, align 8
  %37 = load ptr, ptr %p.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %37, i64 128, i1 false)
  %38 = load ptr, ptr %pNewSrc, align 8
  %39 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 8
  store ptr %38, ptr %pSrc, align 8
  %40 = load ptr, ptr %pParse, align 8
  %41 = load ptr, ptr %db, align 8
  %call42 = call ptr @sqlite3Expr(ptr noundef %41, i32 noundef 175, ptr noundef null)
  %call43 = call ptr @sqlite3ExprListAppend(ptr noundef %40, ptr noundef null, ptr noundef %call42)
  %42 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %42, i32 0, i32 0
  store ptr %call43, ptr %pEList, align 8
  %43 = load ptr, ptr %p.addr, align 8
  %op44 = getelementptr inbounds nuw %struct.Select, ptr %43, i32 0, i32 1
  store i8 -122, ptr %op44, align 8
  %44 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %44, i32 0, i32 9
  store ptr null, ptr %pWhere, align 8
  %45 = load ptr, ptr %pNew, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %45, i32 0, i32 10
  store ptr null, ptr %pGroupBy, align 8
  %46 = load ptr, ptr %pNew, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %46, i32 0, i32 11
  store ptr null, ptr %pHaving, align 8
  %47 = load ptr, ptr %pNew, align 8
  %pOrderBy45 = getelementptr inbounds nuw %struct.Select, ptr %47, i32 0, i32 12
  store ptr null, ptr %pOrderBy45, align 8
  %48 = load ptr, ptr %p.addr, align 8
  %pPrior46 = getelementptr inbounds nuw %struct.Select, ptr %48, i32 0, i32 13
  store ptr null, ptr %pPrior46, align 8
  %49 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 14
  store ptr null, ptr %pNext, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %50, i32 0, i32 16
  store ptr null, ptr %pWith, align 8
  %51 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %selFlags, align 4
  %and47 = and i32 %52, -257
  store i32 %and47, ptr %selFlags, align 4
  %53 = load ptr, ptr %p.addr, align 8
  %selFlags48 = getelementptr inbounds nuw %struct.Select, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %selFlags48, align 4
  %or = or i32 %54, 65536
  store i32 %or, ptr %selFlags48, align 4
  %55 = load ptr, ptr %pNew, align 8
  %56 = load ptr, ptr %pNew, align 8
  %pPrior49 = getelementptr inbounds nuw %struct.Select, ptr %56, i32 0, i32 13
  %57 = load ptr, ptr %pPrior49, align 8
  %pNext50 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 14
  store ptr %55, ptr %pNext50, align 8
  %58 = load ptr, ptr %pNew, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %58, i32 0, i32 15
  store ptr null, ptr %pLimit, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then40, %if.then35, %if.then29, %if.then13, %if.then2, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
