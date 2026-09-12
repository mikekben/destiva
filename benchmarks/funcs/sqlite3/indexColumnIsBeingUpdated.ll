; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @indexColumnIsBeingUpdated(ptr noundef %pIdx, i32 noundef %iCol, ptr noundef %aXRef, i32 noundef %chngRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %aXRef.addr = alloca ptr, align 8
  %chngRowid.addr = alloca i32, align 4
  %iIdxCol = alloca i16, align 2
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  store ptr %aXRef, ptr %aXRef.addr, align 8
  store i32 %chngRowid, ptr %chngRowid.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aiColumn, align 8
  %2 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %iIdxCol, align 2
  %4 = load i16, ptr %iIdxCol, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %aXRef.addr, align 8
  %6 = load i16, ptr %iIdxCol, align 2
  %idxprom2 = sext i16 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp sge i32 %7, 0
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iCol.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom6
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx7, i32 0, i32 0
  %11 = load ptr, ptr %pExpr, align 8
  %12 = load ptr, ptr %aXRef.addr, align 8
  %13 = load i32, ptr %chngRowid.addr, align 4
  %call = call i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
