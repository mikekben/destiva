; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.SubProgram = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

@.str.115 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseMemArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeError(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemGrow(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeList(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %nRow = alloca i32, align 4
  %nSub = alloca i32, align 4
  %apSub = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %pMem = alloca ptr, align 8
  %bListSubprogs = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %j = alloca i32, align 4
  %nByte = alloca i32, align 4
  %j61 = alloca i32, align 4
  %zP4 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %nSub, align 4
  store ptr null, ptr %apSub, align 8
  store ptr null, ptr %pSub, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aMem, align 8
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %3, i64 1
  store ptr %arrayidx, ptr %pMem, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 35
  %bf.load = load i16, ptr %explain, align 1
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 7
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 16777216
  %cmp2 = icmp ne i64 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, ptr %bListSubprogs, align 4
  store ptr null, ptr %pOp, align 8
  %8 = load ptr, ptr %pMem, align 8
  call void @releaseMemArray(ptr noundef %8, i32 noundef 8)
  %9 = load ptr, ptr %p.addr, align 8
  %pResultSet = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 27
  store ptr null, ptr %pResultSet, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %rc3, align 8
  %cmp4 = icmp eq i32 %11, 7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %12 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %12)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.end
  %13 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 24
  %14 = load i32, ptr %nOp, align 8
  store i32 %14, ptr %nRow, align 4
  %15 = load i32, ptr %bListSubprogs, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %p.addr, align 8
  %aMem6 = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %aMem6, align 8
  %arrayidx7 = getelementptr inbounds %struct.sqlite3_value, ptr %17, i64 9
  store ptr %arrayidx7, ptr %pSub, align 8
  %18 = load ptr, ptr %pSub, align 8
  %flags8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 1
  %19 = load i16, ptr %flags8, align 8
  %conv = zext i16 %19 to i32
  %and9 = and i32 %conv, 16
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then5
  %20 = load ptr, ptr %pSub, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %n, align 4
  %conv12 = sext i32 %21 to i64
  %div = udiv i64 %conv12, 8
  %conv13 = trunc i64 %div to i32
  store i32 %conv13, ptr %nSub, align 4
  %22 = load ptr, ptr %pSub, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %z, align 8
  store ptr %23, ptr %apSub, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then5
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nSub, align 4
  %cmp15 = icmp slt i32 %24, %25
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %apSub, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx17, align 8
  %nOp18 = getelementptr inbounds nuw %struct.SubProgram, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nOp18, align 8
  %30 = load i32, ptr %nRow, align 4
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %nRow, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end126, %if.end19
  %32 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 10
  %33 = load i32, ptr %pc, align 4
  %inc20 = add nsw i32 %33, 1
  store i32 %inc20, ptr %pc, align 4
  store i32 %33, ptr %i, align 4
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nRow, align 4
  %cmp21 = icmp sge i32 %34, %35
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %while.body
  %36 = load ptr, ptr %p.addr, align 8
  %rc24 = getelementptr inbounds nuw %struct.Vdbe, ptr %36, i32 0, i32 11
  store i32 0, ptr %rc24, align 8
  store i32 101, ptr %rc, align 4
  br label %while.end

if.end25:                                         ; preds = %while.body
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %p.addr, align 8
  %nOp26 = getelementptr inbounds nuw %struct.Vdbe, ptr %38, i32 0, i32 24
  %39 = load i32, ptr %nOp26, align 8
  %cmp27 = icmp slt i32 %37, %39
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %40 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %40, i32 0, i32 23
  %41 = load ptr, ptr %aOp, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %42 to i64
  %arrayidx31 = getelementptr inbounds %struct.VdbeOp, ptr %41, i64 %idxprom30
  store ptr %arrayidx31, ptr %pOp, align 8
  br label %if.end52

if.else:                                          ; preds = %if.end25
  %43 = load ptr, ptr %p.addr, align 8
  %nOp32 = getelementptr inbounds nuw %struct.Vdbe, ptr %43, i32 0, i32 24
  %44 = load i32, ptr %nOp32, align 8
  %45 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %45, %44
  store i32 %sub, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %if.else
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %apSub, align 8
  %48 = load i32, ptr %j, align 4
  %idxprom34 = sext i32 %48 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %47, i64 %idxprom34
  %49 = load ptr, ptr %arrayidx35, align 8
  %nOp36 = getelementptr inbounds nuw %struct.SubProgram, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %nOp36, align 8
  %cmp37 = icmp sge i32 %46, %50
  br i1 %cmp37, label %for.body39, label %for.end46

for.body39:                                       ; preds = %for.cond33
  %51 = load ptr, ptr %apSub, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %52 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %51, i64 %idxprom40
  %53 = load ptr, ptr %arrayidx41, align 8
  %nOp42 = getelementptr inbounds nuw %struct.SubProgram, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %nOp42, align 8
  %55 = load i32, ptr %i, align 4
  %sub43 = sub nsw i32 %55, %54
  store i32 %sub43, ptr %i, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %for.body39
  %56 = load i32, ptr %j, align 4
  %inc45 = add nsw i32 %56, 1
  store i32 %inc45, ptr %j, align 4
  br label %for.cond33, !llvm.loop !8

for.end46:                                        ; preds = %for.cond33
  %57 = load ptr, ptr %apSub, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %58 to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %57, i64 %idxprom47
  %59 = load ptr, ptr %arrayidx48, align 8
  %aOp49 = getelementptr inbounds nuw %struct.SubProgram, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %aOp49, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %61 to i64
  %arrayidx51 = getelementptr inbounds %struct.VdbeOp, ptr %60, i64 %idxprom50
  store ptr %arrayidx51, ptr %pOp, align 8
  br label %if.end52

if.end52:                                         ; preds = %for.end46, %if.then29
  %62 = load i32, ptr %bListSubprogs, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %land.lhs.true, label %if.end102

land.lhs.true:                                    ; preds = %if.end52
  %63 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %63, i32 0, i32 1
  %64 = load i8, ptr %p4type, align 1
  %conv54 = sext i8 %64 to i32
  %cmp55 = icmp eq i32 %conv54, -4
  br i1 %cmp55, label %if.then57, label %if.end102

if.then57:                                        ; preds = %land.lhs.true
  %65 = load i32, ptr %nSub, align 4
  %add58 = add nsw i32 %65, 1
  %conv59 = sext i32 %add58 to i64
  %mul = mul i64 %conv59, 8
  %conv60 = trunc i64 %mul to i32
  store i32 %conv60, ptr %nByte, align 4
  store i32 0, ptr %j61, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc72, %if.then57
  %66 = load i32, ptr %j61, align 4
  %67 = load i32, ptr %nSub, align 4
  %cmp63 = icmp slt i32 %66, %67
  br i1 %cmp63, label %for.body65, label %for.end74

for.body65:                                       ; preds = %for.cond62
  %68 = load ptr, ptr %apSub, align 8
  %69 = load i32, ptr %j61, align 4
  %idxprom66 = sext i32 %69 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %68, i64 %idxprom66
  %70 = load ptr, ptr %arrayidx67, align 8
  %71 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %71, i32 0, i32 6
  %72 = load ptr, ptr %p4, align 8
  %cmp68 = icmp eq ptr %70, %72
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.body65
  br label %for.end74

if.end71:                                         ; preds = %for.body65
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %73 = load i32, ptr %j61, align 4
  %inc73 = add nsw i32 %73, 1
  store i32 %inc73, ptr %j61, align 4
  br label %for.cond62, !llvm.loop !9

for.end74:                                        ; preds = %if.then70, %for.cond62
  %74 = load i32, ptr %j61, align 4
  %75 = load i32, ptr %nSub, align 4
  %cmp75 = icmp eq i32 %74, %75
  br i1 %cmp75, label %if.then77, label %if.end101

if.then77:                                        ; preds = %for.end74
  %76 = load ptr, ptr %pSub, align 8
  %77 = load i32, ptr %nByte, align 4
  %78 = load i32, ptr %nSub, align 4
  %cmp78 = icmp ne i32 %78, 0
  %conv79 = zext i1 %cmp78 to i32
  %call = call i32 @sqlite3VdbeMemGrow(ptr noundef %76, i32 noundef %77, i32 noundef %conv79)
  %79 = load ptr, ptr %p.addr, align 8
  %rc80 = getelementptr inbounds nuw %struct.Vdbe, ptr %79, i32 0, i32 11
  store i32 %call, ptr %rc80, align 8
  %80 = load ptr, ptr %p.addr, align 8
  %rc81 = getelementptr inbounds nuw %struct.Vdbe, ptr %80, i32 0, i32 11
  %81 = load i32, ptr %rc81, align 8
  %cmp82 = icmp ne i32 %81, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then77
  store i32 1, ptr %rc, align 4
  br label %while.end

if.end85:                                         ; preds = %if.then77
  %82 = load ptr, ptr %pSub, align 8
  %z86 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %82, i32 0, i32 5
  %83 = load ptr, ptr %z86, align 8
  store ptr %83, ptr %apSub, align 8
  %84 = load ptr, ptr %pOp, align 8
  %p487 = getelementptr inbounds nuw %struct.VdbeOp, ptr %84, i32 0, i32 6
  %85 = load ptr, ptr %p487, align 8
  %86 = load ptr, ptr %apSub, align 8
  %87 = load i32, ptr %nSub, align 4
  %inc88 = add nsw i32 %87, 1
  store i32 %inc88, ptr %nSub, align 4
  %idxprom89 = sext i32 %87 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %86, i64 %idxprom89
  store ptr %85, ptr %arrayidx90, align 8
  %88 = load ptr, ptr %pSub, align 8
  %flags91 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %88, i32 0, i32 1
  %89 = load i16, ptr %flags91, align 8
  %conv92 = zext i16 %89 to i32
  %or = or i32 %conv92, 16
  %conv93 = trunc i32 %or to i16
  store i16 %conv93, ptr %flags91, align 8
  %90 = load i32, ptr %nSub, align 4
  %conv94 = sext i32 %90 to i64
  %mul95 = mul i64 %conv94, 8
  %conv96 = trunc i64 %mul95 to i32
  %91 = load ptr, ptr %pSub, align 8
  %n97 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %91, i32 0, i32 4
  store i32 %conv96, ptr %n97, align 4
  %92 = load ptr, ptr %pOp, align 8
  %p498 = getelementptr inbounds nuw %struct.VdbeOp, ptr %92, i32 0, i32 6
  %93 = load ptr, ptr %p498, align 8
  %nOp99 = getelementptr inbounds nuw %struct.SubProgram, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %nOp99, align 8
  %95 = load i32, ptr %nRow, align 4
  %add100 = add nsw i32 %95, %94
  store i32 %add100, ptr %nRow, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end85, %for.end74
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %land.lhs.true, %if.end52
  %96 = load ptr, ptr %p.addr, align 8
  %explain103 = getelementptr inbounds nuw %struct.Vdbe, ptr %96, i32 0, i32 35
  %bf.load104 = load i16, ptr %explain103, align 1
  %bf.lshr105 = lshr i16 %bf.load104, 2
  %bf.clear106 = and i16 %bf.lshr105, 3
  %bf.cast107 = zext i16 %bf.clear106 to i32
  %cmp108 = icmp slt i32 %bf.cast107, 2
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end102
  br label %while.end

if.end111:                                        ; preds = %if.end102
  %97 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %97, i32 0, i32 0
  %98 = load i8, ptr %opcode, align 8
  %conv112 = zext i8 %98 to i32
  %cmp113 = icmp eq i32 %conv112, 171
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end111
  br label %while.end

if.end116:                                        ; preds = %if.end111
  %99 = load ptr, ptr %pOp, align 8
  %opcode117 = getelementptr inbounds nuw %struct.VdbeOp, ptr %99, i32 0, i32 0
  %100 = load i8, ptr %opcode117, align 8
  %conv118 = zext i8 %100 to i32
  %cmp119 = icmp eq i32 %conv118, 61
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %if.end116
  %101 = load ptr, ptr %p.addr, align 8
  %pc122 = getelementptr inbounds nuw %struct.Vdbe, ptr %101, i32 0, i32 10
  %102 = load i32, ptr %pc122, align 4
  %cmp123 = icmp sgt i32 %102, 1
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %land.lhs.true121
  br label %while.end

if.end126:                                        ; preds = %land.lhs.true121, %if.end116
  br label %while.body

while.end:                                        ; preds = %if.then125, %if.then115, %if.then110, %if.then84, %if.then23
  %103 = load i32, ptr %rc, align 4
  %cmp127 = icmp eq i32 %103, 0
  br i1 %cmp127, label %if.then129, label %if.end223

if.then129:                                       ; preds = %while.end
  %104 = load ptr, ptr %db, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 60
  %105 = load volatile i32, ptr %u1, align 8
  %tobool130 = icmp ne i32 %105, 0
  br i1 %tobool130, label %if.then131, label %if.else135

if.then131:                                       ; preds = %if.then129
  %106 = load ptr, ptr %p.addr, align 8
  %rc132 = getelementptr inbounds nuw %struct.Vdbe, ptr %106, i32 0, i32 11
  store i32 9, ptr %rc132, align 8
  store i32 1, ptr %rc, align 4
  %107 = load ptr, ptr %p.addr, align 8
  %108 = load ptr, ptr %p.addr, align 8
  %rc133 = getelementptr inbounds nuw %struct.Vdbe, ptr %108, i32 0, i32 11
  %109 = load i32, ptr %rc133, align 8
  %call134 = call ptr @sqlite3ErrStr(i32 noundef %109)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %107, ptr noundef %call134)
  br label %if.end222

if.else135:                                       ; preds = %if.then129
  %110 = load ptr, ptr %p.addr, align 8
  %explain136 = getelementptr inbounds nuw %struct.Vdbe, ptr %110, i32 0, i32 35
  %bf.load137 = load i16, ptr %explain136, align 1
  %bf.lshr138 = lshr i16 %bf.load137, 2
  %bf.clear139 = and i16 %bf.lshr138, 3
  %bf.cast140 = zext i16 %bf.clear139 to i32
  %cmp141 = icmp eq i32 %bf.cast140, 1
  br i1 %cmp141, label %if.then143, label %if.end155

if.then143:                                       ; preds = %if.else135
  %111 = load ptr, ptr %pMem, align 8
  %flags144 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %111, i32 0, i32 1
  store i16 4, ptr %flags144, align 8
  %112 = load i32, ptr %i, align 4
  %conv145 = sext i32 %112 to i64
  %113 = load ptr, ptr %pMem, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %113, i32 0, i32 0
  store i64 %conv145, ptr %u, align 8
  %114 = load ptr, ptr %pMem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %114, i32 1
  store ptr %incdec.ptr, ptr %pMem, align 8
  %115 = load ptr, ptr %pMem, align 8
  %flags146 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %115, i32 0, i32 1
  store i16 2562, ptr %flags146, align 8
  %116 = load ptr, ptr %pOp, align 8
  %opcode147 = getelementptr inbounds nuw %struct.VdbeOp, ptr %116, i32 0, i32 0
  %117 = load i8, ptr %opcode147, align 8
  %conv148 = zext i8 %117 to i32
  %call149 = call ptr @sqlite3OpcodeName(i32 noundef %conv148)
  %118 = load ptr, ptr %pMem, align 8
  %z150 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %118, i32 0, i32 5
  store ptr %call149, ptr %z150, align 8
  %119 = load ptr, ptr %pMem, align 8
  %z151 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %119, i32 0, i32 5
  %120 = load ptr, ptr %z151, align 8
  %call152 = call i32 @sqlite3Strlen30(ptr noundef %120)
  %121 = load ptr, ptr %pMem, align 8
  %n153 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %121, i32 0, i32 4
  store i32 %call152, ptr %n153, align 4
  %122 = load ptr, ptr %pMem, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %122, i32 0, i32 2
  store i8 1, ptr %enc, align 2
  %123 = load ptr, ptr %pMem, align 8
  %incdec.ptr154 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %123, i32 1
  store ptr %incdec.ptr154, ptr %pMem, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then143, %if.else135
  %124 = load ptr, ptr %pMem, align 8
  %flags156 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %124, i32 0, i32 1
  store i16 4, ptr %flags156, align 8
  %125 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %125, i32 0, i32 3
  %126 = load i32, ptr %p1, align 4
  %conv157 = sext i32 %126 to i64
  %127 = load ptr, ptr %pMem, align 8
  %u158 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %127, i32 0, i32 0
  store i64 %conv157, ptr %u158, align 8
  %128 = load ptr, ptr %pMem, align 8
  %incdec.ptr159 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %128, i32 1
  store ptr %incdec.ptr159, ptr %pMem, align 8
  %129 = load ptr, ptr %pMem, align 8
  %flags160 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %129, i32 0, i32 1
  store i16 4, ptr %flags160, align 8
  %130 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %130, i32 0, i32 4
  %131 = load i32, ptr %p2, align 8
  %conv161 = sext i32 %131 to i64
  %132 = load ptr, ptr %pMem, align 8
  %u162 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %132, i32 0, i32 0
  store i64 %conv161, ptr %u162, align 8
  %133 = load ptr, ptr %pMem, align 8
  %incdec.ptr163 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %133, i32 1
  store ptr %incdec.ptr163, ptr %pMem, align 8
  %134 = load ptr, ptr %pMem, align 8
  %flags164 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %134, i32 0, i32 1
  store i16 4, ptr %flags164, align 8
  %135 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %135, i32 0, i32 5
  %136 = load i32, ptr %p3, align 4
  %conv165 = sext i32 %136 to i64
  %137 = load ptr, ptr %pMem, align 8
  %u166 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %137, i32 0, i32 0
  store i64 %conv165, ptr %u166, align 8
  %138 = load ptr, ptr %pMem, align 8
  %incdec.ptr167 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %138, i32 1
  store ptr %incdec.ptr167, ptr %pMem, align 8
  %139 = load ptr, ptr %pMem, align 8
  %call168 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %139, i32 noundef 100)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end155
  store i32 1, ptr %retval, align 4
  br label %return

