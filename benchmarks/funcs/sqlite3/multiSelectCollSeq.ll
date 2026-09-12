; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @multiSelectCollSeq(ptr noundef %pParse, ptr noundef %p, i32 noundef %iCol) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %pRet = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %pPrior, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pPrior1 = getelementptr inbounds nuw %struct.Select, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %pPrior1, align 8
  %5 = load i32, ptr %iCol.addr, align 4
  %call = call ptr @multiSelectCollSeq(ptr noundef %2, ptr noundef %4, i32 noundef %5)
  store ptr %call, ptr %pRet, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr null, ptr %pRet, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %pRet, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %iCol.addr, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %nExpr, align 8
  %cmp2 = icmp slt i32 %7, %10
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pEList4 = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pEList4, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %15 = load ptr, ptr %pExpr, align 8
  %call5 = call ptr @sqlite3ExprCollSeq(ptr noundef %11, ptr noundef %15)
  store ptr %call5, ptr %pRet, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %16 = load ptr, ptr %pRet, align 8
  ret ptr %16
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
