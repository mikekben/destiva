; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BitvecBuiltinTest(i32 noundef %sz, ptr noundef %aOp) #0 {
entry:
  %sz.addr = alloca i32, align 4
  %aOp.addr = alloca ptr, align 8
  %pBitvec = alloca ptr, align 8
  %pV = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %nx = alloca i32, align 4
  %pc = alloca i32, align 4
  %op = alloca i32, align 4
  %pTmpSpace = alloca ptr, align 8
  store i32 %sz, ptr %sz.addr, align 4
  store ptr %aOp, ptr %aOp.addr, align 8
  store ptr null, ptr %pBitvec, align 8
  store ptr null, ptr %pV, align 8
  store i32 -1, ptr %rc, align 4
  %0 = load i32, ptr %sz.addr, align 4
  %call = call ptr @sqlite3BitvecCreate(i32 noundef %0)
  store ptr %call, ptr %pBitvec, align 8
  %1 = load i32, ptr %sz.addr, align 4
  %add = add nsw i32 %1, 7
  %div = sdiv i32 %add, 8
  %add1 = add nsw i32 %div, 1
  %conv = sext i32 %add1 to i64
  %call2 = call ptr @sqlite3MallocZero(i64 noundef %conv)
  store ptr %call2, ptr %pV, align 8
  %call3 = call ptr @sqlite3_malloc64(i64 noundef 512)
  store ptr %call3, ptr %pTmpSpace, align 8
  %2 = load ptr, ptr %pBitvec, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pV, align 8
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pTmpSpace, align 8
  %cmp8 = icmp eq ptr %4, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  br label %bitvec_end

if.end:                                           ; preds = %lor.lhs.false7
  %call10 = call i32 @sqlite3BitvecSet(ptr noundef null, i32 noundef 1)
  %5 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3BitvecClear(ptr noundef null, i32 noundef 1, ptr noundef %5)
  store i32 0, ptr %pc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.end
  %6 = load ptr, ptr %aOp.addr, align 8
  %7 = load i32, ptr %pc, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  store i32 %8, ptr %op, align 4
  %cmp11 = icmp ne i32 %8, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %op, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 3, label %sw.bb23
    i32 4, label %sw.bb23
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  store i32 4, ptr %nx, align 4
  %10 = load ptr, ptr %aOp.addr, align 8
  %11 = load i32, ptr %pc, align 4
  %add13 = add nsw i32 %11, 2
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %10, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, ptr %i, align 4
  %13 = load ptr, ptr %aOp.addr, align 8
  %14 = load i32, ptr %pc, align 4
  %add16 = add nsw i32 %14, 3
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %13, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4
  %16 = load ptr, ptr %aOp.addr, align 8
  %17 = load i32, ptr %pc, align 4
  %add19 = add nsw i32 %17, 2
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %16, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4
  %add22 = add nsw i32 %18, %15
  store i32 %add22, ptr %arrayidx21, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body, %while.body
  br label %sw.default

sw.default:                                       ; preds = %sw.bb23, %while.body
  store i32 2, ptr %nx, align 4
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load ptr, ptr %aOp.addr, align 8
  %20 = load i32, ptr %pc, align 4
  %add24 = add nsw i32 %20, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %19, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %arrayidx26, align 4
  %cmp27 = icmp sgt i32 %dec, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %sw.epilog
  store i32 0, ptr %nx, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %sw.epilog
  %22 = load i32, ptr %nx, align 4
  %23 = load i32, ptr %pc, align 4
  %add31 = add nsw i32 %23, %22
  store i32 %add31, ptr %pc, align 4
  %24 = load i32, ptr %i, align 4
  %and = and i32 %24, 2147483647
  %25 = load i32, ptr %sz.addr, align 4
  %rem = srem i32 %and, %25
  store i32 %rem, ptr %i, align 4
  %26 = load i32, ptr %op, align 4
  %and32 = and i32 %26, 1
  %cmp33 = icmp ne i32 %and32, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end30
  %27 = load i32, ptr %i, align 4
  %add36 = add nsw i32 %27, 1
  %and37 = and i32 %add36, 7
  %shl = shl i32 1, %and37
  %28 = load ptr, ptr %pV, align 8
  %29 = load i32, ptr %i, align 4
  %add38 = add nsw i32 %29, 1
  %shr = ashr i32 %add38, 3
  %idxprom39 = sext i32 %shr to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 %idxprom39
  %30 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %or = or i32 %conv41, %shl
  %conv42 = trunc i32 %or to i8
  store i8 %conv42, ptr %arrayidx40, align 1
  %31 = load i32, ptr %op, align 4
  %cmp43 = icmp ne i32 %31, 5
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then35
  %32 = load ptr, ptr %pBitvec, align 8
  %33 = load i32, ptr %i, align 4
  %add46 = add nsw i32 %33, 1
  %call47 = call i32 @sqlite3BitvecSet(ptr noundef %32, i32 noundef %add46)
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  br label %bitvec_end

