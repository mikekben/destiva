; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnrefNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTest(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerWriteLargeSector(ptr noundef %pPg) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nPageCount = alloca i32, align 4
  %pg1 = alloca i32, align 4
  %nPage = alloca i32, align 4
  %ii = alloca i32, align 4
  %needSync = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %nPagePerSector = alloca i32, align 4
  %pg = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pPage66 = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %nPage, align 4
  store i32 0, ptr %needSync, align 4
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPager, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 46
  %3 = load i32, ptr %sectorSize, align 8
  %4 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 47
  %5 = load i32, ptr %pageSize, align 4
  %div = udiv i32 %3, %5
  store i32 %div, ptr %nPagePerSector, align 4
  %6 = load ptr, ptr %pPager, align 8
  %doNotSpill = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 17
  %7 = load i8, ptr %doNotSpill, align 8
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 4
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, ptr %doNotSpill, align 8
  %8 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %pgno, align 8
  %sub = sub i32 %9, 1
  %10 = load i32, ptr %nPagePerSector, align 4
  %sub3 = sub i32 %10, 1
  %not = xor i32 %sub3, -1
  %and = and i32 %sub, %not
  %add = add i32 %and, 1
  store i32 %add, ptr %pg1, align 4
  %11 = load ptr, ptr %pPager, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 21
  %12 = load i32, ptr %dbSize, align 4
  store i32 %12, ptr %nPageCount, align 4
  %13 = load ptr, ptr %pPg.addr, align 8
  %pgno4 = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %pgno4, align 8
  %15 = load i32, ptr %nPageCount, align 4
  %cmp = icmp ugt i32 %14, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %pPg.addr, align 8
  %pgno6 = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %pgno6, align 8
  %18 = load i32, ptr %pg1, align 4
  %sub7 = sub i32 %17, %18
  %add8 = add i32 %sub7, 1
  store i32 %add8, ptr %nPage, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %19 = load i32, ptr %pg1, align 4
  %20 = load i32, ptr %nPagePerSector, align 4
  %add9 = add i32 %19, %20
  %sub10 = sub i32 %add9, 1
  %21 = load i32, ptr %nPageCount, align 4
  %cmp11 = icmp ugt i32 %sub10, %21
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  %22 = load i32, ptr %nPageCount, align 4
  %add14 = add i32 %22, 1
  %23 = load i32, ptr %pg1, align 4
  %sub15 = sub i32 %add14, %23
  store i32 %sub15, ptr %nPage, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else
  %24 = load i32, ptr %nPagePerSector, align 4
  store i32 %24, ptr %nPage, align 4
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %25 = load i32, ptr %ii, align 4
  %26 = load i32, ptr %nPage, align 4
  %cmp18 = icmp slt i32 %25, %26
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %29 = load i32, ptr %pg1, align 4
  %30 = load i32, ptr %ii, align 4
  %add22 = add i32 %29, %30
  store i32 %add22, ptr %pg, align 4
  %31 = load i32, ptr %pg, align 4
  %32 = load ptr, ptr %pPg.addr, align 8
  %pgno23 = getelementptr inbounds nuw %struct.PgHdr, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %pgno23, align 8
  %cmp24 = icmp eq i32 %31, %33
  br i1 %cmp24, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %34 = load ptr, ptr %pPager, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %34, i32 0, i32 29
  %35 = load ptr, ptr %pInJournal, align 8
  %36 = load i32, ptr %pg, align 4
  %call = call i32 @sqlite3BitvecTest(ptr noundef %35, i32 noundef %36)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else45, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false, %for.body
  %37 = load i32, ptr %pg, align 4
  %38 = load i32, ptr @sqlite3PendingByte, align 4
  %39 = load ptr, ptr %pPager, align 8
  %pageSize27 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 47
  %40 = load i32, ptr %pageSize27, align 4
  %div28 = sdiv i32 %38, %40
  %add29 = add nsw i32 %div28, 1
  %cmp30 = icmp ne i32 %37, %add29
  br i1 %cmp30, label %if.then32, label %if.end44

if.then32:                                        ; preds = %if.then26
  %41 = load ptr, ptr %pPager, align 8
  %42 = load i32, ptr %pg, align 4
  %call33 = call i32 @sqlite3PagerGet(ptr noundef %41, i32 noundef %42, ptr noundef %pPage, i32 noundef 0)
  store i32 %call33, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %43, 0
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.then32
  %44 = load ptr, ptr %pPage, align 8
  %call37 = call i32 @pager_write(ptr noundef %44)
  store i32 %call37, ptr %rc, align 4
  %45 = load ptr, ptr %pPage, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %45, i32 0, i32 7
  %46 = load i16, ptr %flags, align 4
  %conv38 = zext i16 %46 to i32
  %and39 = and i32 %conv38, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then36
  store i32 1, ptr %needSync, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then36
  %47 = load ptr, ptr %pPage, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %47)
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then32
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then26
  br label %if.end57

