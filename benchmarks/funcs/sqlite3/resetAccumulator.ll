; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.788 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @resetAccumulator(ptr noundef %pParse, ptr noundef %pAggInfo) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pAggInfo.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pFunc = alloca ptr, align 8
  %nReg = alloca i32, align 4
  %pE = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pAggInfo, ptr %pAggInfo.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pAggInfo.addr, align 8
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %2, i32 0, i32 12
  %3 = load i32, ptr %nFunc, align 8
  %4 = load ptr, ptr %pAggInfo.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.AggInfo, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %nColumn, align 8
  %add = add nsw i32 %3, %5
  store i32 %add, ptr %nReg, align 4
  %6 = load i32, ptr %nReg, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %v, align 8
  %8 = load ptr, ptr %pAggInfo.addr, align 8
  %mnReg = getelementptr inbounds nuw %struct.AggInfo, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %mnReg, align 8
  %10 = load ptr, ptr %pAggInfo.addr, align 8
  %mxReg = getelementptr inbounds nuw %struct.AggInfo, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %mxReg, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %7, i32 noundef 73, i32 noundef 0, i32 noundef %9, i32 noundef %11)
  %12 = load ptr, ptr %pAggInfo.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %aFunc, align 8
  store ptr %13, ptr %pFunc, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %pAggInfo.addr, align 8
  %nFunc1 = getelementptr inbounds nuw %struct.AggInfo, ptr %15, i32 0, i32 12
  %16 = load i32, ptr %nFunc1, align 8
  %cmp2 = icmp slt i32 %14, %16
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pFunc, align 8
  %iDistinct = getelementptr inbounds nuw %struct.AggInfo_func, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %iDistinct, align 4
  %cmp3 = icmp sge i32 %18, 0
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %for.body
  %19 = load ptr, ptr %pFunc, align 8
  %pExpr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pExpr, align 8
  store ptr %20, ptr %pE, align 8
  %21 = load ptr, ptr %pE, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %x, align 8
  %cmp5 = icmp eq ptr %22, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %23 = load ptr, ptr %pE, align 8
  %x6 = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %x6, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nExpr, align 8
  %cmp7 = icmp ne i32 %25, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  %26 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %26, ptr noundef @.str.788)
  %27 = load ptr, ptr %pFunc, align 8
  %iDistinct9 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %27, i32 0, i32 3
  store i32 -1, ptr %iDistinct9, align 4
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pE, align 8
  %x10 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %x10, align 8
  %call11 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %28, ptr noundef %30, i32 noundef 0, i32 noundef 0)
  store ptr %call11, ptr %pKeyInfo, align 8
  %31 = load ptr, ptr %v, align 8
  %32 = load ptr, ptr %pFunc, align 8
  %iDistinct12 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %iDistinct12, align 4
  %34 = load ptr, ptr %pKeyInfo, align 8
  %call13 = call i32 @sqlite3VdbeAddOp4(ptr noundef %31, i32 noundef 112, i32 noundef %33, i32 noundef 0, i32 noundef 0, ptr noundef %34, i32 noundef -9)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  %36 = load ptr, ptr %pFunc, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %pFunc, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
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
