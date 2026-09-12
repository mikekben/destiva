; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereClauseInsert(ptr noundef %pWC, ptr noundef %p, i16 noundef zeroext %wtFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pWC.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %wtFlags.addr = alloca i16, align 2
  %pTerm = alloca ptr, align 8
  %idx = alloca i32, align 4
  %pOld = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i16 %wtFlags, ptr %wtFlags.addr, align 2
  %0 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nTerm, align 4
  %2 = load ptr, ptr %pWC.addr, align 8
  %nSlot = getelementptr inbounds nuw %struct.WhereClause, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nSlot, align 8
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %a, align 8
  store ptr %5, ptr %pOld, align 8
  %6 = load ptr, ptr %pWC.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParse, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db1, align 8
  store ptr %9, ptr %db, align 8
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %pWC.addr, align 8
  %nSlot2 = getelementptr inbounds nuw %struct.WhereClause, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %nSlot2, align 8
  %conv = sext i32 %12 to i64
  %mul = mul i64 64, %conv
  %mul3 = mul i64 %mul, 2
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %10, i64 noundef %mul3)
  %13 = load ptr, ptr %pWC.addr, align 8
  %a4 = getelementptr inbounds nuw %struct.WhereClause, ptr %13, i32 0, i32 6
  store ptr %call, ptr %a4, align 8
  %14 = load ptr, ptr %pWC.addr, align 8
  %a5 = getelementptr inbounds nuw %struct.WhereClause, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %a5, align 8
  %cmp6 = icmp eq ptr %15, null
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then
  %16 = load i16, ptr %wtFlags.addr, align 2
  %conv9 = zext i16 %16 to i32
  %and = and i32 %conv9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then8
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %p.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %17, ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then8
  %19 = load ptr, ptr %pOld, align 8
  %20 = load ptr, ptr %pWC.addr, align 8
  %a11 = getelementptr inbounds nuw %struct.WhereClause, ptr %20, i32 0, i32 6
  store ptr %19, ptr %a11, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then
  %21 = load ptr, ptr %pWC.addr, align 8
  %a13 = getelementptr inbounds nuw %struct.WhereClause, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %a13, align 8
  %23 = load ptr, ptr %pOld, align 8
  %24 = load ptr, ptr %pWC.addr, align 8
  %nTerm14 = getelementptr inbounds nuw %struct.WhereClause, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %nTerm14, align 4
  %conv15 = sext i32 %25 to i64
  %mul16 = mul i64 64, %conv15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %23, i64 %mul16, i1 false)
  %26 = load ptr, ptr %pOld, align 8
  %27 = load ptr, ptr %pWC.addr, align 8
  %aStatic = getelementptr inbounds nuw %struct.WhereClause, ptr %27, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.WhereTerm], ptr %aStatic, i64 0, i64 0
  %cmp17 = icmp ne ptr %26, %arraydecay
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end12
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pOld, align 8
  call void @sqlite3DbFree(ptr noundef %28, ptr noundef %29)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end12
  %30 = load ptr, ptr %db, align 8
  %31 = load ptr, ptr %pWC.addr, align 8
  %a21 = getelementptr inbounds nuw %struct.WhereClause, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %a21, align 8
  %call22 = call i32 @sqlite3DbMallocSize(ptr noundef %30, ptr noundef %32)
  %conv23 = sext i32 %call22 to i64
  %div = udiv i64 %conv23, 64
  %conv24 = trunc i64 %div to i32
  %33 = load ptr, ptr %pWC.addr, align 8
  %nSlot25 = getelementptr inbounds nuw %struct.WhereClause, ptr %33, i32 0, i32 5
  store i32 %conv24, ptr %nSlot25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %entry
  %34 = load ptr, ptr %pWC.addr, align 8
  %a27 = getelementptr inbounds nuw %struct.WhereClause, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %a27, align 8
  %36 = load ptr, ptr %pWC.addr, align 8
  %nTerm28 = getelementptr inbounds nuw %struct.WhereClause, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %nTerm28, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %nTerm28, align 4
  store i32 %37, ptr %idx, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %35, i64 %idxprom
  store ptr %arrayidx, ptr %pTerm, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %tobool29 = icmp ne ptr %38, null
  br i1 %tobool29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end26
  %39 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %flags, align 4
  %and30 = and i32 %40, 262144
  %cmp31 = icmp ne i32 %and30, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %p.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 8
  %42 = load i32, ptr %iTable, align 4
  %conv34 = sext i32 %42 to i64
  %call35 = call signext i16 @sqlite3LogEst(i64 noundef %conv34)
  %conv36 = sext i16 %call35 to i32
  %sub = sub nsw i32 %conv36, 270
  %conv37 = trunc i32 %sub to i16
  %43 = load ptr, ptr %pTerm, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %43, i32 0, i32 2
  store i16 %conv37, ptr %truthProb, align 8
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true, %if.end26
  %44 = load ptr, ptr %pTerm, align 8
  %truthProb38 = getelementptr inbounds nuw %struct.WhereTerm, ptr %44, i32 0, i32 2
  store i16 1, ptr %truthProb38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then33
  %45 = load ptr, ptr %p.addr, align 8
  %call40 = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %45)
  %46 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %46, i32 0, i32 0
  store ptr %call40, ptr %pExpr, align 8
  %47 = load i16, ptr %wtFlags.addr, align 2
  %48 = load ptr, ptr %pTerm, align 8
  %wtFlags41 = getelementptr inbounds nuw %struct.WhereTerm, ptr %48, i32 0, i32 3
  store i16 %47, ptr %wtFlags41, align 2
  %49 = load ptr, ptr %pWC.addr, align 8
  %50 = load ptr, ptr %pTerm, align 8
  %pWC42 = getelementptr inbounds nuw %struct.WhereTerm, ptr %50, i32 0, i32 1
  store ptr %49, ptr %pWC42, align 8
  %51 = load ptr, ptr %pTerm, align 8
  %iParent = getelementptr inbounds nuw %struct.WhereTerm, ptr %51, i32 0, i32 7
  store i32 -1, ptr %iParent, align 8
  %52 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %52, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr align 4 %eOperator, i8 0, i64 44, i1 false)
  %53 = load i32, ptr %idx, align 4
  store i32 %53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.end
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
