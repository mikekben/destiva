; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IdListIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @checkColumnOverlap(ptr noundef %pIdList, ptr noundef %pEList) #0 {
entry:
  %retval = alloca i32, align 4
  %pIdList.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %e = alloca i32, align 4
  store ptr %pIdList, ptr %pIdList.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  %0 = load ptr, ptr %pIdList.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pEList.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %e, align 4
  %3 = load ptr, ptr %pEList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pIdList.addr, align 8
  %6 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %e, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 1
  %8 = load ptr, ptr %zName, align 8
  %call = call i32 @sqlite3IdListIndex(ptr noundef %5, ptr noundef %8)
  %cmp3 = icmp sge i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load i32, ptr %e, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %e, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
