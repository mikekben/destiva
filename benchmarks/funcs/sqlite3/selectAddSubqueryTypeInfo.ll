; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden void @selectAddSubqueryTypeInfo(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTabList = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %selFlags, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %selFlags1 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %selFlags1, align 4
  %or = or i32 %3, 128
  store i32 %or, ptr %selFlags1, align 4
  %4 = load ptr, ptr %pWalker.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParse2, align 8
  store ptr %5, ptr %pParse, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %pSrc, align 8
  store ptr %7, ptr %pTabList, align 8
  store i32 0, ptr %i, align 4
  %8 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pFrom, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %pTabList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nSrc, align 8
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pFrom, align 8
  %pTab3 = getelementptr inbounds nuw %struct.SrcList_item, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pTab3, align 8
  store ptr %13, ptr %pTab, align 8
  %14 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %tabFlags, align 8
  %and4 = and i32 %15, 2
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %for.body
  %16 = load ptr, ptr %pFrom, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %pSelect, align 8
  store ptr %17, ptr %pSel, align 8
  %18 = load ptr, ptr %pSel, align 8
  %tobool7 = icmp ne ptr %18, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then8
  %19 = load ptr, ptr %pSel, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pPrior, align 8
  %tobool9 = icmp ne ptr %20, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %pSel, align 8
  %pPrior10 = getelementptr inbounds nuw %struct.Select, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %pPrior10, align 8
  store ptr %22, ptr %pSel, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %pParse, align 8
  %24 = load ptr, ptr %pTab, align 8
  %25 = load ptr, ptr %pSel, align 8
  call void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef %23, ptr noundef %24, ptr noundef %25, i8 noundef signext 64)
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  %27 = load ptr, ptr %pFrom, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %pFrom, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %if.then
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
!8 = distinct !{!8, !7}
