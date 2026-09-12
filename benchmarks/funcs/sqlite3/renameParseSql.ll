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
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RunParser(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @renameParseSql(ptr noundef %p, ptr noundef %zDb, i32 noundef %bTable, ptr noundef %db, ptr noundef %zSql, i32 noundef %bTemp) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %bTable.addr = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %bTemp.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %zErr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store i32 %bTable, ptr %bTable.addr, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store i32 %bTemp, ptr %bTemp.addr, align 4
  store ptr null, ptr %zErr, align 8
  %0 = load i32, ptr %bTemp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %zDb.addr, align 8
  %call = call i32 @sqlite3FindDbName(ptr noundef %1, ptr noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i32 %cond to i8
  %3 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 35
  %iDb = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  store i8 %conv, ptr %iDb, align 4
  %4 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 416, i1 false)
  %5 = load i32, ptr %bTable.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  %6 = zext i1 %tobool1 to i64
  %cond2 = select i1 %tobool1, i32 3, i32 2
  %conv3 = trunc i32 %cond2 to i8
  %7 = load ptr, ptr %p.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 51
  store i8 %conv3, ptr %eParseMode, align 4
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  store ptr %8, ptr %db4, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 39
  store i32 1, ptr %nQueryLoop, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %12 = load ptr, ptr %zSql.addr, align 8
  %call5 = call i32 @sqlite3RunParser(ptr noundef %11, ptr noundef %12, ptr noundef %zErr)
  store i32 %call5, ptr %rc, align 4
  %13 = load ptr, ptr %zErr, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 1
  store ptr %13, ptr %zErrMsg, align 8
  %15 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 19
  %16 = load i8, ptr %mallocFailed, align 1
  %tobool6 = icmp ne i8 %16, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %18 = load ptr, ptr %p.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 58
  %19 = load ptr, ptr %pNewTable, align 8
  %cmp8 = icmp eq ptr %19, null
  br i1 %cmp8, label %land.lhs.true10, label %if.end18

land.lhs.true10:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %p.addr, align 8
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 59
  %21 = load ptr, ptr %pNewIndex, align 8
  %cmp11 = icmp eq ptr %21, null
  br i1 %cmp11, label %land.lhs.true13, label %if.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %22 = load ptr, ptr %p.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 60
  %23 = load ptr, ptr %pNewTrigger, align 8
  %cmp14 = icmp eq ptr %23, null
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true13
  %call17 = call i32 @sqlite3CorruptError(i32 noundef 104177)
  store i32 %call17, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true13, %land.lhs.true10, %land.lhs.true, %if.end
  %24 = load ptr, ptr %db.addr, align 8
  %init19 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 35
  %iDb20 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init19, i32 0, i32 1
  store i8 0, ptr %iDb20, align 4
  %25 = load i32, ptr %rc, align 4
  ret i32 %25
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
