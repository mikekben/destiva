; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCodeLoadIndexColumn(ptr noundef %pParse, ptr noundef %pIdx, i32 noundef %iTabCur, i32 noundef %iIdxCol, i32 noundef %regOut) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %iTabCur.addr = alloca i32, align 4
  %iIdxCol.addr = alloca i32, align 4
  %regOut.addr = alloca i32, align 4
  %iTabCol = alloca i16, align 2
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iTabCur, ptr %iTabCur.addr, align 4
  store i32 %iIdxCol, ptr %iIdxCol.addr, align 4
  store i32 %regOut, ptr %regOut.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aiColumn, align 8
  %2 = load i32, ptr %iIdxCol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %iTabCol, align 2
  %4 = load i16, ptr %iTabCol, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %iTabCur.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 20
  store i32 %add, ptr %iSelfTab, align 8
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iIdxCol.addr, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom2
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx3, i32 0, i32 0
  %11 = load ptr, ptr %pExpr, align 8
  %12 = load i32, ptr %regOut.addr, align 4
  call void @sqlite3ExprCodeCopy(ptr noundef %7, ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab4 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 20
  store i32 0, ptr %iSelfTab4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pVdbe, align 8
  %16 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pTable, align 8
  %18 = load i32, ptr %iTabCur.addr, align 4
  %19 = load i16, ptr %iTabCol, align 2
  %conv5 = sext i16 %19 to i32
  %20 = load i32, ptr %regOut.addr, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %15, ptr noundef %17, i32 noundef %18, i32 noundef %conv5, i32 noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeCopy(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
