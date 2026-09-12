; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pager_write_pagelist(ptr noundef %pPager, ptr noundef %pList) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %szFile = alloca i64, align 8
  %pgno17 = alloca i32, align 4
  %offset = alloca i64, align 8
  %pData = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 30
  %1 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %4 = load ptr, ptr %pPager.addr, align 8
  %fd1 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 30
  %5 = load ptr, ptr %fd1, align 8
  %6 = load ptr, ptr %pPager.addr, align 8
  %vfsFlags = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 45
  %7 = load i32, ptr %vfsFlags, align 4
  %call = call i32 @pagerOpentemp(ptr noundef %3, ptr noundef %5, i32 noundef %7)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %pPager.addr, align 8
  %dbHintSize = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 24
  %10 = load i32, ptr %dbHintSize, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 21
  %12 = load i32, ptr %dbSize, align 4
  %cmp3 = icmp ult i32 %10, %12
  br i1 %cmp3, label %land.lhs.true4, label %if.end13

land.lhs.true4:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %pList.addr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pDirty, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %15 = load ptr, ptr %pList.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %pgno, align 8
  %17 = load ptr, ptr %pPager.addr, align 8
  %dbHintSize5 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 24
  %18 = load i32, ptr %dbHintSize5, align 8
  %cmp6 = icmp ugt i32 %16, %18
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true4
  %19 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 47
  %20 = load i32, ptr %pageSize, align 4
  %conv = sext i32 %20 to i64
  %21 = load ptr, ptr %pPager.addr, align 8
  %dbSize8 = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 21
  %22 = load i32, ptr %dbSize8, align 4
  %conv9 = zext i32 %22 to i64
  %mul = mul nsw i64 %conv, %conv9
  store i64 %mul, ptr %szFile, align 8
  %23 = load ptr, ptr %pPager.addr, align 8
  %fd10 = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 30
  %24 = load ptr, ptr %fd10, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %24, i32 noundef 5, ptr noundef %szFile)
  %25 = load ptr, ptr %pPager.addr, align 8
  %dbSize11 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 21
  %26 = load i32, ptr %dbSize11, align 4
  %27 = load ptr, ptr %pPager.addr, align 8
  %dbHintSize12 = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 24
  store i32 %26, ptr %dbHintSize12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %lor.lhs.false, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.end13
  %28 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %pList.addr, align 8
  %tobool16 = icmp ne ptr %29, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load ptr, ptr %pList.addr, align 8
  %pgno18 = getelementptr inbounds nuw %struct.PgHdr, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %pgno18, align 8
  store i32 %32, ptr %pgno17, align 4
  %33 = load i32, ptr %pgno17, align 4
  %34 = load ptr, ptr %pPager.addr, align 8
  %dbSize19 = getelementptr inbounds nuw %struct.Pager, ptr %34, i32 0, i32 21
  %35 = load i32, ptr %dbSize19, align 4
  %cmp20 = icmp ule i32 %33, %35
  br i1 %cmp20, label %land.lhs.true22, label %if.else

land.lhs.true22:                                  ; preds = %while.body
  %36 = load ptr, ptr %pList.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %36, i32 0, i32 7
  %37 = load i16, ptr %flags, align 4
  %conv23 = zext i16 %37 to i32
  %and = and i32 %conv23, 16
  %cmp24 = icmp eq i32 0, %and
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %land.lhs.true22
  %38 = load i32, ptr %pgno17, align 4
  %sub = sub i32 %38, 1
  %conv27 = zext i32 %sub to i64
  %39 = load ptr, ptr %pPager.addr, align 8
  %pageSize28 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 47
  %40 = load i32, ptr %pageSize28, align 4
  %conv29 = sext i32 %40 to i64
  %mul30 = mul nsw i64 %conv27, %conv29
  store i64 %mul30, ptr %offset, align 8
  %41 = load ptr, ptr %pList.addr, align 8
  %pgno31 = getelementptr inbounds nuw %struct.PgHdr, ptr %41, i32 0, i32 6
  %42 = load i32, ptr %pgno31, align 8
  %cmp32 = icmp eq i32 %42, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then26
  %43 = load ptr, ptr %pList.addr, align 8
  call void @pager_write_changecounter(ptr noundef %43)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then26
  %44 = load ptr, ptr %pList.addr, align 8
  %pData36 = getelementptr inbounds nuw %struct.PgHdr, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pData36, align 8
  store ptr %45, ptr %pData, align 8
  %46 = load ptr, ptr %pPager.addr, align 8
  %fd37 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 30
  %47 = load ptr, ptr %fd37, align 8
  %48 = load ptr, ptr %pData, align 8
  %49 = load ptr, ptr %pPager.addr, align 8
  %pageSize38 = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 47
  %50 = load i32, ptr %pageSize38, align 4
  %51 = load i64, ptr %offset, align 8
  %call39 = call i32 @sqlite3OsWrite(ptr noundef %47, ptr noundef %48, i32 noundef %50, i64 noundef %51)
  store i32 %call39, ptr %rc, align 4
  %52 = load i32, ptr %pgno17, align 4
  %cmp40 = icmp eq i32 %52, 1
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  %53 = load ptr, ptr %pPager.addr, align 8
  %dbFileVers = getelementptr inbounds nuw %struct.Pager, ptr %53, i32 0, i32 39
  %54 = load ptr, ptr %pData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %54, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dbFileVers, ptr align 1 %arrayidx, i64 16, i1 false)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end35
  %55 = load i32, ptr %pgno17, align 4
  %56 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 23
  %57 = load i32, ptr %dbFileSize, align 4
  %cmp44 = icmp ugt i32 %55, %57
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %58 = load i32, ptr %pgno17, align 4
  %59 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize47 = getelementptr inbounds nuw %struct.Pager, ptr %59, i32 0, i32 23
  store i32 %58, ptr %dbFileSize47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %60 = load ptr, ptr %pPager.addr, align 8
  %aStat = getelementptr inbounds nuw %struct.Pager, ptr %60, i32 0, i32 54
  %arrayidx49 = getelementptr inbounds [4 x i32], ptr %aStat, i64 0, i64 2
  %61 = load i32, ptr %arrayidx49, align 8
  %inc = add nsw i32 %61, 1
  store i32 %inc, ptr %arrayidx49, align 8
  %62 = load ptr, ptr %pPager.addr, align 8
  %pBackup = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 35
  %63 = load ptr, ptr %pBackup, align 8
  %64 = load i32, ptr %pgno17, align 4
  %65 = load ptr, ptr %pList.addr, align 8
  %pData50 = getelementptr inbounds nuw %struct.PgHdr, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %pData50, align 8
  call void @sqlite3BackupUpdate(ptr noundef %63, i32 noundef %64, ptr noundef %66)
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true22, %while.body
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end48
  %67 = load ptr, ptr %pList.addr, align 8
  %pDirty52 = getelementptr inbounds nuw %struct.PgHdr, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %pDirty52, align 8
  store ptr %68, ptr %pList.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %69 = load i32, ptr %rc, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
declare hidden void @pager_write_changecounter(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BackupUpdate(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerOpentemp(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
