; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerSetPagesize(ptr noundef %pPager, ptr noundef %pPageSize, i32 noundef %nReserve) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pPageSize.addr = alloca ptr, align 8
  %nReserve.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pageSize = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %nByte = alloca i64, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pPageSize, ptr %pPageSize.addr, align 8
  store i32 %nReserve, ptr %nReserve.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPageSize.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %pageSize, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %memDb, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 21
  %5 = load i32, ptr %dbSize, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 58
  %7 = load ptr, ptr %pPCache, align 8
  %call = call i32 @sqlite3PcacheRefCount(ptr noundef %7)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %land.lhs.true6, label %if.end46

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i32, ptr %pageSize, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true7, label %if.end46

land.lhs.true7:                                   ; preds = %land.lhs.true6
  %9 = load i32, ptr %pageSize, align 4
  %10 = load ptr, ptr %pPager.addr, align 8
  %pageSize8 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 47
  %11 = load i32, ptr %pageSize8, align 4
  %cmp9 = icmp ne i32 %9, %11
  br i1 %cmp9, label %if.then, label %if.end46

if.then:                                          ; preds = %land.lhs.true7
  store ptr null, ptr %pNew, align 8
  store i64 0, ptr %nByte, align 8
  %12 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 13
  %13 = load i8, ptr %eState, align 4
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %if.then
  %14 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 30
  %15 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pMethods, align 8
  %cmp15 = icmp ne ptr %16, null
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %land.lhs.true14
  %17 = load ptr, ptr %pPager.addr, align 8
  %fd18 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 30
  %18 = load ptr, ptr %fd18, align 8
  %call19 = call i32 @sqlite3OsFileSize(ptr noundef %18, ptr noundef %nByte)
  store i32 %call19, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %land.lhs.true14, %if.then
  %19 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %19, 0
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end
  %20 = load i32, ptr %pageSize, align 4
  %add = add i32 %20, 8
  %call23 = call ptr @sqlite3PageMalloc(i32 noundef %add)
  store ptr %call23, ptr %pNew, align 8
  %21 = load ptr, ptr %pNew, align 8
  %tobool24 = icmp ne ptr %21, null
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then22
  store i32 7, ptr %rc, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then22
  %22 = load ptr, ptr %pNew, align 8
  %23 = load i32, ptr %pageSize, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %22, i64 %idx.ext
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 8, i1 false)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %24 = load i32, ptr %rc, align 4
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end27
  %25 = load ptr, ptr %pPager.addr, align 8
  call void @pager_reset(ptr noundef %25)
  %26 = load ptr, ptr %pPager.addr, align 8
  %pPCache31 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 58
  %27 = load ptr, ptr %pPCache31, align 8
  %28 = load i32, ptr %pageSize, align 4
  %call32 = call i32 @sqlite3PcacheSetPageSize(ptr noundef %27, i32 noundef %28)
  store i32 %call32, ptr %rc, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27
  %29 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %29, 0
  br i1 %cmp34, label %if.then36, label %if.else44

if.then36:                                        ; preds = %if.end33
  %30 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 57
  %31 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3PageFree(ptr noundef %31)
  %32 = load ptr, ptr %pNew, align 8
  %33 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace37 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 57
  store ptr %32, ptr %pTmpSpace37, align 8
  %34 = load i64, ptr %nByte, align 8
  %35 = load i32, ptr %pageSize, align 4
  %conv38 = zext i32 %35 to i64
  %add39 = add nsw i64 %34, %conv38
  %sub = sub nsw i64 %add39, 1
  %36 = load i32, ptr %pageSize, align 4
  %conv40 = zext i32 %36 to i64
  %div = sdiv i64 %sub, %conv40
  %conv41 = trunc i64 %div to i32
  %37 = load ptr, ptr %pPager.addr, align 8
  %dbSize42 = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 21
  store i32 %conv41, ptr %dbSize42, align 4
  %38 = load i32, ptr %pageSize, align 4
  %39 = load ptr, ptr %pPager.addr, align 8
  %pageSize43 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 47
  store i32 %38, ptr %pageSize43, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.end33
  %40 = load ptr, ptr %pNew, align 8
  call void @sqlite3PageFree(ptr noundef %40)
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then36
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true7, %land.lhs.true6, %land.lhs.true, %lor.lhs.false
  %41 = load ptr, ptr %pPager.addr, align 8
  %pageSize47 = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 47
  %42 = load i32, ptr %pageSize47, align 4
  %43 = load ptr, ptr %pPageSize.addr, align 8
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp48 = icmp eq i32 %44, 0
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %if.end46
  %45 = load i32, ptr %nReserve.addr, align 4
  %cmp51 = icmp slt i32 %45, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.then50
  %46 = load ptr, ptr %pPager.addr, align 8
  %nReserve54 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 44
  %47 = load i16, ptr %nReserve54, align 2
  %conv55 = sext i16 %47 to i32
  store i32 %conv55, ptr %nReserve.addr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then50
  %48 = load i32, ptr %nReserve.addr, align 4
  %conv57 = trunc i32 %48 to i16
  %49 = load ptr, ptr %pPager.addr, align 8
  %nReserve58 = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 44
  store i16 %conv57, ptr %nReserve58, align 2
  %50 = load ptr, ptr %pPager.addr, align 8
  call void @pagerFixMaplimit(ptr noundef %50)
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %if.end46
  %51 = load i32, ptr %rc, align 4
  ret i32 %51
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PageFree(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheSetPageSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheRefCount(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @pager_reset(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @pagerFixMaplimit(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PageMalloc(i32 noundef) #1

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
