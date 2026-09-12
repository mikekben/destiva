; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }
%struct.PragmaVtab = type { %struct.sqlite3_vtab, ptr, ptr, i8, i8 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.295 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.480 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.481 = external hidden unnamed_addr constant [7 x i8], align 1
@pragCName = external hidden constant [47 x ptr], align 16
@.str.482 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.483 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.484 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pPragma = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cSep = alloca i8, align 1
  %acc = alloca %struct.sqlite3_str, align 8
  %zBuf = alloca [200 x i8], align 16
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %pAux.addr, align 8
  store ptr %0, ptr %pPragma, align 8
  store ptr null, ptr %pTab, align 8
  store i8 40, ptr %cSep, align 1
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], ptr %zBuf, i64 0, i64 0
  call void @sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef %arraydecay, i32 noundef 200, i32 noundef 0)
  call void @sqlite3_str_appendall(ptr noundef %acc, ptr noundef @.str.480)
  store i32 0, ptr %i, align 4
  %3 = load ptr, ptr %pPragma, align 8
  %iPragCName = getelementptr inbounds nuw %struct.PragmaName, ptr %3, i32 0, i32 3
  %4 = load i8, ptr %iPragCName, align 2
  %conv = zext i8 %4 to i32
  store i32 %conv, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pPragma, align 8
  %nPragCName = getelementptr inbounds nuw %struct.PragmaName, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %nPragCName, align 1
  %conv1 = zext i8 %7 to i32
  %cmp = icmp slt i32 %5, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8, ptr %cSep, align 1
  %conv3 = sext i8 %8 to i32
  %9 = load i32, ptr %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [47 x ptr], ptr @pragCName, i64 0, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.481, i32 noundef %conv3, ptr noundef %10)
  store i8 44, ptr %cSep, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %12 = load i32, ptr %j, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %13, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %14 = load ptr, ptr %pPragma, align 8
  %zName = getelementptr inbounds nuw %struct.PragmaName, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.482, ptr noundef %15)
  %16 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, ptr %j, align 4
  %17 = load ptr, ptr %pPragma, align 8
  %mPragFlg = getelementptr inbounds nuw %struct.PragmaName, ptr %17, i32 0, i32 2
  %18 = load i8, ptr %mPragFlg, align 1
  %conv8 = zext i8 %18 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @sqlite3_str_appendall(ptr noundef %acc, ptr noundef @.str.483)
  %19 = load i32, ptr %j, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, ptr %j, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %20 = load ptr, ptr %pPragma, align 8
  %mPragFlg12 = getelementptr inbounds nuw %struct.PragmaName, ptr %20, i32 0, i32 2
  %21 = load i8, ptr %mPragFlg12, align 1
  %conv13 = zext i8 %21 to i32
  %and14 = and i32 %conv13, 192
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @sqlite3_str_appendall(ptr noundef %acc, ptr noundef @.str.484)
  %22 = load i32, ptr %j, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, ptr %j, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11
  call void @sqlite3_str_append(ptr noundef %acc, ptr noundef @.str.295, i32 noundef 1)
  %call = call ptr @sqlite3StrAccumFinish(ptr noundef %acc)
  %23 = load ptr, ptr %db.addr, align 8
  %arraydecay19 = getelementptr inbounds [200 x i8], ptr %zBuf, i64 0, i64 0
  %call20 = call i32 @sqlite3_declare_vtab(ptr noundef %23, ptr noundef %arraydecay19)
  store i32 %call20, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %24, 0
  br i1 %cmp21, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.end18
  %call24 = call ptr @sqlite3_malloc(i32 noundef 48)
  store ptr %call24, ptr %pTab, align 8
  %25 = load ptr, ptr %pTab, align 8
  %cmp25 = icmp eq ptr %25, null
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then23
  store i32 7, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then23
  %26 = load ptr, ptr %pTab, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %pPragma, align 8
  %28 = load ptr, ptr %pTab, align 8
  %pName = getelementptr inbounds nuw %struct.PragmaVtab, ptr %28, i32 0, i32 2
  store ptr %27, ptr %pName, align 8
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %pTab, align 8
  %db28 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %30, i32 0, i32 1
  store ptr %29, ptr %db28, align 8
  %31 = load i32, ptr %i, align 4
  %conv29 = trunc i32 %31 to i8
  %32 = load ptr, ptr %pTab, align 8
  %iHidden = getelementptr inbounds nuw %struct.PragmaVtab, ptr %32, i32 0, i32 4
  store i8 %conv29, ptr %iHidden, align 1
  %33 = load i32, ptr %j, align 4
  %conv30 = trunc i32 %33 to i8
  %34 = load ptr, ptr %pTab, align 8
  %nHidden = getelementptr inbounds nuw %struct.PragmaVtab, ptr %34, i32 0, i32 3
  store i8 %conv30, ptr %nHidden, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  br label %if.end35

if.else32:                                        ; preds = %if.end18
  %35 = load ptr, ptr %db.addr, align 8
  %call33 = call ptr @sqlite3_errmsg(ptr noundef %35)
  %call34 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %call33)
  %36 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call34, ptr %36, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.end31
  %37 = load ptr, ptr %pTab, align 8
  %38 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %37, ptr %38, align 8
  %39 = load i32, ptr %rc, align 4
  ret i32 %39
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
