; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @subjournalPageIfRequired(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheDrop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnrefNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMakeDirty(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerMovepage(ptr noundef %pPager, ptr noundef %pPg, i32 noundef %pgno, i32 noundef %isCommit) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pPg.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %isCommit.addr = alloca i32, align 4
  %pPgOld = alloca ptr, align 8
  %needSyncPgno = alloca i32, align 4
  %rc = alloca i32, align 4
  %origPgno = alloca i32, align 4
  %pPgHdr = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store i32 %isCommit, ptr %isCommit.addr, align 4
  store i32 0, ptr %needSyncPgno, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %tempFile, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPg.addr, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %2)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %rc, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 7
  %6 = load i16, ptr %flags, align 4
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %7 = load ptr, ptr %pPg.addr, align 8
  %call5 = call i32 @subjournalPageIfRequired(ptr noundef %7)
  store i32 %call5, ptr %rc, align 4
  %cmp6 = icmp ne i32 0, %call5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %8 = load i32, ptr %rc, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  %9 = load ptr, ptr %pPg.addr, align 8
  %flags10 = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 7
  %10 = load i16, ptr %flags10, align 4
  %conv11 = zext i16 %10 to i32
  %and12 = and i32 %conv11, 8
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %if.end9
  %11 = load i32, ptr %isCommit.addr, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  %12 = load ptr, ptr %pPg.addr, align 8
  %pgno17 = getelementptr inbounds nuw %struct.PgHdr, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %pgno17, align 8
  store i32 %13, ptr %needSyncPgno, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true14, %if.end9
  %14 = load ptr, ptr %pPg.addr, align 8
  %flags19 = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 7
  %15 = load i16, ptr %flags19, align 4
  %conv20 = zext i16 %15 to i32
  %and21 = and i32 %conv20, -9
  %conv22 = trunc i32 %and21 to i16
  store i16 %conv22, ptr %flags19, align 4
  %16 = load ptr, ptr %pPager.addr, align 8
  %17 = load i32, ptr %pgno.addr, align 4
  %call23 = call ptr @sqlite3PagerLookup(ptr noundef %16, i32 noundef %17)
  store ptr %call23, ptr %pPgOld, align 8
  %18 = load ptr, ptr %pPgOld, align 8
  %tobool24 = icmp ne ptr %18, null
  br i1 %tobool24, label %if.then25, label %if.end42

if.then25:                                        ; preds = %if.end18
  %19 = load ptr, ptr %pPgOld, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %19, i32 0, i32 8
  %20 = load i16, ptr %nRef, align 2
  %conv26 = sext i16 %20 to i32
  %cmp27 = icmp sgt i32 %conv26, 1
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then25
  %21 = load ptr, ptr %pPgOld, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %21)
  %call30 = call i32 @sqlite3CorruptError(i32 noundef 57972)
  store i32 %call30, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then25
  %22 = load ptr, ptr %pPgOld, align 8
  %flags32 = getelementptr inbounds nuw %struct.PgHdr, ptr %22, i32 0, i32 7
  %23 = load i16, ptr %flags32, align 4
  %conv33 = zext i16 %23 to i32
  %and34 = and i32 %conv33, 8
  %24 = load ptr, ptr %pPg.addr, align 8
  %flags35 = getelementptr inbounds nuw %struct.PgHdr, ptr %24, i32 0, i32 7
  %25 = load i16, ptr %flags35, align 4
  %conv36 = zext i16 %25 to i32
  %or = or i32 %conv36, %and34
  %conv37 = trunc i32 %or to i16
  store i16 %conv37, ptr %flags35, align 4
  %26 = load ptr, ptr %pPager.addr, align 8
  %tempFile38 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 9
  %27 = load i8, ptr %tempFile38, align 8
  %tobool39 = icmp ne i8 %27, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end31
  %28 = load ptr, ptr %pPgOld, align 8
  %29 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 21
  %30 = load i32, ptr %dbSize, align 4
  %add = add i32 %30, 1
  call void @sqlite3PcacheMove(ptr noundef %28, i32 noundef %add)
  br label %if.end41

if.else:                                          ; preds = %if.end31
  %31 = load ptr, ptr %pPgOld, align 8
  call void @sqlite3PcacheDrop(ptr noundef %31)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end18
  %32 = load ptr, ptr %pPg.addr, align 8
  %pgno43 = getelementptr inbounds nuw %struct.PgHdr, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %pgno43, align 8
  store i32 %33, ptr %origPgno, align 4
  %34 = load ptr, ptr %pPg.addr, align 8
  %35 = load i32, ptr %pgno.addr, align 4
  call void @sqlite3PcacheMove(ptr noundef %34, i32 noundef %35)
  %36 = load ptr, ptr %pPg.addr, align 8
  call void @sqlite3PcacheMakeDirty(ptr noundef %36)
  %37 = load ptr, ptr %pPager.addr, align 8
  %tempFile44 = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 9
  %38 = load i8, ptr %tempFile44, align 8
  %conv45 = zext i8 %38 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br i1 %tobool46, label %land.lhs.true47, label %if.end50

land.lhs.true47:                                  ; preds = %if.end42
  %39 = load ptr, ptr %pPgOld, align 8
  %tobool48 = icmp ne ptr %39, null
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true47
  %40 = load ptr, ptr %pPgOld, align 8
  %41 = load i32, ptr %origPgno, align 4
  call void @sqlite3PcacheMove(ptr noundef %40, i32 noundef %41)
  %42 = load ptr, ptr %pPgOld, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %42)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true47, %if.end42
  %43 = load i32, ptr %needSyncPgno, align 4
  %tobool51 = icmp ne i32 %43, 0
  br i1 %tobool51, label %if.then52, label %if.end66

if.then52:                                        ; preds = %if.end50
  %44 = load ptr, ptr %pPager.addr, align 8
  %45 = load i32, ptr %needSyncPgno, align 4
  %call53 = call i32 @sqlite3PagerGet(ptr noundef %44, i32 noundef %45, ptr noundef %pPgHdr, i32 noundef 0)
  store i32 %call53, ptr %rc, align 4
  %46 = load i32, ptr %rc, align 4
  %cmp54 = icmp ne i32 %46, 0
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.then52
  %47 = load i32, ptr %needSyncPgno, align 4
  %48 = load ptr, ptr %pPager.addr, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %48, i32 0, i32 22
  %49 = load i32, ptr %dbOrigSize, align 8
  %cmp57 = icmp ule i32 %47, %49
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  %50 = load ptr, ptr %pPager.addr, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 29
  %51 = load ptr, ptr %pInJournal, align 8
  %52 = load i32, ptr %needSyncPgno, align 4
  %53 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %53, i32 0, i32 57
  %54 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3BitvecClear(ptr noundef %51, i32 noundef %52, ptr noundef %54)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56
  %55 = load i32, ptr %rc, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then52
  %56 = load ptr, ptr %pPgHdr, align 8
  %flags62 = getelementptr inbounds nuw %struct.PgHdr, ptr %56, i32 0, i32 7
  %57 = load i16, ptr %flags62, align 4
  %conv63 = zext i16 %57 to i32
  %or64 = or i32 %conv63, 8
  %conv65 = trunc i32 %or64 to i16
  store i16 %conv65, ptr %flags62, align 4
  %58 = load ptr, ptr %pPgHdr, align 8
  call void @sqlite3PcacheMakeDirty(ptr noundef %58)
  %59 = load ptr, ptr %pPgHdr, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %59)
  br label %if.end66

if.end66:                                         ; preds = %if.end61, %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.end60, %if.then29, %if.then8, %if.then2
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMove(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecClear(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
