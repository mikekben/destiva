; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__const.sqlite3DefaultRowEst.aVal = external hidden unnamed_addr constant [5 x i16], align 2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DefaultRowEst(ptr noundef %pIdx) #1 {
entry:
  %pIdx.addr = alloca ptr, align 8
  %aVal = alloca [5 x i16], align 2
  %a = alloca ptr, align 8
  %nCopy = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %aVal, ptr align 2 @__const.sqlite3DefaultRowEst.aVal, i64 10, i1 false)
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %aiRowLogEst, align 8
  store ptr %1, ptr %a, align 8
  %2 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %2, i32 0, i32 13
  %3 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp slt i32 5, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol2 = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 13
  %5 = load i16, ptr %nKeyCol2, align 2
  %conv3 = zext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %conv3, %cond.false ]
  store i32 %cond, ptr %nCopy, align 4
  %6 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pTable, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 12
  %8 = load i16, ptr %nRowLogEst, align 8
  %9 = load ptr, ptr %a, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 0
  store i16 %8, ptr %arrayidx, align 2
  %10 = load ptr, ptr %pIdx.addr, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp4 = icmp ne ptr %11, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load ptr, ptr %a, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %12, i64 0
  %13 = load i16, ptr %arrayidx6, align 2
  %conv7 = sext i16 %13 to i32
  %sub = sub nsw i32 %conv7, 10
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, ptr %arrayidx6, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load ptr, ptr %a, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %14, i64 0
  %15 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %15 to i32
  %cmp11 = icmp slt i32 %conv10, 33
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  %16 = load ptr, ptr %a, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %16, i64 0
  store i16 33, ptr %arrayidx14, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %17 = load ptr, ptr %a, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 1
  %arraydecay = getelementptr inbounds [5 x i16], ptr %aVal, i64 0, i64 0
  %18 = load i32, ptr %nCopy, align 4
  %conv17 = sext i32 %18 to i64
  %mul = mul i64 %conv17, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx16, ptr align 2 %arraydecay, i64 %mul, i1 false)
  %19 = load i32, ptr %nCopy, align 4
  %add = add nsw i32 %19, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol18 = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 13
  %22 = load i16, ptr %nKeyCol18, align 2
  %conv19 = zext i16 %22 to i32
  %cmp20 = icmp sle i32 %20, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %a, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %23, i64 %idxprom
  store i16 23, ptr %arrayidx22, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %pIdx.addr, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 15
  %27 = load i8, ptr %onError, align 2
  %conv23 = zext i8 %27 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %for.end
  %28 = load ptr, ptr %a, align 8
  %29 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol27 = getelementptr inbounds nuw %struct.Index, ptr %29, i32 0, i32 13
  %30 = load i16, ptr %nKeyCol27, align 2
  %idxprom28 = zext i16 %30 to i64
  %arrayidx29 = getelementptr inbounds nuw i16, ptr %28, i64 %idxprom28
  store i16 0, ptr %arrayidx29, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %for.end
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
