; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @columnTypeImpl(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @generateColumnTypes(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pEList) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %sNC = alloca %struct.NameContext, align 8
  %p = alloca ptr, align 8
  %zType = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pTabList.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %2, ptr %pSrcList, align 8
  %3 = load ptr, ptr %pParse.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %3, ptr %pParse1, align 8
  %pNext = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 3
  store ptr null, ptr %pNext, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pEList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %9 = load ptr, ptr %pExpr, align 8
  store ptr %9, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %call = call ptr @columnTypeImpl(ptr noundef %sNC, ptr noundef %10)
  store ptr %call, ptr %zType, align 8
  %11 = load ptr, ptr %v, align 8
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %zType, align 8
  %call2 = call i32 @sqlite3VdbeSetColName(ptr noundef %11, i32 noundef %12, i32 noundef 1, ptr noundef %13, ptr noundef inttoptr (i64 -1 to ptr))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
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
