; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsInteger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereLoopOutputAdjust(ptr noundef %pWC, ptr noundef %pLoop, i16 noundef signext %nRow) #0 {
entry:
  %pWC.addr = alloca ptr, align 8
  %pLoop.addr = alloca ptr, align 8
  %nRow.addr = alloca i16, align 2
  %pTerm = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %notAllowed = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iReduce = alloca i16, align 2
  %pRight = alloca ptr, align 8
  %k = alloca i32, align 4
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pLoop, ptr %pLoop.addr, align 8
  store i16 %nRow, ptr %nRow.addr, align 2
  %0 = load ptr, ptr %pLoop.addr, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %prereq, align 8
  %2 = load ptr, ptr %pLoop.addr, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %maskSelf, align 8
  %or = or i64 %1, %3
  %not = xor i64 %or, -1
  store i64 %not, ptr %notAllowed, align 8
  store i16 0, ptr %iReduce, align 2
  %4 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %nTerm, align 4
  store i32 %5, ptr %i, align 4
  %6 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %a, align 8
  store ptr %7, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %entry
  %8 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 2
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end76

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %pTerm, align 8
  %prereqAll = getelementptr inbounds nuw %struct.WhereTerm, ptr %11, i32 0, i32 12
  %12 = load i64, ptr %prereqAll, align 8
  %13 = load ptr, ptr %pLoop.addr, align 8
  %maskSelf3 = getelementptr inbounds nuw %struct.WhereLoop, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %maskSelf3, align 8
  %and4 = and i64 %12, %14
  %cmp5 = icmp eq i64 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.inc74

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %pTerm, align 8
  %prereqAll9 = getelementptr inbounds nuw %struct.WhereTerm, ptr %15, i32 0, i32 12
  %16 = load i64, ptr %prereqAll9, align 8
  %17 = load i64, ptr %notAllowed, align 8
  %and10 = and i64 %16, %17
  %cmp11 = icmp ne i64 %and10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  br label %for.inc74

if.end14:                                         ; preds = %if.end8
  %18 = load ptr, ptr %pLoop.addr, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 9
  %19 = load i16, ptr %nLTerm, align 4
  %conv15 = zext i16 %19 to i32
  %sub = sub nsw i32 %conv15, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end14
  %20 = load i32, ptr %j, align 4
  %cmp17 = icmp sge i32 %20, 0
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond16
  %21 = load ptr, ptr %pLoop.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %aLTerm, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8
  store ptr %24, ptr %pX, align 8
  %25 = load ptr, ptr %pX, align 8
  %cmp20 = icmp eq ptr %25, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body19
  br label %for.inc

if.end23:                                         ; preds = %for.body19
  %26 = load ptr, ptr %pX, align 8
  %27 = load ptr, ptr %pTerm, align 8
  %cmp24 = icmp eq ptr %26, %27
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  br label %for.end

if.end27:                                         ; preds = %if.end23
  %28 = load ptr, ptr %pX, align 8
  %iParent = getelementptr inbounds nuw %struct.WhereTerm, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %iParent, align 8
  %cmp28 = icmp sge i32 %29, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end27
  %30 = load ptr, ptr %pWC.addr, align 8
  %a30 = getelementptr inbounds nuw %struct.WhereClause, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %a30, align 8
  %32 = load ptr, ptr %pX, align 8
  %iParent31 = getelementptr inbounds nuw %struct.WhereTerm, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %iParent31, align 8
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds %struct.WhereTerm, ptr %31, i64 %idxprom32
  %34 = load ptr, ptr %pTerm, align 8
  %cmp34 = icmp eq ptr %arrayidx33, %34
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  br label %for.end

if.end37:                                         ; preds = %land.lhs.true, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then22
  %35 = load i32, ptr %j, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond16, !llvm.loop !6

for.end:                                          ; preds = %if.then36, %if.then26, %for.cond16
  %36 = load i32, ptr %j, align 4
  %cmp38 = icmp slt i32 %36, 0
  br i1 %cmp38, label %if.then40, label %if.end73

