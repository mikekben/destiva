; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3IdListAppend(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pToken) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %3, i64 noundef 16)
  store ptr %call, ptr %pList.addr, align 8
  %4 = load ptr, ptr %pList.addr, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.IdList, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %a, align 8
  %8 = load ptr, ptr %pList.addr, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %8, i32 0, i32 1
  %call5 = call ptr @sqlite3ArrayAllocate(ptr noundef %5, ptr noundef %7, i32 noundef 16, ptr noundef %nId, ptr noundef %i)
  %9 = load ptr, ptr %pList.addr, align 8
  %a6 = getelementptr inbounds nuw %struct.IdList, ptr %9, i32 0, i32 0
  store ptr %call5, ptr %a6, align 8
  %10 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3IdListDelete(ptr noundef %11, ptr noundef %12)
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end4
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %pToken.addr, align 8
  %call10 = call ptr @sqlite3NameFromToken(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %pList.addr, align 8
  %a11 = getelementptr inbounds nuw %struct.IdList, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %a11, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %struct.IdList_item, ptr %16, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx, i32 0, i32 0
  store ptr %call10, ptr %zName, align 8
  %18 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 51
  %19 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %19 to i32
  %cmp12 = icmp sge i32 %conv, 2
  br i1 %cmp12, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end9
  %20 = load ptr, ptr %pList.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.IdList, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %a14, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.IdList_item, ptr %21, i64 %idxprom15
  %zName17 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx16, i32 0, i32 0
  %23 = load ptr, ptr %zName17, align 8
  %tobool = icmp ne ptr %23, null
  br i1 %tobool, label %if.then18, label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pList.addr, align 8
  %a19 = getelementptr inbounds nuw %struct.IdList, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %a19, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds %struct.IdList_item, ptr %26, i64 %idxprom20
  %zName22 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx21, i32 0, i32 0
  %28 = load ptr, ptr %zName22, align 8
  %29 = load ptr, ptr %pToken.addr, align 8
  %call23 = call ptr @sqlite3RenameTokenMap(ptr noundef %24, ptr noundef %28, ptr noundef %29)
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true, %if.end9
  %30 = load ptr, ptr %pList.addr, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then8, %if.then3
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ArrayAllocate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
