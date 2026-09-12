; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @setGetterMethod(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerRollback(ptr noundef %pPager) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %rc2 = alloca i32, align 4
  %eState24 = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %eState, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %errCode, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  %eState2 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %eState2, align 4
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp sle i32 %conv3, 1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 59
  %7 = load ptr, ptr %pWal, align 8
  %cmp8 = icmp ne ptr %7, null
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %8 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @sqlite3PagerSavepoint(ptr noundef %8, i32 noundef 2, i32 noundef -1)
  store i32 %call, ptr %rc, align 4
  %9 = load ptr, ptr %pPager.addr, align 8
  %10 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 16
  %11 = load i8, ptr %setMaster, align 1
  %conv11 = zext i8 %11 to i32
  %call12 = call i32 @pager_end_transaction(ptr noundef %9, i32 noundef %conv11, i32 noundef 0)
  store i32 %call12, ptr %rc2, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then10
  %13 = load i32, ptr %rc2, align 4
  store i32 %13, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then10
  br label %if.end37

if.else:                                          ; preds = %if.end7
  %14 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 31
  %15 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pMethods, align 8
  %cmp17 = icmp ne ptr %16, null
  br i1 %cmp17, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  %17 = load ptr, ptr %pPager.addr, align 8
  %eState19 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 13
  %18 = load i8, ptr %eState19, align 4
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 2
  br i1 %cmp21, label %if.then23, label %if.else34

if.then23:                                        ; preds = %lor.lhs.false, %if.else
  %19 = load ptr, ptr %pPager.addr, align 8
  %eState25 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 13
  %20 = load i8, ptr %eState25, align 4
  %conv26 = zext i8 %20 to i32
  store i32 %conv26, ptr %eState24, align 4
  %21 = load ptr, ptr %pPager.addr, align 8
  %call27 = call i32 @pager_end_transaction(ptr noundef %21, i32 noundef 0, i32 noundef 0)
  store i32 %call27, ptr %rc, align 4
  %22 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 12
  %23 = load i8, ptr %memDb, align 1
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23
  %24 = load i32, ptr %eState24, align 4
  %cmp28 = icmp sgt i32 %24, 2
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pPager.addr, align 8
  %errCode31 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 25
  store i32 4, ptr %errCode31, align 4
  %26 = load ptr, ptr %pPager.addr, align 8
  %eState32 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 13
  store i8 6, ptr %eState32, align 4
  %27 = load ptr, ptr %pPager.addr, align 8
  call void @setGetterMethod(ptr noundef %27)
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true, %if.then23
  br label %if.end36

if.else34:                                        ; preds = %lor.lhs.false
  %29 = load ptr, ptr %pPager.addr, align 8
  %call35 = call i32 @pager_playback(ptr noundef %29, i32 noundef 0)
  store i32 %call35, ptr %rc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end16
  %30 = load ptr, ptr %pPager.addr, align 8
  %31 = load i32, ptr %rc, align 4
  %call38 = call i32 @pager_error(ptr noundef %30, i32 noundef %31)
  store i32 %call38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then30, %if.then6, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_end_transaction(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_playback(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