if.end171:                                        ; preds = %if.end155
  %140 = load ptr, ptr %pMem, align 8
  %flags172 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %140, i32 0, i32 1
  store i16 514, ptr %flags172, align 8
  %141 = load ptr, ptr %pOp, align 8
  %142 = load ptr, ptr %pMem, align 8
  %z173 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %142, i32 0, i32 5
  %143 = load ptr, ptr %z173, align 8
  %144 = load ptr, ptr %pMem, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %144, i32 0, i32 7
  %145 = load i32, ptr %szMalloc, align 8
  %call174 = call ptr @displayP4(ptr noundef %141, ptr noundef %143, i32 noundef %145)
  store ptr %call174, ptr %zP4, align 8
  %146 = load ptr, ptr %zP4, align 8
  %147 = load ptr, ptr %pMem, align 8
  %z175 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %147, i32 0, i32 5
  %148 = load ptr, ptr %z175, align 8
  %cmp176 = icmp ne ptr %146, %148
  br i1 %cmp176, label %if.then178, label %if.else181

if.then178:                                       ; preds = %if.end171
  %149 = load ptr, ptr %pMem, align 8
  %n179 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %149, i32 0, i32 4
  store i32 0, ptr %n179, align 4
  %150 = load ptr, ptr %pMem, align 8
  %151 = load ptr, ptr %zP4, align 8
  %call180 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %150, ptr noundef %151, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %if.end186

