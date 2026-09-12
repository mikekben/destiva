; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @pageFindSlot(ptr noundef %pPg, i32 noundef %nByte, ptr noundef %pRc) #1 {
entry:
  %retval = alloca ptr, align 8
  %pPg.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pRc.addr = alloca ptr, align 8
  %hdr = alloca i32, align 4
  %aData = alloca ptr, align 8
  %iAddr = alloca i32, align 4
  %pc = alloca i32, align 4
  %x = alloca i32, align 4
  %maxPC = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %pRc, ptr %pRc.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %hdr, align 4
  %2 = load ptr, ptr %pPg.addr, align 8
  %aData1 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aData1, align 8
  store ptr %3, ptr %aData, align 8
  %4 = load i32, ptr %hdr, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %iAddr, align 4
  %5 = load ptr, ptr %aData, align 8
  %6 = load i32, ptr %iAddr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %arrayidx2 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %shl = shl i32 %conv3, 8
  %8 = load ptr, ptr %aData, align 8
  %9 = load i32, ptr %iAddr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds i8, ptr %arrayidx5, i64 1
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %or = or i32 %shl, %conv7
  store i32 %or, ptr %pc, align 4
  %11 = load ptr, ptr %pPg.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 18
  %12 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %12, i32 0, i32 16
  %13 = load i32, ptr %usableSize, align 4
  %14 = load i32, ptr %nByte.addr, align 4
  %sub = sub i32 %13, %14
  store i32 %sub, ptr %maxPC, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end84, %entry
  %15 = load i32, ptr %pc, align 4
  %16 = load i32, ptr %maxPC, align 4
  %cmp = icmp sle i32 %15, %16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %aData, align 8
  %18 = load i32, ptr %pc, align 4
  %add9 = add nsw i32 %18, 2
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds i8, ptr %arrayidx11, i64 0
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %shl14 = shl i32 %conv13, 8
  %20 = load ptr, ptr %aData, align 8
  %21 = load i32, ptr %pc, align 4
  %add15 = add nsw i32 %21, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %20, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds i8, ptr %arrayidx17, i64 1
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  %or20 = or i32 %shl14, %conv19
  store i32 %or20, ptr %size, align 4
  %23 = load i32, ptr %size, align 4
  %24 = load i32, ptr %nByte.addr, align 4
  %sub21 = sub nsw i32 %23, %24
  store i32 %sub21, ptr %x, align 4
  %cmp22 = icmp sge i32 %sub21, 0
  br i1 %cmp22, label %if.then, label %if.end66

if.then:                                          ; preds = %while.body
  %25 = load i32, ptr %x, align 4
  %cmp24 = icmp slt i32 %25, 4
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then
  %26 = load ptr, ptr %aData, align 8
  %27 = load i32, ptr %hdr, align 4
  %add27 = add nsw i32 %27, 7
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %26, i64 %idxprom28
  %28 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %28 to i32
  %cmp31 = icmp sgt i32 %conv30, 57
  br i1 %cmp31, label %if.then33, label %if.end

if.then33:                                        ; preds = %if.then26
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then26
  %29 = load ptr, ptr %aData, align 8
  %30 = load i32, ptr %iAddr, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %29, i64 %idxprom34
  %31 = load ptr, ptr %aData, align 8
  %32 = load i32, ptr %pc, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %31, i64 %idxprom36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx35, ptr align 1 %arrayidx37, i64 2, i1 false)
  %33 = load i32, ptr %x, align 4
  %conv38 = trunc i32 %33 to i8
  %conv39 = zext i8 %conv38 to i32
  %34 = load ptr, ptr %aData, align 8
  %35 = load i32, ptr %hdr, align 4
  %add40 = add nsw i32 %35, 7
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 %idxprom41
  %36 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %36 to i32
  %add44 = add nsw i32 %conv43, %conv39
  %conv45 = trunc i32 %add44 to i8
  store i8 %conv45, ptr %arrayidx42, align 1
  br label %if.end62

if.else:                                          ; preds = %if.then
  %37 = load i32, ptr %x, align 4
  %38 = load i32, ptr %pc, align 4
  %add46 = add nsw i32 %37, %38
  %39 = load i32, ptr %maxPC, align 4
  %cmp47 = icmp sgt i32 %add46, %39
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else
  %call = call i32 @sqlite3CorruptError(i32 noundef 64968)
  %40 = load ptr, ptr %pRc.addr, align 8
  store i32 %call, ptr %40, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.else50:                                        ; preds = %if.else
  %41 = load i32, ptr %x, align 4
  %shr = ashr i32 %41, 8
  %conv51 = trunc i32 %shr to i8
  %42 = load ptr, ptr %aData, align 8
  %43 = load i32, ptr %pc, align 4
  %add52 = add nsw i32 %43, 2
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %42, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds i8, ptr %arrayidx54, i64 0
  store i8 %conv51, ptr %arrayidx55, align 1
  %44 = load i32, ptr %x, align 4
  %conv56 = trunc i32 %44 to i8
  %45 = load ptr, ptr %aData, align 8
  %46 = load i32, ptr %pc, align 4
  %add57 = add nsw i32 %46, 2
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %45, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds i8, ptr %arrayidx59, i64 1
  store i8 %conv56, ptr %arrayidx60, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else50
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end
  %47 = load ptr, ptr %aData, align 8
  %48 = load i32, ptr %pc, align 4
  %49 = load i32, ptr %x, align 4
  %add63 = add nsw i32 %48, %49
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %47, i64 %idxprom64
  store ptr %arrayidx65, ptr %retval, align 8
  br label %return

if.end66:                                         ; preds = %while.body
  %50 = load i32, ptr %pc, align 4
  store i32 %50, ptr %iAddr, align 4
  %51 = load ptr, ptr %aData, align 8
  %52 = load i32, ptr %pc, align 4
  %idxprom67 = sext i32 %52 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %51, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds i8, ptr %arrayidx68, i64 0
  %53 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %53 to i32
  %shl71 = shl i32 %conv70, 8
  %54 = load ptr, ptr %aData, align 8
  %55 = load i32, ptr %pc, align 4
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds i8, ptr %arrayidx73, i64 1
  %56 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %56 to i32
  %or76 = or i32 %shl71, %conv75
  store i32 %or76, ptr %pc, align 4
  %57 = load i32, ptr %pc, align 4
  %58 = load i32, ptr %iAddr, align 4
  %59 = load i32, ptr %size, align 4
  %add77 = add nsw i32 %58, %59
  %cmp78 = icmp sle i32 %57, %add77
  br i1 %cmp78, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end66
  %60 = load i32, ptr %pc, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.then80
  %call82 = call i32 @sqlite3CorruptError(i32 noundef 64982)
  %61 = load ptr, ptr %pRc.addr, align 8
  store i32 %call82, ptr %61, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then80
  store ptr null, ptr %retval, align 8
  br label %return

if.end84:                                         ; preds = %if.end66
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %62 = load i32, ptr %pc, align 4
  %63 = load i32, ptr %maxPC, align 4
  %64 = load i32, ptr %nByte.addr, align 4
  %add85 = add nsw i32 %63, %64
  %sub86 = sub nsw i32 %add85, 4
  %cmp87 = icmp sgt i32 %62, %sub86
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %while.end
  %call90 = call i32 @sqlite3CorruptError(i32 noundef 64989)
  %65 = load ptr, ptr %pRc.addr, align 8
  store i32 %call90, ptr %65, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %while.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end91, %if.end83, %if.end62, %if.then49, %if.then33
  %66 = load ptr, ptr %retval, align 8
  ret ptr %66
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
