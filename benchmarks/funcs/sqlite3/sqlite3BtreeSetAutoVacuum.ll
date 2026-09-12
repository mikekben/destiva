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
define hidden i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %p, i32 noundef %autoVacuum) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %autoVacuum.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %av = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i32 %autoVacuum, ptr %autoVacuum.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  store i32 0, ptr %rc, align 4
  %2 = load i32, ptr %autoVacuum.addr, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, ptr %av, align 1
  %3 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %3)
  %4 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 10
  %5 = load i16, ptr %btsFlags, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i8, ptr %av, align 1
  %conv4 = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv4, 0
  %7 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %8 = load ptr, ptr %pBt, align 8
  %autoVacuum5 = getelementptr inbounds nuw %struct.BtShared, ptr %8, i32 0, i32 5
  %9 = load i8, ptr %autoVacuum5, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp ne i32 %cond, %conv6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 8, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load i8, ptr %av, align 1
  %conv9 = zext i8 %10 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  %11 = zext i1 %tobool10 to i64
  %cond11 = select i1 %tobool10, i32 1, i32 0
  %conv12 = trunc i32 %cond11 to i8
  %12 = load ptr, ptr %pBt, align 8
  %autoVacuum13 = getelementptr inbounds nuw %struct.BtShared, ptr %12, i32 0, i32 5
  store i8 %conv12, ptr %autoVacuum13, align 1
  %13 = load i8, ptr %av, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  %14 = zext i1 %cmp15 to i64
  %cond17 = select i1 %cmp15, i32 1, i32 0
  %conv18 = trunc i32 %cond17 to i8
  %15 = load ptr, ptr %pBt, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 6
  store i8 %conv18, ptr %incrVacuum, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %16)
  %17 = load i32, ptr %rc, align 4
  ret i32 %17
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
