; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @walMerge(ptr noundef %aContent, ptr noundef %aLeft, i32 noundef %nLeft, ptr noundef %paRight, ptr noundef %pnRight, ptr noundef %aTmp) #1 {
entry:
  %aContent.addr = alloca ptr, align 8
  %aLeft.addr = alloca ptr, align 8
  %nLeft.addr = alloca i32, align 4
  %paRight.addr = alloca ptr, align 8
  %pnRight.addr = alloca ptr, align 8
  %aTmp.addr = alloca ptr, align 8
  %iLeft = alloca i32, align 4
  %iRight = alloca i32, align 4
  %iOut = alloca i32, align 4
  %nRight = alloca i32, align 4
  %aRight = alloca ptr, align 8
  %logpage = alloca i16, align 2
  %dbpage = alloca i32, align 4
  store ptr %aContent, ptr %aContent.addr, align 8
  store ptr %aLeft, ptr %aLeft.addr, align 8
  store i32 %nLeft, ptr %nLeft.addr, align 4
  store ptr %paRight, ptr %paRight.addr, align 8
  store ptr %pnRight, ptr %pnRight.addr, align 8
  store ptr %aTmp, ptr %aTmp.addr, align 8
  store i32 0, ptr %iLeft, align 4
  store i32 0, ptr %iRight, align 4
  store i32 0, ptr %iOut, align 4
  %0 = load ptr, ptr %pnRight.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %nRight, align 4
  %2 = load ptr, ptr %paRight.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %aRight, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %4 = load i32, ptr %iRight, align 4
  %5 = load i32, ptr %nRight, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load i32, ptr %iLeft, align 4
  %7 = load i32, ptr %nLeft.addr, align 4
  %cmp1 = icmp slt i32 %6, %7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load i32, ptr %iLeft, align 4
  %10 = load i32, ptr %nLeft.addr, align 4
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, ptr %iRight, align 4
  %12 = load i32, ptr %nRight, align 4
  %cmp3 = icmp sge i32 %11, %12
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load ptr, ptr %aContent.addr, align 8
  %14 = load ptr, ptr %aLeft.addr, align 8
  %15 = load i32, ptr %iLeft, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i16, ptr %14, i64 %idxprom
  %16 = load i16, ptr %arrayidx, align 2
  %idxprom4 = zext i16 %16 to i64
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom4
  %17 = load i32, ptr %arrayidx5, align 4
  %18 = load ptr, ptr %aContent.addr, align 8
  %19 = load ptr, ptr %aRight, align 8
  %20 = load i32, ptr %iRight, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %19, i64 %idxprom6
  %21 = load i16, ptr %arrayidx7, align 2
  %idxprom8 = zext i16 %21 to i64
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %18, i64 %idxprom8
  %22 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp ult i32 %17, %22
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load ptr, ptr %aLeft.addr, align 8
  %24 = load i32, ptr %iLeft, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %iLeft, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %23, i64 %idxprom11
  %25 = load i16, ptr %arrayidx12, align 2
  store i16 %25, ptr %logpage, align 2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %while.body
  %26 = load ptr, ptr %aRight, align 8
  %27 = load i32, ptr %iRight, align 4
  %inc13 = add nsw i32 %27, 1
  store i32 %inc13, ptr %iRight, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %26, i64 %idxprom14
  %28 = load i16, ptr %arrayidx15, align 2
  store i16 %28, ptr %logpage, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load ptr, ptr %aContent.addr, align 8
  %30 = load i16, ptr %logpage, align 2
  %idxprom16 = zext i16 %30 to i64
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %29, i64 %idxprom16
  %31 = load i32, ptr %arrayidx17, align 4
  store i32 %31, ptr %dbpage, align 4
  %32 = load i16, ptr %logpage, align 2
  %33 = load ptr, ptr %aTmp.addr, align 8
  %34 = load i32, ptr %iOut, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, ptr %iOut, align 4
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %33, i64 %idxprom19
  store i16 %32, ptr %arrayidx20, align 2
  %35 = load i32, ptr %iLeft, align 4
  %36 = load i32, ptr %nLeft.addr, align 4
  %cmp21 = icmp slt i32 %35, %36
  br i1 %cmp21, label %land.lhs.true22, label %if.end30

land.lhs.true22:                                  ; preds = %if.end
  %37 = load ptr, ptr %aContent.addr, align 8
  %38 = load ptr, ptr %aLeft.addr, align 8
  %39 = load i32, ptr %iLeft, align 4
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %38, i64 %idxprom23
  %40 = load i16, ptr %arrayidx24, align 2
  %idxprom25 = zext i16 %40 to i64
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %37, i64 %idxprom25
  %41 = load i32, ptr %arrayidx26, align 4
  %42 = load i32, ptr %dbpage, align 4
  %cmp27 = icmp eq i32 %41, %42
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %land.lhs.true22
  %43 = load i32, ptr %iLeft, align 4
  %inc29 = add nsw i32 %43, 1
  store i32 %inc29, ptr %iLeft, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true22, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %44 = load ptr, ptr %aLeft.addr, align 8
  %45 = load ptr, ptr %paRight.addr, align 8
  store ptr %44, ptr %45, align 8
  %46 = load i32, ptr %iOut, align 4
  %47 = load ptr, ptr %pnRight.addr, align 8
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %aLeft.addr, align 8
  %49 = load ptr, ptr %aTmp.addr, align 8
  %50 = load i32, ptr %iOut, align 4
  %conv = sext i32 %50 to i64
  %mul = mul i64 2, %conv
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr align 2 %49, i64 %mul, i1 false)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
