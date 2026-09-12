; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sqlite3_file = type { ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_backup_step(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLastPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_backup_finish(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileControl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCopyFile(ptr noundef %pTo, ptr noundef %pFrom) #0 {
entry:
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pFd = alloca ptr, align 8
  %b = alloca %struct.sqlite3_backup, align 8
  %nByte = alloca i64, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pTo.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %0)
  %1 = load ptr, ptr %pFrom.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %1)
  %2 = load ptr, ptr %pTo.addr, align 8
  %call = call ptr @sqlite3BtreePager(ptr noundef %2)
  %call1 = call ptr @sqlite3PagerFile(ptr noundef %call)
  store ptr %call1, ptr %pFd, align 8
  %3 = load ptr, ptr %pFd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pFrom.addr, align 8
  %call2 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %5)
  %conv = sext i32 %call2 to i64
  %6 = load ptr, ptr %pFrom.addr, align 8
  %call3 = call i32 @sqlite3BtreeLastPage(ptr noundef %6)
  %conv4 = zext i32 %call3 to i64
  %mul = mul nsw i64 %conv, %conv4
  store i64 %mul, ptr %nByte, align 8
  %7 = load ptr, ptr %pFd, align 8
  %call5 = call i32 @sqlite3OsFileControl(ptr noundef %7, i32 noundef 11, ptr noundef %nByte)
  store i32 %call5, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 12
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %9 = load i32, ptr %rc, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %copy_finished

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.memset.p0.i64(ptr align 8 %b, i8 0, i64 72, i1 false)
  %10 = load ptr, ptr %pFrom.addr, align 8
  %db = getelementptr inbounds nuw %struct.Btree, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db, align 8
  %pSrcDb = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %b, i32 0, i32 5
  store ptr %11, ptr %pSrcDb, align 8
  %12 = load ptr, ptr %pFrom.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %b, i32 0, i32 6
  store ptr %12, ptr %pSrc, align 8
  %13 = load ptr, ptr %pTo.addr, align 8
  %pDest = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %b, i32 0, i32 1
  store ptr %13, ptr %pDest, align 8
  %iNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %b, i32 0, i32 4
  store i32 1, ptr %iNext, align 8
  %call12 = call i32 @sqlite3_backup_step(ptr noundef %b, i32 noundef 2147483647)
  %call13 = call i32 @sqlite3_backup_finish(ptr noundef %b)
  store i32 %call13, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end11
  %15 = load ptr, ptr %pTo.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %16, i32 0, i32 10
  %17 = load i16, ptr %btsFlags, align 2
  %conv17 = zext i16 %17 to i32
  %and = and i32 %conv17, -3
  %conv18 = trunc i32 %and to i16
  store i16 %conv18, ptr %btsFlags, align 2
  br label %if.end21

if.else:                                          ; preds = %if.end11
  %pDest19 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %b, i32 0, i32 1
  %18 = load ptr, ptr %pDest19, align 8
  %call20 = call ptr @sqlite3BtreePager(ptr noundef %18)
  call void @sqlite3PagerClearCache(ptr noundef %call20)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  br label %copy_finished

copy_finished:                                    ; preds = %if.end21, %if.then9
  %19 = load ptr, ptr %pFrom.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %19)
  %20 = load ptr, ptr %pTo.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %20)
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerClearCache(ptr noundef) #0

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
