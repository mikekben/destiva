; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprListSetName(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pName, i32 noundef %dequote) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %dequote.addr = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %dequote, ptr %dequote.addr, align 4
  %0 = load ptr, ptr %pList.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pName.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %z, align 8
  %8 = load ptr, ptr %pName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %n, align 8
  %conv = zext i32 %9 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %5, ptr noundef %7, i64 noundef %conv)
  %10 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %10, i32 0, i32 1
  store ptr %call, ptr %zName, align 8
  %11 = load i32, ptr %dequote.addr, align 4
  %tobool1 = icmp ne i32 %11, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %12 = load ptr, ptr %pItem, align 8
  %zName3 = getelementptr inbounds nuw %struct.ExprList_item, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zName3, align 8
  call void @sqlite3Dequote(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %14 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 51
  %15 = load i8, ptr %eParseMode, align 4
  %conv4 = zext i8 %15 to i32
  %cmp = icmp sge i32 %conv4, 2
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pItem, align 8
  %zName7 = getelementptr inbounds nuw %struct.ExprList_item, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %zName7, align 8
  %19 = load ptr, ptr %pName.addr, align 8
  %call8 = call ptr @sqlite3RenameTokenMap(ptr noundef %16, ptr noundef %18, ptr noundef %19)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Dequote(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
