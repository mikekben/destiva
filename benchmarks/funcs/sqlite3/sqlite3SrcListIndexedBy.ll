; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SrcListIndexedBy(ptr noundef %pParse, ptr noundef %p, ptr noundef %pIndexedBy) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pIndexedBy.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pIndexedBy, ptr %pIndexedBy.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pIndexedBy.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %n, align 8
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nSrc, align 8
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %6 = load ptr, ptr %pIndexedBy.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.Token, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %n1, align 8
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %8 = load ptr, ptr %pIndexedBy.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %z, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true3
  %10 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %10, i32 0, i32 9
  %notIndexed = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %notIndexed, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %notIndexed, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %11 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db, align 8
  %13 = load ptr, ptr %pIndexedBy.addr, align 8
  %call = call ptr @sqlite3NameFromToken(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %pItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %14, i32 0, i32 14
  store ptr %call, ptr %u1, align 8
  %15 = load ptr, ptr %pItem, align 8
  %fg6 = getelementptr inbounds nuw %struct.SrcList_item, ptr %15, i32 0, i32 9
  %isIndexedBy = getelementptr inbounds nuw %struct.anon, ptr %fg6, i32 0, i32 1
  %bf.load7 = load i8, ptr %isIndexedBy, align 1
  %bf.clear8 = and i8 %bf.load7, -3
  %bf.set9 = or i8 %bf.clear8, 2
  store i8 %bf.set9, ptr %isIndexedBy, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
