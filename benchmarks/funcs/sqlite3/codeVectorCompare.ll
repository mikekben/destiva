; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.566 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeVectorCompare(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %dest, i8 noundef zeroext %op, i8 noundef zeroext %p5) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %dest.addr = alloca i32, align 4
  %op.addr = alloca i8, align 1
  %p5.addr = alloca i8, align 1
  %v = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %nLeft = alloca i32, align 4
  %i = alloca i32, align 4
  %regLeft = alloca i32, align 4
  %regRight = alloca i32, align 4
  %opx = alloca i8, align 1
  %addrDone = alloca i32, align 4
  %regFree1 = alloca i32, align 4
  %regFree2 = alloca i32, align 4
  %pL = alloca ptr, align 8
  %pR = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %dest, ptr %dest.addr, align 4
  store i8 %op, ptr %op.addr, align 1
  store i8 %p5, ptr %p5.addr, align 1
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %pLeft1 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pLeft1, align 8
  store ptr %3, ptr %pLeft, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  %pRight2 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pRight2, align 8
  store ptr %5, ptr %pRight, align 8
  %6 = load ptr, ptr %pLeft, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %6)
  store i32 %call, ptr %nLeft, align 4
  store i32 0, ptr %regLeft, align 4
  store i32 0, ptr %regRight, align 4
  %7 = load i8, ptr %op.addr, align 1
  store i8 %7, ptr %opx, align 1
  %8 = load ptr, ptr %pParse.addr, align 8
  %call3 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %8)
  store i32 %call3, ptr %addrDone, align 4
  %9 = load i32, ptr %nLeft, align 4
  %10 = load ptr, ptr %pRight, align 8
  %call4 = call i32 @sqlite3ExprVectorSize(ptr noundef %10)
  %cmp = icmp ne i32 %9, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %11, ptr noundef @.str.566)
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8, ptr %p5.addr, align 1
  %conv = zext i8 %12 to i32
  %or = or i32 %conv, 32
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, ptr %p5.addr, align 1
  %13 = load i8, ptr %opx, align 1
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 55
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i8 56, ptr %opx, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %14 = load i8, ptr %opx, align 1
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 57
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i8 54, ptr %opx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pLeft, align 8
  %call16 = call i32 @exprCodeSubselect(ptr noundef %15, ptr noundef %16)
  store i32 %call16, ptr %regLeft, align 4
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pRight, align 8
  %call17 = call i32 @exprCodeSubselect(ptr noundef %17, ptr noundef %18)
  store i32 %call17, ptr %regRight, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  br i1 true, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %regFree1, align 4
  store i32 0, ptr %regFree2, align 4
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pLeft, align 8
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %regLeft, align 4
  %call18 = call i32 @exprVectorRegister(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %pL, ptr noundef %regFree1)
  store i32 %call18, ptr %r1, align 4
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pRight, align 8
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %regRight, align 4
  %call19 = call i32 @exprVectorRegister(ptr noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %pR, ptr noundef %regFree2)
  store i32 %call19, ptr %r2, align 4
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %pL, align 8
  %29 = load ptr, ptr %pR, align 8
  %30 = load i8, ptr %opx, align 1
  %conv20 = zext i8 %30 to i32
  %31 = load i32, ptr %r1, align 4
  %32 = load i32, ptr %r2, align 4
  %33 = load i32, ptr %dest.addr, align 4
  %34 = load i8, ptr %p5.addr, align 1
  %conv21 = zext i8 %34 to i32
  %call22 = call i32 @codeCompare(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %conv20, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %conv21)
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load i32, ptr %regFree1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load i32, ptr %regFree2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %37, i32 noundef %38)
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %nLeft, align 4
  %sub = sub nsw i32 %40, 1
  %cmp23 = icmp eq i32 %39, %sub
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  br label %for.end

if.end26:                                         ; preds = %for.body
  %41 = load i8, ptr %opx, align 1
  %conv27 = zext i8 %41 to i32
  %cmp28 = icmp eq i32 %conv27, 53
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %dest.addr, align 4
  %44 = load i32, ptr %addrDone, align 4
  %call31 = call i32 @sqlite3VdbeAddOp2(ptr noundef %42, i32 noundef 20, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %p5.addr, align 1
  %conv32 = zext i8 %45 to i32
  %or33 = or i32 %conv32, 8
  %conv34 = trunc i32 %or33 to i8
  store i8 %conv34, ptr %p5.addr, align 1
  br label %if.end51

if.else:                                          ; preds = %if.end26
  %46 = load i8, ptr %opx, align 1
  %conv35 = zext i8 %46 to i32
  %cmp36 = icmp eq i32 %conv35, 52
  br i1 %cmp36, label %if.then38, label %if.else43

if.then38:                                        ; preds = %if.else
  %47 = load ptr, ptr %v, align 8
  %48 = load i32, ptr %dest.addr, align 4
  %49 = load i32, ptr %addrDone, align 4
  %call39 = call i32 @sqlite3VdbeAddOp2(ptr noundef %47, i32 noundef 18, i32 noundef %48, i32 noundef %49)
  %50 = load i8, ptr %p5.addr, align 1
  %conv40 = zext i8 %50 to i32
  %or41 = or i32 %conv40, 8
  %conv42 = trunc i32 %or41 to i8
  store i8 %conv42, ptr %p5.addr, align 1
  br label %if.end50

if.else43:                                        ; preds = %if.else
  %51 = load ptr, ptr %v, align 8
  %52 = load i32, ptr %addrDone, align 4
  %call44 = call i32 @sqlite3VdbeAddOp2(ptr noundef %51, i32 noundef 58, i32 noundef 0, i32 noundef %52)
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %nLeft, align 4
  %sub45 = sub nsw i32 %54, 2
  %cmp46 = icmp eq i32 %53, %sub45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else43
  %55 = load i8, ptr %op.addr, align 1
  store i8 %55, ptr %opx, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then38
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then30
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %56 = load i32, ptr %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then25, %for.cond
  %57 = load ptr, ptr %v, align 8
  %58 = load i32, ptr %addrDone, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %57, i32 noundef %58)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @codeCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprCodeSubselect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprVectorRegister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
