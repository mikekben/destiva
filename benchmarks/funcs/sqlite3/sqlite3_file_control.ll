; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_file_control(ptr noundef %db, ptr noundef %zDbName, i32 noundef %op, ptr noundef %pArg) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zDbName.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBtree = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %fd = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDbName, ptr %zDbName.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pArg, ptr %pArg.addr, align 8
  store i32 1, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %zDbName.addr, align 8
  %call = call ptr @sqlite3DbNameToBtree(ptr noundef %2, ptr noundef %3)
  store ptr %call, ptr %pBtree, align 8
  %4 = load ptr, ptr %pBtree, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBtree, align 8
  call void @sqlite3BtreeEnter(ptr noundef %5)
  %6 = load ptr, ptr %pBtree, align 8
  %call1 = call ptr @sqlite3BtreePager(ptr noundef %6)
  store ptr %call1, ptr %pPager, align 8
  %7 = load ptr, ptr %pPager, align 8
  %call2 = call ptr @sqlite3PagerFile(ptr noundef %7)
  store ptr %call2, ptr %fd, align 8
  %8 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %8, 7
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %fd, align 8
  %10 = load ptr, ptr %pArg.addr, align 8
  store ptr %9, ptr %10, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then
  %11 = load i32, ptr %op.addr, align 4
  %cmp4 = icmp eq i32 %11, 27
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %12 = load ptr, ptr %pPager, align 8
  %call6 = call ptr @sqlite3PagerVfs(ptr noundef %12)
  %13 = load ptr, ptr %pArg.addr, align 8
  store ptr %call6, ptr %13, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end18

if.else7:                                         ; preds = %if.else
  %14 = load i32, ptr %op.addr, align 4
  %cmp8 = icmp eq i32 %14, 28
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else7
  %15 = load ptr, ptr %pPager, align 8
  %call10 = call ptr @sqlite3PagerJrnlFile(ptr noundef %15)
  %16 = load ptr, ptr %pArg.addr, align 8
  store ptr %call10, ptr %16, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end17

if.else11:                                        ; preds = %if.else7
  %17 = load i32, ptr %op.addr, align 4
  %cmp12 = icmp eq i32 %17, 35
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else11
  %18 = load ptr, ptr %pPager, align 8
  %call14 = call i32 @sqlite3PagerDataVersion(ptr noundef %18)
  %19 = load ptr, ptr %pArg.addr, align 8
  store i32 %call14, ptr %19, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end

if.else15:                                        ; preds = %if.else11
  %20 = load ptr, ptr %fd, align 8
  %21 = load i32, ptr %op.addr, align 4
  %22 = load ptr, ptr %pArg.addr, align 8
  %call16 = call i32 @sqlite3OsFileControl(ptr noundef %20, i32 noundef %21, ptr noundef %22)
  store i32 %call16, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then3
  %23 = load ptr, ptr %pBtree, align 8
  call void @sqlite3BtreeLeave(ptr noundef %23)
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  %24 = load ptr, ptr %db.addr, align 8
  %mutex21 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %mutex21, align 8
  call void @sqlite3_mutex_leave(ptr noundef %25)
  %26 = load i32, ptr %rc, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbNameToBtree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerVfs(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerJrnlFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerDataVersion(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileControl(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
