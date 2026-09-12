; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeHalt(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  %mrc = alloca i32, align 4
  %eStatementOp = alloca i32, align 4
  %isSpecialError = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %magic, align 4
  %cmp = icmp ne i32 %3, 770837923
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 11
  store i32 7, ptr %rc3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %p.addr, align 8
  call void @closeAllCursors(ptr noundef %7)
  %8 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %pc, align 4
  %cmp5 = icmp sge i32 %9, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end176

land.lhs.true:                                    ; preds = %if.end4
  %10 = load ptr, ptr %p.addr, align 8
  %bIsReader = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 35
  %bf.load = load i16, ptr %bIsReader, align 1
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.then7, label %if.end176

if.then7:                                         ; preds = %land.lhs.true
  store i32 0, ptr %eStatementOp, align 4
  %11 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeEnter(ptr noundef %11)
  %12 = load ptr, ptr %p.addr, align 8
  %rc8 = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 11
  %13 = load i32, ptr %rc8, align 8
  %and = and i32 %13, 255
  store i32 %and, ptr %mrc, align 4
  %14 = load i32, ptr %mrc, align 4
  %cmp9 = icmp eq i32 %14, 7
  br i1 %cmp9, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then7
  %15 = load i32, ptr %mrc, align 4
  %cmp10 = icmp eq i32 %15, 10
  br i1 %cmp10, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %16 = load i32, ptr %mrc, align 4
  %cmp12 = icmp eq i32 %16, 9
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false11
  %17 = load i32, ptr %mrc, align 4
  %cmp13 = icmp eq i32 %17, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false11, %lor.lhs.false, %if.then7
  %18 = phi i1 [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false ], [ true, %if.then7 ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, ptr %isSpecialError, align 4
  %19 = load i32, ptr %isSpecialError, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.then15, label %if.end36

if.then15:                                        ; preds = %lor.end
  %20 = load ptr, ptr %p.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 35
  %bf.load16 = load i16, ptr %readOnly, align 1
  %bf.lshr17 = lshr i16 %bf.load16, 8
  %bf.clear18 = and i16 %bf.lshr17, 1
  %bf.cast19 = zext i16 %bf.clear18 to i32
  %tobool20 = icmp ne i32 %bf.cast19, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.then23

lor.lhs.false21:                                  ; preds = %if.then15
  %21 = load i32, ptr %mrc, align 4
  %cmp22 = icmp ne i32 %21, 9
  br i1 %cmp22, label %if.then23, label %if.end35

if.then23:                                        ; preds = %lor.lhs.false21, %if.then15
  %22 = load i32, ptr %mrc, align 4
  %cmp24 = icmp eq i32 %22, 7
  br i1 %cmp24, label %land.lhs.true27, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.then23
  %23 = load i32, ptr %mrc, align 4
  %cmp26 = icmp eq i32 %23, 13
  br i1 %cmp26, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %lor.lhs.false25, %if.then23
  %24 = load ptr, ptr %p.addr, align 8
  %usesStmtJournal = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 35
  %bf.load28 = load i16, ptr %usesStmtJournal, align 1
  %bf.lshr29 = lshr i16 %bf.load28, 7
  %bf.clear30 = and i16 %bf.lshr29, 1
  %bf.cast31 = zext i16 %bf.clear30 to i32
  %tobool32 = icmp ne i32 %bf.cast31, 0
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %land.lhs.true27
  store i32 2, ptr %eStatementOp, align 4
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true27, %lor.lhs.false25
  %25 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %25, i32 noundef 516)
  %26 = load ptr, ptr %db, align 8
  call void @sqlite3CloseSavepoints(ptr noundef %26)
  %27 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 17
  store i8 1, ptr %autoCommit, align 1
  %28 = load ptr, ptr %p.addr, align 8
  %nChange = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 12
  store i32 0, ptr %nChange, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %lor.lhs.false21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %lor.end
  %29 = load ptr, ptr %p.addr, align 8
  %rc37 = getelementptr inbounds nuw %struct.Vdbe, ptr %29, i32 0, i32 11
  %30 = load i32, ptr %rc37, align 8
  %cmp38 = icmp eq i32 %30, 0
  br i1 %cmp38, label %if.then44, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %31 = load ptr, ptr %p.addr, align 8
  %errorAction = getelementptr inbounds nuw %struct.Vdbe, ptr %31, i32 0, i32 32
  %32 = load i8, ptr %errorAction, align 2
  %conv = zext i8 %32 to i32
  %cmp40 = icmp eq i32 %conv, 3
  br i1 %cmp40, label %land.lhs.true42, label %if.end45

land.lhs.true42:                                  ; preds = %lor.lhs.false39
  %33 = load i32, ptr %isSpecialError, align 4
  %tobool43 = icmp ne i32 %33, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %land.lhs.true42, %if.end36
  %34 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3VdbeCheckFk(ptr noundef %34, i32 noundef 0)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true42, %lor.lhs.false39
  %35 = load ptr, ptr %db, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 67
  %36 = load i32, ptr %nVTrans, align 4
  %cmp46 = icmp sgt i32 %36, 0
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true51

land.lhs.true48:                                  ; preds = %if.end45
  %37 = load ptr, ptr %db, align 8
  %aVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 70
  %38 = load ptr, ptr %aVTrans, align 8
  %cmp49 = icmp eq ptr %38, null
  br i1 %cmp49, label %if.else115, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true48, %if.end45
  %39 = load ptr, ptr %db, align 8
  %autoCommit52 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 17
  %40 = load i8, ptr %autoCommit52, align 1
  %conv53 = zext i8 %40 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.else115

land.lhs.true55:                                  ; preds = %land.lhs.true51
  %41 = load ptr, ptr %db, align 8
  %nVdbeWrite = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 38
  %42 = load i32, ptr %nVdbeWrite, align 8
  %43 = load ptr, ptr %p.addr, align 8
  %readOnly56 = getelementptr inbounds nuw %struct.Vdbe, ptr %43, i32 0, i32 35
  %bf.load57 = load i16, ptr %readOnly56, align 1
  %bf.lshr58 = lshr i16 %bf.load57, 8
  %bf.clear59 = and i16 %bf.lshr58, 1
  %bf.cast60 = zext i16 %bf.clear59 to i32
  %cmp61 = icmp eq i32 %bf.cast60, 0
  %conv62 = zext i1 %cmp61 to i32
  %cmp63 = icmp eq i32 %42, %conv62
  br i1 %cmp63, label %if.then65, label %if.else115

if.then65:                                        ; preds = %land.lhs.true55
  %44 = load ptr, ptr %p.addr, align 8
  %rc66 = getelementptr inbounds nuw %struct.Vdbe, ptr %44, i32 0, i32 11
  %45 = load i32, ptr %rc66, align 8
  %cmp67 = icmp eq i32 %45, 0
  br i1 %cmp67, label %if.then76, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.then65
  %46 = load ptr, ptr %p.addr, align 8
  %errorAction70 = getelementptr inbounds nuw %struct.Vdbe, ptr %46, i32 0, i32 32
  %47 = load i8, ptr %errorAction70, align 2
  %conv71 = zext i8 %47 to i32
  %cmp72 = icmp eq i32 %conv71, 3
  br i1 %cmp72, label %land.lhs.true74, label %if.else112

land.lhs.true74:                                  ; preds = %lor.lhs.false69
  %48 = load i32, ptr %isSpecialError, align 4
  %tobool75 = icmp ne i32 %48, 0
  br i1 %tobool75, label %if.else112, label %if.then76

if.then76:                                        ; preds = %land.lhs.true74, %if.then65
  %49 = load ptr, ptr %p.addr, align 8
  %call77 = call i32 @sqlite3VdbeCheckFk(ptr noundef %49, i32 noundef 1)
  store i32 %call77, ptr %rc, align 4
  %50 = load i32, ptr %rc, align 4
  %cmp78 = icmp ne i32 %50, 0
  br i1 %cmp78, label %if.then80, label %if.else89

if.then80:                                        ; preds = %if.then76
  %51 = load ptr, ptr %p.addr, align 8
  %readOnly81 = getelementptr inbounds nuw %struct.Vdbe, ptr %51, i32 0, i32 35
  %bf.load82 = load i16, ptr %readOnly81, align 1
  %bf.lshr83 = lshr i16 %bf.load82, 8
  %bf.clear84 = and i16 %bf.lshr83, 1
  %bf.cast85 = zext i16 %bf.clear84 to i32
  %tobool86 = icmp ne i32 %bf.cast85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then80
  %52 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeLeave(ptr noundef %52)
  store i32 1, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then80
  store i32 787, ptr %rc, align 4
  br label %if.end91

if.else89:                                        ; preds = %if.then76
  %53 = load ptr, ptr %db, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %call90 = call i32 @vdbeCommit(ptr noundef %53, ptr noundef %54)
  store i32 %call90, ptr %rc, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.end88
  %55 = load i32, ptr %rc, align 4
  %cmp92 = icmp eq i32 %55, 5
  br i1 %cmp92, label %land.lhs.true94, label %if.else102

land.lhs.true94:                                  ; preds = %if.end91
  %56 = load ptr, ptr %p.addr, align 8
  %readOnly95 = getelementptr inbounds nuw %struct.Vdbe, ptr %56, i32 0, i32 35
  %bf.load96 = load i16, ptr %readOnly95, align 1
  %bf.lshr97 = lshr i16 %bf.load96, 8
  %bf.clear98 = and i16 %bf.lshr97, 1
  %bf.cast99 = zext i16 %bf.clear98 to i32
  %tobool100 = icmp ne i32 %bf.cast99, 0
  br i1 %tobool100, label %if.then101, label %if.else102

if.then101:                                       ; preds = %land.lhs.true94
  %57 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeLeave(ptr noundef %57)
  store i32 5, ptr %retval, align 4
  br label %return

if.else102:                                       ; preds = %land.lhs.true94, %if.end91
  %58 = load i32, ptr %rc, align 4
  %cmp103 = icmp ne i32 %58, 0
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.else102
  %59 = load i32, ptr %rc, align 4
  %60 = load ptr, ptr %p.addr, align 8
  %rc106 = getelementptr inbounds nuw %struct.Vdbe, ptr %60, i32 0, i32 11
  store i32 %59, ptr %rc106, align 8
  %61 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %61, i32 noundef 0)
  %62 = load ptr, ptr %p.addr, align 8
  %nChange107 = getelementptr inbounds nuw %struct.Vdbe, ptr %62, i32 0, i32 12
  store i32 0, ptr %nChange107, align 4
  br label %if.end110

