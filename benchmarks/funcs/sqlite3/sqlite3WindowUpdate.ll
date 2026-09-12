; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowUpdate = type { ptr, i32, i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

@.str.332 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.631 = external hidden unnamed_addr constant [71 x i8], align 1
@.str.632 = external hidden unnamed_addr constant [63 x i8], align 1
@__const.sqlite3WindowUpdate.aUp = external hidden unnamed_addr constant [8 x { ptr, i32, i32, i32, [4 x i8] }], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowChain(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowUpdate(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pWin, ptr noundef %pFunc) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %db44 = alloca ptr, align 8
  %aUp = alloca [8 x %struct.WindowUpdate], align 16
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  %0 = load ptr, ptr %pWin.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Window, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zName, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pWin.addr, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 4
  %3 = load i8, ptr %eFrmType, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pList.addr, align 8
  %6 = load ptr, ptr %pWin.addr, align 8
  %zName2 = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zName2, align 8
  %call = call ptr @windowFind(ptr noundef %4, ptr noundef %5, ptr noundef %7)
  store ptr %call, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %p, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pPartition, align 8
  %call6 = call ptr @sqlite3ExprListDup(ptr noundef %10, ptr noundef %12, i32 noundef 0)
  %13 = load ptr, ptr %pWin.addr, align 8
  %pPartition7 = getelementptr inbounds nuw %struct.Window, ptr %13, i32 0, i32 2
  store ptr %call6, ptr %pPartition7, align 8
  %14 = load ptr, ptr %pParse.addr, align 8
  %db8 = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db8, align 8
  %16 = load ptr, ptr %p, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pOrderBy, align 8
  %call9 = call ptr @sqlite3ExprListDup(ptr noundef %15, ptr noundef %17, i32 noundef 0)
  %18 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy10 = getelementptr inbounds nuw %struct.Window, ptr %18, i32 0, i32 3
  store ptr %call9, ptr %pOrderBy10, align 8
  %19 = load ptr, ptr %pParse.addr, align 8
  %db11 = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db11, align 8
  %21 = load ptr, ptr %p, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %pStart, align 8
  %call12 = call ptr @sqlite3ExprDup(ptr noundef %20, ptr noundef %22, i32 noundef 0)
  %23 = load ptr, ptr %pWin.addr, align 8
  %pStart13 = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 9
  store ptr %call12, ptr %pStart13, align 8
  %24 = load ptr, ptr %pParse.addr, align 8
  %db14 = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %db14, align 8
  %26 = load ptr, ptr %p, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %pEnd, align 8
  %call15 = call ptr @sqlite3ExprDup(ptr noundef %25, ptr noundef %27, i32 noundef 0)
  %28 = load ptr, ptr %pWin.addr, align 8
  %pEnd16 = getelementptr inbounds nuw %struct.Window, ptr %28, i32 0, i32 10
  store ptr %call15, ptr %pEnd16, align 8
  %29 = load ptr, ptr %p, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 5
  %30 = load i8, ptr %eStart, align 1
  %31 = load ptr, ptr %pWin.addr, align 8
  %eStart17 = getelementptr inbounds nuw %struct.Window, ptr %31, i32 0, i32 5
  store i8 %30, ptr %eStart17, align 1
  %32 = load ptr, ptr %p, align 8
  %eEnd = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 6
  %33 = load i8, ptr %eEnd, align 2
  %34 = load ptr, ptr %pWin.addr, align 8
  %eEnd18 = getelementptr inbounds nuw %struct.Window, ptr %34, i32 0, i32 6
  store i8 %33, ptr %eEnd18, align 2
  %35 = load ptr, ptr %p, align 8
  %eFrmType19 = getelementptr inbounds nuw %struct.Window, ptr %35, i32 0, i32 4
  %36 = load i8, ptr %eFrmType19, align 8
  %37 = load ptr, ptr %pWin.addr, align 8
  %eFrmType20 = getelementptr inbounds nuw %struct.Window, ptr %37, i32 0, i32 4
  store i8 %36, ptr %eFrmType20, align 8
  %38 = load ptr, ptr %p, align 8
  %eExclude = getelementptr inbounds nuw %struct.Window, ptr %38, i32 0, i32 8
  %39 = load i8, ptr %eExclude, align 4
  %40 = load ptr, ptr %pWin.addr, align 8
  %eExclude21 = getelementptr inbounds nuw %struct.Window, ptr %40, i32 0, i32 8
  store i8 %39, ptr %eExclude21, align 4
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true, %entry
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load ptr, ptr %pWin.addr, align 8
  %43 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3WindowChain(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end
  %44 = load ptr, ptr %pWin.addr, align 8
  %eFrmType23 = getelementptr inbounds nuw %struct.Window, ptr %44, i32 0, i32 4
  %45 = load i8, ptr %eFrmType23, align 8
  %conv24 = zext i8 %45 to i32
  %cmp25 = icmp eq i32 %conv24, 89
  br i1 %cmp25, label %land.lhs.true27, label %if.else41

land.lhs.true27:                                  ; preds = %if.end22
  %46 = load ptr, ptr %pWin.addr, align 8
  %pStart28 = getelementptr inbounds nuw %struct.Window, ptr %46, i32 0, i32 9
  %47 = load ptr, ptr %pStart28, align 8
  %tobool29 = icmp ne ptr %47, null
  br i1 %tobool29, label %land.lhs.true32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %48 = load ptr, ptr %pWin.addr, align 8
  %pEnd30 = getelementptr inbounds nuw %struct.Window, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %pEnd30, align 8
  %tobool31 = icmp ne ptr %49, null
  br i1 %tobool31, label %land.lhs.true32, label %if.else41

land.lhs.true32:                                  ; preds = %lor.lhs.false, %land.lhs.true27
  %50 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy33 = getelementptr inbounds nuw %struct.Window, ptr %50, i32 0, i32 3
  %51 = load ptr, ptr %pOrderBy33, align 8
  %cmp34 = icmp eq ptr %51, null
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true32
  %52 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy37 = getelementptr inbounds nuw %struct.Window, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %pOrderBy37, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %nExpr, align 8
  %cmp38 = icmp ne i32 %54, 1
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %lor.lhs.false36, %land.lhs.true32
  %55 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %55, ptr noundef @.str.631)
  br label %if.end86

if.else41:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %if.end22
  %56 = load ptr, ptr %pFunc.addr, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %funcFlags, align 4
  %and = and i32 %57, 65536
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then43, label %if.end85

if.then43:                                        ; preds = %if.else41
  %58 = load ptr, ptr %pParse.addr, align 8
  %db45 = getelementptr inbounds nuw %struct.Parse, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %db45, align 8
  store ptr %59, ptr %db44, align 8
  %60 = load ptr, ptr %pWin.addr, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %60, i32 0, i32 13
  %61 = load ptr, ptr %pFilter, align 8
  %tobool46 = icmp ne ptr %61, null
  br i1 %tobool46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.then43
  %62 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %62, ptr noundef @.str.632)
  br label %if.end84

if.else48:                                        ; preds = %if.then43
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %aUp, ptr align 16 @__const.sqlite3WindowUpdate.aUp, i64 192, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else48
  %63 = load i32, ptr %i, align 4
  %cmp49 = icmp slt i32 %63, 8
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load ptr, ptr %pFunc.addr, align 8
  %zName51 = getelementptr inbounds nuw %struct.FuncDef, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %zName51, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom = sext i32 %66 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.WindowUpdate], ptr %aUp, i64 0, i64 %idxprom
  %zFunc = getelementptr inbounds nuw %struct.WindowUpdate, ptr %arrayidx, i32 0, i32 0
  %67 = load ptr, ptr %zFunc, align 8
  %cmp52 = icmp eq ptr %65, %67
  br i1 %cmp52, label %if.then54, label %if.end83