if.else45:                                        ; preds = %lor.lhs.false
  %48 = load ptr, ptr %pPager, align 8
  %49 = load i32, ptr %pg, align 4
  %call46 = call ptr @sqlite3PagerLookup(ptr noundef %48, i32 noundef %49)
  store ptr %call46, ptr %pPage, align 8
  %cmp47 = icmp ne ptr %call46, null
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.else45
  %50 = load ptr, ptr %pPage, align 8
  %flags50 = getelementptr inbounds nuw %struct.PgHdr, ptr %50, i32 0, i32 7
  %51 = load i16, ptr %flags50, align 4
  %conv51 = zext i16 %51 to i32
  %and52 = and i32 %conv51, 8
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then49
  store i32 1, ptr %needSync, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then49
  %52 = load ptr, ptr %pPage, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %52)
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.else45
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %53 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %54 = load i32, ptr %rc, align 4
  %cmp58 = icmp eq i32 %54, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %for.end
  %55 = load i32, ptr %needSync, align 4
  %tobool60 = icmp ne i32 %55, 0
  br i1 %tobool60, label %if.then61, label %if.end79

if.then61:                                        ; preds = %land.lhs.true
  store i32 0, ptr %ii, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc76, %if.then61
  %56 = load i32, ptr %ii, align 4
  %57 = load i32, ptr %nPage, align 4
  %cmp63 = icmp slt i32 %56, %57
  br i1 %cmp63, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond62
  %58 = load ptr, ptr %pPager, align 8
  %59 = load i32, ptr %pg1, align 4
  %60 = load i32, ptr %ii, align 4
  %add67 = add i32 %59, %60
  %call68 = call ptr @sqlite3PagerLookup(ptr noundef %58, i32 noundef %add67)
  store ptr %call68, ptr %pPage66, align 8
  %61 = load ptr, ptr %pPage66, align 8
  %tobool69 = icmp ne ptr %61, null
  br i1 %tobool69, label %if.then70, label %if.end75

if.then70:                                        ; preds = %for.body65
  %62 = load ptr, ptr %pPage66, align 8
  %flags71 = getelementptr inbounds nuw %struct.PgHdr, ptr %62, i32 0, i32 7
  %63 = load i16, ptr %flags71, align 4
  %conv72 = zext i16 %63 to i32
  %or73 = or i32 %conv72, 8
  %conv74 = trunc i32 %or73 to i16
  store i16 %conv74, ptr %flags71, align 4
  %64 = load ptr, ptr %pPage66, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %64)
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %for.body65
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %65 = load i32, ptr %ii, align 4
  %inc77 = add nsw i32 %65, 1
  store i32 %inc77, ptr %ii, align 4
  br label %for.cond62, !llvm.loop !8

for.end78:                                        ; preds = %for.cond62
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %land.lhs.true, %for.end
  %66 = load ptr, ptr %pPager, align 8
  %doNotSpill80 = getelementptr inbounds nuw %struct.Pager, ptr %66, i32 0, i32 17
  %67 = load i8, ptr %doNotSpill80, align 8
  %conv81 = zext i8 %67 to i32
  %and82 = and i32 %conv81, -5
  %conv83 = trunc i32 %and82 to i8
  store i8 %conv83, ptr %doNotSpill80, align 8
  %68 = load i32, ptr %rc, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_write(ptr noundef) #0

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
!8 = distinct !{!8, !7}