if.else108:                                       ; preds = %if.else102
  %63 = load ptr, ptr %db, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %63, i32 0, i32 80
  store i64 0, ptr %nDeferredCons, align 8
  %64 = load ptr, ptr %db, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %64, i32 0, i32 81
  store i64 0, ptr %nDeferredImmCons, align 8
  %65 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %65, i32 0, i32 7
  %66 = load i64, ptr %flags, align 8
  %and109 = and i64 %66, -524289
  store i64 %and109, ptr %flags, align 8
  %67 = load ptr, ptr %db, align 8
  call void @sqlite3CommitInternalChanges(ptr noundef %67)
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then105
  br label %if.end111

if.end111:                                        ; preds = %if.end110
  br label %if.end114

if.else112:                                       ; preds = %land.lhs.true74, %lor.lhs.false69
  %68 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %68, i32 noundef 0)
  %69 = load ptr, ptr %p.addr, align 8
  %nChange113 = getelementptr inbounds nuw %struct.Vdbe, ptr %69, i32 0, i32 12
  store i32 0, ptr %nChange113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.end111
  %70 = load ptr, ptr %db, align 8
  %nStatement = getelementptr inbounds nuw %struct.sqlite3, ptr %70, i32 0, i32 79
  store i32 0, ptr %nStatement, align 8
  br label %if.end140

