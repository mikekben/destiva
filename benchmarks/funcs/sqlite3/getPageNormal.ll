; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.sqlite3_file = type { ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @addToSavepointBitvecs(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #1

; Function Attrs: nounwind uwtable
define hidden i32 @getPageNormal(ptr noundef %pPager, i32 noundef %pgno, ptr noundef %ppPage, i32 noundef %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPg = alloca ptr, align 8
  %noContent = alloca i8, align 1
  %pBase = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %pgno.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 56268)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 58
  %2 = load ptr, ptr %pPCache, align 8
  %3 = load i32, ptr %pgno.addr, align 4
  %call1 = call ptr @sqlite3PcacheFetch(ptr noundef %2, i32 noundef %3, i32 noundef 3)
  store ptr %call1, ptr %pBase, align 8
  %4 = load ptr, ptr %pBase, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %pPg, align 8
  %5 = load ptr, ptr %pPager.addr, align 8
  %pPCache4 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 58
  %6 = load ptr, ptr %pPCache4, align 8
  %7 = load i32, ptr %pgno.addr, align 4
  %call5 = call i32 @sqlite3PcacheFetchStress(ptr noundef %6, i32 noundef %7, ptr noundef %pBase)
  store i32 %call5, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  br label %pager_acquire_err

if.end8:                                          ; preds = %if.then3
  %9 = load ptr, ptr %pBase, align 8
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 7, ptr %rc, align 4
  br label %pager_acquire_err

if.end11:                                         ; preds = %if.end8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %10 = load ptr, ptr %pPager.addr, align 8
  %pPCache13 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 58
  %11 = load ptr, ptr %pPCache13, align 8
  %12 = load i32, ptr %pgno.addr, align 4
  %13 = load ptr, ptr %pBase, align 8
  %call14 = call ptr @sqlite3PcacheFetchFinish(ptr noundef %11, i32 noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %ppPage.addr, align 8
  store ptr %call14, ptr %14, align 8
  store ptr %call14, ptr %pPg, align 8
  %15 = load i32, ptr %flags.addr, align 4
  %and = and i32 %15, 1
  %cmp15 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp15 to i32
  %conv16 = trunc i32 %conv to i8
  store i8 %conv16, ptr %noContent, align 1
  %16 = load ptr, ptr %pPg, align 8
  %pPager17 = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %pPager17, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end12
  %18 = load i8, ptr %noContent, align 1
  %tobool18 = icmp ne i8 %18, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %pPager.addr, align 8
  %aStat = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x i32], ptr %aStat, i64 0, i64 0
  %20 = load i32, ptr %arrayidx, align 8
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %arrayidx, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end12
  %21 = load i32, ptr %pgno.addr, align 4
  %cmp20 = icmp ugt i32 %21, 2147483647
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i32, ptr %pgno.addr, align 4
  %23 = load i32, ptr @sqlite3PendingByte, align 4
  %24 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 47
  %25 = load i32, ptr %pageSize, align 4
  %div = sdiv i32 %23, %25
  %add = add nsw i32 %div, 1
  %cmp22 = icmp eq i32 %22, %add
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false, %if.else
  %call25 = call i32 @sqlite3CorruptError(i32 noundef 56300)
  store i32 %call25, ptr %rc, align 4
  br label %pager_acquire_err

if.end26:                                         ; preds = %lor.lhs.false
  %26 = load ptr, ptr %pPager.addr, align 8
  %27 = load ptr, ptr %pPg, align 8
  %pPager27 = getelementptr inbounds nuw %struct.PgHdr, ptr %27, i32 0, i32 5
  store ptr %26, ptr %pPager27, align 8
  %28 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 30
  %29 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pMethods, align 8
  %cmp28 = icmp ne ptr %30, null
  br i1 %cmp28, label %lor.lhs.false30, label %if.then36

lor.lhs.false30:                                  ; preds = %if.end26
  %31 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %dbSize, align 4
  %33 = load i32, ptr %pgno.addr, align 4
  %cmp31 = icmp ult i32 %32, %33
  br i1 %cmp31, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %34 = load i8, ptr %noContent, align 1
  %conv34 = zext i8 %34 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %if.then36, label %if.else52

if.then36:                                        ; preds = %lor.lhs.false33, %lor.lhs.false30, %if.end26
  %35 = load i32, ptr %pgno.addr, align 4
  %36 = load ptr, ptr %pPager.addr, align 8
  %mxPgno = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 48
  %37 = load i32, ptr %mxPgno, align 8
  %cmp37 = icmp ugt i32 %35, %37
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  store i32 13, ptr %rc, align 4
  br label %pager_acquire_err

if.end40:                                         ; preds = %if.then36
  %38 = load i8, ptr %noContent, align 1
  %tobool41 = icmp ne i8 %38, 0
  br i1 %tobool41, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end40
  call void @sqlite3BeginBenignMalloc()
  %39 = load i32, ptr %pgno.addr, align 4
  %40 = load ptr, ptr %pPager.addr, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 22
  %41 = load i32, ptr %dbOrigSize, align 8
  %cmp43 = icmp ule i32 %39, %41
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then42
  %42 = load ptr, ptr %pPager.addr, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 29
  %43 = load ptr, ptr %pInJournal, align 8
  %44 = load i32, ptr %pgno.addr, align 4
  %call46 = call i32 @sqlite3BitvecSet(ptr noundef %43, i32 noundef %44)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42
  %45 = load ptr, ptr %pPager.addr, align 8
  %46 = load i32, ptr %pgno.addr, align 4
  %call48 = call i32 @addToSavepointBitvecs(ptr noundef %45, i32 noundef %46)
  call void @sqlite3EndBenignMalloc()
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end40
  %47 = load ptr, ptr %pPg, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %pData, align 8
  %49 = load ptr, ptr %pPager.addr, align 8
  %pageSize50 = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 47
  %50 = load i32, ptr %pageSize50, align 4
  %conv51 = sext i32 %50 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %48, i8 0, i64 %conv51, i1 false)
  br label %if.end61

if.else52:                                        ; preds = %lor.lhs.false33
  %51 = load ptr, ptr %pPager.addr, align 8
  %aStat53 = getelementptr inbounds nuw %struct.Pager, ptr %51, i32 0, i32 54
  %arrayidx54 = getelementptr inbounds [4 x i32], ptr %aStat53, i64 0, i64 1
  %52 = load i32, ptr %arrayidx54, align 4
  %inc55 = add nsw i32 %52, 1
  store i32 %inc55, ptr %arrayidx54, align 4
  %53 = load ptr, ptr %pPg, align 8
  %call56 = call i32 @readDbPage(ptr noundef %53)
  store i32 %call56, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp57 = icmp ne i32 %54, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.else52
  br label %pager_acquire_err

if.end60:                                         ; preds = %if.else52
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end49
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  store i32 0, ptr %retval, align 4
  br label %return

pager_acquire_err:                                ; preds = %if.then59, %if.then39, %if.then24, %if.then10, %if.then7
  %55 = load ptr, ptr %pPg, align 8
  %tobool63 = icmp ne ptr %55, null
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %pager_acquire_err
  %56 = load ptr, ptr %pPg, align 8
  call void @sqlite3PcacheDrop(ptr noundef %56)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %pager_acquire_err
  %57 = load ptr, ptr %pPager.addr, align 8
  call void @pagerUnlockIfUnused(ptr noundef %57)
  %58 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %58, align 8
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.end62, %if.then19, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PcacheFetch(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PcacheFetchFinish(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheFetchStress(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @readDbPage(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheDrop(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @pagerUnlockIfUnused(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
