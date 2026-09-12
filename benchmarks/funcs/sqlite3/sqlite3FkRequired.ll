; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FkRequired(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %aChange, i32 noundef %chngRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %aChange.addr = alloca ptr, align 8
  %chngRowid.addr = alloca i32, align 4
  %eRet = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %aChange, ptr %aChange.addr, align 8
  store i32 %chngRowid, ptr %chngRowid.addr, align 4
  store i32 0, ptr %eRet, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 7
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 16384
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %aChange.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3FkReferences(ptr noundef %4)
  %tobool3 = icmp ne ptr %call, null
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then2
  %5 = load ptr, ptr %pTab.addr, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pFKey, align 8
  %tobool4 = icmp ne ptr %6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then2
  %7 = phi i1 [ true, %if.then2 ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, ptr %eRet, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %pTab.addr, align 8
  %pFKey5 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pFKey5, align 8
  store ptr %9, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load ptr, ptr %p, align 8
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zName, align 8
  %13 = load ptr, ptr %p, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %zTo, align 8
  %call7 = call i32 @sqlite3_stricmp(ptr noundef %12, ptr noundef %14)
  %cmp = icmp eq i32 0, %call7
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %15 = load ptr, ptr %pTab.addr, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %aChange.addr, align 8
  %18 = load i32, ptr %chngRowid.addr, align 4
  %call9 = call i32 @fkChildIsModified(ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %eRet, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %19 = load ptr, ptr %p, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pNextFrom, align 8
  store ptr %20, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %pTab.addr, align 8
  %call13 = call ptr @sqlite3FkReferences(ptr noundef %21)
  store ptr %call13, ptr %p, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %22 = load ptr, ptr %p, align 8
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %23 = load ptr, ptr %pTab.addr, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load ptr, ptr %aChange.addr, align 8
  %26 = load i32, ptr %chngRowid.addr, align 4
  %call17 = call i32 @fkParentIsModified(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %for.body16
  %27 = load ptr, ptr %p, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %27, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 1
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %cmp20 = icmp ne i32 %conv, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i32 2, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then19
  store i32 1, ptr %eRet, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.body16
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %29 = load ptr, ptr %p, align 8
  %pNextTo = getelementptr inbounds nuw %struct.FKey, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pNextTo, align 8
  store ptr %30, ptr %p, align 8
  br label %for.cond14, !llvm.loop !8

for.end26:                                        ; preds = %for.cond14
  br label %if.end27

if.end27:                                         ; preds = %for.end26, %lor.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %entry
  %31 = load i32, ptr %eRet, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then22, %if.then8
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @fkChildIsModified(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fkParentIsModified(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
!8 = distinct !{!8, !7}
