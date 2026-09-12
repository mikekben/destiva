; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @substSelect(ptr noundef %pSubst, ptr noundef %p, i32 noundef %doPrior) #0 {
entry:
  %pSubst.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %doPrior.addr = alloca i32, align 4
  %pSrc = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pSubst, ptr %pSubst.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %doPrior, ptr %doPrior.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %1 = load ptr, ptr %pSubst.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pEList, align 8
  call void @substExprList(ptr noundef %1, ptr noundef %3)
  %4 = load ptr, ptr %pSubst.addr, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %pGroupBy, align 8
  call void @substExprList(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %pSubst.addr, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %pOrderBy, align 8
  call void @substExprList(ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %pSubst.addr, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %pHaving, align 8
  %call = call ptr @substExpr(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %p.addr, align 8
  %pHaving1 = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 11
  store ptr %call, ptr %pHaving1, align 8
  %14 = load ptr, ptr %pSubst.addr, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %pWhere, align 8
  %call2 = call ptr @substExpr(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %p.addr, align 8
  %pWhere3 = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 9
  store ptr %call2, ptr %pWhere3, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %pSrc4 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %pSrc4, align 8
  store ptr %19, ptr %pSrc, align 8
  %20 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %nSrc, align 8
  store i32 %21, ptr %i, align 4
  %22 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %22, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %23 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %pSubst.addr, align 8
  %25 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pSelect, align 8
  call void @substSelect(ptr noundef %24, ptr noundef %26, i32 noundef 1)
  %27 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %28 = load ptr, ptr %pSubst.addr, align 8
  %29 = load ptr, ptr %pItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 14
  %30 = load ptr, ptr %u1, align 8
  call void @substExprList(ptr noundef %28, ptr noundef %30)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %31 = load i32, ptr %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %i, align 4
  %32 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %33 = load i32, ptr %doPrior.addr, align 4
  %tobool8 = icmp ne i32 %33, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %34 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pPrior, align 8
  store ptr %35, ptr %p.addr, align 8
  %cmp9 = icmp ne ptr %35, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %36 = phi i1 [ false, %do.cond ], [ %cmp9, %land.rhs ]
  br i1 %36, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @substExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @substExpr(ptr noundef, ptr noundef) #0

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
