; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SelectDup(ptr noundef %db, ptr noundef %pDup, i32 noundef %flags) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pDup.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pRet = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pDup, ptr %pDup.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr null, ptr %pRet, align 8
  store ptr null, ptr %pNext, align 8
  store ptr %pRet, ptr %pp, align 8
  %0 = load ptr, ptr %pDup.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %2, i64 noundef 128)
  store ptr %call, ptr %pNew, align 8
  %3 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %p, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pEList, align 8
  %7 = load i32, ptr %flags.addr, align 4
  %call1 = call ptr @sqlite3ExprListDup(ptr noundef %4, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %pNew, align 8
  %pEList2 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 0
  store ptr %call1, ptr %pEList2, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %p, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %pSrc, align 8
  %12 = load i32, ptr %flags.addr, align 4
  %call3 = call ptr @sqlite3SrcListDup(ptr noundef %9, ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %pNew, align 8
  %pSrc4 = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 8
  store ptr %call3, ptr %pSrc4, align 8
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %pWhere, align 8
  %17 = load i32, ptr %flags.addr, align 4
  %call5 = call ptr @sqlite3ExprDup(ptr noundef %14, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %pNew, align 8
  %pWhere6 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 9
  store ptr %call5, ptr %pWhere6, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %p, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %pGroupBy, align 8
  %22 = load i32, ptr %flags.addr, align 4
  %call7 = call ptr @sqlite3ExprListDup(ptr noundef %19, ptr noundef %21, i32 noundef %22)
  %23 = load ptr, ptr %pNew, align 8
  %pGroupBy8 = getelementptr inbounds nuw %struct.Select, ptr %23, i32 0, i32 10
  store ptr %call7, ptr %pGroupBy8, align 8
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %p, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 11
  %26 = load ptr, ptr %pHaving, align 8
  %27 = load i32, ptr %flags.addr, align 4
  %call9 = call ptr @sqlite3ExprDup(ptr noundef %24, ptr noundef %26, i32 noundef %27)
  %28 = load ptr, ptr %pNew, align 8
  %pHaving10 = getelementptr inbounds nuw %struct.Select, ptr %28, i32 0, i32 11
  store ptr %call9, ptr %pHaving10, align 8
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %p, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %pOrderBy, align 8
  %32 = load i32, ptr %flags.addr, align 4
  %call11 = call ptr @sqlite3ExprListDup(ptr noundef %29, ptr noundef %31, i32 noundef %32)
  %33 = load ptr, ptr %pNew, align 8
  %pOrderBy12 = getelementptr inbounds nuw %struct.Select, ptr %33, i32 0, i32 12
  store ptr %call11, ptr %pOrderBy12, align 8
  %34 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 1
  %35 = load i8, ptr %op, align 8
  %36 = load ptr, ptr %pNew, align 8
  %op13 = getelementptr inbounds nuw %struct.Select, ptr %36, i32 0, i32 1
  store i8 %35, ptr %op13, align 8
  %37 = load ptr, ptr %pNext, align 8
  %38 = load ptr, ptr %pNew, align 8
  %pNext14 = getelementptr inbounds nuw %struct.Select, ptr %38, i32 0, i32 14
  store ptr %37, ptr %pNext14, align 8
  %39 = load ptr, ptr %pNew, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 13
  store ptr null, ptr %pPrior, align 8
  %40 = load ptr, ptr %db.addr, align 8
  %41 = load ptr, ptr %p, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %41, i32 0, i32 15
  %42 = load ptr, ptr %pLimit, align 8
  %43 = load i32, ptr %flags.addr, align 4
  %call15 = call ptr @sqlite3ExprDup(ptr noundef %40, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %pNew, align 8
  %pLimit16 = getelementptr inbounds nuw %struct.Select, ptr %44, i32 0, i32 15
  store ptr %call15, ptr %pLimit16, align 8
  %45 = load ptr, ptr %pNew, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %45, i32 0, i32 4
  store i32 0, ptr %iLimit, align 8
  %46 = load ptr, ptr %pNew, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %46, i32 0, i32 5
  store i32 0, ptr %iOffset, align 4
  %47 = load ptr, ptr %p, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %47, i32 0, i32 3
  %48 = load i32, ptr %selFlags, align 4
  %and = and i32 %48, -33
  %49 = load ptr, ptr %pNew, align 8
  %selFlags17 = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 3
  store i32 %and, ptr %selFlags17, align 4
  %50 = load ptr, ptr %pNew, align 8
  %addrOpenEphm = getelementptr inbounds nuw %struct.Select, ptr %50, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i32], ptr %addrOpenEphm, i64 0, i64 0
  store i32 -1, ptr %arrayidx, align 4
  %51 = load ptr, ptr %pNew, align 8
  %addrOpenEphm18 = getelementptr inbounds nuw %struct.Select, ptr %51, i32 0, i32 7
  %arrayidx19 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm18, i64 0, i64 1
  store i32 -1, ptr %arrayidx19, align 4
  %52 = load ptr, ptr %p, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %52, i32 0, i32 2
  %53 = load i16, ptr %nSelectRow, align 2
  %54 = load ptr, ptr %pNew, align 8
  %nSelectRow20 = getelementptr inbounds nuw %struct.Select, ptr %54, i32 0, i32 2
  store i16 %53, ptr %nSelectRow20, align 2
  %55 = load ptr, ptr %db.addr, align 8
  %56 = load ptr, ptr %p, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %56, i32 0, i32 16
  %57 = load ptr, ptr %pWith, align 8
  %call21 = call ptr @withDup(ptr noundef %55, ptr noundef %57)
  %58 = load ptr, ptr %pNew, align 8
  %pWith22 = getelementptr inbounds nuw %struct.Select, ptr %58, i32 0, i32 16
  store ptr %call21, ptr %pWith22, align 8
  %59 = load ptr, ptr %pNew, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %59, i32 0, i32 17
  store ptr null, ptr %pWin, align 8
  %60 = load ptr, ptr %db.addr, align 8
  %61 = load ptr, ptr %p, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %61, i32 0, i32 18
  %62 = load ptr, ptr %pWinDefn, align 8
  %call23 = call ptr @sqlite3WindowListDup(ptr noundef %60, ptr noundef %62)
  %63 = load ptr, ptr %pNew, align 8
  %pWinDefn24 = getelementptr inbounds nuw %struct.Select, ptr %63, i32 0, i32 18
  store ptr %call23, ptr %pWinDefn24, align 8
  %64 = load ptr, ptr %p, align 8
  %pWin25 = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 17
  %65 = load ptr, ptr %pWin25, align 8
  %tobool26 = icmp ne ptr %65, null
  br i1 %tobool26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end
  %66 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 19
  %67 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %67 to i32
  %cmp27 = icmp eq i32 %conv, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  %68 = load ptr, ptr %pNew, align 8
  call void @gatherSelectWindows(ptr noundef %68)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %if.end
  %69 = load ptr, ptr %p, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %69, i32 0, i32 6
  %70 = load i32, ptr %selId, align 8
  %71 = load ptr, ptr %pNew, align 8
  %selId31 = getelementptr inbounds nuw %struct.Select, ptr %71, i32 0, i32 6
  store i32 %70, ptr %selId31, align 8
  %72 = load ptr, ptr %pNew, align 8
  %73 = load ptr, ptr %pp, align 8
  store ptr %72, ptr %73, align 8
  %74 = load ptr, ptr %pNew, align 8
  %pPrior32 = getelementptr inbounds nuw %struct.Select, ptr %74, i32 0, i32 13
  store ptr %pPrior32, ptr %pp, align 8
  %75 = load ptr, ptr %pNew, align 8
  store ptr %75, ptr %pNext, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %76 = load ptr, ptr %p, align 8
  %pPrior33 = getelementptr inbounds nuw %struct.Select, ptr %76, i32 0, i32 13
  %77 = load ptr, ptr %pPrior33, align 8
  store ptr %77, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %78 = load ptr, ptr %pRet, align 8
  ret ptr %78
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @withDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WindowListDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @gatherSelectWindows(ptr noundef) #0

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
