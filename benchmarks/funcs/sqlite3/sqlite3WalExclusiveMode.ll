; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalExclusiveMode(ptr noundef %pWal, i32 noundef %op) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  %0 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 11
  %2 = load i8, ptr %exclusiveMode, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode4 = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 11
  store i8 0, ptr %exclusiveMode4, align 1
  %4 = load ptr, ptr %pWal.addr, align 8
  %5 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 9
  %6 = load i16, ptr %readLock, align 4
  %conv5 = sext i16 %6 to i32
  %add = add nsw i32 3, %conv5
  %call = call i32 @walLockShared(ptr noundef %4, i32 noundef %add)
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then3
  %7 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode9 = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 11
  store i8 1, ptr %exclusiveMode9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then3
  %8 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode10 = getelementptr inbounds nuw %struct.Wal, ptr %8, i32 0, i32 11
  %9 = load i8, ptr %exclusiveMode10, align 1
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, ptr %rc, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then
  store i32 0, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  br label %if.end29

if.else15:                                        ; preds = %entry
  %10 = load i32, ptr %op.addr, align 4
  %cmp16 = icmp sgt i32 %10, 0
  br i1 %cmp16, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.else15
  %11 = load ptr, ptr %pWal.addr, align 8
  %12 = load ptr, ptr %pWal.addr, align 8
  %readLock19 = getelementptr inbounds nuw %struct.Wal, ptr %12, i32 0, i32 9
  %13 = load i16, ptr %readLock19, align 4
  %conv20 = sext i16 %13 to i32
  %add21 = add nsw i32 3, %conv20
  call void @walUnlockShared(ptr noundef %11, i32 noundef %add21)
  %14 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode22 = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 11
  store i8 1, ptr %exclusiveMode22, align 1
  store i32 1, ptr %rc, align 4
  br label %if.end28

if.else23:                                        ; preds = %if.else15
  %15 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode24 = getelementptr inbounds nuw %struct.Wal, ptr %15, i32 0, i32 11
  %16 = load i8, ptr %exclusiveMode24, align 1
  %conv25 = zext i8 %16 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, ptr %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then18
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end14
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
