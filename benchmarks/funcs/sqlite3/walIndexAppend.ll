; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalHashLoc = type { ptr, ptr, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexAppend(ptr noundef %pWal, i32 noundef %iFrame, i32 noundef %iPage) #1 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %iFrame.addr = alloca i32, align 4
  %iPage.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %sLoc = alloca %struct.WalHashLoc, align 8
  %iKey = alloca i32, align 4
  %idx = alloca i32, align 4
  %nCollide = alloca i32, align 4
  %nByte = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iFrame, ptr %iFrame.addr, align 4
  store i32 %iPage, ptr %iPage.addr, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %1 = load i32, ptr %iFrame.addr, align 4
  %call = call i32 @walFramePage(i32 noundef %1)
  %call1 = call i32 @walHashGet(ptr noundef %0, i32 noundef %call, ptr noundef %sLoc)
  store i32 %call1, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %iFrame.addr, align 4
  %iZero = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %4 = load i32, ptr %iZero, align 8
  %sub = sub i32 %3, %4
  store i32 %sub, ptr %idx, align 4
  %5 = load i32, ptr %idx, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %aHash = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %6 = load ptr, ptr %aHash, align 8
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 8192
  %aPgno = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %7 = load ptr, ptr %aPgno, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 1
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %nByte, align 4
  %aPgno5 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %8 = load ptr, ptr %aPgno5, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %nByte, align 4
  %conv7 = sext i32 %9 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx6, i8 0, i64 %conv7, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %aPgno8 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %10 = load ptr, ptr %aPgno8, align 8
  %11 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load volatile i32, ptr %arrayidx9, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %pWal.addr, align 8
  call void @walCleanupHash(ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %14 = load i32, ptr %idx, align 4
  store i32 %14, ptr %nCollide, align 4
  %15 = load i32, ptr %iPage.addr, align 4
  %call12 = call i32 @walHash(i32 noundef %15)
  store i32 %call12, ptr %iKey, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %aHash13 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %16 = load ptr, ptr %aHash13, align 8
  %17 = load i32, ptr %iKey, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %16, i64 %idxprom14
  %18 = load volatile i16, ptr %arrayidx15, align 2
  %tobool16 = icmp ne i16 %18, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %nCollide, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %nCollide, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  %call20 = call i32 @sqlite3CorruptError(i32 noundef 59611)
  store i32 %call20, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %20 = load i32, ptr %iKey, align 4
  %call22 = call i32 @walNextHash(i32 noundef %20)
  store i32 %call22, ptr %iKey, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %iPage.addr, align 4
  %aPgno23 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %22 = load ptr, ptr %aPgno23, align 8
  %23 = load i32, ptr %idx, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %22, i64 %idxprom24
  store volatile i32 %21, ptr %arrayidx25, align 4
  %24 = load i32, ptr %idx, align 4
  %conv26 = trunc i32 %24 to i16
  %aHash27 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %25 = load ptr, ptr %aHash27, align 8
  %26 = load i32, ptr %iKey, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %25, i64 %idxprom28
  store volatile i16 %conv26, ptr %arrayidx29, align 2
  br label %if.end30

if.end30:                                         ; preds = %for.end, %entry
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then19
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePage(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walHashGet(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walHash(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walNextHash(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walCleanupHash(ptr noundef) #1

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
