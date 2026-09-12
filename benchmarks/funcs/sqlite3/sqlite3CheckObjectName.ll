; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.591 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.592 = external hidden unnamed_addr constant [42 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WritableSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3CheckObjectName(ptr noundef %pParse, ptr noundef %zName, ptr noundef %zType, ptr noundef %zTblName) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %zType.addr = alloca ptr, align 8
  %zTblName.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %zType, ptr %zType.addr, align 8
  store ptr %zTblName, ptr %zTblName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %call = call i32 @sqlite3WritableSchema(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 35
  %imposterTable = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 3
  %bf.load = load i8, ptr %imposterTable, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %db, align 8
  %init3 = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init3, i32 0, i32 2
  %5 = load i8, ptr %busy, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %zType.addr, align 8
  %7 = load ptr, ptr %db, align 8
  %init6 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 35
  %azInit = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init6, i32 0, i32 4
  %8 = load ptr, ptr %azInit, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  %call7 = call i32 @sqlite3_stricmp(ptr noundef %6, ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then5
  %10 = load ptr, ptr %zName.addr, align 8
  %11 = load ptr, ptr %db, align 8
  %init10 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 35
  %azInit11 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init10, i32 0, i32 4
  %12 = load ptr, ptr %azInit11, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_stricmp(ptr noundef %10, ptr noundef %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %zTblName.addr, align 8
  %15 = load ptr, ptr %db, align 8
  %init16 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 35
  %azInit17 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init16, i32 0, i32 4
  %16 = load ptr, ptr %azInit17, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 @sqlite3_stricmp(ptr noundef %14, ptr noundef %17)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %lor.lhs.false15, %lor.lhs.false9, %if.then5
  %18 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 6), align 1
  %tobool22 = icmp ne i8 %18, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %19 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %19, ptr noundef @.str.3)
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then21
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %lor.lhs.false15
  br label %if.end32

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 6
  %21 = load i8, ptr %nested, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.else
  %22 = load ptr, ptr %zName.addr, align 8
  %call27 = call i32 @sqlite3_strnicmp(ptr noundef %22, ptr noundef @.str.591, i32 noundef 7)
  %cmp28 = icmp eq i32 0, %call27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %zName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %23, ptr noundef @.str.592, ptr noundef %24)
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then30, %if.then23, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
