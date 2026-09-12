; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeFreeCursor(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @allocateCursor(ptr noundef %p, i32 noundef %iCur, i32 noundef %nField, i32 noundef %iDb, i8 noundef zeroext %eCurType) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %nField.addr = alloca i32, align 4
  %iDb.addr = alloca i32, align 4
  %eCurType.addr = alloca i8, align 1
  %pMem = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %pCx = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store i32 %nField, ptr %nField.addr, align 4
  store i32 %iDb, ptr %iDb.addr, align 4
  store i8 %eCurType, ptr %eCurType.addr, align 1
  %0 = load i32, ptr %iCur.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %aMem, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %nMem, align 8
  %5 = load i32, ptr %iCur.addr, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %2, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %aMem1 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %aMem1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %7, %cond.false ]
  store ptr %cond, ptr %pMem, align 8
  store ptr null, ptr %pCx, align 8
  %8 = load i32, ptr %nField.addr, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 8, %conv
  %add = add i64 120, %mul
  %9 = load i8, ptr %eCurType.addr, align 1
  %conv2 = zext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  %call = call i32 @sqlite3BtreeCursorSize()
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.false6 ]
  %conv9 = sext i32 %cond8 to i64
  %add10 = add i64 %add, %conv9
  %conv11 = trunc i64 %add10 to i32
  store i32 %conv11, ptr %nByte, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %apCsr = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 21
  %11 = load ptr, ptr %apCsr, align 8
  %12 = load i32, ptr %iCur.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %11, i64 %idxprom12
  %13 = load ptr, ptr %arrayidx13, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end29

if.then:                                          ; preds = %cond.end7
  %14 = load ptr, ptr %p.addr, align 8
  %apCsr14 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 21
  %15 = load ptr, ptr %apCsr14, align 8
  %16 = load i32, ptr %iCur.addr, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %15, i64 %idxprom15
  %17 = load ptr, ptr %arrayidx16, align 8
  %pBtx = getelementptr inbounds nuw %struct.VdbeCursor, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %pBtx, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then
  %19 = load ptr, ptr %p.addr, align 8
  %apCsr20 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 21
  %20 = load ptr, ptr %apCsr20, align 8
  %21 = load i32, ptr %iCur.addr, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %20, i64 %idxprom21
  %22 = load ptr, ptr %arrayidx22, align 8
  %isEphemeral = getelementptr inbounds nuw %struct.VdbeCursor, ptr %22, i32 0, i32 5
  %bf.load = load i8, ptr %isEphemeral, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %isEphemeral, align 1
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then
  %23 = load ptr, ptr %p.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %apCsr23 = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 21
  %25 = load ptr, ptr %apCsr23, align 8
  %26 = load i32, ptr %iCur.addr, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %25, i64 %idxprom24
  %27 = load ptr, ptr %arrayidx25, align 8
  call void @sqlite3VdbeFreeCursor(ptr noundef %23, ptr noundef %27)
  %28 = load ptr, ptr %p.addr, align 8
  %apCsr26 = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 21
  %29 = load ptr, ptr %apCsr26, align 8
  %30 = load i32, ptr %iCur.addr, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %29, i64 %idxprom27
  store ptr null, ptr %arrayidx28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end, %cond.end7
  %31 = load ptr, ptr %pMem, align 8
  %32 = load i32, ptr %nByte, align 4
  %call30 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %31, i32 noundef %32)
  %cmp31 = icmp eq i32 0, %call30
  br i1 %cmp31, label %if.then33, label %if.end55

if.then33:                                        ; preds = %if.end29
  %33 = load ptr, ptr %pMem, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %z, align 8
  store ptr %34, ptr %pCx, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %apCsr34 = getelementptr inbounds nuw %struct.Vdbe, ptr %35, i32 0, i32 21
  %36 = load ptr, ptr %apCsr34, align 8
  %37 = load i32, ptr %iCur.addr, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %36, i64 %idxprom35
  store ptr %34, ptr %arrayidx36, align 8
  %38 = load ptr, ptr %pCx, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 40, i1 false)
  %39 = load i8, ptr %eCurType.addr, align 1
  %40 = load ptr, ptr %pCx, align 8
  %eCurType37 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %40, i32 0, i32 0
  store i8 %39, ptr %eCurType37, align 8
  %41 = load i32, ptr %iDb.addr, align 4
  %conv38 = trunc i32 %41 to i8
  %42 = load ptr, ptr %pCx, align 8
  %iDb39 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %42, i32 0, i32 1
  store i8 %conv38, ptr %iDb39, align 1
  %43 = load i32, ptr %nField.addr, align 4
  %conv40 = trunc i32 %43 to i16
  %44 = load ptr, ptr %pCx, align 8
  %nField41 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %44, i32 0, i32 16
  store i16 %conv40, ptr %nField41, align 8
  %45 = load ptr, ptr %pCx, align 8
  %aType = getelementptr inbounds nuw %struct.VdbeCursor, ptr %45, i32 0, i32 23
  %46 = load i32, ptr %nField.addr, align 4
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds [1 x i32], ptr %aType, i64 0, i64 %idxprom42
  %47 = load ptr, ptr %pCx, align 8
  %aOffset = getelementptr inbounds nuw %struct.VdbeCursor, ptr %47, i32 0, i32 19
  store ptr %arrayidx43, ptr %aOffset, align 8
  %48 = load i8, ptr %eCurType.addr, align 1
  %conv44 = zext i8 %48 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.then33
  %49 = load ptr, ptr %pMem, align 8
  %z48 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %z48, align 8
  %51 = load i32, ptr %nField.addr, align 4
  %conv49 = sext i32 %51 to i64
  %mul50 = mul i64 8, %conv49
  %add51 = add i64 120, %mul50
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %50, i64 %add51
  %52 = load ptr, ptr %pCx, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %52, i32 0, i32 12
  store ptr %arrayidx52, ptr %uc, align 8
  %53 = load ptr, ptr %pCx, align 8
  %uc53 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %uc53, align 8
  call void @sqlite3BtreeCursorZero(ptr noundef %54)
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.then33
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end29
  %55 = load ptr, ptr %pCx, align 8
  ret ptr %55
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCursorSize() #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeCursorZero(ptr noundef) #1

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
