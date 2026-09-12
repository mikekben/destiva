; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TabResult = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_get_table(ptr noundef %db, ptr noundef %zSql, ptr noundef %pazResult, ptr noundef %pnRow, ptr noundef %pnColumn, ptr noundef %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %pazResult.addr = alloca ptr, align 8
  %pnRow.addr = alloca ptr, align 8
  %pnColumn.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %res = alloca %struct.TabResult, align 8
  %azNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %pazResult, ptr %pazResult.addr, align 8
  store ptr %pnRow, ptr %pnRow.addr, align 8
  store ptr %pnColumn, ptr %pnColumn.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  %0 = load ptr, ptr %pazResult.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %pnColumn.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pnColumn.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %pnRow.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pnRow.addr, align 8
  store i32 0, ptr %4, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr null, ptr %6, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %zErrMsg = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 1
  store ptr null, ptr %zErrMsg, align 8
  %nRow = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 3
  store i32 0, ptr %nRow, align 4
  %nColumn = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 4
  store i32 0, ptr %nColumn, align 8
  %nData = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 5
  store i32 1, ptr %nData, align 4
  %nAlloc = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 2
  store i32 20, ptr %nAlloc, align 8
  %rc7 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 6
  store i32 0, ptr %rc7, align 8
  %nAlloc8 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 2
  %7 = load i32, ptr %nAlloc8, align 8
  %conv = zext i32 %7 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @sqlite3_malloc64(i64 noundef %mul)
  %azResult = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  store ptr %call, ptr %azResult, align 8
  %azResult9 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %8 = load ptr, ptr %azResult9, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  %9 = load ptr, ptr %db.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 12
  store i32 7, ptr %errCode, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  %azResult13 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %10 = load ptr, ptr %azResult13, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 0
  store ptr null, ptr %arrayidx, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %zSql.addr, align 8
  %13 = load ptr, ptr %pzErrMsg.addr, align 8
  %call14 = call i32 @sqlite3_exec(ptr noundef %11, ptr noundef %12, ptr noundef @sqlite3_get_table_cb, ptr noundef %res, ptr noundef %13)
  store i32 %call14, ptr %rc, align 4
  %nData15 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 5
  %14 = load i32, ptr %nData15, align 4
  %conv16 = zext i32 %14 to i64
  %15 = inttoptr i64 %conv16 to ptr
  %azResult17 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %16 = load ptr, ptr %azResult17, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %16, i64 0
  store ptr %15, ptr %arrayidx18, align 8
  %17 = load i32, ptr %rc, align 4
  %and = and i32 %17, 255
  %cmp19 = icmp eq i32 %and, 4
  br i1 %cmp19, label %if.then21, label %if.end37

if.then21:                                        ; preds = %if.end12
  %azResult22 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %18 = load ptr, ptr %azResult22, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %18, i64 1
  call void @sqlite3_free_table(ptr noundef %arrayidx23)
  %zErrMsg24 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 1
  %19 = load ptr, ptr %zErrMsg24, align 8
  %tobool25 = icmp ne ptr %19, null
  br i1 %tobool25, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.then21
  %20 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool27 = icmp ne ptr %20, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then26
  %21 = load ptr, ptr %pzErrMsg.addr, align 8
  %22 = load ptr, ptr %21, align 8
  call void @sqlite3_free(ptr noundef %22)
  %zErrMsg29 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 1
  %23 = load ptr, ptr %zErrMsg29, align 8
  %call30 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %23)
  %24 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call30, ptr %24, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then26
  %zErrMsg32 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 1
  %25 = load ptr, ptr %zErrMsg32, align 8
  call void @sqlite3_free(ptr noundef %25)
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.then21
  %rc34 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 6
  %26 = load i32, ptr %rc34, align 8
  %27 = load ptr, ptr %db.addr, align 8
  %errCode35 = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 12
  store i32 %26, ptr %errCode35, align 8
  %rc36 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 6
  %28 = load i32, ptr %rc36, align 8
  store i32 %28, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end12
  %zErrMsg38 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 1
  %29 = load ptr, ptr %zErrMsg38, align 8
  call void @sqlite3_free(ptr noundef %29)
  %30 = load i32, ptr %rc, align 4
  %cmp39 = icmp ne i32 %30, 0
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  %azResult42 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %31 = load ptr, ptr %azResult42, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %31, i64 1
  call void @sqlite3_free_table(ptr noundef %arrayidx43)
  %32 = load i32, ptr %rc, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end37
  %nAlloc45 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 2
  %33 = load i32, ptr %nAlloc45, align 8
  %nData46 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 5
  %34 = load i32, ptr %nData46, align 4
  %cmp47 = icmp ugt i32 %33, %34
  br i1 %cmp47, label %if.then49, label %if.end63

if.then49:                                        ; preds = %if.end44
  %azResult50 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %35 = load ptr, ptr %azResult50, align 8
  %nData51 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 5
  %36 = load i32, ptr %nData51, align 4
  %conv52 = zext i32 %36 to i64
  %mul53 = mul i64 8, %conv52
  %call54 = call ptr @sqlite3_realloc64(ptr noundef %35, i64 noundef %mul53)
  store ptr %call54, ptr %azNew, align 8
  %37 = load ptr, ptr %azNew, align 8
  %cmp55 = icmp eq ptr %37, null
  br i1 %cmp55, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.then49
  %azResult58 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %38 = load ptr, ptr %azResult58, align 8
  %arrayidx59 = getelementptr inbounds ptr, ptr %38, i64 1
  call void @sqlite3_free_table(ptr noundef %arrayidx59)
  %39 = load ptr, ptr %db.addr, align 8
  %errCode60 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 12
  store i32 7, ptr %errCode60, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then49
  %40 = load ptr, ptr %azNew, align 8
  %azResult62 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  store ptr %40, ptr %azResult62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %if.end44
  %azResult64 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 0
  %41 = load ptr, ptr %azResult64, align 8
  %arrayidx65 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %pazResult.addr, align 8
  store ptr %arrayidx65, ptr %42, align 8
  %43 = load ptr, ptr %pnColumn.addr, align 8
  %tobool66 = icmp ne ptr %43, null
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end63
  %nColumn68 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 4
  %44 = load i32, ptr %nColumn68, align 8
  %45 = load ptr, ptr %pnColumn.addr, align 8
  store i32 %44, ptr %45, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end63
  %46 = load ptr, ptr %pnRow.addr, align 8
  %tobool70 = icmp ne ptr %46, null
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end69
  %nRow72 = getelementptr inbounds nuw %struct.TabResult, ptr %res, i32 0, i32 3
  %47 = load i32, ptr %nRow72, align 4
  %48 = load ptr, ptr %pnRow.addr, align 8
  store i32 %47, ptr %48, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then57, %if.then41, %if.end33, %if.then11
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3_get_table_cb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free_table(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
