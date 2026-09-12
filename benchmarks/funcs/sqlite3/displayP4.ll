; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.111 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.289 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.290 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.291 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.292 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.293 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.294 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.295 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.296 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.297 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.298 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.299 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.300 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.301 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.302 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.303 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.304 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define hidden ptr @displayP4(ptr noundef %pOp, ptr noundef %zTemp, i32 noundef %nTemp) #1 {
entry:
  %pOp.addr = alloca ptr, align 8
  %zTemp.addr = alloca ptr, align 8
  %nTemp.addr = alloca i32, align 4
  %zP4 = alloca ptr, align 8
  %x = alloca %struct.sqlite3_str, align 8
  %j = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %zColl = alloca ptr, align 8
  %pColl20 = alloca ptr, align 8
  %pDef = alloca ptr, align 8
  %pMem = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  %i = alloca i32, align 4
  %ai = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pOp, ptr %pOp.addr, align 8
  store ptr %zTemp, ptr %zTemp.addr, align 8
  store i32 %nTemp, ptr %nTemp.addr, align 4
  %0 = load ptr, ptr %zTemp.addr, align 8
  store ptr %0, ptr %zP4, align 8
  %1 = load ptr, ptr %zTemp.addr, align 8
  %2 = load i32, ptr %nTemp.addr, align 4
  call void @sqlite3StrAccumInit(ptr noundef %x, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  %3 = load ptr, ptr %pOp.addr, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %p4type, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 -9, label %sw.bb
    i32 -2, label %sw.bb19
    i32 -8, label %sw.bb23
    i32 -14, label %sw.bb27
    i32 -3, label %sw.bb29
    i32 -13, label %sw.bb31
    i32 -11, label %sw.bb33
    i32 -12, label %sw.bb62
    i32 -15, label %sw.bb65
    i32 -4, label %sw.bb78
    i32 -17, label %sw.bb79
    i32 -5, label %sw.bb79
    i32 -6, label %sw.bb81
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %pOp.addr, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %p4, align 8
  store ptr %6, ptr %pKeyInfo, align 8
  %7 = load ptr, ptr %pKeyInfo, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %7, i32 0, i32 2
  %8 = load i16, ptr %nKeyField, align 2
  %conv1 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.289, i32 noundef %conv1)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %9 = load i32, ptr %j, align 4
  %10 = load ptr, ptr %pKeyInfo, align 8
  %nKeyField2 = getelementptr inbounds nuw %struct.KeyInfo, ptr %10, i32 0, i32 2
  %11 = load i16, ptr %nKeyField2, align 2
  %conv3 = zext i16 %11 to i32
  %cmp = icmp slt i32 %9, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %j, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  store ptr %14, ptr %pColl, align 8
  %15 = load ptr, ptr %pColl, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ @.str.3, %cond.false ]
  store ptr %cond, ptr %zColl, align 8
  %18 = load ptr, ptr %zColl, align 8
  %call = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.290) #2
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store ptr @.str.291, ptr %zColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %aSortFlags, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %20, i64 %idxprom7
  %22 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %22 to i32
  %and = and i32 %conv9, 1
  %tobool10 = icmp ne i32 %and, 0
  %23 = zext i1 %tobool10 to i64
  %cond11 = select i1 %tobool10, ptr @.str.293, ptr @.str.3
  %24 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags12 = getelementptr inbounds nuw %struct.KeyInfo, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %aSortFlags12, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %25, i64 %idxprom13
  %27 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %27 to i32
  %and16 = and i32 %conv15, 2
  %tobool17 = icmp ne i32 %and16, 0
  %28 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, ptr @.str.294, ptr @.str.3
  %29 = load ptr, ptr %zColl, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.292, ptr noundef %cond11, ptr noundef %cond18, ptr noundef %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, ptr %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @sqlite3_str_append(ptr noundef %x, ptr noundef @.str.295, i32 noundef 1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %31 = load ptr, ptr %pOp.addr, align 8
  %p421 = getelementptr inbounds nuw %struct.VdbeOp, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %p421, align 8
  store ptr %32, ptr %pColl20, align 8
  %33 = load ptr, ptr %pColl20, align 8
  %zName22 = getelementptr inbounds nuw %struct.CollSeq, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zName22, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.296, ptr noundef %34)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %35 = load ptr, ptr %pOp.addr, align 8
  %p424 = getelementptr inbounds nuw %struct.VdbeOp, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %p424, align 8
  store ptr %36, ptr %pDef, align 8
  %37 = load ptr, ptr %pDef, align 8
  %zName25 = getelementptr inbounds nuw %struct.FuncDef, ptr %37, i32 0, i32 8
  %38 = load ptr, ptr %zName25, align 8
  %39 = load ptr, ptr %pDef, align 8
  %nArg = getelementptr inbounds nuw %struct.FuncDef, ptr %39, i32 0, i32 0
  %40 = load i8, ptr %nArg, align 8
  %conv26 = sext i8 %40 to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.297, ptr noundef %38, i32 noundef %conv26)
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %41 = load ptr, ptr %pOp.addr, align 8
  %p428 = getelementptr inbounds nuw %struct.VdbeOp, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %p428, align 8
  %43 = load i64, ptr %42, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.111, i64 noundef %43)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %44 = load ptr, ptr %pOp.addr, align 8
  %p430 = getelementptr inbounds nuw %struct.VdbeOp, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %p430, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.298, i32 noundef %45)
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %46 = load ptr, ptr %pOp.addr, align 8
  %p432 = getelementptr inbounds nuw %struct.VdbeOp, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %p432, align 8
  %48 = load double, ptr %47, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.299, double noundef %48)
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %49 = load ptr, ptr %pOp.addr, align 8
  %p434 = getelementptr inbounds nuw %struct.VdbeOp, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %p434, align 8
  store ptr %50, ptr %pMem, align 8
  %51 = load ptr, ptr %pMem, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %51, i32 0, i32 1
  %52 = load i16, ptr %flags, align 8
  %conv35 = zext i16 %52 to i32
  %and36 = and i32 %conv35, 2
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.else

