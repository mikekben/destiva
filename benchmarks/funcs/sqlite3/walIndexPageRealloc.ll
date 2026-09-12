; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexPageRealloc(ptr noundef %pWal, i32 noundef %iPage, ptr noundef %ppPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nByte = alloca i64, align 8
  %apNew = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %nWiData = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nWiData, align 8
  %2 = load i32, ptr %iPage.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %iPage.addr, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  store i64 %mul, ptr %nByte, align 8
  %4 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %apWiData, align 8
  %6 = load i64, ptr %nByte, align 8
  %call = call ptr @sqlite3_realloc64(ptr noundef %5, i64 noundef %6)
  store ptr %call, ptr %apNew, align 8
  %7 = load ptr, ptr %apNew, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %8 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %8, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %apNew, align 8
  %10 = load ptr, ptr %pWal.addr, align 8
  %nWiData2 = getelementptr inbounds nuw %struct.Wal, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nWiData2, align 8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %12 = load i32, ptr %iPage.addr, align 4
  %add3 = add nsw i32 %12, 1
  %13 = load ptr, ptr %pWal.addr, align 8
  %nWiData4 = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %nWiData4, align 8
  %sub = sub nsw i32 %add3, %14
  %conv5 = sext i32 %sub to i64
  %mul6 = mul i64 8, %conv5
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx, i8 0, i64 %mul6, i1 false)
  %15 = load ptr, ptr %apNew, align 8
  %16 = load ptr, ptr %pWal.addr, align 8
  %apWiData7 = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 7
  store ptr %15, ptr %apWiData7, align 8
  %17 = load i32, ptr %iPage.addr, align 4
  %add8 = add nsw i32 %17, 1
  %18 = load ptr, ptr %pWal.addr, align 8
  %nWiData9 = getelementptr inbounds nuw %struct.Wal, ptr %18, i32 0, i32 5
  store i32 %add8, ptr %nWiData9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %19 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %19, i32 0, i32 11
  %20 = load i8, ptr %exclusiveMode, align 1
  %conv11 = zext i8 %20 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %call15 = call ptr @sqlite3MallocZero(i64 noundef 32768)
  %21 = load ptr, ptr %pWal.addr, align 8
  %apWiData16 = getelementptr inbounds nuw %struct.Wal, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %apWiData16, align 8
  %23 = load i32, ptr %iPage.addr, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %22, i64 %idxprom17
  store ptr %call15, ptr %arrayidx18, align 8
  %24 = load ptr, ptr %pWal.addr, align 8
  %apWiData19 = getelementptr inbounds nuw %struct.Wal, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %apWiData19, align 8
  %26 = load i32, ptr %iPage.addr, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %25, i64 %idxprom20
  %27 = load ptr, ptr %arrayidx21, align 8
  %tobool22 = icmp ne ptr %27, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then14
  store i32 7, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then14
  br label %if.end40

if.else:                                          ; preds = %if.end10
  %28 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %pDbFd, align 8
  %30 = load i32, ptr %iPage.addr, align 4
  %31 = load ptr, ptr %pWal.addr, align 8
  %writeLock = getelementptr inbounds nuw %struct.Wal, ptr %31, i32 0, i32 12
  %32 = load i8, ptr %writeLock, align 8
  %conv25 = zext i8 %32 to i32
  %33 = load ptr, ptr %pWal.addr, align 8
  %apWiData26 = getelementptr inbounds nuw %struct.Wal, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %apWiData26, align 8
  %35 = load i32, ptr %iPage.addr, align 4
  %idxprom27 = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %34, i64 %idxprom27
  %call29 = call i32 @sqlite3OsShmMap(ptr noundef %29, i32 noundef %30, i32 noundef 32768, i32 noundef %conv25, ptr noundef %arrayidx28)
  store i32 %call29, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %and = and i32 %36, 255
  %cmp30 = icmp eq i32 %and, 8
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.else
  %37 = load ptr, ptr %pWal.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %37, i32 0, i32 14
  %38 = load i8, ptr %readOnly, align 2
  %conv33 = zext i8 %38 to i32
  %or = or i32 %conv33, 2
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, ptr %readOnly, align 2
  %39 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %39, 8
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then32
  store i32 0, ptr %rc, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end24
  %40 = load ptr, ptr %pWal.addr, align 8
  %apWiData41 = getelementptr inbounds nuw %struct.Wal, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %apWiData41, align 8
  %42 = load i32, ptr %iPage.addr, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %41, i64 %idxprom42
  %43 = load ptr, ptr %arrayidx43, align 8
  %44 = load ptr, ptr %ppPage.addr, align 8
  store ptr %43, ptr %44, align 8
  %45 = load i32, ptr %rc, align 4
  store i32 %45, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then1
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsShmMap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
