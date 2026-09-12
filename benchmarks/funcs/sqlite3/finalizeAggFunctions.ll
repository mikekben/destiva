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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @finalizeAggFunctions(ptr noundef %pParse, ptr noundef %pAggInfo) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pAggInfo.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pF = alloca ptr, align 8
  %pList = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pAggInfo, ptr %pAggInfo.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  store i32 0, ptr %i, align 4
  %2 = load ptr, ptr %pAggInfo.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %aFunc, align 8
  store ptr %3, ptr %pF, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pAggInfo.addr, align 8
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %5, i32 0, i32 12
  %6 = load i32, ptr %nFunc, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pF, align 8
  %pExpr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pExpr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pList, align 8
  %10 = load ptr, ptr %v, align 8
  %11 = load ptr, ptr %pF, align 8
  %iMem = getelementptr inbounds nuw %struct.AggInfo_func, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %iMem, align 8
  %13 = load ptr, ptr %pList, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 0, %cond.false ]
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %10, i32 noundef 157, i32 noundef %12, i32 noundef %cond)
  %16 = load ptr, ptr %v, align 8
  %17 = load ptr, ptr %pF, align 8
  %pFunc = getelementptr inbounds nuw %struct.AggInfo_func, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pFunc, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %16, ptr noundef %18, i32 noundef -8)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  %20 = load ptr, ptr %pF, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %pF, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
