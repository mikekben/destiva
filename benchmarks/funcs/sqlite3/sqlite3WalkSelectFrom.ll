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
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalkSelectFrom(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pSrc1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pSrc1, align 8
  store ptr %1, ptr %pSrc, align 8
  %2 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nSrc, align 8
  store i32 %3, ptr %i, align 4
  %4 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pSelect, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %pWalker.addr, align 8
  %9 = load ptr, ptr %pItem, align 8
  %pSelect2 = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pSelect2, align 8
  %call = call i32 @sqlite3WalkSelect(ptr noundef %8, ptr noundef %10)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %11, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool4 = icmp ne i32 %bf.cast, 0
  br i1 %tobool4, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %12 = load ptr, ptr %pWalker.addr, align 8
  %13 = load ptr, ptr %pItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %u1, align 8
  %call6 = call i32 @sqlite3WalkExprList(ptr noundef %12, ptr noundef %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true5
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %15 = load i32, ptr %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %i, align 4
  %16 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
