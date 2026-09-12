; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCanBeNull(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %op = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op1, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 169
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load ptr, ptr %p.addr, align 8
  %op3 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op3, align 8
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 168
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp5, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pLeft, align 8
  store ptr %6, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %7 = load ptr, ptr %p.addr, align 8
  %op7 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %op7, align 8
  store i8 %8, ptr %op, align 1
  %9 = load i8, ptr %op, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 171
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %p.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 12
  %11 = load i8, ptr %op2, align 2
  store i8 %11, ptr %op, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %12 = load i8, ptr %op, align 1
  %conv11 = zext i8 %12 to i32
  switch i32 %conv11, label %sw.default [
    i32 150, label %sw.bb
    i32 113, label %sw.bb
    i32 148, label %sw.bb
    i32 149, label %sw.bb
    i32 162, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 1048576
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %lor.end26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb12
  %15 = load ptr, ptr %p.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %y, align 8
  %cmp15 = icmp eq ptr %16, null
  br i1 %cmp15, label %lor.end26, label %lor.rhs17

lor.rhs17:                                        ; preds = %lor.lhs.false
  %17 = load ptr, ptr %p.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 9
  %18 = load i16, ptr %iColumn, align 8
  %conv18 = sext i16 %18 to i32
  %cmp19 = icmp sge i32 %conv18, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs17
  %19 = load ptr, ptr %p.addr, align 8
  %y21 = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 14
  %20 = load ptr, ptr %y21, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %aCol, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %iColumn22 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 9
  %23 = load i16, ptr %iColumn22, align 8
  %idxprom = sext i16 %23 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %21, i64 %idxprom
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 3
  %24 = load i8, ptr %notNull, align 8
  %conv23 = zext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs17
  %25 = phi i1 [ false, %lor.rhs17 ], [ %cmp24, %land.rhs ]
  br label %lor.end26

lor.end26:                                        ; preds = %land.end, %lor.lhs.false, %sw.bb12
  %26 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb12 ], [ %25, %land.end ]
  %lor.ext = zext i1 %26 to i32
  store i32 %lor.ext, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %lor.end26, %sw.bb
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
