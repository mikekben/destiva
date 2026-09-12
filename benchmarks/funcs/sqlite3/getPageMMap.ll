; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalFindFrame(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @getPageMMap(ptr noundef %pPager, i32 noundef %pgno, ptr noundef %ppPage, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPg = alloca ptr, align 8
  %iFrame = alloca i32, align 4
  %bMmapOk = alloca i32, align 4
  %pData = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pPg, align 8
  store i32 0, ptr %iFrame, align 4
  %0 = load i32, ptr %pgno.addr, align 4
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 13
  %2 = load i8, ptr %eState, align 4
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i32, ptr %flags.addr, align 4
  %and = and i32 %3, 2
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %4 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %5 = phi i1 [ false, %entry ], [ %4, %lor.end ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, ptr %bMmapOk, align 4
  %6 = load i32, ptr %pgno.addr, align 4
  %cmp3 = icmp ule i32 %6, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %7 = load i32, ptr %pgno.addr, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @sqlite3CorruptError(i32 noundef 56382)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %land.end
  %8 = load i32, ptr %bMmapOk, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end18

land.lhs.true8:                                   ; preds = %if.end
  %9 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 59
  %10 = load ptr, ptr %pWal, align 8
  %cmp9 = icmp ne ptr %10, null
  br i1 %cmp9, label %if.then11, label %if.end18

if.then11:                                        ; preds = %land.lhs.true8
  %11 = load ptr, ptr %pPager.addr, align 8
  %pWal12 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 59
  %12 = load ptr, ptr %pWal12, align 8
  %13 = load i32, ptr %pgno.addr, align 4
  %call13 = call i32 @sqlite3WalFindFrame(ptr noundef %12, i32 noundef %13, ptr noundef %iFrame)
  store i32 %call13, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %14, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then11
  %15 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %15, align 8
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %land.lhs.true8, %if.end
  %17 = load i32, ptr %bMmapOk, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %land.lhs.true20, label %if.end62

land.lhs.true20:                                  ; preds = %if.end18
  %18 = load i32, ptr %iFrame, align 4
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %if.then23, label %if.end62

if.then23:                                        ; preds = %land.lhs.true20
  store ptr null, ptr %pData, align 8
  %19 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 30
  %20 = load ptr, ptr %fd, align 8
  %21 = load i32, ptr %pgno.addr, align 4
  %sub = sub i32 %21, 1
  %conv24 = zext i32 %sub to i64
  %22 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 47
  %23 = load i32, ptr %pageSize, align 4
  %conv25 = sext i32 %23 to i64
  %mul = mul nsw i64 %conv24, %conv25
  %24 = load ptr, ptr %pPager.addr, align 8
  %pageSize26 = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 47
  %25 = load i32, ptr %pageSize26, align 4
  %call27 = call i32 @sqlite3OsFetch(ptr noundef %20, i64 noundef %mul, i32 noundef %25, ptr noundef %pData)
  store i32 %call27, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp28 = icmp eq i32 %26, 0
  br i1 %cmp28, label %land.lhs.true30, label %if.end57

land.lhs.true30:                                  ; preds = %if.then23
  %27 = load ptr, ptr %pData, align 8
  %tobool31 = icmp ne ptr %27, null
  br i1 %tobool31, label %if.then32, label %if.end57

if.then32:                                        ; preds = %land.lhs.true30
  %28 = load ptr, ptr %pPager.addr, align 8
  %eState33 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 13
  %29 = load i8, ptr %eState33, align 4
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp sgt i32 %conv34, 1
  br i1 %cmp35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32
  %30 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 9
  %31 = load i8, ptr %tempFile, align 8
  %conv37 = zext i8 %31 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %lor.lhs.false, %if.then32
  %32 = load ptr, ptr %pPager.addr, align 8
  %33 = load i32, ptr %pgno.addr, align 4
  %call40 = call ptr @sqlite3PagerLookup(ptr noundef %32, i32 noundef %33)
  store ptr %call40, ptr %pPg, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %lor.lhs.false
  %34 = load ptr, ptr %pPg, align 8
  %cmp42 = icmp eq ptr %34, null
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end41
  %35 = load ptr, ptr %pPager.addr, align 8
  %36 = load i32, ptr %pgno.addr, align 4
  %37 = load ptr, ptr %pData, align 8
  %call45 = call i32 @pagerAcquireMapPage(ptr noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %pPg)
  store i32 %call45, ptr %rc, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end41
  %38 = load ptr, ptr %pPager.addr, align 8
  %fd46 = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 30
  %39 = load ptr, ptr %fd46, align 8
  %40 = load i32, ptr %pgno.addr, align 4
  %sub47 = sub i32 %40, 1
  %conv48 = zext i32 %sub47 to i64
  %41 = load ptr, ptr %pPager.addr, align 8
  %pageSize49 = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 47
  %42 = load i32, ptr %pageSize49, align 4
  %conv50 = sext i32 %42 to i64
  %mul51 = mul nsw i64 %conv48, %conv50
  %43 = load ptr, ptr %pData, align 8
  %call52 = call i32 @sqlite3OsUnfetch(ptr noundef %39, i64 noundef %mul51, ptr noundef %43)
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then44
  %44 = load ptr, ptr %pPg, align 8
  %tobool54 = icmp ne ptr %44, null
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53
  %45 = load ptr, ptr %pPg, align 8
  %46 = load ptr, ptr %ppPage.addr, align 8
  store ptr %45, ptr %46, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end53
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true30, %if.then23
  %47 = load i32, ptr %rc, align 4
  %cmp58 = icmp ne i32 %47, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  %48 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %48, align 8
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.end57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true20, %if.end18
  %50 = load ptr, ptr %pPager.addr, align 8
  %51 = load i32, ptr %pgno.addr, align 4
  %52 = load ptr, ptr %ppPage.addr, align 8
  %53 = load i32, ptr %flags.addr, align 4
  %call63 = call i32 @getPageNormal(ptr noundef %50, i32 noundef %51, ptr noundef %52, i32 noundef %53)
  store i32 %call63, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %if.then60, %if.then55, %if.then16, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getPageNormal(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFetch(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerAcquireMapPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