if.then40:                                        ; preds = %for.end
  %37 = load ptr, ptr %pTerm, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %37, i32 0, i32 2
  %38 = load i16, ptr %truthProb, align 8
  %conv41 = sext i16 %38 to i32
  %cmp42 = icmp sle i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then40
  %39 = load ptr, ptr %pTerm, align 8
  %truthProb45 = getelementptr inbounds nuw %struct.WhereTerm, ptr %39, i32 0, i32 2
  %40 = load i16, ptr %truthProb45, align 8
  %conv46 = sext i16 %40 to i32
  %41 = load ptr, ptr %pLoop.addr, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %41, i32 0, i32 6
  %42 = load i16, ptr %nOut, align 2
  %conv47 = sext i16 %42 to i32
  %add = add nsw i32 %conv47, %conv46
  %conv48 = trunc i32 %add to i16
  store i16 %conv48, ptr %nOut, align 2
  br label %if.end72

if.else:                                          ; preds = %if.then40
  %43 = load ptr, ptr %pLoop.addr, align 8
  %nOut49 = getelementptr inbounds nuw %struct.WhereLoop, ptr %43, i32 0, i32 6
  %44 = load i16, ptr %nOut49, align 2
  %dec50 = add i16 %44, -1
  store i16 %dec50, ptr %nOut49, align 2
  %45 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %45, i32 0, i32 4
  %46 = load i16, ptr %eOperator, align 4
  %conv51 = zext i16 %46 to i32
  %and52 = and i32 %conv51, 130
  %tobool = icmp ne i32 %and52, 0
  br i1 %tobool, label %if.then53, label %if.end71

if.then53:                                        ; preds = %if.else
  %47 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pExpr, align 8
  %pRight54 = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %pRight54, align 8
  store ptr %49, ptr %pRight, align 8
  store i32 0, ptr %k, align 4
  %50 = load ptr, ptr %pRight, align 8
  %call = call i32 @sqlite3ExprIsInteger(ptr noundef %50, ptr noundef %k)
  %tobool55 = icmp ne i32 %call, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.else63

land.lhs.true56:                                  ; preds = %if.then53
  %51 = load i32, ptr %k, align 4
  %cmp57 = icmp sge i32 %51, -1
  br i1 %cmp57, label %land.lhs.true59, label %if.else63

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %52 = load i32, ptr %k, align 4
  %cmp60 = icmp sle i32 %52, 1
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true59
  store i32 10, ptr %k, align 4
  br label %if.end64

if.else63:                                        ; preds = %land.lhs.true59, %land.lhs.true56, %if.then53
  store i32 20, ptr %k, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then62
  %53 = load i16, ptr %iReduce, align 2
  %conv65 = sext i16 %53 to i32
  %54 = load i32, ptr %k, align 4
  %cmp66 = icmp slt i32 %conv65, %54
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  %55 = load i32, ptr %k, align 4
  %conv69 = trunc i32 %55 to i16
  store i16 %conv69, ptr %iReduce, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then44
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %for.end
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73, %if.then13, %if.then7
  %56 = load i32, ptr %i, align 4
  %dec75 = add nsw i32 %56, -1
  store i32 %dec75, ptr %i, align 4
  %57 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %57, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end76:                                        ; preds = %if.then, %for.cond
  %58 = load ptr, ptr %pLoop.addr, align 8
  %nOut77 = getelementptr inbounds nuw %struct.WhereLoop, ptr %58, i32 0, i32 6
  %59 = load i16, ptr %nOut77, align 2
  %conv78 = sext i16 %59 to i32
  %60 = load i16, ptr %nRow.addr, align 2
  %conv79 = sext i16 %60 to i32
  %61 = load i16, ptr %iReduce, align 2
  %conv80 = sext i16 %61 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  %cmp82 = icmp sgt i32 %conv78, %sub81
  br i1 %cmp82, label %if.then84, label %if.end90

if.then84:                                        ; preds = %for.end76
  %62 = load i16, ptr %nRow.addr, align 2
  %conv85 = sext i16 %62 to i32
  %63 = load i16, ptr %iReduce, align 2
  %conv86 = sext i16 %63 to i32
  %sub87 = sub nsw i32 %conv85, %conv86
  %conv88 = trunc i32 %sub87 to i16
  %64 = load ptr, ptr %pLoop.addr, align 8
  %nOut89 = getelementptr inbounds nuw %struct.WhereLoop, ptr %64, i32 0, i32 6
  store i16 %conv88, ptr %nOut89, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %for.end76
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
!8 = distinct !{!8, !7}