if.else115:                                       ; preds = %land.lhs.true55, %land.lhs.true51, %land.lhs.true48
  %71 = load i32, ptr %eStatementOp, align 4
  %cmp116 = icmp eq i32 %71, 0
  br i1 %cmp116, label %if.then118, label %if.end139

if.then118:                                       ; preds = %if.else115
  %72 = load ptr, ptr %p.addr, align 8
  %rc119 = getelementptr inbounds nuw %struct.Vdbe, ptr %72, i32 0, i32 11
  %73 = load i32, ptr %rc119, align 8
  %cmp120 = icmp eq i32 %73, 0
  br i1 %cmp120, label %if.then127, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.then118
  %74 = load ptr, ptr %p.addr, align 8
  %errorAction123 = getelementptr inbounds nuw %struct.Vdbe, ptr %74, i32 0, i32 32
  %75 = load i8, ptr %errorAction123, align 2
  %conv124 = zext i8 %75 to i32
  %cmp125 = icmp eq i32 %conv124, 3
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %lor.lhs.false122, %if.then118
  store i32 1, ptr %eStatementOp, align 4
  br label %if.end138

if.else128:                                       ; preds = %lor.lhs.false122
  %76 = load ptr, ptr %p.addr, align 8
  %errorAction129 = getelementptr inbounds nuw %struct.Vdbe, ptr %76, i32 0, i32 32
  %77 = load i8, ptr %errorAction129, align 2
  %conv130 = zext i8 %77 to i32
  %cmp131 = icmp eq i32 %conv130, 2
  br i1 %cmp131, label %if.then133, label %if.else134

