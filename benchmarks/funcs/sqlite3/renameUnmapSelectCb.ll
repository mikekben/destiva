; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @renameUnmapSelectCb(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %i = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pSrc12 = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pEList, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %pEList2 = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pEList2, align 8
  store ptr %5, ptr %pList, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 1
  %11 = load ptr, ptr %zName, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr %pParse, align 8
  %13 = load ptr, ptr %pList, align 8
  %a5 = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a5, i64 0, i64 %idxprom6
  %zName8 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx7, i32 0, i32 1
  %15 = load ptr, ptr %zName8, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %12, ptr noundef null, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %entry
  %17 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %pSrc, align 8
  %tobool10 = icmp ne ptr %18, null
  br i1 %tobool10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end9
  %19 = load ptr, ptr %p.addr, align 8
  %pSrc13 = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %pSrc13, align 8
  store ptr %20, ptr %pSrc12, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %if.then11
  %21 = load i32, ptr %i, align 4
  %22 = load ptr, ptr %pSrc12, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %nSrc, align 8
  %cmp15 = icmp slt i32 %21, %23
  br i1 %cmp15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond14
  %24 = load ptr, ptr %pParse, align 8
  %25 = load ptr, ptr %pSrc12, align 8
  %a17 = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a17, i64 0, i64 %idxprom18
  %zName20 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx19, i32 0, i32 2
  %27 = load ptr, ptr %zName20, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %24, ptr noundef null, ptr noundef %27)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %28 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end23:                                        ; preds = %for.cond14
  br label %if.end24

if.end24:                                         ; preds = %for.end23, %if.end9
  ret i32 0
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
!8 = distinct !{!8, !7}
