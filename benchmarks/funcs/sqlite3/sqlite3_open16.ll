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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.28 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueText(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @openDatabase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_open16(ptr noundef %zFilename, ptr noundef %ppDb) #0 {
entry:
  %retval = alloca i32, align 4
  %zFilename.addr = alloca ptr, align 8
  %ppDb.addr = alloca ptr, align 8
  %zFilename8 = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %ppDb, ptr %ppDb.addr, align 8
  %0 = load ptr, ptr %ppDb.addr, align 8
  store ptr null, ptr %0, align 8
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zFilename.addr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store ptr @.str.28, ptr %zFilename.addr, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %call3 = call ptr @sqlite3ValueNew(ptr noundef null)
  store ptr %call3, ptr %pVal, align 8
  %4 = load ptr, ptr %pVal, align 8
  %5 = load ptr, ptr %zFilename.addr, align 8
  call void @sqlite3ValueSetStr(ptr noundef %4, i32 noundef -1, ptr noundef %5, i8 noundef zeroext 2, ptr noundef null)
  %6 = load ptr, ptr %pVal, align 8
  %call4 = call ptr @sqlite3ValueText(ptr noundef %6, i8 noundef zeroext 1)
  store ptr %call4, ptr %zFilename8, align 8
  %7 = load ptr, ptr %zFilename8, align 8
  %tobool5 = icmp ne ptr %7, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end2
  %8 = load ptr, ptr %zFilename8, align 8
  %9 = load ptr, ptr %ppDb.addr, align 8
  %call7 = call i32 @openDatabase(ptr noundef %8, ptr noundef %9, i32 noundef 6, ptr noundef null)
  store i32 %call7, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then6
  %11 = load ptr, ptr %ppDb.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %13, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %14 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %14, i32 0, i32 9
  %15 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 1
  %cmp9 = icmp eq i32 %and, 1
  br i1 %cmp9, label %if.end16, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %ppDb.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 16
  store i8 2, ptr %enc, align 2
  %18 = load ptr, ptr %ppDb.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %aDb12 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %aDb12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Db, ptr %20, i64 0
  %pSchema14 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx13, i32 0, i32 4
  %21 = load ptr, ptr %pSchema14, align 8
  %enc15 = getelementptr inbounds nuw %struct.Schema, ptr %21, i32 0, i32 8
  store i8 2, ptr %enc15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true, %if.then6
  br label %if.end17

if.else:                                          ; preds = %if.end2
  store i32 7, ptr %rc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  %22 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %22)
  %23 = load i32, ptr %rc, align 4
  %and18 = and i32 %23, 255
  store i32 %and18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
