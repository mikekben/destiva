; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @exprListDeleteNN(ptr noundef %db, ptr noundef %pList) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nExpr, align 8
  store i32 %1, ptr %i, align 4
  %2 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pExpr, align 8
  call void @sqlite3ExprDelete(ptr noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %pItem, align 8
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %zSpan, align 8
  call void @sqlite3DbFree(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, ptr %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %14, ptr noundef %15)
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
