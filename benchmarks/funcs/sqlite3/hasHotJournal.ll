; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerLockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerUnlockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @hasHotJournal(ptr noundef %pPager, ptr noundef %pExists) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pExists.addr = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  %exists = alloca i32, align 4
  %jrnlOpen = alloca i32, align 4
  %locked = alloca i32, align 4
  %nPage = alloca i32, align 4
  %f = alloca i32, align 4
  %first = alloca i8, align 1
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pExists, ptr %pExists.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs1, align 8
  store ptr %1, ptr %pVfs, align 8
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %exists, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 31
  %3 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %4, null
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  store i32 %lnot.ext, ptr %jrnlOpen, align 4
  %5 = load ptr, ptr %pExists.addr, align 8
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %jrnlOpen, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pVfs, align 8
  %8 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 51
  %9 = load ptr, ptr %zJournal, align 8
  %call = call i32 @sqlite3OsAccess(ptr noundef %7, ptr noundef %9, i32 noundef 0, ptr noundef %exists)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, ptr %exists, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.then5, label %if.end56

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %locked, align 4
  %12 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 30
  %13 = load ptr, ptr %fd, align 8
  %call6 = call i32 @sqlite3OsCheckReservedLock(ptr noundef %13, ptr noundef %locked)
  store i32 %call6, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end55

land.lhs.true8:                                   ; preds = %if.then5
  %15 = load i32, ptr %locked, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.end55, label %if.then10

if.then10:                                        ; preds = %land.lhs.true8
  %16 = load ptr, ptr %pPager.addr, align 8
  %call11 = call i32 @pagerPagecount(ptr noundef %16, ptr noundef %nPage)
  store i32 %call11, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then13, label %if.end54

if.then13:                                        ; preds = %if.then10
  %18 = load i32, ptr %nPage, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %if.then13
  %19 = load i32, ptr %jrnlOpen, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.else, label %if.then17

if.then17:                                        ; preds = %land.lhs.true15
  call void @sqlite3BeginBenignMalloc()
  %20 = load ptr, ptr %pPager.addr, align 8
  %call18 = call i32 @pagerLockDb(ptr noundef %20, i32 noundef 2)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.then17
  %21 = load ptr, ptr %pVfs, align 8
  %22 = load ptr, ptr %pPager.addr, align 8
  %zJournal21 = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 51
  %23 = load ptr, ptr %zJournal21, align 8
  %call22 = call i32 @sqlite3OsDelete(ptr noundef %21, ptr noundef %23, i32 noundef 0)
  %24 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %exclusiveMode, align 8
  %tobool23 = icmp ne i8 %25, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.then20
  %26 = load ptr, ptr %pPager.addr, align 8
  %call25 = call i32 @pagerUnlockDb(ptr noundef %26, i32 noundef 1)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then17
  call void @sqlite3EndBenignMalloc()
  br label %if.end53

if.else:                                          ; preds = %land.lhs.true15, %if.then13
  %27 = load i32, ptr %jrnlOpen, align 4
  %tobool28 = icmp ne i32 %27, 0
  br i1 %tobool28, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.else
  store i32 2049, ptr %f, align 4
  %28 = load ptr, ptr %pVfs, align 8
  %29 = load ptr, ptr %pPager.addr, align 8
  %zJournal30 = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 51
  %30 = load ptr, ptr %zJournal30, align 8
  %31 = load ptr, ptr %pPager.addr, align 8
  %jfd31 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 31
  %32 = load ptr, ptr %jfd31, align 8
  %33 = load i32, ptr %f, align 4
  %call32 = call i32 @sqlite3OsOpen(ptr noundef %28, ptr noundef %30, ptr noundef %32, i32 noundef %33, ptr noundef %f)
  store i32 %call32, ptr %rc, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else
  %34 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %34, 0
  br i1 %cmp34, label %if.then35, label %if.else47

if.then35:                                        ; preds = %if.end33
  store i8 0, ptr %first, align 1
  %35 = load ptr, ptr %pPager.addr, align 8
  %jfd36 = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 31
  %36 = load ptr, ptr %jfd36, align 8
  %call37 = call i32 @sqlite3OsRead(ptr noundef %36, ptr noundef %first, i32 noundef 1, i64 noundef 0)
  store i32 %call37, ptr %rc, align 4
  %37 = load i32, ptr %rc, align 4
  %cmp38 = icmp eq i32 %37, 522
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then35
  store i32 0, ptr %rc, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then35
  %38 = load i32, ptr %jrnlOpen, align 4
  %tobool41 = icmp ne i32 %38, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end40
  %39 = load ptr, ptr %pPager.addr, align 8
  %jfd43 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 31
  %40 = load ptr, ptr %jfd43, align 8
  call void @sqlite3OsClose(ptr noundef %40)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %41 = load i8, ptr %first, align 1
  %conv = zext i8 %41 to i32
  %cmp45 = icmp ne i32 %conv, 0
  %conv46 = zext i1 %cmp45 to i32
  %42 = load ptr, ptr %pExists.addr, align 8
  store i32 %conv46, ptr %42, align 4
  br label %if.end52

if.else47:                                        ; preds = %if.end33
  %43 = load i32, ptr %rc, align 4
  %cmp48 = icmp eq i32 %43, 14
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.else47
  %44 = load ptr, ptr %pExists.addr, align 8
  store i32 1, ptr %44, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.else47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end44
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end27
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then10
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %land.lhs.true8, %if.then5
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %land.lhs.true, %if.end
  %45 = load i32, ptr %rc, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerPagecount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsCheckReservedLock(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
