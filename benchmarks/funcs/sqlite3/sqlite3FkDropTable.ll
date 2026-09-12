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
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteFrom(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HaltConstraint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FkDropTable(ptr noundef %pParse, ptr noundef %pName, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iSkip = alloca i32, align 4
  %v = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 7
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 16384
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %nModuleArg, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.end30, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %iSkip, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %6)
  store ptr %call, ptr %v, align 8
  %7 = load ptr, ptr %pTab.addr, align 8
  %call3 = call ptr @sqlite3FkReferences(ptr noundef %7)
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %pTab.addr, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pFKey, align 8
  store ptr %9, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %10 = load ptr, ptr %p, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8
  %isDeferred = getelementptr inbounds nuw %struct.FKey, ptr %11, i32 0, i32 6
  %12 = load i8, ptr %isDeferred, align 4
  %conv = zext i8 %12 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %db, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 7
  %14 = load i64, ptr %flags7, align 8
  %and8 = and i64 %14, 524288
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load ptr, ptr %p, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pNextFrom, align 8
  store ptr %16, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then10, %for.cond
  %17 = load ptr, ptr %p, align 8
  %tobool11 = icmp ne ptr %17, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  br label %if.end30

if.end13:                                         ; preds = %for.end
  %18 = load ptr, ptr %pParse.addr, align 8
  %call14 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %18)
  store i32 %call14, ptr %iSkip, align 4
  %19 = load ptr, ptr %v, align 8
  %20 = load i32, ptr %iSkip, align 4
  %call15 = call i32 @sqlite3VdbeAddOp2(ptr noundef %19, i32 noundef 46, i32 noundef 1, i32 noundef %20)
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.then
  %21 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 44
  store i8 1, ptr %disableTriggers, align 2
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pName.addr, align 8
  %call17 = call ptr @sqlite3SrcListDup(ptr noundef %23, ptr noundef %24, i32 noundef 0)
  call void @sqlite3DeleteFrom(ptr noundef %22, ptr noundef %call17, ptr noundef null, ptr noundef null, ptr noundef null)
  %25 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers18 = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 44
  store i8 0, ptr %disableTriggers18, align 2
  %26 = load ptr, ptr %db, align 8
  %flags19 = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 7
  %27 = load i64, ptr %flags19, align 8
  %and20 = and i64 %27, 524288
  %cmp21 = icmp eq i64 %and20, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end16
  %28 = load ptr, ptr %v, align 8
  %29 = load ptr, ptr %v, align 8
  %call24 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %29)
  %add = add nsw i32 %call24, 2
  %call25 = call i32 @sqlite3VdbeAddOp2(ptr noundef %28, i32 noundef 46, i32 noundef 0, i32 noundef %add)
  %30 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3HaltConstraint(ptr noundef %30, i32 noundef 787, i32 noundef 2, ptr noundef null, i8 noundef signext -1, i8 noundef zeroext 4)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end16
  %31 = load i32, ptr %iSkip, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %32 = load ptr, ptr %v, align 8
  %33 = load i32, ptr %iSkip, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %32, i32 noundef %33)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then12, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

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
