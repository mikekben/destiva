; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCode(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %target) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  %inReg = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %target, ptr %target.addr, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 171
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pVdbe, align 8
  %5 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %iTable, align 4
  %7 = load i32, ptr %target.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %4, i32 noundef 78, i32 noundef %6, i32 noundef %7)
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pExpr.addr, align 8
  %10 = load i32, ptr %target.addr, align 4
  %call2 = call i32 @sqlite3ExprCodeTarget(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  store i32 %call2, ptr %inReg, align 4
  %11 = load i32, ptr %inReg, align 4
  %12 = load i32, ptr %target.addr, align 4
  %cmp3 = icmp ne i32 %11, %12
  br i1 %cmp3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %if.else
  %13 = load ptr, ptr %pParse.addr, align 8
  %pVdbe6 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pVdbe6, align 8
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true5
  %15 = load ptr, ptr %pParse.addr, align 8
  %pVdbe9 = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pVdbe9, align 8
  %17 = load i32, ptr %inReg, align 4
  %18 = load i32, ptr %target.addr, align 4
  %call10 = call i32 @sqlite3VdbeAddOp2(ptr noundef %16, i32 noundef 79, i32 noundef %17, i32 noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true5, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
