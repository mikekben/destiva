; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @incrVacuumStep(ptr noundef %pBt, i32 noundef %nFin, i32 noundef %iLastPg, i32 noundef %bCommit) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %nFin.addr = alloca i32, align 4
  %iLastPg.addr = alloca i32, align 4
  %bCommit.addr = alloca i32, align 4
  %nFreeList = alloca i32, align 4
  %rc = alloca i32, align 4
  %eType = alloca i8, align 1
  %iPtrPage = alloca i32, align 4
  %iFreePg = alloca i32, align 4
  %pFreePg = alloca ptr, align 8
  %iFreePg27 = alloca i32, align 4
  %pLastPg = alloca ptr, align 8
  %eMode = alloca i8, align 1
  %iNear = alloca i32, align 4
  %pFreePg37 = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %nFin, ptr %nFin.addr, align 4
  store i32 %iLastPg, ptr %iLastPg.addr, align 4
  store i32 %bCommit, ptr %bCommit.addr, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %1 = load i32, ptr %iLastPg.addr, align 4
  %call = call i32 @ptrmapPageno(ptr noundef %0, i32 noundef %1)
  %2 = load i32, ptr %iLastPg.addr, align 4
  %cmp = icmp eq i32 %call, %2
  br i1 %cmp, label %if.end51, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %iLastPg.addr, align 4
  %4 = load i32, ptr @sqlite3PendingByte, align 4
  %5 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 15
  %6 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %4, %6
  %add = add i32 %div, 1
  %cmp1 = icmp ne i32 %3, %add
  br i1 %cmp1, label %if.then, label %if.end51

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pBt.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 19
  %9 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 36
  %call2 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call2, ptr %nFreeList, align 4
  %10 = load i32, ptr %nFreeList, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 101, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %pBt.addr, align 8
  %12 = load i32, ptr %iLastPg.addr, align 4
  %call5 = call i32 @ptrmapGet(ptr noundef %11, i32 noundef %12, ptr noundef %eType, ptr noundef %iPtrPage)
  store i32 %call5, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %15 = load i8, ptr %eType, align 1
  %conv = zext i8 %15 to i32
  %cmp9 = icmp eq i32 %conv, 1
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @sqlite3CorruptError(i32 noundef 67151)
  store i32 %call12, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %16 = load i8, ptr %eType, align 1
  %conv14 = zext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %17 = load i32, ptr %bCommit.addr, align 4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.then17
  %18 = load ptr, ptr %pBt.addr, align 8
  %19 = load i32, ptr %iLastPg.addr, align 4
  %call21 = call i32 @allocateBtreePage(ptr noundef %18, ptr noundef %pFreePg, ptr noundef %iFreePg, i32 noundef %19, i8 noundef zeroext 1)
  store i32 %call21, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp22 = icmp ne i32 %20, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  %21 = load i32, ptr %rc, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then20
  %22 = load ptr, ptr %pFreePg, align 8
  call void @releasePage(ptr noundef %22)
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  br label %if.end50

if.else:                                          ; preds = %if.end13
  store i8 0, ptr %eMode, align 1
  store i32 0, ptr %iNear, align 4
  %23 = load ptr, ptr %pBt.addr, align 8
  %24 = load i32, ptr %iLastPg.addr, align 4
  %call28 = call i32 @btreeGetPage(ptr noundef %23, i32 noundef %24, ptr noundef %pLastPg, i32 noundef 0)
  store i32 %call28, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %25, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.else
  %27 = load i32, ptr %bCommit.addr, align 4
  %cmp33 = icmp eq i32 %27, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i8 2, ptr %eMode, align 1
  %28 = load i32, ptr %nFin.addr, align 4
  store i32 %28, ptr %iNear, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end36
  %29 = load ptr, ptr %pBt.addr, align 8
  %30 = load i32, ptr %iNear, align 4
  %31 = load i8, ptr %eMode, align 1
  %call38 = call i32 @allocateBtreePage(ptr noundef %29, ptr noundef %pFreePg37, ptr noundef %iFreePg27, i32 noundef %30, i8 noundef zeroext %31)
  store i32 %call38, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp39 = icmp ne i32 %32, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.body
  %33 = load ptr, ptr %pLastPg, align 8
  call void @releasePage(ptr noundef %33)
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %do.body
  %35 = load ptr, ptr %pFreePg37, align 8
  call void @releasePage(ptr noundef %35)
  br label %do.cond

