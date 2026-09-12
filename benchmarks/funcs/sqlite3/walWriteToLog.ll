; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalWriter = type { ptr, ptr, i64, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walWriteToLog(ptr noundef %p, ptr noundef %pContent, i32 noundef %iAmt, i64 noundef %iOffset) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pContent.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOffset.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %iFirstAmt = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pContent, ptr %pContent.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOffset, ptr %iOffset.addr, align 8
  %0 = load i64, ptr %iOffset.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %iSyncPoint = getelementptr inbounds nuw %struct.WalWriter, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %iSyncPoint, align 8
  %cmp = icmp slt i64 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %iOffset.addr, align 8
  %4 = load i32, ptr %iAmt.addr, align 4
  %conv = sext i32 %4 to i64
  %add = add nsw i64 %3, %conv
  %5 = load ptr, ptr %p.addr, align 8
  %iSyncPoint1 = getelementptr inbounds nuw %struct.WalWriter, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %iSyncPoint1, align 8
  %cmp2 = icmp sge i64 %add, %6
  br i1 %cmp2, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %p.addr, align 8
  %iSyncPoint4 = getelementptr inbounds nuw %struct.WalWriter, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %iSyncPoint4, align 8
  %9 = load i64, ptr %iOffset.addr, align 8
  %sub = sub nsw i64 %8, %9
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %iFirstAmt, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.WalWriter, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pFd, align 8
  %12 = load ptr, ptr %pContent.addr, align 8
  %13 = load i32, ptr %iFirstAmt, align 4
  %14 = load i64, ptr %iOffset.addr, align 8
  %call = call i32 @sqlite3OsWrite(ptr noundef %11, ptr noundef %12, i32 noundef %13, i64 noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i32, ptr %iFirstAmt, align 4
  %conv7 = sext i32 %17 to i64
  %18 = load i64, ptr %iOffset.addr, align 8
  %add8 = add nsw i64 %18, %conv7
  store i64 %add8, ptr %iOffset.addr, align 8
  %19 = load i32, ptr %iFirstAmt, align 4
  %20 = load i32, ptr %iAmt.addr, align 4
  %sub9 = sub nsw i32 %20, %19
  store i32 %sub9, ptr %iAmt.addr, align 4
  %21 = load i32, ptr %iFirstAmt, align 4
  %22 = load ptr, ptr %pContent.addr, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %pContent.addr, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %pFd10 = getelementptr inbounds nuw %struct.WalWriter, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pFd10, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.WalWriter, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %syncFlags, align 8
  %and = and i32 %26, 3
  %call11 = call i32 @sqlite3OsSync(ptr noundef %24, i32 noundef %and)
  store i32 %call11, ptr %rc, align 4
  %27 = load i32, ptr %iAmt.addr, align 4
  %cmp12 = icmp eq i32 %27, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load i32, ptr %rc, align 4
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  %29 = load i32, ptr %rc, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %entry
  %30 = load ptr, ptr %p.addr, align 8
  %pFd18 = getelementptr inbounds nuw %struct.WalWriter, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %pFd18, align 8
  %32 = load ptr, ptr %pContent.addr, align 8
  %33 = load i32, ptr %iAmt.addr, align 4
  %34 = load i64, ptr %iOffset.addr, align 8
  %call19 = call i32 @sqlite3OsWrite(ptr noundef %31, ptr noundef %32, i32 noundef %33, i64 noundef %34)
  store i32 %call19, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then6
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
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
