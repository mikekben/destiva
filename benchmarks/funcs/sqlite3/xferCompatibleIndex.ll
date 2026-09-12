; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @xferCompatibleIndex(ptr noundef %pDest, ptr noundef %pSrc) #0 {
entry:
  %retval = alloca i32, align 4
  %pDest.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  %0 = load ptr, ptr %pDest.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 13
  %1 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr %pSrc.addr, align 8
  %nKeyCol1 = getelementptr inbounds nuw %struct.Index, ptr %2, i32 0, i32 13
  %3 = load i16, ptr %nKeyCol1, align 2
  %conv2 = zext i16 %3 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pDest.addr, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 15
  %5 = load i8, ptr %onError, align 2
  %conv4 = zext i8 %5 to i32
  %6 = load ptr, ptr %pSrc.addr, align 8
  %onError5 = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 15
  %7 = load i8, ptr %onError5, align 2
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv4, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %pSrc.addr, align 8
  %nKeyCol11 = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 13
  %10 = load i16, ptr %nKeyCol11, align 2
  %conv12 = zext i16 %10 to i32
  %cmp13 = icmp slt i32 %8, %conv12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pSrc.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %aiColumn, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %14 = load i16, ptr %arrayidx, align 2
  %conv15 = sext i16 %14 to i32
  %15 = load ptr, ptr %pDest.addr, align 8
  %aiColumn16 = getelementptr inbounds nuw %struct.Index, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %aiColumn16, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %16, i64 %idxprom17
  %18 = load i16, ptr %arrayidx18, align 2
  %conv19 = sext i16 %18 to i32
  %cmp20 = icmp ne i32 %conv15, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.body
  %19 = load ptr, ptr %pSrc.addr, align 8
  %aiColumn24 = getelementptr inbounds nuw %struct.Index, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %aiColumn24, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds i16, ptr %20, i64 %idxprom25
  %22 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %22 to i32
  %cmp28 = icmp eq i32 %conv27, -2
  br i1 %cmp28, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.end23
  %23 = load ptr, ptr %pSrc.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom31
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx32, i32 0, i32 0
  %26 = load ptr, ptr %pExpr, align 8
  %27 = load ptr, ptr %pDest.addr, align 8
  %aColExpr33 = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %aColExpr33, align 8
  %a34 = getelementptr inbounds nuw %struct.ExprList, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a34, i64 0, i64 %idxprom35
  %pExpr37 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx36, i32 0, i32 0
  %30 = load ptr, ptr %pExpr37, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %26, ptr noundef %30, i32 noundef -1)
  %cmp38 = icmp ne i32 %call, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.then30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end23
  %31 = load ptr, ptr %pSrc.addr, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %aSortOrder, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 %idxprom43
  %34 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %34 to i32
  %35 = load ptr, ptr %pDest.addr, align 8
  %aSortOrder46 = getelementptr inbounds nuw %struct.Index, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %aSortOrder46, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %37 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 %idxprom47
  %38 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %38 to i32
  %cmp50 = icmp ne i32 %conv45, %conv49
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end42
  %39 = load ptr, ptr %pSrc.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %39, i32 0, i32 8
  %40 = load ptr, ptr %azColl, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %40, i64 %idxprom54
  %42 = load ptr, ptr %arrayidx55, align 8
  %43 = load ptr, ptr %pDest.addr, align 8
  %azColl56 = getelementptr inbounds nuw %struct.Index, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %azColl56, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %44, i64 %idxprom57
  %46 = load ptr, ptr %arrayidx58, align 8
  %call59 = call i32 @sqlite3_stricmp(ptr noundef %42, ptr noundef %46)
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end53
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end53
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %47 = load i32, ptr %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %pSrc.addr, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %pPartIdxWhere, align 8
  %50 = load ptr, ptr %pDest.addr, align 8
  %pPartIdxWhere64 = getelementptr inbounds nuw %struct.Index, ptr %50, i32 0, i32 9
  %51 = load ptr, ptr %pPartIdxWhere64, align 8
  %call65 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %49, ptr noundef %51, i32 noundef -1)
  %tobool = icmp ne i32 %call65, 0
  br i1 %tobool, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then66, %if.then62, %if.then52, %if.then40, %if.then22, %if.then9, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
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
