; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walIndexWriteHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @walRestartHdr(ptr noundef %pWal, i32 noundef %salt1) #1 {
entry:
  %pWal.addr = alloca ptr, align 8
  %salt1.addr = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %i = alloca i32, align 4
  %aSalt = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %salt1, ptr %salt1.addr, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walCkptInfo(ptr noundef %0)
  store ptr %call, ptr %pInfo, align 8
  %1 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 19
  %aSalt1 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 9
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aSalt1, i64 0, i64 0
  store ptr %arraydecay, ptr %aSalt, align 8
  %2 = load ptr, ptr %pWal.addr, align 8
  %nCkpt = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 23
  %3 = load i32, ptr %nCkpt, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nCkpt, align 8
  %4 = load ptr, ptr %pWal.addr, align 8
  %hdr2 = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr2, i32 0, i32 6
  store i32 0, ptr %mxFrame, align 8
  %5 = load ptr, ptr %aSalt, align 8
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load ptr, ptr %aSalt, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 0
  %call4 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx3)
  %add = add i32 1, %call4
  call void @sqlite3Put4byte(ptr noundef %arrayidx, i32 noundef %add)
  %7 = load ptr, ptr %pWal.addr, align 8
  %hdr5 = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 19
  %aSalt6 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr5, i32 0, i32 9
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %aSalt6, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx7, ptr align 4 %salt1.addr, i64 4, i1 false)
  %8 = load ptr, ptr %pWal.addr, align 8
  call void @walIndexWriteHdr(ptr noundef %8)
  %9 = load ptr, ptr %pInfo, align 8
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %9, i32 0, i32 0
  store volatile i32 0, ptr %nBackfill, align 4
  %10 = load ptr, ptr %pInfo, align 8
  %nBackfillAttempted = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %10, i32 0, i32 3
  store volatile i32 0, ptr %nBackfillAttempted, align 4
  %11 = load ptr, ptr %pInfo, align 8
  %aReadMark = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [5 x i32], ptr %aReadMark, i64 0, i64 1
  store volatile i32 0, ptr %arrayidx8, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %12, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pInfo, align 8
  %aReadMark9 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], ptr %aReadMark9, i64 0, i64 %idxprom
  store volatile i32 -1, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
