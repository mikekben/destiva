; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SrcListAppend(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pTable, ptr noundef %pDatabase) #1 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %pDatabase.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  store ptr %pDatabase, ptr %pDatabase.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %4, i64 noundef 120)
  store ptr %call, ptr %pList.addr, align 8
  %5 = load ptr, ptr %pList.addr, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pList.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 1
  store i32 1, ptr %nAlloc, align 4
  %7 = load ptr, ptr %pList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %7, i32 0, i32 0
  store i32 1, ptr %nSrc, align 8
  %8 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx, i8 0, i64 112, i1 false)
  %9 = load ptr, ptr %pList.addr, align 8
  %a5 = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a5, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx6, i32 0, i32 10
  store i32 -1, ptr %iCursor, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pList.addr, align 8
  %12 = load ptr, ptr %pList.addr, align 8
  %nSrc7 = getelementptr inbounds nuw %struct.SrcList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nSrc7, align 8
  %call8 = call ptr @sqlite3SrcListEnlarge(ptr noundef %10, ptr noundef %11, i32 noundef 1, i32 noundef %13)
  store ptr %call8, ptr %pNew, align 8
  %14 = load ptr, ptr %pNew, align 8
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %15, ptr noundef %16)
  store ptr null, ptr %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else
  %17 = load ptr, ptr %pNew, align 8
  store ptr %17, ptr %pList.addr, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %18 = load ptr, ptr %pList.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.SrcList, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pList.addr, align 8
  %nSrc15 = getelementptr inbounds nuw %struct.SrcList, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %nSrc15, align 8
  %sub = sub nsw i32 %20, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a14, i64 0, i64 %idxprom
  store ptr %arrayidx16, ptr %pItem, align 8
  %21 = load ptr, ptr %pDatabase.addr, align 8
  %tobool = icmp ne ptr %21, null
  br i1 %tobool, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  %22 = load ptr, ptr %pDatabase.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %z, align 8
  %cmp17 = icmp eq ptr %23, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  store ptr null, ptr %pDatabase.addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.end13
  %24 = load ptr, ptr %pDatabase.addr, align 8
  %tobool20 = icmp ne ptr %24, null
  br i1 %tobool20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end19
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pDatabase.addr, align 8
  %call22 = call ptr @sqlite3NameFromToken(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 0, i32 2
  store ptr %call22, ptr %zName, align 8
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pTable.addr, align 8
  %call23 = call ptr @sqlite3NameFromToken(ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %pItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %30, i32 0, i32 1
  store ptr %call23, ptr %zDatabase, align 8
  br label %if.end28

if.else24:                                        ; preds = %if.end19
  %31 = load ptr, ptr %db, align 8
  %32 = load ptr, ptr %pTable.addr, align 8
  %call25 = call ptr @sqlite3NameFromToken(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %pItem, align 8
  %zName26 = getelementptr inbounds nuw %struct.SrcList_item, ptr %33, i32 0, i32 2
  store ptr %call25, ptr %zName26, align 8
  %34 = load ptr, ptr %pItem, align 8
  %zDatabase27 = getelementptr inbounds nuw %struct.SrcList_item, ptr %34, i32 0, i32 1
  store ptr null, ptr %zDatabase27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then21
  %35 = load ptr, ptr %pList.addr, align 8
  store ptr %35, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then10, %if.then4
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListEnlarge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
