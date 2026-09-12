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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckOk(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3LockAndPrepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Prepare16(ptr noundef %db, ptr noundef %zSql, i32 noundef %nBytes, i32 noundef %prepFlags, ptr noundef %ppStmt, ptr noundef %pzTail) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %prepFlags.addr = alloca i32, align 4
  %ppStmt.addr = alloca ptr, align 8
  %pzTail.addr = alloca ptr, align 8
  %zSql8 = alloca ptr, align 8
  %zTail8 = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sz = alloca i32, align 4
  %z = alloca ptr, align 8
  %chars_parsed = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  store i32 %prepFlags, ptr %prepFlags.addr, align 4
  store ptr %ppStmt, ptr %ppStmt.addr, align 8
  store ptr %pzTail, ptr %pzTail.addr, align 8
  store ptr null, ptr %zTail8, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %ppStmt.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3SafetyCheckOk(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %zSql.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call i32 @sqlite3MisuseError(i32 noundef 125540)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %nBytes.addr, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %zSql.addr, align 8
  store ptr %4, ptr %z, align 8
  store i32 0, ptr %sz, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, ptr %sz, align 4
  %6 = load i32, ptr %nBytes.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %z, align 8
  %8 = load i32, ptr %sz, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load ptr, ptr %z, align 8
  %11 = load i32, ptr %sz, align 4
  %add = add nsw i32 %11, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %13, %lor.end ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %sz, align 4
  %add12 = add nsw i32 %15, 2
  store i32 %add12, ptr %sz, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %16 = load i32, ptr %sz, align 4
  store i32 %16, ptr %nBytes.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end
  %17 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %18)
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %zSql.addr, align 8
  %21 = load i32, ptr %nBytes.addr, align 4
  %call14 = call ptr @sqlite3Utf16to8(ptr noundef %19, ptr noundef %20, i32 noundef %21, i8 noundef zeroext 2)
  store ptr %call14, ptr %zSql8, align 8
  %22 = load ptr, ptr %zSql8, align 8
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load ptr, ptr %zSql8, align 8
  %25 = load i32, ptr %prepFlags.addr, align 4
  %26 = load ptr, ptr %ppStmt.addr, align 8
  %call17 = call i32 @sqlite3LockAndPrepare(ptr noundef %23, ptr noundef %24, i32 noundef -1, i32 noundef %25, ptr noundef null, ptr noundef %26, ptr noundef %zTail8)
  store i32 %call17, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %27 = load ptr, ptr %zTail8, align 8
  %tobool19 = icmp ne ptr %27, null
  br i1 %tobool19, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %28 = load ptr, ptr %pzTail.addr, align 8
  %tobool20 = icmp ne ptr %28, null
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %zSql8, align 8
  %30 = load ptr, ptr %zTail8, align 8
  %31 = load ptr, ptr %zSql8, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv22 = trunc i64 %sub.ptr.sub to i32
  %call23 = call i32 @sqlite3Utf8CharLen(ptr noundef %29, i32 noundef %conv22)
  store i32 %call23, ptr %chars_parsed, align 4
  %32 = load ptr, ptr %zSql.addr, align 8
  %33 = load ptr, ptr %zSql.addr, align 8
  %34 = load i32, ptr %chars_parsed, align 4
  %call24 = call i32 @sqlite3Utf16ByteLen(ptr noundef %33, i32 noundef %34)
  %idx.ext = sext i32 %call24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  %35 = load ptr, ptr %pzTail.addr, align 8
  store ptr %add.ptr, ptr %35, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true, %if.end18
  %36 = load ptr, ptr %db.addr, align 8
  %37 = load ptr, ptr %zSql8, align 8
  call void @sqlite3DbFree(ptr noundef %36, ptr noundef %37)
  %38 = load ptr, ptr %db.addr, align 8
  %39 = load i32, ptr %rc, align 4
  %call26 = call i32 @sqlite3ApiExit(ptr noundef %38, i32 noundef %39)
  store i32 %call26, ptr %rc, align 4
  %40 = load ptr, ptr %db.addr, align 8
  %mutex27 = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %mutex27, align 8
  call void @sqlite3_mutex_leave(ptr noundef %41)
  %42 = load i32, ptr %rc, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Utf16to8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8CharLen(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf16ByteLen(ptr noundef, i32 noundef) #0

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
