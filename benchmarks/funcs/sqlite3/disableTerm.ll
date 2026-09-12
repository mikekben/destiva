; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }

; Function Attrs: nounwind uwtable
define hidden void @disableTerm(ptr noundef %pLevel, ptr noundef %pTerm) #0 {
entry:
  %pLevel.addr = alloca ptr, align 8
  %pTerm.addr = alloca ptr, align 8
  %nLoop = alloca i32, align 4
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store ptr %pTerm, ptr %pTerm.addr, align 8
  store i32 0, ptr %nLoop, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %entry
  %0 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 3
  %1 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin = getelementptr inbounds nuw %struct.WhereLevel, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iLeftJoin, align 8
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %pTerm.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %flags, align 4
  %and4 = and i32 %6, 1
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load ptr, ptr %pLevel.addr, align 8
  %notReady = getelementptr inbounds nuw %struct.WhereLevel, ptr %7, i32 0, i32 21
  %8 = load i64, ptr %notReady, align 8
  %9 = load ptr, ptr %pTerm.addr, align 8
  %prereqAll = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 12
  %10 = load i64, ptr %prereqAll, align 8
  %and7 = and i64 %8, %10
  %cmp8 = icmp eq i64 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %while.cond
  %11 = phi i1 [ false, %lor.lhs.false ], [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %nLoop, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %while.body
  %13 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags11 = getelementptr inbounds nuw %struct.WhereTerm, ptr %13, i32 0, i32 3
  %14 = load i16, ptr %wtFlags11, align 2
  %conv12 = zext i16 %14 to i32
  %and13 = and i32 %conv12, 1024
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true10
  %15 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags16 = getelementptr inbounds nuw %struct.WhereTerm, ptr %15, i32 0, i32 3
  %16 = load i16, ptr %wtFlags16, align 2
  %conv17 = zext i16 %16 to i32
  %or = or i32 %conv17, 512
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, ptr %wtFlags16, align 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true10, %while.body
  %17 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags19 = getelementptr inbounds nuw %struct.WhereTerm, ptr %17, i32 0, i32 3
  %18 = load i16, ptr %wtFlags19, align 2
  %conv20 = zext i16 %18 to i32
  %or21 = or i32 %conv20, 4
  %conv22 = trunc i32 %or21 to i16
  store i16 %conv22, ptr %wtFlags19, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load ptr, ptr %pTerm.addr, align 8
  %iParent = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %iParent, align 8
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  br label %while.end

if.end26:                                         ; preds = %if.end
  %21 = load ptr, ptr %pTerm.addr, align 8
  %pWC = getelementptr inbounds nuw %struct.WhereTerm, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pWC, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %a, align 8
  %24 = load ptr, ptr %pTerm.addr, align 8
  %iParent27 = getelementptr inbounds nuw %struct.WhereTerm, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %iParent27, align 8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %23, i64 %idxprom
  store ptr %arrayidx, ptr %pTerm.addr, align 8
  %26 = load ptr, ptr %pTerm.addr, align 8
  %nChild = getelementptr inbounds nuw %struct.WhereTerm, ptr %26, i32 0, i32 5
  %27 = load i8, ptr %nChild, align 2
  %dec = add i8 %27, -1
  store i8 %dec, ptr %nChild, align 2
  %28 = load ptr, ptr %pTerm.addr, align 8
  %nChild28 = getelementptr inbounds nuw %struct.WhereTerm, ptr %28, i32 0, i32 5
  %29 = load i8, ptr %nChild28, align 2
  %conv29 = zext i8 %29 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  br label %while.end

if.end33:                                         ; preds = %if.end26
  %30 = load i32, ptr %nLoop, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %nLoop, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then32, %if.then25, %land.end
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
