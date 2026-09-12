; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.702 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FixSrcList(ptr noundef %pFix, ptr noundef %pList) #0 {
entry:
  %retval = alloca i32, align 4
  %pFix.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  store ptr %pFix, ptr %pFix.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pFix.addr, align 8
  %zDb1 = getelementptr inbounds nuw %struct.DbFixer, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %zDb1, align 8
  store ptr %2, ptr %zDb, align 8
  store i32 0, ptr %i, align 4
  %3 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nSrc, align 8
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pFix.addr, align 8
  %bVarOnly = getelementptr inbounds nuw %struct.DbFixer, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %bVarOnly, align 8
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %for.body
  %9 = load ptr, ptr %pItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %zDatabase, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then4
  %11 = load ptr, ptr %pItem, align 8
  %zDatabase5 = getelementptr inbounds nuw %struct.SrcList_item, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %zDatabase5, align 8
  %13 = load ptr, ptr %zDb, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %12, ptr noundef %13)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %pFix.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.DbFixer, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pParse, align 8
  %16 = load ptr, ptr %pFix.addr, align 8
  %zType = getelementptr inbounds nuw %struct.DbFixer, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %zType, align 8
  %18 = load ptr, ptr %pFix.addr, align 8
  %pName = getelementptr inbounds nuw %struct.DbFixer, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %pName, align 8
  %20 = load ptr, ptr %pItem, align 8
  %zDatabase8 = getelementptr inbounds nuw %struct.SrcList_item, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %zDatabase8, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %15, ptr noundef @.str.702, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.then4
  %22 = load ptr, ptr %pFix.addr, align 8
  %pParse10 = getelementptr inbounds nuw %struct.DbFixer, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pParse10, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db, align 8
  %25 = load ptr, ptr %pItem, align 8
  %zDatabase11 = getelementptr inbounds nuw %struct.SrcList_item, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %zDatabase11, align 8
  call void @sqlite3DbFree(ptr noundef %24, ptr noundef %26)
  %27 = load ptr, ptr %pItem, align 8
  %zDatabase12 = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 0, i32 1
  store ptr null, ptr %zDatabase12, align 8
  %28 = load ptr, ptr %pFix.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.DbFixer, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %pSchema, align 8
  %30 = load ptr, ptr %pItem, align 8
  %pSchema13 = getelementptr inbounds nuw %struct.SrcList_item, ptr %30, i32 0, i32 0
  store ptr %29, ptr %pSchema13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %for.body
  %31 = load ptr, ptr %pFix.addr, align 8
  %32 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %pSelect, align 8
  %call15 = call i32 @sqlite3FixSelect(ptr noundef %31, ptr noundef %33)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  %34 = load ptr, ptr %pFix.addr, align 8
  %35 = load ptr, ptr %pItem, align 8
  %pOn = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 0, i32 11
  %36 = load ptr, ptr %pOn, align 8
  %call19 = call i32 @sqlite3FixExpr(ptr noundef %34, ptr noundef %36)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  %37 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %37, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool23 = icmp ne i32 %bf.cast, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %if.end22
  %38 = load ptr, ptr %pFix.addr, align 8
  %39 = load ptr, ptr %pItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %39, i32 0, i32 14
  %40 = load ptr, ptr %u1, align 8
  %call25 = call i32 @sqlite3FixExprList(ptr noundef %38, ptr noundef %40)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true24
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true24, %if.end22
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %41 = load i32, ptr %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %i, align 4
  %42 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then27, %if.then21, %if.then17, %if.then7, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExprList(ptr noundef, ptr noundef) #0

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