if.then133:                                       ; preds = %if.else128
  store i32 2, ptr %eStatementOp, align 4
  br label %if.end137

if.else134:                                       ; preds = %if.else128
  %78 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %78, i32 noundef 516)
  %79 = load ptr, ptr %db, align 8
  call void @sqlite3CloseSavepoints(ptr noundef %79)
  %80 = load ptr, ptr %db, align 8
  %autoCommit135 = getelementptr inbounds nuw %struct.sqlite3, ptr %80, i32 0, i32 17
  store i8 1, ptr %autoCommit135, align 1
  %81 = load ptr, ptr %p.addr, align 8
  %nChange136 = getelementptr inbounds nuw %struct.Vdbe, ptr %81, i32 0, i32 12
  store i32 0, ptr %nChange136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else134, %if.then133
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then127
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.else115
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end114
  %82 = load i32, ptr %eStatementOp, align 4
  %tobool141 = icmp ne i32 %82, 0
  br i1 %tobool141, label %if.then142, label %if.end161

if.then142:                                       ; preds = %if.end140
  %83 = load ptr, ptr %p.addr, align 8
  %84 = load i32, ptr %eStatementOp, align 4
  %call143 = call i32 @sqlite3VdbeCloseStatement(ptr noundef %83, i32 noundef %84)
  store i32 %call143, ptr %rc, align 4
  %85 = load i32, ptr %rc, align 4
  %tobool144 = icmp ne i32 %85, 0
  br i1 %tobool144, label %if.then145, label %if.end160

