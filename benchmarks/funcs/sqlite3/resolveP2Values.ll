; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeNext(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePrevious(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @resolveP2Values(ptr noundef %p, ptr noundef %pMaxFuncArgs) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pMaxFuncArgs.addr = alloca ptr, align 8
  %nMaxArgs = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %aLabel = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pMaxFuncArgs, ptr %pMaxFuncArgs.addr, align 8
  %0 = load ptr, ptr %pMaxFuncArgs.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %nMaxArgs, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pParse1, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pParse, align 8
  %aLabel2 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 23
  %5 = load ptr, ptr %aLabel2, align 8
  store ptr %5, ptr %aLabel, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 35
  %bf.load = load i16, ptr %readOnly, align 1
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, ptr %readOnly, align 1
  %7 = load ptr, ptr %p.addr, align 8
  %bIsReader = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 35
  %bf.load3 = load i16, ptr %bIsReader, align 1
  %bf.clear4 = and i16 %bf.load3, -513
  %bf.set5 = or i16 %bf.clear4, 0
  store i16 %bf.set5, ptr %bIsReader, align 1
  %8 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %aOp, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 24
  %11 = load i32, ptr %nOp, align 8
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  br label %while.body

while.body:                                       ; preds = %if.end61, %entry
  %12 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %12, i32 0, i32 0
  %13 = load i8, ptr %opcode, align 8
  %conv = zext i8 %13 to i32
  %cmp = icmp sle i32 %conv, 61
  br i1 %cmp, label %if.then, label %if.end56

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %pOp, align 8
  %opcode7 = getelementptr inbounds nuw %struct.VdbeOp, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %opcode7, align 8
  %conv8 = zext i8 %15 to i32
  switch i32 %conv8, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb16
    i32 0, label %sw.bb16
    i32 6, label %sw.bb21
    i32 8, label %sw.bb21
    i32 7, label %sw.bb21
    i32 5, label %sw.bb30
    i32 3, label %sw.bb30
    i32 4, label %sw.bb31
    i32 10, label %sw.bb34
    i32 9, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.then
  %16 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %p2, align 8
  %cmp9 = icmp ne i32 %17, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %sw.bb
  %18 = load ptr, ptr %p.addr, align 8
  %readOnly12 = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 35
  %bf.load13 = load i16, ptr %readOnly12, align 1
  %bf.clear14 = and i16 %bf.load13, -257
  %bf.set15 = or i16 %bf.clear14, 0
  store i16 %bf.set15, ptr %readOnly12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then11, %sw.bb
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.end, %if.then, %if.then
  %19 = load ptr, ptr %p.addr, align 8
  %bIsReader17 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 35
  %bf.load18 = load i16, ptr %bIsReader17, align 1
  %bf.clear19 = and i16 %bf.load18, -513
  %bf.set20 = or i16 %bf.clear19, 512
  store i16 %bf.set20, ptr %bIsReader17, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then, %if.then, %if.then
  %20 = load ptr, ptr %p.addr, align 8
  %readOnly22 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 35
  %bf.load23 = load i16, ptr %readOnly22, align 1
  %bf.clear24 = and i16 %bf.load23, -257
  %bf.set25 = or i16 %bf.clear24, 0
  store i16 %bf.set25, ptr %readOnly22, align 1
  %21 = load ptr, ptr %p.addr, align 8
  %bIsReader26 = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 35
  %bf.load27 = load i16, ptr %bIsReader26, align 1
  %bf.clear28 = and i16 %bf.load27, -513
  %bf.set29 = or i16 %bf.clear28, 512
  store i16 %bf.set29, ptr %bIsReader26, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then, %if.then
  %22 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %22, i32 0, i32 6
  store ptr @sqlite3BtreeNext, ptr %p4, align 8
  %23 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %23, i32 0, i32 1
  store i8 -5, ptr %p4type, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then
  %24 = load ptr, ptr %pOp, align 8
  %p432 = getelementptr inbounds nuw %struct.VdbeOp, ptr %24, i32 0, i32 6
  store ptr @sqlite3BtreePrevious, ptr %p432, align 8
  %25 = load ptr, ptr %pOp, align 8
  %p4type33 = getelementptr inbounds nuw %struct.VdbeOp, ptr %25, i32 0, i32 1
  store i8 -5, ptr %p4type33, align 1
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then
  %26 = load ptr, ptr %pOp, align 8
  %p235 = getelementptr inbounds nuw %struct.VdbeOp, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %p235, align 8
  %28 = load i32, ptr %nMaxArgs, align 4
  %cmp36 = icmp sgt i32 %27, %28
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %sw.bb34
  %29 = load ptr, ptr %pOp, align 8
  %p239 = getelementptr inbounds nuw %struct.VdbeOp, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %p239, align 8
  store i32 %30, ptr %nMaxArgs, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %sw.bb34
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.then
  %31 = load ptr, ptr %pOp, align 8
  %arrayidx42 = getelementptr inbounds %struct.VdbeOp, ptr %31, i64 -1
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx42, i32 0, i32 3
  %32 = load i32, ptr %p1, align 4
  store i32 %32, ptr %n, align 4
  %33 = load i32, ptr %n, align 4
  %34 = load i32, ptr %nMaxArgs, align 4
  %cmp43 = icmp sgt i32 %33, %34
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %sw.bb41
  %35 = load i32, ptr %n, align 4
  store i32 %35, ptr %nMaxArgs, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %sw.bb41
  br label %sw.default

sw.default:                                       ; preds = %if.end46, %if.then
  %36 = load ptr, ptr %pOp, align 8
  %p247 = getelementptr inbounds nuw %struct.VdbeOp, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %p247, align 8
  %cmp48 = icmp slt i32 %37, 0
  br i1 %cmp48, label %if.then50, label %if.end55

if.then50:                                        ; preds = %sw.default
  %38 = load ptr, ptr %aLabel, align 8
  %39 = load ptr, ptr %pOp, align 8
  %p251 = getelementptr inbounds nuw %struct.VdbeOp, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %p251, align 8
  %not = xor i32 %40, -1
  %idxprom52 = sext i32 %not to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %38, i64 %idxprom52
  %41 = load i32, ptr %arrayidx53, align 4
  %42 = load ptr, ptr %pOp, align 8
  %p254 = getelementptr inbounds nuw %struct.VdbeOp, ptr %42, i32 0, i32 4
  store i32 %41, ptr %p254, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %if.end40, %sw.bb31, %sw.bb30, %sw.bb21, %sw.bb16
  br label %if.end56

if.end56:                                         ; preds = %sw.epilog, %while.body
  %43 = load ptr, ptr %pOp, align 8
  %44 = load ptr, ptr %p.addr, align 8
  %aOp57 = getelementptr inbounds nuw %struct.Vdbe, ptr %44, i32 0, i32 23
  %45 = load ptr, ptr %aOp57, align 8
  %cmp58 = icmp eq ptr %43, %45
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  br label %while.end

if.end61:                                         ; preds = %if.end56
  %46 = load ptr, ptr %pOp, align 8
  %incdec.ptr = getelementptr inbounds %struct.VdbeOp, ptr %46, i32 -1
  store ptr %incdec.ptr, ptr %pOp, align 8
  br label %while.body

while.end:                                        ; preds = %if.then60
  %47 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %db, align 8
  %49 = load ptr, ptr %pParse, align 8
  %aLabel62 = getelementptr inbounds nuw %struct.Parse, ptr %49, i32 0, i32 23
  %50 = load ptr, ptr %aLabel62, align 8
  call void @sqlite3DbFree(ptr noundef %48, ptr noundef %50)
  %51 = load ptr, ptr %pParse, align 8
  %aLabel63 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 23
  store ptr null, ptr %aLabel63, align 8
  %52 = load ptr, ptr %pParse, align 8
  %nLabel = getelementptr inbounds nuw %struct.Parse, ptr %52, i32 0, i32 21
  store i32 0, ptr %nLabel, align 4
  %53 = load i32, ptr %nMaxArgs, align 4
  %54 = load ptr, ptr %pMaxFuncArgs.addr, align 8
  store i32 %53, ptr %54, align 4
  ret void
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
