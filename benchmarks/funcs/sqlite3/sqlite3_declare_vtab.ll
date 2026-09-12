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
%struct.VtabCtx = type { ptr, ptr, ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_declare_vtab(ptr noundef %db, ptr noundef %zCreateTable) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zCreateTable.addr = alloca ptr, align 8
  %pCtx = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %sParse = alloca %struct.Parse, align 8
  %pNew = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zCreateTable, ptr %zCreateTable.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %zErr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %pVtabCtx = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 69
  %3 = load ptr, ptr %pVtabCtx, align 8
  store ptr %3, ptr %pCtx, align 8
  %4 = load ptr, ptr %pCtx, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pCtx, align 8
  %bDeclared = getelementptr inbounds nuw %struct.VtabCtx, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %bDeclared, align 8
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %7, i32 noundef 21)
  %8 = load ptr, ptr %db.addr, align 8
  %mutex2 = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %mutex2, align 8
  call void @sqlite3_mutex_leave(ptr noundef %9)
  %call = call i32 @sqlite3MisuseError(i32 noundef 136226)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pCtx, align 8
  %pTab3 = getelementptr inbounds nuw %struct.VtabCtx, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pTab3, align 8
  store ptr %11, ptr %pTab, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sParse, i8 0, i64 416, i1 false)
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 51
  store i8 1, ptr %eParseMode, align 4
  %12 = load ptr, ptr %db.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 0
  store ptr %12, ptr %db4, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 39
  store i32 1, ptr %nQueryLoop, align 4
  %13 = load ptr, ptr %zCreateTable.addr, align 8
  %call5 = call i32 @sqlite3RunParser(ptr noundef %sParse, ptr noundef %13, ptr noundef %zErr)
  %cmp = icmp eq i32 0, %call5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %14 = load ptr, ptr %pNewTable, align 8
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 19
  %16 = load i8, ptr %mallocFailed, align 1
  %tobool8 = icmp ne i8 %16, 0
  br i1 %tobool8, label %if.else, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %pNewTable10 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %17 = load ptr, ptr %pNewTable10, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %pSelect, align 8
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %if.else, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %pNewTable13 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %19 = load ptr, ptr %pNewTable13, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %nModuleArg, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %if.else, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  %21 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %aCol, align 8
  %tobool16 = icmp ne ptr %22, null
  br i1 %tobool16, label %if.end41, label %if.then17

if.then17:                                        ; preds = %if.then15
  %pNewTable18 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %23 = load ptr, ptr %pNewTable18, align 8
  store ptr %23, ptr %pNew, align 8
  %24 = load ptr, ptr %pNew, align 8
  %aCol19 = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %aCol19, align 8
  %26 = load ptr, ptr %pTab, align 8
  %aCol20 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 1
  store ptr %25, ptr %aCol20, align 8
  %27 = load ptr, ptr %pNew, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 11
  %28 = load i16, ptr %nCol, align 2
  %29 = load ptr, ptr %pTab, align 8
  %nCol21 = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 11
  store i16 %28, ptr %nCol21, align 2
  %30 = load ptr, ptr %pNew, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %30, i32 0, i32 9
  %31 = load i32, ptr %tabFlags, align 8
  %and = and i32 %31, 96
  %32 = load ptr, ptr %pTab, align 8
  %tabFlags22 = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 9
  %33 = load i32, ptr %tabFlags22, align 8
  %or = or i32 %33, %and
  store i32 %or, ptr %tabFlags22, align 8
  %34 = load ptr, ptr %pNew, align 8
  %nCol23 = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 11
  store i16 0, ptr %nCol23, align 2
  %35 = load ptr, ptr %pNew, align 8
  %aCol24 = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 1
  store ptr null, ptr %aCol24, align 8
  %36 = load ptr, ptr %pNew, align 8
  %tabFlags25 = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 9
  %37 = load i32, ptr %tabFlags25, align 8
  %and26 = and i32 %37, 32
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %if.end35, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.then17
  %38 = load ptr, ptr %pCtx, align 8
  %pVTable = getelementptr inbounds nuw %struct.VtabCtx, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pVTable, align 8
  %pMod = getelementptr inbounds nuw %struct.VTable, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pModule, align 8
  %xUpdate = getelementptr inbounds nuw %struct.sqlite3_module, ptr %41, i32 0, i32 13
  %42 = load ptr, ptr %xUpdate, align 8
  %cmp29 = icmp ne ptr %42, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %43 = load ptr, ptr %pNew, align 8
  %call31 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %43)
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %call31, i32 0, i32 13
  %44 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %44 to i32
  %cmp32 = icmp ne i32 %conv, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  store i32 1, ptr %rc, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true30, %land.lhs.true28, %if.then17
  %45 = load ptr, ptr %pNew, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %pIndex, align 8
  store ptr %46, ptr %pIdx, align 8
  %47 = load ptr, ptr %pIdx, align 8
  %tobool36 = icmp ne ptr %47, null
  br i1 %tobool36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end35
  %48 = load ptr, ptr %pIdx, align 8
  %49 = load ptr, ptr %pTab, align 8
  %pIndex38 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 2
  store ptr %48, ptr %pIndex38, align 8
  %50 = load ptr, ptr %pNew, align 8
  %pIndex39 = getelementptr inbounds nuw %struct.Table, ptr %50, i32 0, i32 2
  store ptr null, ptr %pIndex39, align 8
  %51 = load ptr, ptr %pTab, align 8
  %52 = load ptr, ptr %pIdx, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %52, i32 0, i32 3
  store ptr %51, ptr %pTable, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then15
  %53 = load ptr, ptr %pCtx, align 8
  %bDeclared42 = getelementptr inbounds nuw %struct.VtabCtx, ptr %53, i32 0, i32 3
  store i32 1, ptr %bDeclared42, align 8
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true12, %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %if.end
  %54 = load ptr, ptr %db.addr, align 8
  %55 = load ptr, ptr %zErr, align 8
  %tobool43 = icmp ne ptr %55, null
  %56 = zext i1 %tobool43 to i64
  %cond = select i1 %tobool43, ptr @.str.20, ptr null
  %57 = load ptr, ptr %zErr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %54, i32 noundef 1, ptr noundef %cond, ptr noundef %57)
  %58 = load ptr, ptr %db.addr, align 8
  %59 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %58, ptr noundef %59)
  store i32 1, ptr %rc, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end41
  %eParseMode45 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 51
  store i8 0, ptr %eParseMode45, align 4
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %60 = load ptr, ptr %pVdbe, align 8
  %tobool46 = icmp ne ptr %60, null
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end44
  %pVdbe48 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %61 = load ptr, ptr %pVdbe48, align 8
  %call49 = call i32 @sqlite3VdbeFinalize(ptr noundef %61)
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44
  %62 = load ptr, ptr %db.addr, align 8
  %pNewTable51 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %63 = load ptr, ptr %pNewTable51, align 8
  call void @sqlite3DeleteTable(ptr noundef %62, ptr noundef %63)
  call void @sqlite3ParserReset(ptr noundef %sParse)
  %64 = load ptr, ptr %db.addr, align 8
  %65 = load i32, ptr %rc, align 4
  %call52 = call i32 @sqlite3ApiExit(ptr noundef %64, i32 noundef %65)
  store i32 %call52, ptr %rc, align 4
  %66 = load ptr, ptr %db.addr, align 8
  %mutex53 = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %mutex53, align 8
  call void @sqlite3_mutex_leave(ptr noundef %67)
  %68 = load i32, ptr %rc, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RunParser(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

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
