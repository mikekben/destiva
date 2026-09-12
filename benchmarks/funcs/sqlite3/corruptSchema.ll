; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InitData = type { ptr, ptr, i32, i32, i32, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.340 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.341 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.342 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @corruptSchema(ptr noundef %pData, ptr noundef %zObj, ptr noundef %zExtra) #0 {
entry:
  %pData.addr = alloca ptr, align 8
  %zObj.addr = alloca ptr, align 8
  %zExtra.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %zObj, ptr %zObj.addr, align 8
  store ptr %zExtra, ptr %zExtra.addr, align 8
  %0 = load ptr, ptr %pData.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.InitData, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pData.addr, align 8
  %rc = getelementptr inbounds nuw %struct.InitData, ptr %4, i32 0, i32 3
  store i32 7, ptr %rc, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pData.addr, align 8
  %pzErrMsg = getelementptr inbounds nuw %struct.InitData, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pzErrMsg, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end29

if.else3:                                         ; preds = %if.else
  %8 = load ptr, ptr %pData.addr, align 8
  %mInitFlags = getelementptr inbounds nuw %struct.InitData, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %mInitFlags, align 8
  %and = and i32 %9, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %zExtra.addr, align 8
  %call = call ptr @sqlite3DbStrDup(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %pData.addr, align 8
  %pzErrMsg6 = getelementptr inbounds nuw %struct.InitData, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pzErrMsg6, align 8
  store ptr %call, ptr %13, align 8
  %14 = load ptr, ptr %pData.addr, align 8
  %rc7 = getelementptr inbounds nuw %struct.InitData, ptr %14, i32 0, i32 3
  store i32 1, ptr %rc7, align 4
  br label %if.end28

if.else8:                                         ; preds = %if.else3
  %15 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 7
  %16 = load i64, ptr %flags, align 8
  %and9 = and i64 %16, 1
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else8
  %call12 = call i32 @sqlite3CorruptError(i32 noundef 124716)
  %17 = load ptr, ptr %pData.addr, align 8
  %rc13 = getelementptr inbounds nuw %struct.InitData, ptr %17, i32 0, i32 3
  store i32 %call12, ptr %rc13, align 4
  br label %if.end27

if.else14:                                        ; preds = %if.else8
  %18 = load ptr, ptr %zObj.addr, align 8
  %cmp15 = icmp eq ptr %18, null
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else14
  store ptr @.str.340, ptr %zObj.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else14
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %zObj.addr, align 8
  %call17 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %19, ptr noundef @.str.341, ptr noundef %20)
  store ptr %call17, ptr %z, align 8
  %21 = load ptr, ptr %zExtra.addr, align 8
  %tobool18 = icmp ne ptr %21, null
  br i1 %tobool18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %22 = load ptr, ptr %zExtra.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx19, align 1
  %conv = sext i8 %23 to i32
  %tobool20 = icmp ne i32 %conv, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %db, align 8
  %25 = load ptr, ptr %z, align 8
  %26 = load ptr, ptr %zExtra.addr, align 8
  %call22 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %24, ptr noundef @.str.342, ptr noundef %25, ptr noundef %26)
  store ptr %call22, ptr %z, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %if.end
  %27 = load ptr, ptr %z, align 8
  %28 = load ptr, ptr %pData.addr, align 8
  %pzErrMsg24 = getelementptr inbounds nuw %struct.InitData, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %pzErrMsg24, align 8
  store ptr %27, ptr %29, align 8
  %call25 = call i32 @sqlite3CorruptError(i32 noundef 124723)
  %30 = load ptr, ptr %pData.addr, align 8
  %rc26 = getelementptr inbounds nuw %struct.InitData, ptr %30, i32 0, i32 3
  store i32 %call25, ptr %rc26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.then11
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then5
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then2
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  ret void
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