if.else181:                                       ; preds = %if.end171
  %152 = load ptr, ptr %pMem, align 8
  %z182 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %152, i32 0, i32 5
  %153 = load ptr, ptr %z182, align 8
  %call183 = call i32 @sqlite3Strlen30(ptr noundef %153)
  %154 = load ptr, ptr %pMem, align 8
  %n184 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %154, i32 0, i32 4
  store i32 %call183, ptr %n184, align 4
  %155 = load ptr, ptr %pMem, align 8
  %enc185 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %155, i32 0, i32 2
  store i8 1, ptr %enc185, align 2
  br label %if.end186

if.end186:                                        ; preds = %if.else181, %if.then178
  %156 = load ptr, ptr %pMem, align 8
  %incdec.ptr187 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %156, i32 1
  store ptr %incdec.ptr187, ptr %pMem, align 8
  %157 = load ptr, ptr %p.addr, align 8
  %explain188 = getelementptr inbounds nuw %struct.Vdbe, ptr %157, i32 0, i32 35
  %bf.load189 = load i16, ptr %explain188, align 1
  %bf.lshr190 = lshr i16 %bf.load189, 2
  %bf.clear191 = and i16 %bf.lshr190, 3
  %bf.cast192 = zext i16 %bf.clear191 to i32
  %cmp193 = icmp eq i32 %bf.cast192, 1
  br i1 %cmp193, label %if.then195, label %if.end208

