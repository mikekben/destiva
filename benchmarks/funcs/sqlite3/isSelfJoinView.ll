; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @isSelfJoinView(ptr noundef %pTabList, ptr noundef %pThis) #0 {
entry:
  %retval = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pS1 = alloca ptr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  %0 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %pItem, align 8
  %2 = load ptr, ptr %pThis.addr, align 8
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pSelect, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %5, i32 0, i32 9
  %viaCoroutine = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %viaCoroutine, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %zName, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %for.inc

if.end6:                                          ; preds = %if.end3
  %8 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %pSchema, align 8
  %11 = load ptr, ptr %pThis.addr, align 8
  %pTab7 = getelementptr inbounds nuw %struct.SrcList_item, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pTab7, align 8
  %pSchema8 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 20
  %13 = load ptr, ptr %pSchema8, align 8
  %cmp9 = icmp ne ptr %10, %13
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %for.inc

if.end11:                                         ; preds = %if.end6
  %14 = load ptr, ptr %pItem, align 8
  %zName12 = getelementptr inbounds nuw %struct.SrcList_item, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %zName12, align 8
  %16 = load ptr, ptr %pThis.addr, align 8
  %zName13 = getelementptr inbounds nuw %struct.SrcList_item, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %zName13, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %15, ptr noundef %17)
  %cmp14 = icmp ne i32 %call, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %for.inc

if.end16:                                         ; preds = %if.end11
  %18 = load ptr, ptr %pItem, align 8
  %pSelect17 = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %pSelect17, align 8
  store ptr %19, ptr %pS1, align 8
  %20 = load ptr, ptr %pItem, align 8
  %pTab18 = getelementptr inbounds nuw %struct.SrcList_item, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pTab18, align 8
  %pSchema19 = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 20
  %22 = load ptr, ptr %pSchema19, align 8
  %cmp20 = icmp eq ptr %22, null
  br i1 %cmp20, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end16
  %23 = load ptr, ptr %pThis.addr, align 8
  %pSelect21 = getelementptr inbounds nuw %struct.SrcList_item, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %pSelect21, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %selId, align 8
  %26 = load ptr, ptr %pS1, align 8
  %selId22 = getelementptr inbounds nuw %struct.Select, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %selId22, align 8
  %cmp23 = icmp ne i32 %25, %27
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true, %if.end16
  %28 = load ptr, ptr %pThis.addr, align 8
  %pSelect26 = getelementptr inbounds nuw %struct.SrcList_item, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %pSelect26, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %pWhere, align 8
  %31 = load ptr, ptr %pS1, align 8
  %pWhere27 = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %pWhere27, align 8
  %call28 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %30, ptr noundef %32, i32 noundef -1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %33 = load ptr, ptr %pThis.addr, align 8
  %pSelect30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %pSelect30, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 11
  %35 = load ptr, ptr %pHaving, align 8
  %36 = load ptr, ptr %pS1, align 8
  %pHaving31 = getelementptr inbounds nuw %struct.Select, ptr %36, i32 0, i32 11
  %37 = load ptr, ptr %pHaving31, align 8
  %call32 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %35, ptr noundef %37, i32 noundef -1)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false, %if.end25
  br label %for.inc

if.end35:                                         ; preds = %lor.lhs.false
  %38 = load ptr, ptr %pItem, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %if.then34, %if.then24, %if.then15, %if.then10, %if.then5, %if.then2, %if.then
  %39 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end35
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40
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
