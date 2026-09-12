; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameTableTest(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zInput = alloca ptr, align 8
  %bTemp = alloca i32, align 4
  %isLegacy = alloca i32, align 4
  %xAuth = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sParse = alloca %struct.Parse, align 8
  %sNC = alloca %struct.NameContext, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call1, ptr %zDb, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call3, ptr %zInput, align 8
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 4
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @sqlite3_value_int(ptr noundef %6)
  store i32 %call5, ptr %bTemp, align 4
  %7 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 7
  %8 = load i64, ptr %flags, align 8
  %and = and i64 %8, 67108864
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %isLegacy, align 4
  %9 = load ptr, ptr %db, align 8
  %xAuth6 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 62
  %10 = load ptr, ptr %xAuth6, align 8
  store ptr %10, ptr %xAuth, align 8
  %11 = load ptr, ptr %db, align 8
  %xAuth7 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 62
  store ptr null, ptr %xAuth7, align 8
  %12 = load i32, ptr %NotUsed.addr, align 4
  %13 = load ptr, ptr %zDb, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %zInput, align 8
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %if.then, label %if.end53

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %zDb, align 8
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %zInput, align 8
  %18 = load i32, ptr %bTemp, align 4
  %call9 = call i32 @renameParseSql(ptr noundef %sParse, ptr noundef %15, i32 noundef 1, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  store i32 %call9, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then11, label %if.end46

if.then11:                                        ; preds = %if.then
  %20 = load i32, ptr %isLegacy, align 4
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.else

land.lhs.true14:                                  ; preds = %if.then11
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %21 = load ptr, ptr %pNewTable, align 8
  %tobool15 = icmp ne ptr %21, null
  br i1 %tobool15, label %land.lhs.true16, label %if.else

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %pNewTable17 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %22 = load ptr, ptr %pNewTable17, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pSelect, align 8
  %tobool18 = icmp ne ptr %23, null
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %land.lhs.true16
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %pParse = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %sParse, ptr %pParse, align 8
  %pNewTable20 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %24 = load ptr, ptr %pNewTable20, align 8
  %pSelect21 = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pSelect21, align 8
  call void @sqlite3SelectPrep(ptr noundef %sParse, ptr noundef %25, ptr noundef %sNC)
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 16
  %26 = load i32, ptr %nErr, align 8
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then19
  %rc24 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %27 = load i32, ptr %rc24, align 8
  store i32 %27, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then19
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true14, %if.then11
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %28 = load ptr, ptr %pNewTrigger, align 8
  %tobool25 = icmp ne ptr %28, null
  br i1 %tobool25, label %if.then26, label %if.end44

if.then26:                                        ; preds = %if.else
  %29 = load i32, ptr %isLegacy, align 4
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then26
  %30 = load i32, ptr %bTemp, align 4
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then29
  br label %cond.end

cond.false:                                       ; preds = %if.then29
  %31 = load ptr, ptr %zDb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %31, %cond.false ]
  %call31 = call i32 @renameResolveTrigger(ptr noundef %sParse, ptr noundef %cond)
  store i32 %call31, ptr %rc, align 4
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.then26
  %32 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end32
  %33 = load ptr, ptr %db, align 8
  %pNewTrigger36 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %34 = load ptr, ptr %pNewTrigger36, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %pTabSchema, align 8
  %call37 = call i32 @sqlite3SchemaToIndex(ptr noundef %33, ptr noundef %35)
  store i32 %call37, ptr %i1, align 4
  %36 = load ptr, ptr %db, align 8
  %37 = load ptr, ptr %zDb, align 8
  %call38 = call i32 @sqlite3FindDbName(ptr noundef %36, ptr noundef %37)
  store i32 %call38, ptr %i2, align 4
  %38 = load i32, ptr %i1, align 4
  %39 = load i32, ptr %i2, align 4
  %cmp39 = icmp eq i32 %38, %39
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then35
  %40 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_int(ptr noundef %40, i32 noundef 1)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end32
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then
  %41 = load i32, ptr %rc, align 4
  %cmp47 = icmp ne i32 %41, 0
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end46
  %42 = load ptr, ptr %context.addr, align 8
  %43 = load ptr, ptr %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %43, i64 2
  %44 = load ptr, ptr %arrayidx50, align 8
  %45 = load ptr, ptr %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds ptr, ptr %45, i64 3
  %46 = load ptr, ptr %arrayidx51, align 8
  call void @renameColumnParseError(ptr noundef %42, i32 noundef 1, ptr noundef %44, ptr noundef %46, ptr noundef %sParse)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46
  call void @renameParseCleanup(ptr noundef %sParse)
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true, %entry
  %47 = load ptr, ptr %xAuth, align 8
  %48 = load ptr, ptr %db, align 8
  %xAuth54 = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 62
  store ptr %47, ptr %xAuth54, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @renameParseSql(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameResolveTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameColumnParseError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameParseCleanup(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
