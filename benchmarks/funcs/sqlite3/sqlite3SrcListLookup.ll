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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexedByLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SrcListLookup(ptr noundef %pParse, ptr noundef %pSrc) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %2 = load ptr, ptr %pItem, align 8
  %call = call ptr @sqlite3LocateTableItem(ptr noundef %1, i32 noundef 0, ptr noundef %2)
  store ptr %call, ptr %pTab, align 8
  %3 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pItem, align 8
  %pTab1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pTab1, align 8
  call void @sqlite3DeleteTable(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %pTab, align 8
  %8 = load ptr, ptr %pItem, align 8
  %pTab2 = getelementptr inbounds nuw %struct.SrcList_item, ptr %8, i32 0, i32 4
  store ptr %7, ptr %pTab2, align 8
  %9 = load ptr, ptr %pTab, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %nTabRef, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nTabRef, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pItem, align 8
  %call3 = call i32 @sqlite3IndexedByLookup(ptr noundef %12, ptr noundef %13)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %pTab, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %14 = load ptr, ptr %pTab, align 8
  ret ptr %14
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
