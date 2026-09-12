; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @relocatePage(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClearTable(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freePage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeDropTable(ptr noundef %p, i32 noundef %iTable, ptr noundef %piMoved) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %piMoved.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %maxRootPgno = alloca i32, align 4
  %pMove = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  store ptr %piMoved, ptr %piMoved.addr, align 8
  store ptr null, ptr %pPage, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load i32, ptr %iTable.addr, align 4
  %3 = load ptr, ptr %pBt, align 8
  %call = call i32 @btreePagecount(ptr noundef %3)
  %cmp = icmp ugt i32 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @sqlite3CorruptError(i32 noundef 72694)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pBt, align 8
  %5 = load i32, ptr %iTable.addr, align 4
  %call3 = call i32 @btreeGetPage(ptr noundef %4, i32 noundef %5, ptr noundef %pPage, i32 noundef 0)
  store i32 %call3, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %iTable.addr, align 4
  %call6 = call i32 @sqlite3BtreeClearTable(ptr noundef %8, i32 noundef %9, ptr noundef null)
  store i32 %call6, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %11)
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %13 = load ptr, ptr %piMoved.addr, align 8
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %14, i32 0, i32 5
  %15 = load i8, ptr %autoVacuum, align 1
  %tobool10 = icmp ne i8 %15, 0
  br i1 %tobool10, label %if.then11, label %if.else35

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeGetMeta(ptr noundef %16, i32 noundef 4, ptr noundef %maxRootPgno)
  %17 = load i32, ptr %iTable.addr, align 4
  %18 = load i32, ptr %maxRootPgno, align 4
  %cmp12 = icmp eq i32 %17, %18
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %19 = load ptr, ptr %pPage, align 8
  call void @freePage(ptr noundef %19, ptr noundef %rc)
  %20 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %20)
  %21 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %21, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then13
  br label %if.end29

if.else:                                          ; preds = %if.then11
  %23 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %23)
  %24 = load ptr, ptr %pBt, align 8
  %25 = load i32, ptr %maxRootPgno, align 4
  %call17 = call i32 @btreeGetPage(ptr noundef %24, i32 noundef %25, ptr noundef %pMove, i32 noundef 0)
  store i32 %call17, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %26, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %28 = load ptr, ptr %pBt, align 8
  %29 = load ptr, ptr %pMove, align 8
  %30 = load i32, ptr %iTable.addr, align 4
  %call21 = call i32 @relocatePage(ptr noundef %28, ptr noundef %29, i8 noundef zeroext 1, i32 noundef 0, i32 noundef %30, i32 noundef 0)
  store i32 %call21, ptr %rc, align 4
  %31 = load ptr, ptr %pMove, align 8
  call void @releasePage(ptr noundef %31)
  %32 = load i32, ptr %rc, align 4
  %cmp22 = icmp ne i32 %32, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %33 = load i32, ptr %rc, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  store ptr null, ptr %pMove, align 8
  %34 = load ptr, ptr %pBt, align 8
  %35 = load i32, ptr %maxRootPgno, align 4
  %call25 = call i32 @btreeGetPage(ptr noundef %34, i32 noundef %35, ptr noundef %pMove, i32 noundef 0)
  store i32 %call25, ptr %rc, align 4
  %36 = load ptr, ptr %pMove, align 8
  call void @freePage(ptr noundef %36, ptr noundef %rc)
  %37 = load ptr, ptr %pMove, align 8
  call void @releasePage(ptr noundef %37)
  %38 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %38, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %39 = load i32, ptr %rc, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %40 = load i32, ptr %maxRootPgno, align 4
  %41 = load ptr, ptr %piMoved.addr, align 8
  store i32 %40, ptr %41, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end16
  %42 = load i32, ptr %maxRootPgno, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %maxRootPgno, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end29
  %43 = load i32, ptr %maxRootPgno, align 4
  %44 = load i32, ptr @sqlite3PendingByte, align 4
  %45 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %45, i32 0, i32 15
  %46 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %44, %46
  %add = add i32 %div, 1
  %cmp30 = icmp eq i32 %43, %add
  br i1 %cmp30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %47 = load ptr, ptr %pBt, align 8
  %48 = load i32, ptr %maxRootPgno, align 4
  %call31 = call i32 @ptrmapPageno(ptr noundef %47, i32 noundef %48)
  %49 = load i32, ptr %maxRootPgno, align 4
  %cmp32 = icmp eq i32 %call31, %49
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %50 = phi i1 [ true, %while.cond ], [ %cmp32, %lor.rhs ]
  br i1 %50, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %51 = load i32, ptr %maxRootPgno, align 4
  %dec33 = add i32 %51, -1
  store i32 %dec33, ptr %maxRootPgno, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %52 = load ptr, ptr %p.addr, align 8
  %53 = load i32, ptr %maxRootPgno, align 4
  %call34 = call i32 @sqlite3BtreeUpdateMeta(ptr noundef %52, i32 noundef 4, i32 noundef %53)
  store i32 %call34, ptr %rc, align 4
  br label %if.end36

if.else35:                                        ; preds = %if.end9
  %54 = load ptr, ptr %pPage, align 8
  call void @freePage(ptr noundef %54, ptr noundef %rc)
  %55 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %55)
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %while.end
  %56 = load i32, ptr %rc, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then27, %if.then23, %if.then19, %if.then15, %if.then8, %if.then4, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

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
