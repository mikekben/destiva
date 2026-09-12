; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3IndexAffinityStr(ptr noundef %db, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %x = alloca i16, align 2
  %aff = alloca i8, align 1
  store ptr %db, ptr %db.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pIdx.addr, align 8
  %zColAff = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zColAff, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pTable, align 8
  store ptr %3, ptr %pTab, align 8
  %4 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 14
  %5 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %5 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = sext i32 %add to i64
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef %conv1)
  %6 = load ptr, ptr %pIdx.addr, align 8
  %zColAff2 = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 4
  store ptr %call, ptr %zColAff2, align 8
  %7 = load ptr, ptr %pIdx.addr, align 8
  %zColAff3 = getelementptr inbounds nuw %struct.Index, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %zColAff3, align 8
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %n, align 4
  %11 = load ptr, ptr %pIdx.addr, align 8
  %nColumn6 = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 14
  %12 = load i16, ptr %nColumn6, align 8
  %conv7 = zext i16 %12 to i32
  %cmp = icmp slt i32 %10, %conv7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %aiColumn, align 8
  %15 = load i32, ptr %n, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i16, ptr %14, i64 %idxprom
  %16 = load i16, ptr %arrayidx, align 2
  store i16 %16, ptr %x, align 2
  %17 = load i16, ptr %x, align 2
  %conv9 = sext i16 %17 to i32
  %cmp10 = icmp sge i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %18 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %aCol, align 8
  %20 = load i16, ptr %x, align 2
  %idxprom13 = sext i16 %20 to i64
  %arrayidx14 = getelementptr inbounds %struct.Column, ptr %19, i64 %idxprom13
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx14, i32 0, i32 4
  %21 = load i8, ptr %affinity, align 1
  store i8 %21, ptr %aff, align 1
  br label %if.end24

if.else:                                          ; preds = %for.body
  %22 = load i16, ptr %x, align 2
  %conv15 = sext i16 %22 to i32
  %cmp16 = icmp eq i32 %conv15, -1
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  store i8 68, ptr %aff, align 1
  br label %if.end23

if.else19:                                        ; preds = %if.else
  %23 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %n, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom20
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx21, i32 0, i32 0
  %26 = load ptr, ptr %pExpr, align 8
  %call22 = call signext i8 @sqlite3ExprAffinity(ptr noundef %26)
  store i8 %call22, ptr %aff, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  %27 = load i8, ptr %aff, align 1
  %conv25 = sext i8 %27 to i32
  %cmp26 = icmp slt i32 %conv25, 65
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i8 65, ptr %aff, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  %28 = load i8, ptr %aff, align 1
  %conv30 = sext i8 %28 to i32
  %cmp31 = icmp sgt i32 %conv30, 67
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i8 67, ptr %aff, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %29 = load i8, ptr %aff, align 1
  %30 = load ptr, ptr %pIdx.addr, align 8
  %zColAff35 = getelementptr inbounds nuw %struct.Index, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %zColAff35, align 8
  %32 = load i32, ptr %n, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %31, i64 %idxprom36
  store i8 %29, ptr %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %33 = load i32, ptr %n, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %pIdx.addr, align 8
  %zColAff38 = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %zColAff38, align 8
  %36 = load i32, ptr %n, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 %idxprom39
  store i8 0, ptr %arrayidx40, align 1
  br label %if.end41

if.end41:                                         ; preds = %for.end, %entry
  %37 = load ptr, ptr %pIdx.addr, align 8
  %zColAff42 = getelementptr inbounds nuw %struct.Index, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %zColAff42, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then5
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
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
