; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SrcListAssignCursors(ptr noundef %pParse, ptr noundef %pList) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  %1 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nSrc, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %iCursor, align 8
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 17
  %8 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %nTab, align 4
  %9 = load ptr, ptr %pItem, align 8
  %iCursor3 = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 10
  store i32 %8, ptr %iCursor3, align 8
  %10 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pSelect, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pItem, align 8
  %pSelect6 = getelementptr inbounds nuw %struct.SrcList_item, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pSelect6, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %pSrc, align 8
  call void @sqlite3SrcListAssignCursors(ptr noundef %12, ptr noundef %15)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %16 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, ptr %i, align 4
  %17 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then2, %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %entry
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
