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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCodeTemp(ptr noundef %pParse, ptr noundef %pExpr, ptr noundef %pReg) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pReg.addr = alloca ptr, align 8
  %r2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pReg, ptr %pReg.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %0)
  store ptr %call, ptr %pExpr.addr, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 11
  %2 = load i8, ptr %okConstFactor, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op, align 8
  %conv1 = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv1, 171
  br i1 %cmp, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %pExpr.addr, align 8
  %call4 = call i32 @sqlite3ExprIsConstantNotJoin(ptr noundef %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true3
  %6 = load ptr, ptr %pReg.addr, align 8
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %call6 = call i32 @sqlite3ExprCodeAtInit(ptr noundef %7, ptr noundef %8, i32 noundef -1)
  store i32 %call6, ptr %r2, align 4
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %9 = load ptr, ptr %pParse.addr, align 8
  %call7 = call i32 @sqlite3GetTempReg(ptr noundef %9)
  store i32 %call7, ptr %r1, align 4
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pExpr.addr, align 8
  %12 = load i32, ptr %r1, align 4
  %call8 = call i32 @sqlite3ExprCodeTarget(ptr noundef %10, ptr noundef %11, i32 noundef %12)
  store i32 %call8, ptr %r2, align 4
  %13 = load i32, ptr %r2, align 4
  %14 = load i32, ptr %r1, align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %15 = load i32, ptr %r1, align 4
  %16 = load ptr, ptr %pReg.addr, align 8
  store i32 %15, ptr %16, align 4
  br label %if.end

if.else12:                                        ; preds = %if.else
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %pReg.addr, align 8
  store i32 0, ptr %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %20 = load i32, ptr %r2, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantNotJoin(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeAtInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
