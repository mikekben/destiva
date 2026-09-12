; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @dropCell(ptr noundef %pPage, i32 noundef %idx, i32 noundef %sz, ptr noundef %pRC) #2 {
entry:
  %pPage.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %sz.addr = alloca i32, align 4
  %pRC.addr = alloca ptr, align 8
  %pc = alloca i32, align 4
  %data = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %hdr = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  store i32 %sz, ptr %sz.addr, align 4
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pRC.addr, align 8
  %1 = load i32, ptr %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end67

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aData, align 8
  store ptr %3, ptr %data, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 21
  %5 = load ptr, ptr %aCellIdx, align 8
  %6 = load i32, ptr %idx.addr, align 4
  %mul = mul nsw i32 2, %6
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %ptr, align 8
  %7 = load ptr, ptr %ptr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 %conv, 8
  %9 = load ptr, ptr %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %10 to i32
  %or = or i32 %shl, %conv3
  store i32 %or, ptr %pc, align 4
  %11 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 6
  %12 = load i8, ptr %hdrOffset, align 1
  %conv4 = zext i8 %12 to i32
  store i32 %conv4, ptr %hdr, align 4
  %13 = load i32, ptr %pc, align 4
  %14 = load i32, ptr %sz.addr, align 4
  %add = add i32 %13, %14
  %15 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %16, i32 0, i32 16
  %17 = load i32, ptr %usableSize, align 4
  %cmp = icmp ugt i32 %add, %17
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %call = call i32 @sqlite3CorruptError(i32 noundef 70014)
  %18 = load ptr, ptr %pRC.addr, align 8
  store i32 %call, ptr %18, align 4
  br label %if.end67

if.end7:                                          ; preds = %if.end
  %19 = load ptr, ptr %pPage.addr, align 8
  %20 = load i32, ptr %pc, align 4
  %conv8 = trunc i32 %20 to i16
  %21 = load i32, ptr %sz.addr, align 4
  %conv9 = trunc i32 %21 to i16
  %call10 = call i32 @freeSpace(ptr noundef %19, i16 noundef zeroext %conv8, i16 noundef zeroext %conv9)
  store i32 %call10, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %tobool11 = icmp ne i32 %22, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %23 = load i32, ptr %rc, align 4
  %24 = load ptr, ptr %pRC.addr, align 8
  store i32 %23, ptr %24, align 4
  br label %if.end67

