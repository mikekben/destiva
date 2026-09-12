; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @setChildPtrmaps(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @copyNodeContent(ptr noundef %pFrom, ptr noundef %pTo, ptr noundef %pRC) #1 {
entry:
  %pFrom.addr = alloca ptr, align 8
  %pTo.addr = alloca ptr, align 8
  %pRC.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %aFrom = alloca ptr, align 8
  %aTo = alloca ptr, align 8
  %iFromHdr = alloca i32, align 4
  %iToHdr = alloca i32, align 4
  %rc = alloca i32, align 4
  %iData = alloca i32, align 4
  store ptr %pFrom, ptr %pFrom.addr, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pRC.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end36

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pFrom.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %pBt1, align 8
  store ptr %3, ptr %pBt, align 8
  %4 = load ptr, ptr %pFrom.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %aData, align 8
  store ptr %5, ptr %aFrom, align 8
  %6 = load ptr, ptr %pTo.addr, align 8
  %aData2 = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %aData2, align 8
  store ptr %7, ptr %aTo, align 8
  %8 = load ptr, ptr %pFrom.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, ptr %iFromHdr, align 4
  %10 = load ptr, ptr %pTo.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %pgno, align 4
  %cmp3 = icmp eq i32 %11, 1
  %12 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, i32 100, i32 0
  store i32 %cond, ptr %iToHdr, align 4
  %13 = load ptr, ptr %aFrom, align 8
  %14 = load i32, ptr %iFromHdr, align 4
  %add = add nsw i32 %14, 5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %arrayidx5 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %15 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %15 to i32
  %shl = shl i32 %conv6, 8
  %16 = load ptr, ptr %aFrom, align 8
  %17 = load i32, ptr %iFromHdr, align 4
  %add7 = add nsw i32 %17, 5
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds i8, ptr %arrayidx9, i64 1
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %or = or i32 %shl, %conv11
  store i32 %or, ptr %iData, align 4
  %19 = load ptr, ptr %aTo, align 8
  %20 = load i32, ptr %iData, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 %idxprom12
  %21 = load ptr, ptr %aFrom, align 8
  %22 = load i32, ptr %iData, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %21, i64 %idxprom14
  %23 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 16
  %24 = load i32, ptr %usableSize, align 4
  %25 = load i32, ptr %iData, align 4
  %sub = sub i32 %24, %25
  %conv16 = zext i32 %sub to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx13, ptr align 1 %arrayidx15, i64 %conv16, i1 false)
  %26 = load ptr, ptr %aTo, align 8
  %27 = load i32, ptr %iToHdr, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %26, i64 %idxprom17
  %28 = load ptr, ptr %aFrom, align 8
  %29 = load i32, ptr %iFromHdr, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %28, i64 %idxprom19
  %30 = load ptr, ptr %pFrom.addr, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 12
  %31 = load i16, ptr %cellOffset, align 2
  %conv21 = zext i16 %31 to i32
  %32 = load ptr, ptr %pFrom.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %32, i32 0, i32 14
  %33 = load i16, ptr %nCell, align 8
  %conv22 = zext i16 %33 to i32
  %mul = mul nsw i32 2, %conv22
  %add23 = add nsw i32 %conv21, %mul
  %conv24 = sext i32 %add23 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx18, ptr align 1 %arrayidx20, i64 %conv24, i1 false)
  %34 = load ptr, ptr %pTo.addr, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 0
  store i8 0, ptr %isInit, align 8
  %35 = load ptr, ptr %pTo.addr, align 8
  %call = call i32 @btreeInitPage(ptr noundef %35)
  store i32 %call, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %36, 0
  br i1 %cmp25, label %if.then27, label %if.end

if.then27:                                        ; preds = %if.then
  %37 = load ptr, ptr %pTo.addr, align 8
  %call28 = call i32 @btreeComputeFreeSpace(ptr noundef %37)
  store i32 %call28, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then27, %if.then
  %38 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %38, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end
  %39 = load i32, ptr %rc, align 4
  %40 = load ptr, ptr %pRC.addr, align 8
  store i32 %39, ptr %40, align 4
  br label %if.end36

if.end32:                                         ; preds = %if.end
  %41 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %41, i32 0, i32 5
  %42 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %42, 0
  br i1 %tobool, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end32
  %43 = load ptr, ptr %pTo.addr, align 8
  %call34 = call i32 @setChildPtrmaps(ptr noundef %43)
  %44 = load ptr, ptr %pRC.addr, align 8
  store i32 %call34, ptr %44, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then31, %entry
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
