; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @tableAndColumnIndex(ptr noundef %pSrc, i32 noundef %N, ptr noundef %zCol, ptr noundef %piTab, ptr noundef %piCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pSrc.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %zCol.addr = alloca ptr, align 8
  %piTab.addr = alloca ptr, align 8
  %piCol.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iCol = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store ptr %zCol, ptr %zCol.addr, align 8
  store ptr %piTab, ptr %piTab.addr, align 8
  store ptr %piCol, ptr %piCol.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 4
  %4 = load ptr, ptr %pTab, align 8
  %5 = load ptr, ptr %zCol.addr, align 8
  %call = call i32 @columnIndex(ptr noundef %4, ptr noundef %5)
  store i32 %call, ptr %iCol, align 4
  %6 = load i32, ptr %iCol, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end3

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %piTab.addr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %piTab.addr, align 8
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %iCol, align 4
  %11 = load ptr, ptr %piCol.addr, align 8
  store i32 %10, ptr %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end3
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @columnIndex(ptr noundef, ptr noundef) #0

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
