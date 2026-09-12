; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @walIndexClose(ptr noundef %pWal, i32 noundef %isDelete) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %isDelete.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %isDelete, ptr %isDelete.addr, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 11
  %1 = load i8, ptr %exclusiveMode, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 18
  %3 = load i8, ptr %bShmUnreliable, align 2
  %conv2 = zext i8 %3 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pWal.addr, align 8
  %nWiData = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nWiData, align 8
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %apWiData, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %pWal.addr, align 8
  %apWiData5 = getelementptr inbounds nuw %struct.Wal, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %apWiData5, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %12, i64 %idxprom6
  store ptr null, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  %15 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode8 = getelementptr inbounds nuw %struct.Wal, ptr %15, i32 0, i32 11
  %16 = load i8, ptr %exclusiveMode8, align 1
  %conv9 = zext i8 %16 to i32
  %cmp10 = icmp ne i32 %conv9, 2
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %17 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pDbFd, align 8
  %19 = load i32, ptr %isDelete.addr, align 4
  %call = call i32 @sqlite3OsShmUnmap(ptr noundef %18, i32 noundef %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsShmUnmap(ptr noundef, i32 noundef) #0

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
