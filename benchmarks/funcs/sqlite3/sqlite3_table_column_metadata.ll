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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.30 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_table_column_metadata(ptr noundef %db, ptr noundef %zDbName, ptr noundef %zTableName, ptr noundef %zColumnName, ptr noundef %pzDataType, ptr noundef %pzCollSeq, ptr noundef %pNotNull, ptr noundef %pPrimaryKey, ptr noundef %pAutoinc) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zDbName.addr = alloca ptr, align 8
  %zTableName.addr = alloca ptr, align 8
  %zColumnName.addr = alloca ptr, align 8
  %pzDataType.addr = alloca ptr, align 8
  %pzCollSeq.addr = alloca ptr, align 8
  %pNotNull.addr = alloca ptr, align 8
  %pPrimaryKey.addr = alloca ptr, align 8
  %pAutoinc.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zErrMsg = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %zDataType = alloca ptr, align 8
  %zCollSeq = alloca ptr, align 8
  %notnull = alloca i32, align 4
  %primarykey = alloca i32, align 4
  %autoinc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDbName, ptr %zDbName.addr, align 8
  store ptr %zTableName, ptr %zTableName.addr, align 8
  store ptr %zColumnName, ptr %zColumnName.addr, align 8
  store ptr %pzDataType, ptr %pzDataType.addr, align 8
  store ptr %pzCollSeq, ptr %pzCollSeq.addr, align 8
  store ptr %pNotNull, ptr %pNotNull.addr, align 8
  store ptr %pPrimaryKey, ptr %pPrimaryKey.addr, align 8
  store ptr %pAutoinc, ptr %pAutoinc.addr, align 8
  store ptr null, ptr %zErrMsg, align 8
  store ptr null, ptr %pTab, align 8
  store ptr null, ptr %pCol, align 8
  store i32 0, ptr %iCol, align 4
  store ptr null, ptr %zDataType, align 8
  store ptr null, ptr %zCollSeq, align 8
  store i32 0, ptr %notnull, align 4
  store i32 0, ptr %primarykey, align 4
  store i32 0, ptr %autoinc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %2)
  %3 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3Init(ptr noundef %3, ptr noundef %zErrMsg)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 0, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error_out

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %zTableName.addr, align 8
  %7 = load ptr, ptr %zDbName.addr, align 8
  %call1 = call ptr @sqlite3FindTable(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call1, ptr %pTab, align 8
  %8 = load ptr, ptr %pTab, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %9 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pSelect, align 8
  %tobool2 = icmp ne ptr %10, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %pTab, align 8
  br label %error_out

if.end4:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %zColumnName.addr, align 8
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  br label %if.end33

if.else:                                          ; preds = %if.end4
  store i32 0, ptr %iCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, ptr %iCol, align 4
  %13 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 11
  %14 = load i16, ptr %nCol, align 2
  %conv = sext i16 %14 to i32
  %cmp7 = icmp slt i32 %12, %conv
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %aCol, align 8
  %17 = load i32, ptr %iCol, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %16, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %18 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  %20 = load ptr, ptr %zColumnName.addr, align 8
  %call9 = call i32 @sqlite3StrICmp(ptr noundef %19, ptr noundef %20)
  %cmp10 = icmp eq i32 0, %call9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %21 = load i32, ptr %iCol, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %iCol, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then12, %for.cond
  %22 = load i32, ptr %iCol, align 4
  %23 = load ptr, ptr %pTab, align 8
  %nCol14 = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 11
  %24 = load i16, ptr %nCol14, align 2
  %conv15 = sext i16 %24 to i32
  %cmp16 = icmp eq i32 %22, %conv15
  br i1 %cmp16, label %if.then18, label %if.end32

if.then18:                                        ; preds = %for.end
  %25 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 9
  %26 = load i32, ptr %tabFlags, align 8
  %and = and i32 %26, 32
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else30

land.lhs.true:                                    ; preds = %if.then18
  %27 = load ptr, ptr %zColumnName.addr, align 8
  %call21 = call i32 @sqlite3IsRowid(ptr noundef %27)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.else30

if.then23:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 10
  %29 = load i16, ptr %iPKey, align 4
  %conv24 = sext i16 %29 to i32
  store i32 %conv24, ptr %iCol, align 4
  %30 = load i32, ptr %iCol, align 4
  %cmp25 = icmp sge i32 %30, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then23
  %31 = load ptr, ptr %pTab, align 8
  %aCol27 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %aCol27, align 8
  %33 = load i32, ptr %iCol, align 4
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds %struct.Column, ptr %32, i64 %idxprom28
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx29, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pCol, align 8
  br label %if.end31

if.else30:                                        ; preds = %land.lhs.true, %if.then18
  store ptr null, ptr %pTab, align 8
  br label %error_out

if.end31:                                         ; preds = %cond.end
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then6
  %34 = load ptr, ptr %pCol, align 8
  %tobool34 = icmp ne ptr %34, null
  br i1 %tobool34, label %if.then35, label %if.else52

if.then35:                                        ; preds = %if.end33
  %35 = load ptr, ptr %pCol, align 8
  %call36 = call ptr @sqlite3ColumnType(ptr noundef %35, ptr noundef null)
  store ptr %call36, ptr %zDataType, align 8
  %36 = load ptr, ptr %pCol, align 8
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %zColl, align 8
  store ptr %37, ptr %zCollSeq, align 8
  %38 = load ptr, ptr %pCol, align 8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %38, i32 0, i32 3
  %39 = load i8, ptr %notNull, align 8
  %conv37 = zext i8 %39 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  %conv39 = zext i1 %cmp38 to i32
  store i32 %conv39, ptr %notnull, align 4
  %40 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %40, i32 0, i32 6
  %41 = load i8, ptr %colFlags, align 1
  %conv40 = zext i8 %41 to i32
  %and41 = and i32 %conv40, 1
  %cmp42 = icmp ne i32 %and41, 0
  %conv43 = zext i1 %cmp42 to i32
  store i32 %conv43, ptr %primarykey, align 4
  %42 = load ptr, ptr %pTab, align 8
  %iPKey44 = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 10
  %43 = load i16, ptr %iPKey44, align 4
  %conv45 = sext i16 %43 to i32
  %44 = load i32, ptr %iCol, align 4
  %cmp46 = icmp eq i32 %conv45, %44
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then35
  %45 = load ptr, ptr %pTab, align 8
  %tabFlags48 = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 9
  %46 = load i32, ptr %tabFlags48, align 8
  %and49 = and i32 %46, 8
  %cmp50 = icmp ne i32 %and49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then35
  %47 = phi i1 [ false, %if.then35 ], [ %cmp50, %land.rhs ]
  %land.ext = zext i1 %47 to i32
  store i32 %land.ext, ptr %autoinc, align 4
  br label %if.end53

if.else52:                                        ; preds = %if.end33
  store ptr @.str.29, ptr %zDataType, align 8
  store i32 1, ptr %primarykey, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %land.end
  %48 = load ptr, ptr %zCollSeq, align 8
  %tobool54 = icmp ne ptr %48, null
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end53
  store ptr @sqlite3StrBINARY, ptr %zCollSeq, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53
  br label %error_out

error_out:                                        ; preds = %if.end56, %if.else30, %if.then3, %if.then
  %49 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %49)
  %50 = load ptr, ptr %pzDataType.addr, align 8
  %tobool57 = icmp ne ptr %50, null
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %error_out
  %51 = load ptr, ptr %zDataType, align 8
  %52 = load ptr, ptr %pzDataType.addr, align 8
  store ptr %51, ptr %52, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %error_out
  %53 = load ptr, ptr %pzCollSeq.addr, align 8
  %tobool60 = icmp ne ptr %53, null
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  %54 = load ptr, ptr %zCollSeq, align 8
  %55 = load ptr, ptr %pzCollSeq.addr, align 8
  store ptr %54, ptr %55, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  %56 = load ptr, ptr %pNotNull.addr, align 8
  %tobool63 = icmp ne ptr %56, null
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  %57 = load i32, ptr %notnull, align 4
  %58 = load ptr, ptr %pNotNull.addr, align 8
  store i32 %57, ptr %58, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end62
  %59 = load ptr, ptr %pPrimaryKey.addr, align 8
  %tobool66 = icmp ne ptr %59, null
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  %60 = load i32, ptr %primarykey, align 4
  %61 = load ptr, ptr %pPrimaryKey.addr, align 8
  store i32 %60, ptr %61, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65
  %62 = load ptr, ptr %pAutoinc.addr, align 8
  %tobool69 = icmp ne ptr %62, null
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end68
  %63 = load i32, ptr %autoinc, align 4
  %64 = load ptr, ptr %pAutoinc.addr, align 8
  store i32 %63, ptr %64, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68
  %65 = load i32, ptr %rc, align 4
  %cmp72 = icmp eq i32 0, %65
  br i1 %cmp72, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %if.end71
  %66 = load ptr, ptr %pTab, align 8
  %tobool75 = icmp ne ptr %66, null
  br i1 %tobool75, label %if.end78, label %if.then76