if.then145:                                       ; preds = %if.then142
  %86 = load ptr, ptr %p.addr, align 8
  %rc146 = getelementptr inbounds nuw %struct.Vdbe, ptr %86, i32 0, i32 11
  %87 = load i32, ptr %rc146, align 8
  %cmp147 = icmp eq i32 %87, 0
  br i1 %cmp147, label %if.then154, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %if.then145
  %88 = load ptr, ptr %p.addr, align 8
  %rc150 = getelementptr inbounds nuw %struct.Vdbe, ptr %88, i32 0, i32 11
  %89 = load i32, ptr %rc150, align 8
  %and151 = and i32 %89, 255
  %cmp152 = icmp eq i32 %and151, 19
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %lor.lhs.false149, %if.then145
  %90 = load i32, ptr %rc, align 4
  %91 = load ptr, ptr %p.addr, align 8
  %rc155 = getelementptr inbounds nuw %struct.Vdbe, ptr %91, i32 0, i32 11
  store i32 %90, ptr %rc155, align 8
  %92 = load ptr, ptr %db, align 8
  %93 = load ptr, ptr %p.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Vdbe, ptr %93, i32 0, i32 28
  %94 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %92, ptr noundef %94)
  %95 = load ptr, ptr %p.addr, align 8
  %zErrMsg156 = getelementptr inbounds nuw %struct.Vdbe, ptr %95, i32 0, i32 28
  store ptr null, ptr %zErrMsg156, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %lor.lhs.false149
  %96 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %96, i32 noundef 516)
  %97 = load ptr, ptr %db, align 8
  call void @sqlite3CloseSavepoints(ptr noundef %97)
  %98 = load ptr, ptr %db, align 8
  %autoCommit158 = getelementptr inbounds nuw %struct.sqlite3, ptr %98, i32 0, i32 17
  store i8 1, ptr %autoCommit158, align 1
  %99 = load ptr, ptr %p.addr, align 8
  %nChange159 = getelementptr inbounds nuw %struct.Vdbe, ptr %99, i32 0, i32 12
  store i32 0, ptr %nChange159, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.end157, %if.then142
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end140
  %100 = load ptr, ptr %p.addr, align 8
  %changeCntOn = getelementptr inbounds nuw %struct.Vdbe, ptr %100, i32 0, i32 35
  %bf.load162 = load i16, ptr %changeCntOn, align 1
  %bf.lshr163 = lshr i16 %bf.load162, 5
  %bf.clear164 = and i16 %bf.lshr163, 1
  %bf.cast165 = zext i16 %bf.clear164 to i32
  %tobool166 = icmp ne i32 %bf.cast165, 0
  br i1 %tobool166, label %if.then167, label %if.end175

if.then167:                                       ; preds = %if.end161
  %101 = load i32, ptr %eStatementOp, align 4
  %cmp168 = icmp ne i32 %101, 2
  br i1 %cmp168, label %if.then170, label %if.else172

if.then170:                                       ; preds = %if.then167
  %102 = load ptr, ptr %db, align 8
  %103 = load ptr, ptr %p.addr, align 8
  %nChange171 = getelementptr inbounds nuw %struct.Vdbe, ptr %103, i32 0, i32 12
  %104 = load i32, ptr %nChange171, align 4
  call void @sqlite3VdbeSetChanges(ptr noundef %102, i32 noundef %104)
  br label %if.end173

if.else172:                                       ; preds = %if.then167
  %105 = load ptr, ptr %db, align 8
  call void @sqlite3VdbeSetChanges(ptr noundef %105, i32 noundef 0)
  br label %if.end173

if.end173:                                        ; preds = %if.else172, %if.then170
  %106 = load ptr, ptr %p.addr, align 8
  %nChange174 = getelementptr inbounds nuw %struct.Vdbe, ptr %106, i32 0, i32 12
  store i32 0, ptr %nChange174, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.end173, %if.end161
  %107 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeLeave(ptr noundef %107)
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %land.lhs.true, %if.end4
  %108 = load ptr, ptr %p.addr, align 8
  %pc177 = getelementptr inbounds nuw %struct.Vdbe, ptr %108, i32 0, i32 10
  %109 = load i32, ptr %pc177, align 4
  %cmp178 = icmp sge i32 %109, 0
  br i1 %cmp178, label %if.then180, label %if.end200