if.then54:                                        ; preds = %for.body
  %68 = load ptr, ptr %db44, align 8
  %69 = load ptr, ptr %pWin.addr, align 8
  %pStart55 = getelementptr inbounds nuw %struct.Window, ptr %69, i32 0, i32 9
  %70 = load ptr, ptr %pStart55, align 8
  call void @sqlite3ExprDelete(ptr noundef %68, ptr noundef %70)
  %71 = load ptr, ptr %db44, align 8
  %72 = load ptr, ptr %pWin.addr, align 8
  %pEnd56 = getelementptr inbounds nuw %struct.Window, ptr %72, i32 0, i32 10
  %73 = load ptr, ptr %pEnd56, align 8
  call void @sqlite3ExprDelete(ptr noundef %71, ptr noundef %73)
  %74 = load ptr, ptr %pWin.addr, align 8
  %pStart57 = getelementptr inbounds nuw %struct.Window, ptr %74, i32 0, i32 9
  store ptr null, ptr %pStart57, align 8
  %75 = load ptr, ptr %pWin.addr, align 8
  %pEnd58 = getelementptr inbounds nuw %struct.Window, ptr %75, i32 0, i32 10
  store ptr null, ptr %pEnd58, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %76 to i64
  %arrayidx60 = getelementptr inbounds [8 x %struct.WindowUpdate], ptr %aUp, i64 0, i64 %idxprom59
  %eFrmType61 = getelementptr inbounds nuw %struct.WindowUpdate, ptr %arrayidx60, i32 0, i32 1
  %77 = load i32, ptr %eFrmType61, align 8
  %conv62 = trunc i32 %77 to i8
  %78 = load ptr, ptr %pWin.addr, align 8
  %eFrmType63 = getelementptr inbounds nuw %struct.Window, ptr %78, i32 0, i32 4
  store i8 %conv62, ptr %eFrmType63, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %79 to i64
  %arrayidx65 = getelementptr inbounds [8 x %struct.WindowUpdate], ptr %aUp, i64 0, i64 %idxprom64
  %eStart66 = getelementptr inbounds nuw %struct.WindowUpdate, ptr %arrayidx65, i32 0, i32 2
  %80 = load i32, ptr %eStart66, align 4
  %conv67 = trunc i32 %80 to i8
  %81 = load ptr, ptr %pWin.addr, align 8
  %eStart68 = getelementptr inbounds nuw %struct.Window, ptr %81, i32 0, i32 5
  store i8 %conv67, ptr %eStart68, align 1
  %82 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %82 to i64
  %arrayidx70 = getelementptr inbounds [8 x %struct.WindowUpdate], ptr %aUp, i64 0, i64 %idxprom69
  %eEnd71 = getelementptr inbounds nuw %struct.WindowUpdate, ptr %arrayidx70, i32 0, i32 3
  %83 = load i32, ptr %eEnd71, align 8
  %conv72 = trunc i32 %83 to i8
  %84 = load ptr, ptr %pWin.addr, align 8
  %eEnd73 = getelementptr inbounds nuw %struct.Window, ptr %84, i32 0, i32 6
  store i8 %conv72, ptr %eEnd73, align 2
  %85 = load ptr, ptr %pWin.addr, align 8
  %eExclude74 = getelementptr inbounds nuw %struct.Window, ptr %85, i32 0, i32 8
  store i8 0, ptr %eExclude74, align 4
  %86 = load ptr, ptr %pWin.addr, align 8
  %eStart75 = getelementptr inbounds nuw %struct.Window, ptr %86, i32 0, i32 5
  %87 = load i8, ptr %eStart75, align 1
  %conv76 = zext i8 %87 to i32
  %cmp77 = icmp eq i32 %conv76, 86
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.then54
  %88 = load ptr, ptr %db44, align 8
  %call80 = call ptr @sqlite3Expr(ptr noundef %88, i32 noundef 150, ptr noundef @.str.332)
  %89 = load ptr, ptr %pWin.addr, align 8
  %pStart81 = getelementptr inbounds nuw %struct.Window, ptr %89, i32 0, i32 9
  store ptr %call80, ptr %pStart81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then54
  br label %for.end

if.end83:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %90 = load i32, ptr %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end82, %for.cond
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.then47
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.else41
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then40
  %91 = load ptr, ptr %pFunc.addr, align 8
  %92 = load ptr, ptr %pWin.addr, align 8
  %pFunc87 = getelementptr inbounds nuw %struct.Window, ptr %92, i32 0, i32 14
  store ptr %91, ptr %pFunc87, align 8
  br label %return

return:                                           ; preds = %if.end86, %if.then5
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @windowFind(ptr noundef, ptr noundef, ptr noundef) #1

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
