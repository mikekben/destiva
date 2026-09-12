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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.337 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.338 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.339 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_finalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3InitCallback(ptr noundef %pInit, i32 noundef %argc, ptr noundef %argv, ptr noundef %NotUsed) #0 {
entry:
  %retval = alloca i32, align 4
  %pInit.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %NotUsed.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %rc = alloca i32, align 4
  %saved_iDb = alloca i8, align 1
  %pStmt = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  store ptr %pInit, ptr %pInit.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  %0 = load ptr, ptr %pInit.addr, align 8
  store ptr %0, ptr %pData, align 8
  %1 = load ptr, ptr %pData, align 8
  %db1 = getelementptr inbounds nuw %struct.InitData, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db1, align 8
  store ptr %2, ptr %db, align 8
  %3 = load ptr, ptr %pData, align 8
  %iDb2 = getelementptr inbounds nuw %struct.InitData, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %iDb2, align 8
  store i32 %4, ptr %iDb, align 4
  %5 = load ptr, ptr %NotUsed.addr, align 8
  %6 = load i32, ptr %argc.addr, align 4
  %7 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %8, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %10 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %10, i32 0, i32 9
  %11 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, -5
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, ptr %schemaFlags, align 2
  %12 = load ptr, ptr %pData, align 8
  %nInitRow = getelementptr inbounds nuw %struct.InitData, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %nInitRow, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %nInitRow, align 4
  %14 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 19
  %15 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %pData, align 8
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %17, i64 1
  %18 = load ptr, ptr %arrayidx4, align 8
  call void @corruptSchema(ptr noundef %16, ptr noundef %18, ptr noundef null)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load ptr, ptr %argv.addr, align 8
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 3
  %21 = load ptr, ptr %arrayidx8, align 8
  %cmp9 = icmp eq ptr %21, null
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %22 = load ptr, ptr %pData, align 8
  %23 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx12, align 8
  call void @corruptSchema(ptr noundef %22, ptr noundef %24, ptr noundef null)
  br label %if.end104

if.else:                                          ; preds = %if.end7
  %25 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %25, i64 4
  %26 = load ptr, ptr %arrayidx13, align 8
  %call = call i32 @sqlite3_strnicmp(ptr noundef %26, ptr noundef @.str.337, i32 noundef 7)
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then16, label %if.else63

if.then16:                                        ; preds = %if.else
  %27 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 35
  %iDb17 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  %28 = load i8, ptr %iDb17, align 4
  store i8 %28, ptr %saved_iDb, align 1
  %29 = load i32, ptr %iDb, align 4
  %conv18 = trunc i32 %29 to i8
  %30 = load ptr, ptr %db, align 8
  %init19 = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 35
  %iDb20 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init19, i32 0, i32 1
  store i8 %conv18, ptr %iDb20, align 4
  %31 = load ptr, ptr %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %31, i64 3
  %32 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @sqlite3Atoi(ptr noundef %32)
  %33 = load ptr, ptr %db, align 8
  %init23 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 35
  %newTnum = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init23, i32 0, i32 0
  store i32 %call22, ptr %newTnum, align 8
  %34 = load ptr, ptr %db, align 8
  %init24 = getelementptr inbounds nuw %struct.sqlite3, ptr %34, i32 0, i32 35
  %orphanTrigger = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init24, i32 0, i32 3
  %bf.load = load i8, ptr %orphanTrigger, align 2
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %orphanTrigger, align 2
  %35 = load ptr, ptr %argv.addr, align 8
  %36 = load ptr, ptr %db, align 8
  %init25 = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 35
  %azInit = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init25, i32 0, i32 4
  store ptr %35, ptr %azInit, align 8
  %37 = load ptr, ptr %db, align 8
  %38 = load ptr, ptr %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %38, i64 4
  %39 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @sqlite3_prepare(ptr noundef %37, ptr noundef %39, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  %40 = load ptr, ptr %db, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 12
  %41 = load i32, ptr %errCode, align 8
  store i32 %41, ptr %rc, align 4
  %42 = load i8, ptr %saved_iDb, align 1
  %43 = load ptr, ptr %db, align 8
  %init28 = getelementptr inbounds nuw %struct.sqlite3, ptr %43, i32 0, i32 35
  %iDb29 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init28, i32 0, i32 1
  store i8 %42, ptr %iDb29, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp30 = icmp ne i32 0, %44
  br i1 %cmp30, label %if.then32, label %if.end61

if.then32:                                        ; preds = %if.then16
  %45 = load ptr, ptr %db, align 8
  %init33 = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 35
  %orphanTrigger34 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init33, i32 0, i32 3
  %bf.load35 = load i8, ptr %orphanTrigger34, align 2
  %bf.clear36 = and i8 %bf.load35, 1
  %bf.cast = zext i8 %bf.clear36 to i32
  %tobool37 = icmp ne i32 %bf.cast, 0
  br i1 %tobool37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then32
  br label %if.end60

if.else39:                                        ; preds = %if.then32
  %46 = load i32, ptr %rc, align 4
  %47 = load ptr, ptr %pData, align 8
  %rc40 = getelementptr inbounds nuw %struct.InitData, ptr %47, i32 0, i32 3
  %48 = load i32, ptr %rc40, align 4
  %cmp41 = icmp sgt i32 %46, %48
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else39
  %49 = load i32, ptr %rc, align 4
  %50 = load ptr, ptr %pData, align 8
  %rc44 = getelementptr inbounds nuw %struct.InitData, ptr %50, i32 0, i32 3
  store i32 %49, ptr %rc44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else39
  %51 = load i32, ptr %rc, align 4
  %cmp46 = icmp eq i32 %51, 7
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end45
  %52 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %52)
  br label %if.end59

