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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMakeReady(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FinishCoding(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %v = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %i = alloca i32, align 4
  %pSchema = alloca ptr, align 8
  %vtab = alloca ptr, align 8
  %pEL = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nested, align 2
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end85

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 16
  %7 = load i32, ptr %nErr, align 8
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %10 = load ptr, ptr %pParse.addr, align 8
  %rc7 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 3
  store i32 1, ptr %rc7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  br label %if.end85

if.end9:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %11)
  store ptr %call, ptr %v, align 8
  %12 = load ptr, ptr %v, align 8
  %tobool10 = icmp ne ptr %12, null
  br i1 %tobool10, label %if.then11, label %if.end73

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %v, align 8
  %call12 = call i32 @sqlite3VdbeAddOp0(ptr noundef %13, i32 noundef 69)
  %14 = load ptr, ptr %db, align 8
  %mallocFailed13 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 19
  %15 = load i8, ptr %mallocFailed13, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %if.then11
  %16 = load ptr, ptr %pParse.addr, align 8
  %cookieMask = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 27
  %17 = load i32, ptr %cookieMask, align 4
  %cmp17 = icmp ne i32 %17, 0
  br i1 %cmp17, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %18 = load ptr, ptr %pParse.addr, align 8
  %pConstExpr = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 24
  %19 = load ptr, ptr %pConstExpr, align 8
  %tobool20 = icmp ne ptr %19, null
  br i1 %tobool20, label %if.then21, label %if.end72

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true
  %20 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeJumpHere(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %iDb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then21
  %21 = load i32, ptr %iDb, align 4
  %22 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %nDb, align 8
  %cmp22 = icmp slt i32 %21, %23
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %pParse.addr, align 8
  %cookieMask24 = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 27
  %25 = load i32, ptr %cookieMask24, align 4
  %26 = load i32, ptr %iDb, align 4
  %shl = shl i32 1, %26
  %and = and i32 %25, %shl
  %cmp25 = icmp ne i32 %and, 0
  %conv26 = zext i1 %cmp25 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %27 = load ptr, ptr %v, align 8
  %28 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %aDb, align 8
  %31 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %30, i64 %idxprom
  %pSchema31 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %32 = load ptr, ptr %pSchema31, align 8
  store ptr %32, ptr %pSchema, align 8
  %33 = load ptr, ptr %v, align 8
  %34 = load i32, ptr %iDb, align 4
  %35 = load ptr, ptr %pParse.addr, align 8
  %writeMask = getelementptr inbounds nuw %struct.Parse, ptr %35, i32 0, i32 26
  %36 = load i32, ptr %writeMask, align 8
  %37 = load i32, ptr %iDb, align 4
  %shl32 = shl i32 1, %37
  %and33 = and i32 %36, %shl32
  %cmp34 = icmp ne i32 %and33, 0
  %conv35 = zext i1 %cmp34 to i32
  %38 = load ptr, ptr %pSchema, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %schema_cookie, align 8
  %40 = load ptr, ptr %pSchema, align 8
  %iGeneration = getelementptr inbounds nuw %struct.Schema, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %iGeneration, align 4
  %call36 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %33, i32 noundef 2, i32 noundef %34, i32 noundef %conv35, i32 noundef %39, i32 noundef %41)
  %42 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %42, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %43 = load i8, ptr %busy, align 1
  %conv37 = zext i8 %43 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end30
  %44 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %44, i16 noundef zeroext 1)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end30
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %if.then29
  %45 = load i32, ptr %iDb, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %iDb, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.end
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %pParse.addr, align 8
  %nVtabLock = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 52
  %48 = load i32, ptr %nVtabLock, align 8
  %cmp43 = icmp slt i32 %46, %48
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond42
  %49 = load ptr, ptr %db, align 8
  %50 = load ptr, ptr %pParse.addr, align 8
  %apVtabLock = getelementptr inbounds nuw %struct.Parse, ptr %50, i32 0, i32 63
  %51 = load ptr, ptr %apVtabLock, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %52 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %51, i64 %idxprom46
  %53 = load ptr, ptr %arrayidx47, align 8
  %call48 = call ptr @sqlite3GetVTable(ptr noundef %49, ptr noundef %53)
  store ptr %call48, ptr %vtab, align 8
  %54 = load ptr, ptr %v, align 8
  %55 = load ptr, ptr %vtab, align 8
  %call49 = call i32 @sqlite3VdbeAddOp4(ptr noundef %54, i32 noundef 160, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %55, i32 noundef -12)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %56 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %56, 1
  store i32 %inc51, ptr %i, align 4
  br label %for.cond42, !llvm.loop !8

