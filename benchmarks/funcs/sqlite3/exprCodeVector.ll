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
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CodeSubselect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprCodeVector(ptr noundef %pParse, ptr noundef %p, ptr noundef %piFreeable) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %piFreeable.addr = alloca ptr, align 8
  %iResult = alloca i32, align 4
  %nResult = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %piFreeable, ptr %piFreeable.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %0)
  store i32 %call, ptr %nResult, align 4
  %1 = load i32, ptr %nResult, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load ptr, ptr %piFreeable.addr, align 8
  %call1 = call i32 @sqlite3ExprCodeTemp(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store i32 %call1, ptr %iResult, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %piFreeable.addr, align 8
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op, align 8
  %conv = zext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 134
  br i1 %cmp2, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %call5 = call i32 @sqlite3CodeSubselect(ptr noundef %8, ptr noundef %9)
  store i32 %call5, ptr %iResult, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else
  %10 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %11, 1
  store i32 %add, ptr %iResult, align 4
  %12 = load i32, ptr %nResult, align 4
  %13 = load ptr, ptr %pParse.addr, align 8
  %nMem7 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 18
  %14 = load i32, ptr %nMem7, align 8
  %add8 = add nsw i32 %14, %12
  store i32 %add8, ptr %nMem7, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else6
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nResult, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %x, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %21 = load ptr, ptr %pExpr, align 8
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %iResult, align 4
  %add11 = add nsw i32 %22, %23
  call void @sqlite3ExprCodeFactorable(ptr noundef %17, ptr noundef %21, i32 noundef %add11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %25 = load i32, ptr %iResult, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeFactorable(ptr noundef, ptr noundef, i32 noundef) #0

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