if.then180:                                       ; preds = %if.end176
  %110 = load ptr, ptr %db, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %110, i32 0, i32 36
  %111 = load i32, ptr %nVdbeActive, align 8
  %dec = add nsw i32 %111, -1
  store i32 %dec, ptr %nVdbeActive, align 8
  %112 = load ptr, ptr %p.addr, align 8
  %readOnly181 = getelementptr inbounds nuw %struct.Vdbe, ptr %112, i32 0, i32 35
  %bf.load182 = load i16, ptr %readOnly181, align 1
  %bf.lshr183 = lshr i16 %bf.load182, 8
  %bf.clear184 = and i16 %bf.lshr183, 1
  %bf.cast185 = zext i16 %bf.clear184 to i32
  %tobool186 = icmp ne i32 %bf.cast185, 0
  br i1 %tobool186, label %if.end190, label %if.then187

if.then187:                                       ; preds = %if.then180
  %113 = load ptr, ptr %db, align 8
  %nVdbeWrite188 = getelementptr inbounds nuw %struct.sqlite3, ptr %113, i32 0, i32 38
  %114 = load i32, ptr %nVdbeWrite188, align 8
  %dec189 = add nsw i32 %114, -1
  store i32 %dec189, ptr %nVdbeWrite188, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then187, %if.then180
  %115 = load ptr, ptr %p.addr, align 8
  %bIsReader191 = getelementptr inbounds nuw %struct.Vdbe, ptr %115, i32 0, i32 35
  %bf.load192 = load i16, ptr %bIsReader191, align 1
  %bf.lshr193 = lshr i16 %bf.load192, 9
  %bf.clear194 = and i16 %bf.lshr193, 1
  %bf.cast195 = zext i16 %bf.clear194 to i32
  %tobool196 = icmp ne i32 %bf.cast195, 0
  br i1 %tobool196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %if.end190
  %116 = load ptr, ptr %db, align 8
  %nVdbeRead = getelementptr inbounds nuw %struct.sqlite3, ptr %116, i32 0, i32 37
  %117 = load i32, ptr %nVdbeRead, align 4
  %dec198 = add nsw i32 %117, -1
  store i32 %dec198, ptr %nVdbeRead, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %if.end190
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end176
  %118 = load ptr, ptr %p.addr, align 8
  %magic201 = getelementptr inbounds nuw %struct.Vdbe, ptr %118, i32 0, i32 6
  store i32 832317811, ptr %magic201, align 4
  %119 = load ptr, ptr %db, align 8
  %mallocFailed202 = getelementptr inbounds nuw %struct.sqlite3, ptr %119, i32 0, i32 19
  %120 = load i8, ptr %mallocFailed202, align 1
  %tobool203 = icmp ne i8 %120, 0
  br i1 %tobool203, label %if.then204, label %if.end206

if.then204:                                       ; preds = %if.end200
  %121 = load ptr, ptr %p.addr, align 8
  %rc205 = getelementptr inbounds nuw %struct.Vdbe, ptr %121, i32 0, i32 11
  store i32 7, ptr %rc205, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end200
  %122 = load ptr, ptr %db, align 8
  %autoCommit207 = getelementptr inbounds nuw %struct.sqlite3, ptr %122, i32 0, i32 17
  %123 = load i8, ptr %autoCommit207, align 1
  %tobool208 = icmp ne i8 %123, 0
  br i1 %tobool208, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end206
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %if.end206
  %124 = load ptr, ptr %p.addr, align 8
  %rc211 = getelementptr inbounds nuw %struct.Vdbe, ptr %124, i32 0, i32 11
  %125 = load i32, ptr %rc211, align 8
  %cmp212 = icmp eq i32 %125, 5
  %126 = zext i1 %cmp212 to i64
  %cond = select i1 %cmp212, i32 5, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end210, %if.then101, %if.then87, %if.then
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: nounwind uwtable
declare hidden void @closeAllCursors(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RollbackAll(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CloseSavepoints(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCheckFk(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeCommit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CommitInternalChanges(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCloseStatement(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetChanges(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