if.end49:                                         ; preds = %if.then45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then35
  br label %if.end62

if.else:                                          ; preds = %if.end30
  %34 = load i32, ptr %i, align 4
  %add51 = add nsw i32 %34, 1
  %and52 = and i32 %add51, 7
  %shl53 = shl i32 1, %and52
  %not = xor i32 %shl53, -1
  %35 = load ptr, ptr %pV, align 8
  %36 = load i32, ptr %i, align 4
  %add54 = add nsw i32 %36, 1
  %shr55 = ashr i32 %add54, 3
  %idxprom56 = sext i32 %shr55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %35, i64 %idxprom56
  %37 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %37 to i32
  %and59 = and i32 %conv58, %not
  %conv60 = trunc i32 %and59 to i8
  store i8 %conv60, ptr %arrayidx57, align 1
  %38 = load ptr, ptr %pBitvec, align 8
  %39 = load i32, ptr %i, align 4
  %add61 = add nsw i32 %39, 1
  %40 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3BitvecClear(ptr noundef %38, i32 noundef %add61, ptr noundef %40)
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end50
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call63 = call i32 @sqlite3BitvecTest(ptr noundef null, i32 noundef 0)
  %41 = load ptr, ptr %pBitvec, align 8
  %42 = load i32, ptr %sz.addr, align 4
  %add64 = add nsw i32 %42, 1
  %call65 = call i32 @sqlite3BitvecTest(ptr noundef %41, i32 noundef %add64)
  %add66 = add nsw i32 %call63, %call65
  %43 = load ptr, ptr %pBitvec, align 8
  %call67 = call i32 @sqlite3BitvecTest(ptr noundef %43, i32 noundef 0)
  %add68 = add nsw i32 %add66, %call67
  %44 = load ptr, ptr %pBitvec, align 8
  %call69 = call i32 @sqlite3BitvecSize(ptr noundef %44)
  %45 = load i32, ptr %sz.addr, align 4
  %sub70 = sub i32 %call69, %45
  %add71 = add i32 %add68, %sub70
  store i32 %add71, ptr %rc, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %46 = load i32, ptr %i, align 4
  %47 = load i32, ptr %sz.addr, align 4
  %cmp72 = icmp sle i32 %46, %47
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load ptr, ptr %pV, align 8
  %49 = load i32, ptr %i, align 4
  %shr74 = ashr i32 %49, 3
  %idxprom75 = sext i32 %shr74 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %48, i64 %idxprom75
  %50 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %50 to i32
  %51 = load i32, ptr %i, align 4
  %and78 = and i32 %51, 7
  %shl79 = shl i32 1, %and78
  %and80 = and i32 %conv77, %shl79
  %cmp81 = icmp ne i32 %and80, 0
  %conv82 = zext i1 %cmp81 to i32
  %52 = load ptr, ptr %pBitvec, align 8
  %53 = load i32, ptr %i, align 4
  %call83 = call i32 @sqlite3BitvecTest(ptr noundef %52, i32 noundef %53)
  %cmp84 = icmp ne i32 %conv82, %call83
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.body
  %54 = load i32, ptr %i, align 4
  store i32 %54, ptr %rc, align 4
  br label %for.end

if.end87:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %55 = load i32, ptr %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then86, %for.cond
  br label %bitvec_end

bitvec_end:                                       ; preds = %for.end, %if.then48, %if.then
  %56 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3_free(ptr noundef %56)
  %57 = load ptr, ptr %pV, align 8
  call void @sqlite3_free(ptr noundef %57)
  %58 = load ptr, ptr %pBitvec, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %58)
  %59 = load i32, ptr %rc, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTest(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecClear(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !7}