for.end52:                                        ; preds = %for.cond42
  %57 = load ptr, ptr %pParse.addr, align 8
  %nVtabLock53 = getelementptr inbounds nuw %struct.Parse, ptr %57, i32 0, i32 52
  store i32 0, ptr %nVtabLock53, align 8
  %58 = load ptr, ptr %pParse.addr, align 8
  call void @codeTableLocks(ptr noundef %58)
  %59 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3AutoincrementBegin(ptr noundef %59)
  %60 = load ptr, ptr %pParse.addr, align 8
  %pConstExpr54 = getelementptr inbounds nuw %struct.Parse, ptr %60, i32 0, i32 24
  %61 = load ptr, ptr %pConstExpr54, align 8
  %tobool55 = icmp ne ptr %61, null
  br i1 %tobool55, label %if.then56, label %if.end70

if.then56:                                        ; preds = %for.end52
  %62 = load ptr, ptr %pParse.addr, align 8
  %pConstExpr57 = getelementptr inbounds nuw %struct.Parse, ptr %62, i32 0, i32 24
  %63 = load ptr, ptr %pConstExpr57, align 8
  store ptr %63, ptr %pEL, align 8
  %64 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor = getelementptr inbounds nuw %struct.Parse, ptr %64, i32 0, i32 11
  store i8 0, ptr %okConstFactor, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %if.then56
  %65 = load i32, ptr %i, align 4
  %66 = load ptr, ptr %pEL, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %66, i32 0, i32 0
  %67 = load i32, ptr %nExpr, align 8
  %cmp59 = icmp slt i32 %65, %67
  br i1 %cmp59, label %for.body61, label %for.end69

for.body61:                                       ; preds = %for.cond58
  %68 = load ptr, ptr %pParse.addr, align 8
  %69 = load ptr, ptr %pEL, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %70 to i64
  %arrayidx63 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom62
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx63, i32 0, i32 0
  %71 = load ptr, ptr %pExpr, align 8
  %72 = load ptr, ptr %pEL, align 8
  %a64 = getelementptr inbounds nuw %struct.ExprList, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %73 to i64
  %arrayidx66 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a64, i64 0, i64 %idxprom65
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx66, i32 0, i32 5
  %74 = load i32, ptr %u, align 4
  call void @sqlite3ExprCode(ptr noundef %68, ptr noundef %71, i32 noundef %74)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body61
  %75 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %75, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond58, !llvm.loop !9

for.end69:                                        ; preds = %for.cond58
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %for.end52
  %76 = load ptr, ptr %v, align 8
  %call71 = call i32 @sqlite3VdbeGoto(ptr noundef %76, i32 noundef 1)
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %lor.lhs.false19, %if.then11
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end9
  %77 = load ptr, ptr %v, align 8
  %tobool74 = icmp ne ptr %77, null
  br i1 %tobool74, label %land.lhs.true75, label %if.else

land.lhs.true75:                                  ; preds = %if.end73
  %78 = load ptr, ptr %pParse.addr, align 8
  %nErr76 = getelementptr inbounds nuw %struct.Parse, ptr %78, i32 0, i32 16
  %79 = load i32, ptr %nErr76, align 8
  %cmp77 = icmp eq i32 %79, 0
  br i1 %cmp77, label %land.lhs.true79, label %if.else

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %80 = load ptr, ptr %db, align 8
  %mallocFailed80 = getelementptr inbounds nuw %struct.sqlite3, ptr %80, i32 0, i32 19
  %81 = load i8, ptr %mallocFailed80, align 1
  %tobool81 = icmp ne i8 %81, 0
  br i1 %tobool81, label %if.else, label %if.then82

if.then82:                                        ; preds = %land.lhs.true79
  %82 = load ptr, ptr %v, align 8
  %83 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeMakeReady(ptr noundef %82, ptr noundef %83)
  %84 = load ptr, ptr %pParse.addr, align 8
  %rc83 = getelementptr inbounds nuw %struct.Parse, ptr %84, i32 0, i32 3
  store i32 101, ptr %rc83, align 8
  br label %if.end85

if.else:                                          ; preds = %land.lhs.true79, %land.lhs.true75, %if.end73
  %85 = load ptr, ptr %pParse.addr, align 8
  %rc84 = getelementptr inbounds nuw %struct.Parse, ptr %85, i32 0, i32 3
  store i32 1, ptr %rc84, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then82, %if.end8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeTableLocks(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AutoincrementBegin(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

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
!9 = distinct !{!9, !7}
