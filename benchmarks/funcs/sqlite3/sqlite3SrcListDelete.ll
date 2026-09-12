; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SrcListDelete(ptr noundef %db, ptr noundef %pList) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nSrc, align 8
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %pItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zDatabase, align 8
  call void @sqlite3DbFree(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pItem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %zAlias, align 8
  call void @sqlite3DbFree(ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %14, i32 0, i32 9
  %isIndexedBy = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isIndexedBy, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.body
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %pItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %16, i32 0, i32 14
  %17 = load ptr, ptr %u1, align 8
  call void @sqlite3DbFree(ptr noundef %15, ptr noundef %17)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.body
  %18 = load ptr, ptr %pItem, align 8
  %fg4 = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg4, i32 0, i32 1
  %bf.load5 = load i8, ptr %isTabFunc, align 1
  %bf.lshr6 = lshr i8 %bf.load5, 2
  %bf.clear7 = and i8 %bf.lshr6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end3
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %pItem, align 8
  %u111 = getelementptr inbounds nuw %struct.SrcList_item, ptr %20, i32 0, i32 14
  %21 = load ptr, ptr %u111, align 8
  call void @sqlite3ExprListDelete(ptr noundef %19, ptr noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end3
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %db.addr, align 8
  %26 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %25, ptr noundef %27)
  %28 = load ptr, ptr %db.addr, align 8
  %29 = load ptr, ptr %pItem, align 8
  %pOn = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %pOn, align 8
  call void @sqlite3ExprDelete(ptr noundef %28, ptr noundef %30)
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %pItem, align 8
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pUsing, align 8
  call void @sqlite3IdListDelete(ptr noundef %31, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  %35 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %db.addr, align 8
  %37 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %36, ptr noundef %37)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

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
