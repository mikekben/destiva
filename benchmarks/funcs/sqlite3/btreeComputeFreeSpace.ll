; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeComputeFreeSpace(ptr noundef %pPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %pc = alloca i32, align 4
  %hdr = alloca i8, align 1
  %data = alloca ptr, align 8
  %usableSize = alloca i32, align 4
  %nFree = alloca i32, align 4
  %top = alloca i32, align 4
  %iCellFirst = alloca i32, align 4
  %iCellLast = alloca i32, align 4
  %next = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt, align 8
  %usableSize1 = getelementptr inbounds nuw %struct.BtShared, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %usableSize1, align 4
  store i32 %2, ptr %usableSize, align 4
  %3 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 6
  %4 = load i8, ptr %hdrOffset, align 1
  store i8 %4, ptr %hdr, align 1
  %5 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %aData, align 8
  store ptr %6, ptr %data, align 8
  %7 = load ptr, ptr %data, align 8
  %8 = load i8, ptr %hdr, align 1
  %conv = zext i8 %8 to i32
  %add = add nsw i32 %conv, 5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %arrayidx2 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %10 = load ptr, ptr %data, align 8
  %11 = load i8, ptr %hdr, align 1
  %conv4 = zext i8 %11 to i32
  %add5 = add nsw i32 %conv4, 5
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds i8, ptr %arrayidx7, i64 1
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %or = or i32 %shl, %conv9
  %sub = sub nsw i32 %or, 1
  %and = and i32 %sub, 65535
  %add10 = add nsw i32 %and, 1
  store i32 %add10, ptr %top, align 4
  %13 = load i8, ptr %hdr, align 1
  %conv11 = zext i8 %13 to i32
  %add12 = add nsw i32 %conv11, 8
  %14 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 7
  %15 = load i8, ptr %childPtrSize, align 2
  %conv13 = zext i8 %15 to i32
  %add14 = add nsw i32 %add12, %conv13
  %16 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 14
  %17 = load i16, ptr %nCell, align 8
  %conv15 = zext i16 %17 to i32
  %mul = mul nsw i32 2, %conv15
  %add16 = add nsw i32 %add14, %mul
  store i32 %add16, ptr %iCellFirst, align 4
  %18 = load i32, ptr %usableSize, align 4
  %sub17 = sub nsw i32 %18, 4
  store i32 %sub17, ptr %iCellLast, align 4
  %19 = load ptr, ptr %data, align 8
  %20 = load i8, ptr %hdr, align 1
  %conv18 = zext i8 %20 to i32
  %add19 = add nsw i32 %conv18, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %19, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds i8, ptr %arrayidx21, i64 0
  %21 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %shl24 = shl i32 %conv23, 8
  %22 = load ptr, ptr %data, align 8
  %23 = load i8, ptr %hdr, align 1
  %conv25 = zext i8 %23 to i32
  %add26 = add nsw i32 %conv25, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %22, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds i8, ptr %arrayidx28, i64 1
  %24 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %24 to i32
  %or31 = or i32 %shl24, %conv30
  store i32 %or31, ptr %pc, align 4
  %25 = load ptr, ptr %data, align 8
  %26 = load i8, ptr %hdr, align 1
  %conv32 = zext i8 %26 to i32
  %add33 = add nsw i32 %conv32, 7
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 %idxprom34
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i32
  %28 = load i32, ptr %top, align 4
  %add37 = add nsw i32 %conv36, %28
  store i32 %add37, ptr %nFree, align 4
  %29 = load i32, ptr %pc, align 4
  %cmp = icmp sgt i32 %29, 0
  br i1 %cmp, label %if.then, label %if.end87

if.then:                                          ; preds = %entry
  %30 = load i32, ptr %pc, align 4
  %31 = load i32, ptr %iCellFirst, align 4
  %cmp39 = icmp slt i32 %30, %31
  br i1 %cmp39, label %if.then41, label %if.end

if.then41:                                        ; preds = %if.then
  %call = call i32 @sqlite3CorruptError(i32 noundef 65301)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %if.end75, %if.end
  %32 = load i32, ptr %pc, align 4
  %33 = load i32, ptr %iCellLast, align 4
  %cmp42 = icmp sgt i32 %32, %33
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %while.body
  %call45 = call i32 @sqlite3CorruptError(i32 noundef 65306)
  store i32 %call45, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %while.body
  %34 = load ptr, ptr %data, align 8
  %35 = load i32, ptr %pc, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %34, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds i8, ptr %arrayidx48, i64 0
  %36 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %36 to i32
  %shl51 = shl i32 %conv50, 8
  %37 = load ptr, ptr %data, align 8
  %38 = load i32, ptr %pc, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %37, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds i8, ptr %arrayidx53, i64 1
  %39 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %39 to i32
  %or56 = or i32 %shl51, %conv55
  store i32 %or56, ptr %next, align 4
  %40 = load ptr, ptr %data, align 8
  %41 = load i32, ptr %pc, align 4
  %add57 = add nsw i32 %41, 2
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %40, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds i8, ptr %arrayidx59, i64 0
  %42 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %42 to i32
  %shl62 = shl i32 %conv61, 8
  %43 = load ptr, ptr %data, align 8
  %44 = load i32, ptr %pc, align 4
  %add63 = add nsw i32 %44, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %43, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx65, i64 1
  %45 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %45 to i32
  %or68 = or i32 %shl62, %conv67
  store i32 %or68, ptr %size, align 4
  %46 = load i32, ptr %nFree, align 4
  %47 = load i32, ptr %size, align 4
  %add69 = add i32 %46, %47
  store i32 %add69, ptr %nFree, align 4
  %48 = load i32, ptr %next, align 4
  %49 = load i32, ptr %pc, align 4
  %50 = load i32, ptr %size, align 4
  %add70 = add i32 %49, %50
  %add71 = add i32 %add70, 3
  %cmp72 = icmp ule i32 %48, %add71
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end46
  br label %while.end

if.end75:                                         ; preds = %if.end46
  %51 = load i32, ptr %next, align 4
  store i32 %51, ptr %pc, align 4
  br label %while.body

while.end:                                        ; preds = %if.then74
  %52 = load i32, ptr %next, align 4
  %cmp76 = icmp ugt i32 %52, 0
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %while.end
  %call79 = call i32 @sqlite3CorruptError(i32 noundef 65316)
  store i32 %call79, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %while.end
  %53 = load i32, ptr %pc, align 4
  %54 = load i32, ptr %size, align 4
  %add81 = add i32 %53, %54
  %55 = load i32, ptr %usableSize, align 4
  %cmp82 = icmp ugt i32 %add81, %55
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end80
  %call85 = call i32 @sqlite3CorruptError(i32 noundef 65320)
  store i32 %call85, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.end80
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %entry
  %56 = load i32, ptr %nFree, align 4
  %57 = load i32, ptr %usableSize, align 4
  %cmp88 = icmp sgt i32 %56, %57
  br i1 %cmp88, label %if.then92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end87
  %58 = load i32, ptr %nFree, align 4
  %59 = load i32, ptr %iCellFirst, align 4
  %cmp90 = icmp slt i32 %58, %59
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %lor.lhs.false, %if.end87
  %call93 = call i32 @sqlite3CorruptError(i32 noundef 65332)
  store i32 %call93, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %lor.lhs.false
  %60 = load i32, ptr %nFree, align 4
  %61 = load i32, ptr %iCellFirst, align 4
  %sub95 = sub nsw i32 %60, %61
  %conv96 = trunc i32 %sub95 to i16
  %conv97 = zext i16 %conv96 to i32
  %62 = load ptr, ptr %pPage.addr, align 8
  %nFree98 = getelementptr inbounds nuw %struct.MemPage, ptr %62, i32 0, i32 13
  store i32 %conv97, ptr %nFree98, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then92, %if.then84, %if.then78, %if.then44, %if.then41
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
