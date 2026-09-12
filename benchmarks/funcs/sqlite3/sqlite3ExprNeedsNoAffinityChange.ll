; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprNeedsNoAffinityChange(ptr noundef %p, i8 noundef signext %aff) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %aff.addr = alloca i8, align 1
  %op = alloca i8, align 1
  %unaryMinus = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i8 %aff, ptr %aff.addr, align 1
  store i32 0, ptr %unaryMinus, align 4
  %0 = load i8, ptr %aff.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end
  %1 = load ptr, ptr %p.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 169
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load ptr, ptr %p.addr, align 8
  %op6 = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op6, align 8
  %conv7 = zext i8 %4 to i32
  %cmp8 = icmp eq i32 %conv7, 168
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %5 = phi i1 [ true, %while.cond ], [ %cmp8, %lor.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %6 = load ptr, ptr %p.addr, align 8
  %op10 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op10, align 8
  %conv11 = zext i8 %7 to i32
  %cmp12 = icmp eq i32 %conv11, 168
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  store i32 1, ptr %unaryMinus, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body
  %8 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pLeft, align 8
  store ptr %9, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %10 = load ptr, ptr %p.addr, align 8
  %op16 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 0
  %11 = load i8, ptr %op16, align 8
  store i8 %11, ptr %op, align 1
  %12 = load i8, ptr %op, align 1
  %conv17 = zext i8 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 171
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %while.end
  %13 = load ptr, ptr %p.addr, align 8
  %op221 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 12
  %14 = load i8, ptr %op221, align 2
  store i8 %14, ptr %op, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %while.end
  %15 = load i8, ptr %op, align 1
  %conv23 = zext i8 %15 to i32
  switch i32 %conv23, label %sw.default [
    i32 150, label %sw.bb
    i32 148, label %sw.bb27
    i32 113, label %sw.bb31
    i32 149, label %sw.bb35
    i32 162, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end22
  %16 = load i8, ptr %aff.addr, align 1
  %conv24 = sext i8 %16 to i32
  %cmp25 = icmp sge i32 %conv24, 67
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, ptr %retval, align 4
  br label %return

sw.bb27:                                          ; preds = %if.end22
  %17 = load i8, ptr %aff.addr, align 1
  %conv28 = sext i8 %17 to i32
  %cmp29 = icmp sge i32 %conv28, 67
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, ptr %retval, align 4
  br label %return

sw.bb31:                                          ; preds = %if.end22
  %18 = load i32, ptr %unaryMinus, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %sw.bb31
  %19 = load i8, ptr %aff.addr, align 1
  %conv32 = sext i8 %19 to i32
  %cmp33 = icmp eq i32 %conv32, 66
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb31
  %20 = phi i1 [ false, %sw.bb31 ], [ %cmp33, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %if.end22
  %21 = load i32, ptr %unaryMinus, align 4
  %tobool36 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool36, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

sw.bb37:                                          ; preds = %if.end22
  %22 = load i8, ptr %aff.addr, align 1
  %conv38 = sext i8 %22 to i32
  %cmp39 = icmp sge i32 %conv38, 67
  br i1 %cmp39, label %land.rhs41, label %land.end45

land.rhs41:                                       ; preds = %sw.bb37
  %23 = load ptr, ptr %p.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 9
  %24 = load i16, ptr %iColumn, align 8
  %conv42 = sext i16 %24 to i32
  %cmp43 = icmp slt i32 %conv42, 0
  br label %land.end45

land.end45:                                       ; preds = %land.rhs41, %sw.bb37
  %25 = phi i1 [ false, %sw.bb37 ], [ %cmp43, %land.rhs41 ]
  %land.ext46 = zext i1 %25 to i32
  store i32 %land.ext46, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %land.end45, %sw.bb35, %land.end, %sw.bb27, %sw.bb, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
