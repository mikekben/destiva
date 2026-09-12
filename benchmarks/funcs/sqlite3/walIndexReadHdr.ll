; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexReadHdr(ptr noundef %pWal, ptr noundef %pChanged) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %pChanged.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %badHdr = alloca i32, align 4
  %page0 = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %pChanged, ptr %pChanged.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @walIndexPage(ptr noundef %0, i32 noundef 0, ptr noundef %page0)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %2, 1288
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 18
  store i8 1, ptr %bShmUnreliable, align 2
  %4 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 11
  store i8 2, ptr %exclusiveMode, align 1
  %5 = load ptr, ptr %pChanged.addr, align 8
  store i32 1, ptr %5, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.else3:                                         ; preds = %entry
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  %7 = load ptr, ptr %page0, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %8 = load ptr, ptr %pWal.addr, align 8
  %9 = load ptr, ptr %pChanged.addr, align 8
  %call5 = call i32 @walIndexTryHdr(ptr noundef %8, ptr noundef %9)
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call5, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %badHdr, align 4
  %10 = load i32, ptr %badHdr, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then7, label %if.end37

if.then7:                                         ; preds = %cond.end
  %11 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable8 = getelementptr inbounds nuw %struct.Wal, ptr %11, i32 0, i32 18
  %12 = load i8, ptr %bShmUnreliable8, align 2
  %conv = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.then7
  %13 = load ptr, ptr %pWal.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 14
  %14 = load i8, ptr %readOnly, align 2
  %conv11 = zext i8 %14 to i32
  %and = and i32 %conv11, 2
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %pWal.addr, align 8
  %call14 = call i32 @walLockShared(ptr noundef %15, i32 noundef 0)
  store i32 %call14, ptr %rc, align 4
  %cmp15 = icmp eq i32 0, %call14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %16 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockShared(ptr noundef %16, i32 noundef 0)
  store i32 264, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13
  br label %if.end36

if.else19:                                        ; preds = %land.lhs.true, %if.then7
  %17 = load ptr, ptr %pWal.addr, align 8
  %call20 = call i32 @walLockExclusive(ptr noundef %17, i32 noundef 0, i32 noundef 1)
  store i32 %call20, ptr %rc, align 4
  %cmp21 = icmp eq i32 0, %call20
  br i1 %cmp21, label %if.then23, label %if.end35

if.then23:                                        ; preds = %if.else19
  %18 = load ptr, ptr %pWal.addr, align 8
  %writeLock = getelementptr inbounds nuw %struct.Wal, ptr %18, i32 0, i32 12
  store i8 1, ptr %writeLock, align 8
  %19 = load ptr, ptr %pWal.addr, align 8
  %call24 = call i32 @walIndexPage(ptr noundef %19, i32 noundef 0, ptr noundef %page0)
  store i32 %call24, ptr %rc, align 4
  %cmp25 = icmp eq i32 0, %call24
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.then23
  %20 = load ptr, ptr %pWal.addr, align 8
  %21 = load ptr, ptr %pChanged.addr, align 8
  %call28 = call i32 @walIndexTryHdr(ptr noundef %20, ptr noundef %21)
  store i32 %call28, ptr %badHdr, align 4
  %22 = load i32, ptr %badHdr, align 4
  %tobool29 = icmp ne i32 %22, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then27
  %23 = load ptr, ptr %pWal.addr, align 8
  %call31 = call i32 @walIndexRecover(ptr noundef %23)
  store i32 %call31, ptr %rc, align 4
  %24 = load ptr, ptr %pChanged.addr, align 8
  store i32 1, ptr %24, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then23
  %25 = load ptr, ptr %pWal.addr, align 8
  %writeLock34 = getelementptr inbounds nuw %struct.Wal, ptr %25, i32 0, i32 12
  store i8 0, ptr %writeLock34, align 8
  %26 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %26, i32 noundef 0, i32 noundef 1)
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.else19
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end18
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %cond.end
  %27 = load i32, ptr %badHdr, align 4
  %cmp38 = icmp eq i32 %27, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end45

land.lhs.true40:                                  ; preds = %if.end37
  %28 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %28, i32 0, i32 19
  %iVersion = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 0
  %29 = load i32, ptr %iVersion, align 8
  %cmp41 = icmp ne i32 %29, 3007000
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %land.lhs.true40
  %call44 = call i32 @sqlite3CantopenError(i32 noundef 60727)
  store i32 %call44, ptr %rc, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true40, %if.end37
  %30 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable46 = getelementptr inbounds nuw %struct.Wal, ptr %30, i32 0, i32 18
  %31 = load i8, ptr %bShmUnreliable46, align 2
  %tobool47 = icmp ne i8 %31, 0
  br i1 %tobool47, label %if.then48, label %if.end59

if.then48:                                        ; preds = %if.end45
  %32 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %32, 0
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.then48
  %33 = load ptr, ptr %pWal.addr, align 8
  call void @walIndexClose(ptr noundef %33, i32 noundef 0)
  %34 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable52 = getelementptr inbounds nuw %struct.Wal, ptr %34, i32 0, i32 18
  store i8 0, ptr %bShmUnreliable52, align 2
  %35 = load i32, ptr %rc, align 4
  %cmp53 = icmp eq i32 %35, 522
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  store i32 -1, ptr %rc, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then51
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then48
  %36 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode58 = getelementptr inbounds nuw %struct.Wal, ptr %36, i32 0, i32 11
  store i8 0, ptr %exclusiveMode58, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %if.end45
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.else
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexPage(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexTryHdr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexRecover(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walIndexClose(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