if.then76:                                        ; preds = %land.lhs.true74
  %67 = load ptr, ptr %db.addr, align 8
  %68 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %67, ptr noundef %68)
  %69 = load ptr, ptr %db.addr, align 8
  %70 = load ptr, ptr %zTableName.addr, align 8
  %71 = load ptr, ptr %zColumnName.addr, align 8
  %call77 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %69, ptr noundef @.str.30, ptr noundef %70, ptr noundef %71)
  store ptr %call77, ptr %zErrMsg, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %land.lhs.true74, %if.end71
  %72 = load ptr, ptr %db.addr, align 8
  %73 = load i32, ptr %rc, align 4
  %74 = load ptr, ptr %zErrMsg, align 8
  %tobool79 = icmp ne ptr %74, null
  %75 = zext i1 %tobool79 to i64
  %cond80 = select i1 %tobool79, ptr @.str.20, ptr null
  %76 = load ptr, ptr %zErrMsg, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %72, i32 noundef %73, ptr noundef %cond80, ptr noundef %76)
  %77 = load ptr, ptr %db.addr, align 8
  %78 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %77, ptr noundef %78)
  %79 = load ptr, ptr %db.addr, align 8
  %80 = load i32, ptr %rc, align 4
  %call81 = call i32 @sqlite3ApiExit(ptr noundef %79, i32 noundef %80)
  store i32 %call81, ptr %rc, align 4
  %81 = load ptr, ptr %db.addr, align 8
  %mutex82 = getelementptr inbounds nuw %struct.sqlite3, ptr %81, i32 0, i32 3
  %82 = load ptr, ptr %mutex82, align 8
  call void @sqlite3_mutex_leave(ptr noundef %82)
  %83 = load i32, ptr %rc, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsRowid(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ColumnType(ptr noundef, ptr noundef) #0

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
