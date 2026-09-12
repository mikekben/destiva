; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalHashLoc = type { ptr, ptr, i32 }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePage(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walHashGet(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @walCleanupHash(ptr noundef %pWal) #1 {
entry:
  %pWal.addr = alloca ptr, align 8
  %sLoc = alloca %struct.WalHashLoc, align 8
  %iLimit = alloca i32, align 4
  %nByte = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 0, ptr %iLimit, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %1 = load i32, ptr %mxFrame, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %3 = load ptr, ptr %pWal.addr, align 8
  %hdr1 = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 19
  %mxFrame2 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr1, i32 0, i32 6
  %4 = load i32, ptr %mxFrame2, align 8
  %call = call i32 @walFramePage(i32 noundef %4)
  %call3 = call i32 @walHashGet(ptr noundef %2, i32 noundef %call, ptr noundef %sLoc)
  store i32 %call3, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr6 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  %mxFrame7 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr6, i32 0, i32 6
  %7 = load i32, ptr %mxFrame7, align 8
  %iZero = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %8 = load i32, ptr %iZero, align 8
  %sub = sub i32 %7, %8
  store i32 %sub, ptr %iLimit, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %9, 8192
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %aHash = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %10 = load ptr, ptr %aHash, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i16, ptr %10, i64 %idxprom
  %12 = load volatile i16, ptr %arrayidx, align 2
  %conv = zext i16 %12 to i32
  %13 = load i32, ptr %iLimit, align 4
  %cmp9 = icmp sgt i32 %conv, %13
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %for.body
  %aHash12 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %14 = load ptr, ptr %aHash12, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %14, i64 %idxprom13
  store volatile i16 0, ptr %arrayidx14, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %aHash16 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %17 = load ptr, ptr %aHash16, align 8
  %aPgno = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %18 = load ptr, ptr %aPgno, align 8
  %19 = load i32, ptr %iLimit, align 4
  %add = add nsw i32 %19, 1
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %18, i64 %idxprom17
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv19, ptr %nByte, align 4
  %aPgno20 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %20 = load ptr, ptr %aPgno20, align 8
  %21 = load i32, ptr %iLimit, align 4
  %add21 = add nsw i32 %21, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %20, i64 %idxprom22
  %22 = load i32, ptr %nByte, align 4
  %conv24 = sext i32 %22 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23, i8 0, i64 %conv24, i1 false)
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
