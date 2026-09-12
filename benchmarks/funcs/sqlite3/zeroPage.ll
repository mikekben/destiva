; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @decodeFlags(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @zeroPage(ptr noundef %pPage, i32 noundef %flags) #1 {
entry:
  %pPage.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %hdr = alloca i8, align 1
  %first = alloca i16, align 2
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aData, align 8
  store ptr %1, ptr %data, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %pBt1, align 8
  store ptr %3, ptr %pBt, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %hdrOffset, align 1
  store i8 %5, ptr %hdr, align 1
  %6 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %data, align 8
  %9 = load i8, ptr %hdr, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %usableSize, align 4
  %12 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %12 to i32
  %sub = sub i32 %11, %conv2
  %conv3 = zext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx, i8 0, i64 %conv3, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %flags.addr, align 4
  %conv4 = trunc i32 %13 to i8
  %14 = load ptr, ptr %data, align 8
  %15 = load i8, ptr %hdr, align 1
  %idxprom5 = zext i8 %15 to i64
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %14, i64 %idxprom5
  store i8 %conv4, ptr %arrayidx6, align 1
  %16 = load i8, ptr %hdr, align 1
  %conv7 = zext i8 %16 to i32
  %17 = load i32, ptr %flags.addr, align 4
  %and8 = and i32 %17, 8
  %cmp = icmp eq i32 %and8, 0
  %18 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 12, i32 8
  %add = add nsw i32 %conv7, %cond
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, ptr %first, align 2
  %19 = load ptr, ptr %data, align 8
  %20 = load i8, ptr %hdr, align 1
  %conv11 = zext i8 %20 to i32
  %add12 = add nsw i32 %conv11, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 %idxprom13
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx14, i8 0, i64 4, i1 false)
  %21 = load ptr, ptr %data, align 8
  %22 = load i8, ptr %hdr, align 1
  %conv15 = zext i8 %22 to i32
  %add16 = add nsw i32 %conv15, 7
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 %idxprom17
  store i8 0, ptr %arrayidx18, align 1
  %23 = load ptr, ptr %pBt, align 8
  %usableSize19 = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 16
  %24 = load i32, ptr %usableSize19, align 4
  %shr = lshr i32 %24, 8
  %conv20 = trunc i32 %shr to i8
  %25 = load ptr, ptr %data, align 8
  %26 = load i8, ptr %hdr, align 1
  %conv21 = zext i8 %26 to i32
  %add22 = add nsw i32 %conv21, 5
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %25, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds i8, ptr %arrayidx24, i64 0
  store i8 %conv20, ptr %arrayidx25, align 1
  %27 = load ptr, ptr %pBt, align 8
  %usableSize26 = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 16
  %28 = load i32, ptr %usableSize26, align 4
  %conv27 = trunc i32 %28 to i8
  %29 = load ptr, ptr %data, align 8
  %30 = load i8, ptr %hdr, align 1
  %conv28 = zext i8 %30 to i32
  %add29 = add nsw i32 %conv28, 5
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %29, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds i8, ptr %arrayidx31, i64 1
  store i8 %conv27, ptr %arrayidx32, align 1
  %31 = load ptr, ptr %pBt, align 8
  %usableSize33 = getelementptr inbounds nuw %struct.BtShared, ptr %31, i32 0, i32 16
  %32 = load i32, ptr %usableSize33, align 4
  %33 = load i16, ptr %first, align 2
  %conv34 = zext i16 %33 to i32
  %sub35 = sub i32 %32, %conv34
  %conv36 = trunc i32 %sub35 to i16
  %conv37 = zext i16 %conv36 to i32
  %34 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 13
  store i32 %conv37, ptr %nFree, align 4
  %35 = load ptr, ptr %pPage.addr, align 8
  %36 = load i32, ptr %flags.addr, align 4
  %call = call i32 @decodeFlags(ptr noundef %35, i32 noundef %36)
  %37 = load i16, ptr %first, align 2
  %38 = load ptr, ptr %pPage.addr, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 12
  store i16 %37, ptr %cellOffset, align 2
  %39 = load ptr, ptr %data, align 8
  %40 = load ptr, ptr %pBt, align 8
  %usableSize38 = getelementptr inbounds nuw %struct.BtShared, ptr %40, i32 0, i32 16
  %41 = load i32, ptr %usableSize38, align 4
  %idxprom39 = zext i32 %41 to i64
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %39, i64 %idxprom39
  %42 = load ptr, ptr %pPage.addr, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %42, i32 0, i32 20
  store ptr %arrayidx40, ptr %aDataEnd, align 8
  %43 = load ptr, ptr %data, align 8
  %44 = load i16, ptr %first, align 2
  %idxprom41 = zext i16 %44 to i64
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %43, i64 %idxprom41
  %45 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 21
  store ptr %arrayidx42, ptr %aCellIdx, align 8
  %46 = load ptr, ptr %data, align 8
  %47 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %47, i32 0, i32 7
  %48 = load i8, ptr %childPtrSize, align 2
  %idxprom43 = zext i8 %48 to i64
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %46, i64 %idxprom43
  %49 = load ptr, ptr %pPage.addr, align 8
  %aDataOfst = getelementptr inbounds nuw %struct.MemPage, ptr %49, i32 0, i32 22
  store ptr %arrayidx44, ptr %aDataOfst, align 8
  %50 = load ptr, ptr %pPage.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %50, i32 0, i32 9
  store i8 0, ptr %nOverflow, align 4
  %51 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %51, i32 0, i32 15
  %52 = load i32, ptr %pageSize, align 8
  %sub45 = sub i32 %52, 1
  %conv46 = trunc i32 %sub45 to i16
  %53 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %53, i32 0, i32 15
  store i16 %conv46, ptr %maskPage, align 2
  %54 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %54, i32 0, i32 14
  store i16 0, ptr %nCell, align 8
  %55 = load ptr, ptr %pPage.addr, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %55, i32 0, i32 0
  store i8 1, ptr %isInit, align 8
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
