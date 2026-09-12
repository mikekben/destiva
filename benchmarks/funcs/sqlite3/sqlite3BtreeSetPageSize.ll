; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeSetPageSize(ptr noundef %p, i32 noundef %pageSize, i32 noundef %nReserve, i32 noundef %iFix) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pageSize.addr = alloca i32, align 4
  %nReserve.addr = alloca i32, align 4
  %iFix.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %pageSize, ptr %pageSize.addr, align 4
  store i32 %nReserve, ptr %nReserve.addr, align 4
  store i32 %iFix, ptr %iFix.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 10
  %4 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %5)
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %nReserve.addr, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pBt, align 8
  %pageSize4 = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %pageSize4, align 8
  %9 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %usableSize, align 4
  %sub = sub i32 %8, %10
  store i32 %sub, ptr %nReserve.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load i32, ptr %pageSize.addr, align 4
  %cmp6 = icmp sge i32 %11, 512
  br i1 %cmp6, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  %12 = load i32, ptr %pageSize.addr, align 4
  %cmp8 = icmp sle i32 %12, 65536
  br i1 %cmp8, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %pageSize.addr, align 4
  %sub11 = sub nsw i32 %13, 1
  %14 = load i32, ptr %pageSize.addr, align 4
  %and12 = and i32 %sub11, %14
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true10
  %15 = load i32, ptr %pageSize.addr, align 4
  %16 = load ptr, ptr %pBt, align 8
  %pageSize16 = getelementptr inbounds nuw %struct.BtShared, ptr %16, i32 0, i32 15
  store i32 %15, ptr %pageSize16, align 8
  %17 = load ptr, ptr %pBt, align 8
  call void @freeTempSpace(ptr noundef %17)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true10, %land.lhs.true, %if.end5
  %18 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pPager, align 8
  %20 = load ptr, ptr %pBt, align 8
  %pageSize18 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 15
  %21 = load i32, ptr %nReserve.addr, align 4
  %call = call i32 @sqlite3PagerSetPagesize(ptr noundef %19, ptr noundef %pageSize18, i32 noundef %21)
  store i32 %call, ptr %rc, align 4
  %22 = load ptr, ptr %pBt, align 8
  %pageSize19 = getelementptr inbounds nuw %struct.BtShared, ptr %22, i32 0, i32 15
  %23 = load i32, ptr %pageSize19, align 8
  %24 = load i32, ptr %nReserve.addr, align 4
  %conv20 = trunc i32 %24 to i16
  %conv21 = zext i16 %conv20 to i32
  %sub22 = sub i32 %23, %conv21
  %25 = load ptr, ptr %pBt, align 8
  %usableSize23 = getelementptr inbounds nuw %struct.BtShared, ptr %25, i32 0, i32 16
  store i32 %sub22, ptr %usableSize23, align 4
  %26 = load i32, ptr %iFix.addr, align 4
  %tobool24 = icmp ne i32 %26, 0
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end17
  %27 = load ptr, ptr %pBt, align 8
  %btsFlags26 = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 10
  %28 = load i16, ptr %btsFlags26, align 2
  %conv27 = zext i16 %28 to i32
  %or = or i32 %conv27, 2
  %conv28 = trunc i32 %or to i16
  store i16 %conv28, ptr %btsFlags26, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end17
  %29 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %29)
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeTempSpace(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