if.end13:                                         ; preds = %if.end7
  %25 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 14
  %26 = load i16, ptr %nCell, align 8
  %dec = add i16 %26, -1
  store i16 %dec, ptr %nCell, align 8
  %27 = load ptr, ptr %pPage.addr, align 8
  %nCell14 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 14
  %28 = load i16, ptr %nCell14, align 8
  %conv15 = zext i16 %28 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end13
  %29 = load ptr, ptr %data, align 8
  %30 = load i32, ptr %hdr, align 4
  %add19 = add nsw i32 %30, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %29, i64 %idxprom20
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx21, i8 0, i64 4, i1 false)
  %31 = load ptr, ptr %data, align 8
  %32 = load i32, ptr %hdr, align 4
  %add22 = add nsw i32 %32, 7
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %31, i64 %idxprom23
  store i8 0, ptr %arrayidx24, align 1
  %33 = load ptr, ptr %pPage.addr, align 8
  %pBt25 = getelementptr inbounds nuw %struct.MemPage, ptr %33, i32 0, i32 18
  %34 = load ptr, ptr %pBt25, align 8
  %usableSize26 = getelementptr inbounds nuw %struct.BtShared, ptr %34, i32 0, i32 16
  %35 = load i32, ptr %usableSize26, align 4
  %shr = lshr i32 %35, 8
  %conv27 = trunc i32 %shr to i8
  %36 = load ptr, ptr %data, align 8
  %37 = load i32, ptr %hdr, align 4
  %add28 = add nsw i32 %37, 5
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %36, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds i8, ptr %arrayidx30, i64 0
  store i8 %conv27, ptr %arrayidx31, align 1
  %38 = load ptr, ptr %pPage.addr, align 8
  %pBt32 = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 18
  %39 = load ptr, ptr %pBt32, align 8
  %usableSize33 = getelementptr inbounds nuw %struct.BtShared, ptr %39, i32 0, i32 16
  %40 = load i32, ptr %usableSize33, align 4
  %conv34 = trunc i32 %40 to i8
  %41 = load ptr, ptr %data, align 8
  %42 = load i32, ptr %hdr, align 4
  %add35 = add nsw i32 %42, 5
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %41, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds i8, ptr %arrayidx37, i64 1
  store i8 %conv34, ptr %arrayidx38, align 1
  %43 = load ptr, ptr %pPage.addr, align 8
  %pBt39 = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 18
  %44 = load ptr, ptr %pBt39, align 8
  %usableSize40 = getelementptr inbounds nuw %struct.BtShared, ptr %44, i32 0, i32 16
  %45 = load i32, ptr %usableSize40, align 4
  %46 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset41 = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 6
  %47 = load i8, ptr %hdrOffset41, align 1
  %conv42 = zext i8 %47 to i32
  %sub = sub i32 %45, %conv42
  %48 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 7
  %49 = load i8, ptr %childPtrSize, align 2
  %conv43 = zext i8 %49 to i32
  %sub44 = sub i32 %sub, %conv43
  %sub45 = sub i32 %sub44, 8
  %50 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %50, i32 0, i32 13
  store i32 %sub45, ptr %nFree, align 4
  br label %if.end67

if.else:                                          ; preds = %if.end13
  %51 = load ptr, ptr %ptr, align 8
  %52 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %52, i64 2
  %53 = load ptr, ptr %pPage.addr, align 8
  %nCell46 = getelementptr inbounds nuw %struct.MemPage, ptr %53, i32 0, i32 14
  %54 = load i16, ptr %nCell46, align 8
  %conv47 = zext i16 %54 to i32
  %55 = load i32, ptr %idx.addr, align 4
  %sub48 = sub nsw i32 %conv47, %55
  %mul49 = mul nsw i32 2, %sub48
  %conv50 = sext i32 %mul49 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %add.ptr, i64 %conv50, i1 false)
  %56 = load ptr, ptr %pPage.addr, align 8
  %nCell51 = getelementptr inbounds nuw %struct.MemPage, ptr %56, i32 0, i32 14
  %57 = load i16, ptr %nCell51, align 8
  %conv52 = zext i16 %57 to i32
  %shr53 = ashr i32 %conv52, 8
  %conv54 = trunc i32 %shr53 to i8
  %58 = load ptr, ptr %data, align 8
  %59 = load i32, ptr %hdr, align 4
  %add55 = add nsw i32 %59, 3
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %58, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds i8, ptr %arrayidx57, i64 0
  store i8 %conv54, ptr %arrayidx58, align 1
  %60 = load ptr, ptr %pPage.addr, align 8
  %nCell59 = getelementptr inbounds nuw %struct.MemPage, ptr %60, i32 0, i32 14
  %61 = load i16, ptr %nCell59, align 8
  %conv60 = trunc i16 %61 to i8
  %62 = load ptr, ptr %data, align 8
  %63 = load i32, ptr %hdr, align 4
  %add61 = add nsw i32 %63, 3
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %62, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds i8, ptr %arrayidx63, i64 1
  store i8 %conv60, ptr %arrayidx64, align 1
  %64 = load ptr, ptr %pPage.addr, align 8
  %nFree65 = getelementptr inbounds nuw %struct.MemPage, ptr %64, i32 0, i32 13
  %65 = load i32, ptr %nFree65, align 4
  %add66 = add nsw i32 %65, 2
  store i32 %add66, ptr %nFree65, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then18, %if.then12, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @freeSpace(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
