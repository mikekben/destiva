; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_step(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_column_count(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_column_text(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_column_type(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_column_name(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_exec(ptr noundef %db, ptr noundef %zSql, ptr noundef %xCallback, ptr noundef %pArg, ptr noundef %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %xCallback.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zLeftover = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %azCols = alloca ptr, align 8
  %callbackIsInit = alloca i32, align 4
  %nCol = alloca i32, align 4
  %azVals = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %xCallback, ptr %xCallback.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pStmt, align 8
  store ptr null, ptr %azCols, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3SafetyCheckOk(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @sqlite3MisuseError(i32 noundef 119909)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zSql.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr @.str.3, ptr %zSql.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %4, i32 noundef 0)
  br label %while.cond

while.cond:                                       ; preds = %while.end88, %if.then12, %if.then9, %if.end3
  %5 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %zSql.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool5, %land.rhs ]
  br i1 %8, label %while.body, label %while.end89

while.body:                                       ; preds = %land.end
  store i32 0, ptr %nCol, align 4
  store ptr null, ptr %azVals, align 8
  store ptr null, ptr %pStmt, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %zSql.addr, align 8
  %call6 = call i32 @sqlite3_prepare_v2(ptr noundef %9, ptr noundef %10, i32 noundef -1, ptr noundef %pStmt, ptr noundef %zLeftover)
  store i32 %call6, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %11, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end10:                                         ; preds = %while.body
  %12 = load ptr, ptr %pStmt, align 8
  %tobool11 = icmp ne ptr %12, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  %13 = load ptr, ptr %zLeftover, align 8
  store ptr %13, ptr %zSql.addr, align 8
  br label %while.cond, !llvm.loop !6

if.end13:                                         ; preds = %if.end10
  store i32 0, ptr %callbackIsInit, align 4
  br label %while.body15

while.body15:                                     ; preds = %if.end87, %if.end13
  %14 = load ptr, ptr %pStmt, align 8
  %call16 = call i32 @sqlite3_step(ptr noundef %14)
  store i32 %call16, ptr %rc, align 4
  %15 = load ptr, ptr %xCallback.addr, align 8
  %tobool17 = icmp ne ptr %15, null
  br i1 %tobool17, label %land.lhs.true, label %if.end74

land.lhs.true:                                    ; preds = %while.body15
  %16 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 100, %16
  br i1 %cmp18, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 101, %17
  br i1 %cmp20, label %land.lhs.true22, label %if.end74

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %18 = load i32, ptr %callbackIsInit, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.end74, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %19 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 7
  %20 = load i64, ptr %flags, align 8
  %and = and i64 %20, 256
  %tobool25 = icmp ne i64 %and, 0
  br i1 %tobool25, label %if.then26, label %if.end74

if.then26:                                        ; preds = %land.lhs.true24, %land.lhs.true
  %21 = load i32, ptr %callbackIsInit, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %if.end41, label %if.then28

if.then28:                                        ; preds = %if.then26
  %22 = load ptr, ptr %pStmt, align 8
  %call29 = call i32 @sqlite3_column_count(ptr noundef %22)
  store i32 %call29, ptr %nCol, align 4
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load i32, ptr %nCol, align 4
  %mul = mul nsw i32 2, %24
  %add = add nsw i32 %mul, 1
  %conv30 = sext i32 %add to i64
  %mul31 = mul i64 %conv30, 8
  %call32 = call ptr @sqlite3DbMallocRaw(ptr noundef %23, i64 noundef %mul31)
  store ptr %call32, ptr %azCols, align 8
  %25 = load ptr, ptr %azCols, align 8
  %cmp33 = icmp eq ptr %25, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then28
  br label %exec_out

if.end36:                                         ; preds = %if.then28
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end36
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %nCol, align 4
  %cmp37 = icmp slt i32 %26, %27
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %pStmt, align 8
  %29 = load i32, ptr %i, align 4
  %call39 = call ptr @sqlite3_column_name(ptr noundef %28, i32 noundef %29)
  %30 = load ptr, ptr %azCols, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %30, i64 %idxprom
  store ptr %call39, ptr %arrayidx40, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %callbackIsInit, align 4
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.then26
  %33 = load i32, ptr %rc, align 4
  %cmp42 = icmp eq i32 %33, 100
  br i1 %cmp42, label %if.then44, label %if.end68

if.then44:                                        ; preds = %if.end41
  %34 = load ptr, ptr %azCols, align 8
  %35 = load i32, ptr %nCol, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %34, i64 %idxprom45
  store ptr %arrayidx46, ptr %azVals, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc63, %if.then44
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %nCol, align 4
  %cmp48 = icmp slt i32 %36, %37
  br i1 %cmp48, label %for.body50, label %for.end65

for.body50:                                       ; preds = %for.cond47
  %38 = load ptr, ptr %pStmt, align 8
  %39 = load i32, ptr %i, align 4
  %call51 = call ptr @sqlite3_column_text(ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %azVals, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %40, i64 %idxprom52
  store ptr %call51, ptr %arrayidx53, align 8
  %42 = load ptr, ptr %azVals, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %43 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %42, i64 %idxprom54
  %44 = load ptr, ptr %arrayidx55, align 8
  %tobool56 = icmp ne ptr %44, null
  br i1 %tobool56, label %if.end62, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %for.body50
  %45 = load ptr, ptr %pStmt, align 8
  %46 = load i32, ptr %i, align 4
  %call58 = call i32 @sqlite3_column_type(ptr noundef %45, i32 noundef %46)
  %cmp59 = icmp ne i32 %call58, 5
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %land.lhs.true57
  %47 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %47)
  br label %exec_out

if.end62:                                         ; preds = %land.lhs.true57, %for.body50
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %48 = load i32, ptr %i, align 4
  %inc64 = add nsw i32 %48, 1
  store i32 %inc64, ptr %i, align 4
  br label %for.cond47, !llvm.loop !9

for.end65:                                        ; preds = %for.cond47
  %49 = load ptr, ptr %azVals, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %49, i64 %idxprom66
  store ptr null, ptr %arrayidx67, align 8
  br label %if.end68

if.end68:                                         ; preds = %for.end65, %if.end41
  %51 = load ptr, ptr %xCallback.addr, align 8
  %52 = load ptr, ptr %pArg.addr, align 8
  %53 = load i32, ptr %nCol, align 4
  %54 = load ptr, ptr %azVals, align 8
  %55 = load ptr, ptr %azCols, align 8
  %call69 = call i32 %51(ptr noundef %52, i32 noundef %53, ptr noundef %54, ptr noundef %55)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  store i32 4, ptr %rc, align 4
  %56 = load ptr, ptr %pStmt, align 8
  %call72 = call i32 @sqlite3VdbeFinalize(ptr noundef %56)
  store ptr null, ptr %pStmt, align 8
  %57 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %57, i32 noundef 4)
  br label %exec_out

if.end73:                                         ; preds = %if.end68
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %land.lhs.true24, %land.lhs.true22, %lor.lhs.false, %while.body15
  %58 = load i32, ptr %rc, align 4
  %cmp75 = icmp ne i32 %58, 100
  br i1 %cmp75, label %if.then77, label %if.end87

if.then77:                                        ; preds = %if.end74
  %59 = load ptr, ptr %pStmt, align 8
  %call78 = call i32 @sqlite3VdbeFinalize(ptr noundef %59)
  store i32 %call78, ptr %rc, align 4
  store ptr null, ptr %pStmt, align 8
  %60 = load ptr, ptr %zLeftover, align 8
  store ptr %60, ptr %zSql.addr, align 8
  br label %while.cond79

while.cond79:                                     ; preds = %while.body86, %if.then77
  %61 = load ptr, ptr %zSql.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx80, align 1
  %idxprom81 = zext i8 %62 to i64
  %arrayidx82 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom81
  %63 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %63 to i32
  %and84 = and i32 %conv83, 1
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %while.body86, label %while.end

while.body86:                                     ; preds = %while.cond79
  %64 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %incdec.ptr, ptr %zSql.addr, align 8
  br label %while.cond79, !llvm.loop !10

while.end:                                        ; preds = %while.cond79
  br label %while.end88

if.end87:                                         ; preds = %if.end74
  br label %while.body15

while.end88:                                      ; preds = %while.end
  %65 = load ptr, ptr %db.addr, align 8
  %66 = load ptr, ptr %azCols, align 8
  call void @sqlite3DbFree(ptr noundef %65, ptr noundef %66)
  store ptr null, ptr %azCols, align 8
  br label %while.cond, !llvm.loop !6

while.end89:                                      ; preds = %land.end
  br label %exec_out

exec_out:                                         ; preds = %while.end89, %if.then71, %if.then61, %if.then35
  %67 = load ptr, ptr %pStmt, align 8
  %tobool90 = icmp ne ptr %67, null
  br i1 %tobool90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %exec_out
  %68 = load ptr, ptr %pStmt, align 8
  %call92 = call i32 @sqlite3VdbeFinalize(ptr noundef %68)
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %exec_out
  %69 = load ptr, ptr %db.addr, align 8
  %70 = load ptr, ptr %azCols, align 8
  call void @sqlite3DbFree(ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %db.addr, align 8
  %72 = load i32, ptr %rc, align 4
  %call94 = call i32 @sqlite3ApiExit(ptr noundef %71, i32 noundef %72)
  store i32 %call94, ptr %rc, align 4
  %73 = load i32, ptr %rc, align 4
  %cmp95 = icmp ne i32 %73, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.else

land.lhs.true97:                                  ; preds = %if.end93
  %74 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool98 = icmp ne ptr %74, null
  br i1 %tobool98, label %if.then99, label %if.else

if.then99:                                        ; preds = %land.lhs.true97
  %75 = load ptr, ptr %db.addr, align 8
  %call100 = call ptr @sqlite3_errmsg(ptr noundef %75)
  %call101 = call ptr @sqlite3DbStrDup(ptr noundef null, ptr noundef %call100)
  %76 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call101, ptr %76, align 8
  %77 = load ptr, ptr %pzErrMsg.addr, align 8
  %78 = load ptr, ptr %77, align 8
  %cmp102 = icmp eq ptr %78, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then99
  store i32 7, ptr %rc, align 4
  %79 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %79, i32 noundef 7)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then99
  br label %if.end109

if.else:                                          ; preds = %land.lhs.true97, %if.end93
  %80 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool106 = icmp ne ptr %80, null
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.else
  %81 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr null, ptr %81, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.else
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end105
  %82 = load ptr, ptr %db.addr, align 8
  %mutex110 = getelementptr inbounds nuw %struct.sqlite3, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %mutex110, align 8
  call void @sqlite3_mutex_leave(ptr noundef %83)
  %84 = load i32, ptr %rc, align 4
  store i32 %84, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end109, %if.then
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckOk(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

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
!10 = distinct !{!10, !7}