do.cond:                                          ; preds = %if.end42
  %36 = load i32, ptr %bCommit.addr, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %37 = load i32, ptr %iFreePg27, align 4
  %38 = load i32, ptr %nFin.addr, align 4
  %cmp43 = icmp ugt i32 %37, %38
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %39 = phi i1 [ false, %do.cond ], [ %cmp43, %land.rhs ]
  br i1 %39, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  %40 = load ptr, ptr %pBt.addr, align 8
  %41 = load ptr, ptr %pLastPg, align 8
  %42 = load i8, ptr %eType, align 1
  %43 = load i32, ptr %iPtrPage, align 4
  %44 = load i32, ptr %iFreePg27, align 4
  %45 = load i32, ptr %bCommit.addr, align 4
  %call45 = call i32 @relocatePage(ptr noundef %40, ptr noundef %41, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  store i32 %call45, ptr %rc, align 4
  %46 = load ptr, ptr %pLastPg, align 8
  call void @releasePage(ptr noundef %46)
  %47 = load i32, ptr %rc, align 4
  %cmp46 = icmp ne i32 %47, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.end
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %do.end
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end26
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true, %entry
  %49 = load i32, ptr %bCommit.addr, align 4
  %cmp52 = icmp eq i32 %49, 0
  br i1 %cmp52, label %if.then54, label %if.end66

if.then54:                                        ; preds = %if.end51
  br label %do.body55

do.body55:                                        ; preds = %lor.end, %if.then54
  %50 = load i32, ptr %iLastPg.addr, align 4
  %dec = add i32 %50, -1
  store i32 %dec, ptr %iLastPg.addr, align 4
  br label %do.cond56

do.cond56:                                        ; preds = %do.body55
  %51 = load i32, ptr %iLastPg.addr, align 4
  %52 = load i32, ptr @sqlite3PendingByte, align 4
  %53 = load ptr, ptr %pBt.addr, align 8
  %pageSize57 = getelementptr inbounds nuw %struct.BtShared, ptr %53, i32 0, i32 15
  %54 = load i32, ptr %pageSize57, align 8
  %div58 = udiv i32 %52, %54
  %add59 = add i32 %div58, 1
  %cmp60 = icmp eq i32 %51, %add59
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond56
  %55 = load ptr, ptr %pBt.addr, align 8
  %56 = load i32, ptr %iLastPg.addr, align 4
  %call62 = call i32 @ptrmapPageno(ptr noundef %55, i32 noundef %56)
  %57 = load i32, ptr %iLastPg.addr, align 4
  %cmp63 = icmp eq i32 %call62, %57
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond56
  %58 = phi i1 [ true, %do.cond56 ], [ %cmp63, %lor.rhs ]
  br i1 %58, label %do.body55, label %do.end65, !llvm.loop !8

do.end65:                                         ; preds = %lor.end
  %59 = load ptr, ptr %pBt.addr, align 8
  %bDoTruncate = getelementptr inbounds nuw %struct.BtShared, ptr %59, i32 0, i32 7
  store i8 1, ptr %bDoTruncate, align 1
  %60 = load i32, ptr %iLastPg.addr, align 4
  %61 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %61, i32 0, i32 18
  store i32 %60, ptr %nPage, align 4
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %if.end51
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then48, %if.then41, %if.then31, %if.then24, %if.then11, %if.then7, %if.then4
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapGet(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @relocatePage(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #0

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