if.then38:                                        ; preds = %sw.bb33
  %53 = load ptr, ptr %pMem, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %53, i32 0, i32 5
  %54 = load ptr, ptr %z, align 8
  store ptr %54, ptr %zP4, align 8
  br label %if.end61

if.else:                                          ; preds = %sw.bb33
  %55 = load ptr, ptr %pMem, align 8
  %flags39 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %55, i32 0, i32 1
  %56 = load i16, ptr %flags39, align 8
  %conv40 = zext i16 %56 to i32
  %and41 = and i32 %conv40, 36
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else
  %57 = load ptr, ptr %pMem, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %57, i32 0, i32 0
  %58 = load i64, ptr %u, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.111, i64 noundef %58)
  br label %if.end60

if.else44:                                        ; preds = %if.else
  %59 = load ptr, ptr %pMem, align 8
  %flags45 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %59, i32 0, i32 1
  %60 = load i16, ptr %flags45, align 8
  %conv46 = zext i16 %60 to i32
  %and47 = and i32 %conv46, 8
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else44
  %61 = load ptr, ptr %pMem, align 8
  %u50 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %61, i32 0, i32 0
  %62 = load double, ptr %u50, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.299, double noundef %62)
  br label %if.end59

if.else51:                                        ; preds = %if.else44
  %63 = load ptr, ptr %pMem, align 8
  %flags52 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %63, i32 0, i32 1
  %64 = load i16, ptr %flags52, align 8
  %conv53 = zext i16 %64 to i32
  %and54 = and i32 %conv53, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else51
  store ptr @.str.4, ptr %zP4, align 8
  br label %if.end58

if.else57:                                        ; preds = %if.else51
  store ptr @.str.300, ptr %zP4, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then56
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then43
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then38
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %65 = load ptr, ptr %pOp.addr, align 8
  %p463 = getelementptr inbounds nuw %struct.VdbeOp, ptr %65, i32 0, i32 6
  %66 = load ptr, ptr %p463, align 8
  %pVtab64 = getelementptr inbounds nuw %struct.VTable, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %pVtab64, align 8
  store ptr %67, ptr %pVtab, align 8
  %68 = load ptr, ptr %pVtab, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.301, ptr noundef %68)
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %69 = load ptr, ptr %pOp.addr, align 8
  %p466 = getelementptr inbounds nuw %struct.VdbeOp, ptr %69, i32 0, i32 6
  %70 = load ptr, ptr %p466, align 8
  store ptr %70, ptr %ai, align 8
  %71 = load ptr, ptr %ai, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %71, i64 0
  %72 = load i32, ptr %arrayidx67, align 4
  store i32 %72, ptr %n, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc74, %sw.bb65
  %73 = load i32, ptr %i, align 4
  %74 = load i32, ptr %n, align 4
  %cmp69 = icmp sle i32 %73, %74
  br i1 %cmp69, label %for.body71, label %for.end76

for.body71:                                       ; preds = %for.cond68
  %75 = load ptr, ptr %ai, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %76 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %75, i64 %idxprom72
  %77 = load i32, ptr %arrayidx73, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.302, i32 noundef %77)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body71
  %78 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %78, 1
  store i32 %inc75, ptr %i, align 4
  br label %for.cond68, !llvm.loop !8

for.end76:                                        ; preds = %for.cond68
  %79 = load ptr, ptr %zTemp.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %79, i64 0
  store i8 91, ptr %arrayidx77, align 1
  call void @sqlite3_str_append(ptr noundef %x, ptr noundef @.str.303, i32 noundef 1)
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.304)
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry, %entry
  %80 = load ptr, ptr %zTemp.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %80, i64 0
  store i8 0, ptr %arrayidx80, align 1
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  %81 = load ptr, ptr %pOp.addr, align 8
  %p482 = getelementptr inbounds nuw %struct.VdbeOp, ptr %81, i32 0, i32 6
  %82 = load ptr, ptr %p482, align 8
  %zName83 = getelementptr inbounds nuw %struct.Table, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %zName83, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %x, ptr noundef @.str.20, ptr noundef %83)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %84 = load ptr, ptr %pOp.addr, align 8
  %p484 = getelementptr inbounds nuw %struct.VdbeOp, ptr %84, i32 0, i32 6
  %85 = load ptr, ptr %p484, align 8
  store ptr %85, ptr %zP4, align 8
  %86 = load ptr, ptr %zP4, align 8
  %cmp85 = icmp eq ptr %86, null
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %sw.default
  %87 = load ptr, ptr %zTemp.addr, align 8
  store ptr %87, ptr %zP4, align 8
  %88 = load ptr, ptr %zTemp.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %88, i64 0
  store i8 0, ptr %arrayidx88, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end89, %sw.bb81, %sw.bb79, %sw.bb78, %for.end76, %sw.bb62, %if.end61, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb23, %sw.bb19, %for.end
  %call90 = call ptr @sqlite3StrAccumFinish(ptr noundef %x)
  %89 = load ptr, ptr %zP4, align 8
  ret ptr %89
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
