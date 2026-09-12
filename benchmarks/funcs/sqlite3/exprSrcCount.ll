; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.SrcCount = type { ptr, i32, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @exprSrcCount(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %nSrc = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 162
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 164
  br i1 %cmp4, label %if.then, label %if.end30

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %u, align 8
  store ptr %5, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %pSrc6 = getelementptr inbounds nuw %struct.SrcCount, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pSrc6, align 8
  store ptr %7, ptr %pSrc, align 8
  %8 = load ptr, ptr %pSrc, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load ptr, ptr %pSrc, align 8
  %nSrc7 = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %nSrc7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nSrc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nSrc, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iTable, align 4
  %15 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %17 = load i32, ptr %iCursor, align 8
  %cmp10 = icmp eq i32 %14, %17
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then12, %for.cond
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %nSrc, align 4
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.end
  %21 = load ptr, ptr %p, align 8
  %nThis = getelementptr inbounds nuw %struct.SrcCount, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nThis, align 8
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, ptr %nThis, align 8
  br label %if.end29

if.else:                                          ; preds = %for.end
  %23 = load i32, ptr %nSrc, align 4
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp17, label %if.then26, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.else
  %24 = load ptr, ptr %pExpr.addr, align 8
  %iTable20 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %iTable20, align 4
  %26 = load ptr, ptr %pSrc, align 8
  %a21 = getelementptr inbounds nuw %struct.SrcList, ptr %26, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a21, i64 0, i64 0
  %iCursor23 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx22, i32 0, i32 10
  %27 = load i32, ptr %iCursor23, align 8
  %cmp24 = icmp slt i32 %25, %27
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false19, %if.else
  %28 = load ptr, ptr %p, align 8
  %nOther = getelementptr inbounds nuw %struct.SrcCount, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %nOther, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, ptr %nOther, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %lor.lhs.false19
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  ret i32 0
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
