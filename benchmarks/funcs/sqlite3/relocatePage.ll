; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @relocatePage(ptr noundef %pBt, ptr noundef %pDbPage, i8 noundef zeroext %eType, i32 noundef %iPtrPage, i32 noundef %iFreePage, i32 noundef %isCommit) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pDbPage.addr = alloca ptr, align 8
  %eType.addr = alloca i8, align 1
  %iPtrPage.addr = alloca i32, align 4
  %iFreePage.addr = alloca i32, align 4
  %isCommit.addr = alloca i32, align 4
  %pPtrPage = alloca ptr, align 8
  %iDbPage = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nextOvfl = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store ptr %pDbPage, ptr %pDbPage.addr, align 8
  store i8 %eType, ptr %eType.addr, align 1
  store i32 %iPtrPage, ptr %iPtrPage.addr, align 4
  store i32 %iFreePage, ptr %iFreePage.addr, align 4
  store i32 %isCommit, ptr %isCommit.addr, align 4
  %0 = load ptr, ptr %pDbPage.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %pgno, align 4
  store i32 %1, ptr %iDbPage, align 4
  %2 = load ptr, ptr %pBt.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pPager1, align 8
  store ptr %3, ptr %pPager, align 8
  %4 = load i32, ptr %iDbPage, align 4
  %cmp = icmp ult i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 67053)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pPager, align 8
  %6 = load ptr, ptr %pDbPage.addr, align 8
  %pDbPage2 = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 23
  %7 = load ptr, ptr %pDbPage2, align 8
  %8 = load i32, ptr %iFreePage.addr, align 4
  %9 = load i32, ptr %isCommit.addr, align 4
  %call3 = call i32 @sqlite3PagerMovepage(ptr noundef %5, ptr noundef %7, i32 noundef %8, i32 noundef %9)
  store i32 %call3, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %12 = load i32, ptr %iFreePage.addr, align 4
  %13 = load ptr, ptr %pDbPage.addr, align 8
  %pgno7 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 4
  store i32 %12, ptr %pgno7, align 4
  %14 = load i8, ptr %eType.addr, align 1
  %conv = zext i8 %14 to i32
  %cmp8 = icmp eq i32 %conv, 5
  br i1 %cmp8, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %15 = load i8, ptr %eType.addr, align 1
  %conv10 = zext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.end6
  %16 = load ptr, ptr %pDbPage.addr, align 8
  %call14 = call i32 @setChildPtrmaps(ptr noundef %16)
  store i32 %call14, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %18 = load i32, ptr %rc, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false
  %19 = load ptr, ptr %pDbPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %19, i32 0, i32 19
  %20 = load ptr, ptr %aData, align 8
  %call19 = call i32 @sqlite3Get4byte(ptr noundef %20)
  store i32 %call19, ptr %nextOvfl, align 4
  %21 = load i32, ptr %nextOvfl, align 4
  %cmp20 = icmp ne i32 %21, 0
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.else
  %22 = load ptr, ptr %pBt.addr, align 8
  %23 = load i32, ptr %nextOvfl, align 4
  %24 = load i32, ptr %iFreePage.addr, align 4
  call void @ptrmapPut(ptr noundef %22, i32 noundef %23, i8 noundef zeroext 4, i32 noundef %24, ptr noundef %rc)
  %25 = load i32, ptr %rc, align 4
  %cmp23 = icmp ne i32 %25, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end18
  %27 = load i8, ptr %eType.addr, align 1
  %conv29 = zext i8 %27 to i32
  %cmp30 = icmp ne i32 %conv29, 1
  br i1 %cmp30, label %if.then32, label %if.end49

if.then32:                                        ; preds = %if.end28
  %28 = load ptr, ptr %pBt.addr, align 8
  %29 = load i32, ptr %iPtrPage.addr, align 4
  %call33 = call i32 @btreeGetPage(ptr noundef %28, i32 noundef %29, ptr noundef %pPtrPage, i32 noundef 0)
  store i32 %call33, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp34 = icmp ne i32 %30, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then32
  %32 = load ptr, ptr %pPtrPage, align 8
  %pDbPage38 = getelementptr inbounds nuw %struct.MemPage, ptr %32, i32 0, i32 23
  %33 = load ptr, ptr %pDbPage38, align 8
  %call39 = call i32 @sqlite3PagerWrite(ptr noundef %33)
  store i32 %call39, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %cmp40 = icmp ne i32 %34, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  %35 = load ptr, ptr %pPtrPage, align 8
  call void @releasePage(ptr noundef %35)
  %36 = load i32, ptr %rc, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end37
  %37 = load ptr, ptr %pPtrPage, align 8
  %38 = load i32, ptr %iDbPage, align 4
  %39 = load i32, ptr %iFreePage.addr, align 4
  %40 = load i8, ptr %eType.addr, align 1
  %call44 = call i32 @modifyPagePointer(ptr noundef %37, i32 noundef %38, i32 noundef %39, i8 noundef zeroext %40)
  store i32 %call44, ptr %rc, align 4
  %41 = load ptr, ptr %pPtrPage, align 8
  call void @releasePage(ptr noundef %41)
  %42 = load i32, ptr %rc, align 4
  %cmp45 = icmp eq i32 %42, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  %43 = load ptr, ptr %pBt.addr, align 8
  %44 = load i32, ptr %iFreePage.addr, align 4
  %45 = load i8, ptr %eType.addr, align 1
  %46 = load i32, ptr %iPtrPage.addr, align 4
  call void @ptrmapPut(ptr noundef %43, i32 noundef %44, i8 noundef zeroext %45, i32 noundef %46, ptr noundef %rc)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end28
  %47 = load i32, ptr %rc, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then42, %if.then36, %if.then25, %if.then17, %if.then5, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerMovepage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @setChildPtrmaps(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @modifyPagePointer(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
