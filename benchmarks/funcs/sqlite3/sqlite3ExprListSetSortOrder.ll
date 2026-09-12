; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprListSetSortOrder(ptr noundef %p, i32 noundef %iSortOrder, i32 noundef %eNulls) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iSortOrder.addr = alloca i32, align 4
  %eNulls.addr = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iSortOrder, ptr %iSortOrder.addr, align 4
  store i32 %eNulls, ptr %eNulls.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end14

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %p.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %4 = load i32, ptr %iSortOrder.addr, align 4
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %iSortOrder.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %iSortOrder.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr %pItem, align 8
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %6, i32 0, i32 3
  store i8 %conv, ptr %sortFlags, align 8
  %7 = load i32, ptr %eNulls.addr, align 4
  %cmp4 = icmp ne i32 %7, -1
  br i1 %cmp4, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %pItem, align 8
  %bNulls = getelementptr inbounds nuw %struct.ExprList_item, ptr %8, i32 0, i32 4
  %bf.load = load i8, ptr %bNulls, align 1
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %bNulls, align 1
  %9 = load i32, ptr %iSortOrder.addr, align 4
  %10 = load i32, ptr %eNulls.addr, align 4
  %cmp7 = icmp ne i32 %9, %10
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then6
  %11 = load ptr, ptr %pItem, align 8
  %sortFlags10 = getelementptr inbounds nuw %struct.ExprList_item, ptr %11, i32 0, i32 3
  %12 = load i8, ptr %sortFlags10, align 8
  %conv11 = zext i8 %12 to i32
  %or = or i32 %conv11, 2
  %conv12 = trunc i32 %or to i8
  store i8 %conv12, ptr %sortFlags10, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end3, %if.then
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
