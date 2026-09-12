; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereConst = type { ptr, i32, i32, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @constInsert(ptr noundef %pConst, ptr noundef %pColumn, ptr noundef %pValue) #0 {
entry:
  %pConst.addr = alloca ptr, align 8
  %pColumn.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pExpr = alloca ptr, align 8
  store ptr %pConst, ptr %pConst.addr, align 8
  store ptr %pColumn, ptr %pColumn.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %pConst.addr, align 8
  %nConst = getelementptr inbounds nuw %struct.WhereConst, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %nConst, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pConst.addr, align 8
  %apExpr = getelementptr inbounds nuw %struct.WhereConst, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %apExpr, align 8
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %5, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %pExpr, align 8
  %7 = load ptr, ptr %pExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %iTable, align 4
  %9 = load ptr, ptr %pColumn.addr, align 8
  %iTable1 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %iTable1, align 4
  %cmp2 = icmp eq i32 %8, %10
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %pExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 9
  %12 = load i16, ptr %iColumn, align 8
  %conv = sext i16 %12 to i32
  %13 = load ptr, ptr %pColumn.addr, align 8
  %iColumn3 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 9
  %14 = load i16, ptr %iColumn3, align 8
  %conv4 = sext i16 %14 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end35

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %pConst.addr, align 8
  %nConst7 = getelementptr inbounds nuw %struct.WhereConst, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nConst7, align 8
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, ptr %nConst7, align 8
  %18 = load ptr, ptr %pConst.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereConst, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pConst.addr, align 8
  %apExpr9 = getelementptr inbounds nuw %struct.WhereConst, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %apExpr9, align 8
  %23 = load ptr, ptr %pConst.addr, align 8
  %nConst10 = getelementptr inbounds nuw %struct.WhereConst, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nConst10, align 8
  %mul11 = mul nsw i32 %24, 2
  %conv12 = sext i32 %mul11 to i64
  %mul13 = mul i64 %conv12, 8
  %call = call ptr @sqlite3DbReallocOrFree(ptr noundef %20, ptr noundef %22, i64 noundef %mul13)
  %25 = load ptr, ptr %pConst.addr, align 8
  %apExpr14 = getelementptr inbounds nuw %struct.WhereConst, ptr %25, i32 0, i32 3
  store ptr %call, ptr %apExpr14, align 8
  %26 = load ptr, ptr %pConst.addr, align 8
  %apExpr15 = getelementptr inbounds nuw %struct.WhereConst, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %apExpr15, align 8
  %cmp16 = icmp eq ptr %27, null
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end
  %28 = load ptr, ptr %pConst.addr, align 8
  %nConst19 = getelementptr inbounds nuw %struct.WhereConst, ptr %28, i32 0, i32 1
  store i32 0, ptr %nConst19, align 8
  br label %if.end35

if.else:                                          ; preds = %for.end
  %29 = load ptr, ptr %pValue.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 8
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  %31 = load ptr, ptr %pValue.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pLeft, align 8
  store ptr %32, ptr %pValue.addr, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else
  %33 = load ptr, ptr %pColumn.addr, align 8
  %34 = load ptr, ptr %pConst.addr, align 8
  %apExpr24 = getelementptr inbounds nuw %struct.WhereConst, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %apExpr24, align 8
  %36 = load ptr, ptr %pConst.addr, align 8
  %nConst25 = getelementptr inbounds nuw %struct.WhereConst, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nConst25, align 8
  %mul26 = mul nsw i32 %37, 2
  %sub = sub nsw i32 %mul26, 2
  %idxprom27 = sext i32 %sub to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %35, i64 %idxprom27
  store ptr %33, ptr %arrayidx28, align 8
  %38 = load ptr, ptr %pValue.addr, align 8
  %39 = load ptr, ptr %pConst.addr, align 8
  %apExpr29 = getelementptr inbounds nuw %struct.WhereConst, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %apExpr29, align 8
  %41 = load ptr, ptr %pConst.addr, align 8
  %nConst30 = getelementptr inbounds nuw %struct.WhereConst, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nConst30, align 8
  %mul31 = mul nsw i32 %42, 2
  %sub32 = sub nsw i32 %mul31, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %40, i64 %idxprom33
  store ptr %38, ptr %arrayidx34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end23, %if.then18, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
