; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalBeginWriteTransaction(ptr noundef %pWal) #1 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 14
  %1 = load i8, ptr %readOnly, align 2
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @walLockExclusive(ptr noundef %2, i32 noundef 0, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %rc, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pWal.addr, align 8
  %writeLock = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 12
  store i8 1, ptr %writeLock, align 8
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %pWal.addr, align 8
  %call4 = call ptr @walIndexHdr(ptr noundef %7)
  %call5 = call i32 @memcmp(ptr noundef %hdr, ptr noundef %call4, i64 noundef 48) #2
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %8, i32 noundef 0, i32 noundef 1)
  %9 = load ptr, ptr %pWal.addr, align 8
  %writeLock7 = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 12
  store i8 0, ptr %writeLock7, align 8
  store i32 517, ptr %rc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