if.then195:                                       ; preds = %if.end186
  %158 = load ptr, ptr %pMem, align 8
  %call196 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %158, i32 noundef 4)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then195
  store i32 1, ptr %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.then195
  %159 = load ptr, ptr %pMem, align 8
  %flags200 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %159, i32 0, i32 1
  store i16 514, ptr %flags200, align 8
  %160 = load ptr, ptr %pMem, align 8
  %n201 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %160, i32 0, i32 4
  store i32 2, ptr %n201, align 4
  %161 = load ptr, ptr %pMem, align 8
  %z202 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %161, i32 0, i32 5
  %162 = load ptr, ptr %z202, align 8
  %163 = load ptr, ptr %pOp, align 8
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %163, i32 0, i32 2
  %164 = load i16, ptr %p5, align 2
  %conv203 = zext i16 %164 to i32
  %call204 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %162, ptr noundef @.str.115, i32 noundef %conv203)
  %165 = load ptr, ptr %pMem, align 8
  %enc205 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %165, i32 0, i32 2
  store i8 1, ptr %enc205, align 2
  %166 = load ptr, ptr %pMem, align 8
  %incdec.ptr206 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %166, i32 1
  store ptr %incdec.ptr206, ptr %pMem, align 8
  %167 = load ptr, ptr %pMem, align 8
  %flags207 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %167, i32 0, i32 1
  store i16 1, ptr %flags207, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.end199, %if.end186
  %168 = load ptr, ptr %p.addr, align 8
  %explain209 = getelementptr inbounds nuw %struct.Vdbe, ptr %168, i32 0, i32 35
  %bf.load210 = load i16, ptr %explain209, align 1
  %bf.lshr211 = lshr i16 %bf.load210, 2
  %bf.clear212 = and i16 %bf.lshr211, 3
  %bf.cast213 = zext i16 %bf.clear212 to i32
  %sub214 = sub nsw i32 %bf.cast213, 1
  %mul215 = mul nsw i32 4, %sub214
  %sub216 = sub nsw i32 8, %mul215
  %conv217 = trunc i32 %sub216 to i16
  %169 = load ptr, ptr %p.addr, align 8
  %nResColumn = getelementptr inbounds nuw %struct.Vdbe, ptr %169, i32 0, i32 31
  store i16 %conv217, ptr %nResColumn, align 8
  %170 = load ptr, ptr %p.addr, align 8
  %aMem218 = getelementptr inbounds nuw %struct.Vdbe, ptr %170, i32 0, i32 19
  %171 = load ptr, ptr %aMem218, align 8
  %arrayidx219 = getelementptr inbounds %struct.sqlite3_value, ptr %171, i64 1
  %172 = load ptr, ptr %p.addr, align 8
  %pResultSet220 = getelementptr inbounds nuw %struct.Vdbe, ptr %172, i32 0, i32 27
  store ptr %arrayidx219, ptr %pResultSet220, align 8
  %173 = load ptr, ptr %p.addr, align 8
  %rc221 = getelementptr inbounds nuw %struct.Vdbe, ptr %173, i32 0, i32 11
  store i32 0, ptr %rc221, align 8
  store i32 100, ptr %rc, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.end208, %if.then131
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %while.end
  %174 = load i32, ptr %rc, align 4
  store i32 %174, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end223, %if.then198, %if.then170, %if.then
  %175 = load i32, ptr %retval, align 4
  ret i32 %175
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3OpcodeName(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @displayP4(ptr noundef, ptr noundef, i32 noundef) #0

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