if.else49:                                        ; preds = %if.end45
  %53 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 %53, 9
  br i1 %cmp50, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.else49
  %54 = load i32, ptr %rc, align 4
  %and52 = and i32 %54, 255
  %cmp53 = icmp ne i32 %and52, 6
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %land.lhs.true
  %55 = load ptr, ptr %pData, align 8
  %56 = load ptr, ptr %argv.addr, align 8
  %arrayidx56 = getelementptr inbounds ptr, ptr %56, i64 1
  %57 = load ptr, ptr %arrayidx56, align 8
  %58 = load ptr, ptr %db, align 8
  %call57 = call ptr @sqlite3_errmsg(ptr noundef %58)
  call void @corruptSchema(ptr noundef %55, ptr noundef %57, ptr noundef %call57)
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %land.lhs.true, %if.else49
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then48
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then38
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then16
  %59 = load ptr, ptr %pStmt, align 8
  %call62 = call i32 @sqlite3_finalize(ptr noundef %59)
  br label %if.end103

if.else63:                                        ; preds = %if.else
  %60 = load ptr, ptr %argv.addr, align 8
  %arrayidx64 = getelementptr inbounds ptr, ptr %60, i64 1
  %61 = load ptr, ptr %arrayidx64, align 8
  %cmp65 = icmp eq ptr %61, null
  br i1 %cmp65, label %if.then76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else63
  %62 = load ptr, ptr %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds ptr, ptr %62, i64 4
  %63 = load ptr, ptr %arrayidx67, align 8
  %cmp68 = icmp ne ptr %63, null
  br i1 %cmp68, label %land.lhs.true70, label %if.else78

land.lhs.true70:                                  ; preds = %lor.lhs.false
  %64 = load ptr, ptr %argv.addr, align 8
  %arrayidx71 = getelementptr inbounds ptr, ptr %64, i64 4
  %65 = load ptr, ptr %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx72, align 1
  %conv73 = sext i8 %66 to i32
  %cmp74 = icmp ne i32 %conv73, 0
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %land.lhs.true70, %if.else63
  %67 = load ptr, ptr %pData, align 8
  %68 = load ptr, ptr %argv.addr, align 8
  %arrayidx77 = getelementptr inbounds ptr, ptr %68, i64 1
  %69 = load ptr, ptr %arrayidx77, align 8
  call void @corruptSchema(ptr noundef %67, ptr noundef %69, ptr noundef null)
  br label %if.end102

if.else78:                                        ; preds = %land.lhs.true70, %lor.lhs.false
  %70 = load ptr, ptr %db, align 8
  %71 = load ptr, ptr %argv.addr, align 8
  %arrayidx79 = getelementptr inbounds ptr, ptr %71, i64 1
  %72 = load ptr, ptr %arrayidx79, align 8
  %73 = load ptr, ptr %db, align 8
  %aDb80 = getelementptr inbounds nuw %struct.sqlite3, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %aDb80, align 8
  %75 = load i32, ptr %iDb, align 4
  %idxprom81 = sext i32 %75 to i64
  %arrayidx82 = getelementptr inbounds %struct.Db, ptr %74, i64 %idxprom81
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx82, i32 0, i32 0
  %76 = load ptr, ptr %zDbSName, align 8
  %call83 = call ptr @sqlite3FindIndex(ptr noundef %70, ptr noundef %72, ptr noundef %76)
  store ptr %call83, ptr %pIndex, align 8
  %77 = load ptr, ptr %pIndex, align 8
  %cmp84 = icmp eq ptr %77, null
  br i1 %cmp84, label %if.then98, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.else78
  %78 = load ptr, ptr %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %78, i64 3
  %79 = load ptr, ptr %arrayidx87, align 8
  %80 = load ptr, ptr %pIndex, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %80, i32 0, i32 11
  %call88 = call i32 @sqlite3GetInt32(ptr noundef %79, ptr noundef %tnum)
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then98, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false86
  %81 = load ptr, ptr %pIndex, align 8
  %tnum92 = getelementptr inbounds nuw %struct.Index, ptr %81, i32 0, i32 11
  %82 = load i32, ptr %tnum92, align 8
  %cmp93 = icmp slt i32 %82, 2
  br i1 %cmp93, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false91
  %83 = load ptr, ptr %pIndex, align 8
  %call96 = call i32 @sqlite3IndexHasDuplicateRootPage(ptr noundef %83)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.end101

if.then98:                                        ; preds = %lor.lhs.false95, %lor.lhs.false91, %lor.lhs.false86, %if.else78
  %84 = load ptr, ptr %pData, align 8
  %85 = load ptr, ptr %argv.addr, align 8
  %arrayidx99 = getelementptr inbounds ptr, ptr %85, i64 1
  %86 = load ptr, ptr %arrayidx99, align 8
  %87 = load ptr, ptr %pIndex, align 8
  %tobool100 = icmp ne ptr %87, null
  %88 = zext i1 %tobool100 to i64
  %cond = select i1 %tobool100, ptr @.str.338, ptr @.str.339
  call void @corruptSchema(ptr noundef %84, ptr noundef %86, ptr noundef %cond)
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %lor.lhs.false95
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then76
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end61
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end104, %if.then6, %if.then
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: nounwind uwtable
declare hidden void @corruptSchema(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexHasDuplicateRootPage(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
