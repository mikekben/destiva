; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SrcListDup(ptr noundef %db, ptr noundef %p, i32 noundef %flags) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %i = alloca i32, align 4
  %nByte = alloca i32, align 4
  %pNewItem = alloca ptr, align 8
  %pOldItem = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nSrc, align 8
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %nSrc2 = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nSrc2, align 8
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 112, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ]
  %add = add i64 120, %cond
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, ptr %nByte, align 4
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %nByte, align 4
  %conv4 = sext i32 %6 to i64
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %5, i64 noundef %conv4)
  store ptr %call, ptr %pNew, align 8
  %7 = load ptr, ptr %pNew, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cond.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %cond.end
  %8 = load ptr, ptr %p.addr, align 8
  %nSrc9 = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nSrc9, align 8
  %10 = load ptr, ptr %pNew, align 8
  %nAlloc = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 1
  store i32 %9, ptr %nAlloc, align 4
  %11 = load ptr, ptr %pNew, align 8
  %nSrc10 = getelementptr inbounds nuw %struct.SrcList, ptr %11, i32 0, i32 0
  store i32 %9, ptr %nSrc10, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %p.addr, align 8
  %nSrc11 = getelementptr inbounds nuw %struct.SrcList, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %nSrc11, align 8
  %cmp12 = icmp slt i32 %12, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pNew, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pNewItem, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.SrcList, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a14, i64 0, i64 %idxprom15
  store ptr %arrayidx16, ptr %pOldItem, align 8
  %19 = load ptr, ptr %pOldItem, align 8
  %pSchema = getelementptr inbounds nuw %struct.SrcList_item, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pSchema, align 8
  %21 = load ptr, ptr %pNewItem, align 8
  %pSchema17 = getelementptr inbounds nuw %struct.SrcList_item, ptr %21, i32 0, i32 0
  store ptr %20, ptr %pSchema17, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %pOldItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %zDatabase, align 8
  %call18 = call ptr @sqlite3DbStrDup(ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %pNewItem, align 8
  %zDatabase19 = getelementptr inbounds nuw %struct.SrcList_item, ptr %25, i32 0, i32 1
  store ptr %call18, ptr %zDatabase19, align 8
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %pOldItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %zName, align 8
  %call20 = call ptr @sqlite3DbStrDup(ptr noundef %26, ptr noundef %28)
  %29 = load ptr, ptr %pNewItem, align 8
  %zName21 = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 2
  store ptr %call20, ptr %zName21, align 8
  %30 = load ptr, ptr %db.addr, align 8
  %31 = load ptr, ptr %pOldItem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %zAlias, align 8
  %call22 = call ptr @sqlite3DbStrDup(ptr noundef %30, ptr noundef %32)
  %33 = load ptr, ptr %pNewItem, align 8
  %zAlias23 = getelementptr inbounds nuw %struct.SrcList_item, ptr %33, i32 0, i32 3
  store ptr %call22, ptr %zAlias23, align 8
  %34 = load ptr, ptr %pNewItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %pOldItem, align 8
  %fg24 = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fg, ptr align 4 %fg24, i64 4, i1 false)
  %36 = load ptr, ptr %pOldItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %36, i32 0, i32 10
  %37 = load i32, ptr %iCursor, align 8
  %38 = load ptr, ptr %pNewItem, align 8
  %iCursor25 = getelementptr inbounds nuw %struct.SrcList_item, ptr %38, i32 0, i32 10
  store i32 %37, ptr %iCursor25, align 8
  %39 = load ptr, ptr %pOldItem, align 8
  %addrFillSub = getelementptr inbounds nuw %struct.SrcList_item, ptr %39, i32 0, i32 6
  %40 = load i32, ptr %addrFillSub, align 8
  %41 = load ptr, ptr %pNewItem, align 8
  %addrFillSub26 = getelementptr inbounds nuw %struct.SrcList_item, ptr %41, i32 0, i32 6
  store i32 %40, ptr %addrFillSub26, align 8
  %42 = load ptr, ptr %pOldItem, align 8
  %regReturn = getelementptr inbounds nuw %struct.SrcList_item, ptr %42, i32 0, i32 7
  %43 = load i32, ptr %regReturn, align 4
  %44 = load ptr, ptr %pNewItem, align 8
  %regReturn27 = getelementptr inbounds nuw %struct.SrcList_item, ptr %44, i32 0, i32 7
  store i32 %43, ptr %regReturn27, align 4
  %45 = load ptr, ptr %pNewItem, align 8
  %fg28 = getelementptr inbounds nuw %struct.SrcList_item, ptr %45, i32 0, i32 9
  %isIndexedBy = getelementptr inbounds nuw %struct.anon, ptr %fg28, i32 0, i32 1
  %bf.load = load i8, ptr %isIndexedBy, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.body
  %46 = load ptr, ptr %db.addr, align 8
  %47 = load ptr, ptr %pOldItem, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %47, i32 0, i32 14
  %48 = load ptr, ptr %u1, align 8
  %call30 = call ptr @sqlite3DbStrDup(ptr noundef %46, ptr noundef %48)
  %49 = load ptr, ptr %pNewItem, align 8
  %u131 = getelementptr inbounds nuw %struct.SrcList_item, ptr %49, i32 0, i32 14
  store ptr %call30, ptr %u131, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.body
  %50 = load ptr, ptr %pOldItem, align 8
  %pIBIndex = getelementptr inbounds nuw %struct.SrcList_item, ptr %50, i32 0, i32 15
  %51 = load ptr, ptr %pIBIndex, align 8
  %52 = load ptr, ptr %pNewItem, align 8
  %pIBIndex33 = getelementptr inbounds nuw %struct.SrcList_item, ptr %52, i32 0, i32 15
  store ptr %51, ptr %pIBIndex33, align 8
  %53 = load ptr, ptr %pNewItem, align 8
  %fg34 = getelementptr inbounds nuw %struct.SrcList_item, ptr %53, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg34, i32 0, i32 1
  %bf.load35 = load i8, ptr %isTabFunc, align 1
  %bf.lshr36 = lshr i8 %bf.load35, 2
  %bf.clear37 = and i8 %bf.lshr36, 1
  %bf.cast38 = zext i8 %bf.clear37 to i32
  %tobool39 = icmp ne i32 %bf.cast38, 0
  br i1 %tobool39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end32
  %54 = load ptr, ptr %db.addr, align 8
  %55 = load ptr, ptr %pOldItem, align 8
  %u141 = getelementptr inbounds nuw %struct.SrcList_item, ptr %55, i32 0, i32 14
  %56 = load ptr, ptr %u141, align 8
  %57 = load i32, ptr %flags.addr, align 4
  %call42 = call ptr @sqlite3ExprListDup(ptr noundef %54, ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %pNewItem, align 8
  %u143 = getelementptr inbounds nuw %struct.SrcList_item, ptr %58, i32 0, i32 14
  store ptr %call42, ptr %u143, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end32
  %59 = load ptr, ptr %pOldItem, align 8
  %pTab45 = getelementptr inbounds nuw %struct.SrcList_item, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %pTab45, align 8
  %61 = load ptr, ptr %pNewItem, align 8
  %pTab46 = getelementptr inbounds nuw %struct.SrcList_item, ptr %61, i32 0, i32 4
  store ptr %60, ptr %pTab46, align 8
  store ptr %60, ptr %pTab, align 8
  %62 = load ptr, ptr %pTab, align 8
  %tobool47 = icmp ne ptr %62, null
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  %63 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %63, i32 0, i32 8
  %64 = load i32, ptr %nTabRef, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %nTabRef, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %65 = load ptr, ptr %db.addr, align 8
  %66 = load ptr, ptr %pOldItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %66, i32 0, i32 5
  %67 = load ptr, ptr %pSelect, align 8
  %68 = load i32, ptr %flags.addr, align 4
  %call50 = call ptr @sqlite3SelectDup(ptr noundef %65, ptr noundef %67, i32 noundef %68)
  %69 = load ptr, ptr %pNewItem, align 8
  %pSelect51 = getelementptr inbounds nuw %struct.SrcList_item, ptr %69, i32 0, i32 5
  store ptr %call50, ptr %pSelect51, align 8
  %70 = load ptr, ptr %db.addr, align 8
  %71 = load ptr, ptr %pOldItem, align 8
  %pOn = getelementptr inbounds nuw %struct.SrcList_item, ptr %71, i32 0, i32 11
  %72 = load ptr, ptr %pOn, align 8
  %73 = load i32, ptr %flags.addr, align 4
  %call52 = call ptr @sqlite3ExprDup(ptr noundef %70, ptr noundef %72, i32 noundef %73)
  %74 = load ptr, ptr %pNewItem, align 8
  %pOn53 = getelementptr inbounds nuw %struct.SrcList_item, ptr %74, i32 0, i32 11
  store ptr %call52, ptr %pOn53, align 8
  %75 = load ptr, ptr %db.addr, align 8
  %76 = load ptr, ptr %pOldItem, align 8
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %pUsing, align 8
  %call54 = call ptr @sqlite3IdListDup(ptr noundef %75, ptr noundef %77)
  %78 = load ptr, ptr %pNewItem, align 8
  %pUsing55 = getelementptr inbounds nuw %struct.SrcList_item, ptr %78, i32 0, i32 12
  store ptr %call54, ptr %pUsing55, align 8
  %79 = load ptr, ptr %pOldItem, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %79, i32 0, i32 13
  %80 = load i64, ptr %colUsed, align 8
  %81 = load ptr, ptr %pNewItem, align 8
  %colUsed56 = getelementptr inbounds nuw %struct.SrcList_item, ptr %81, i32 0, i32 13
  store i64 %80, ptr %colUsed56, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %82 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %82, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %83 = load ptr, ptr %pNew, align 8
  store ptr %83, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %84 = load ptr, ptr %retval, align 8
  ret ptr %84
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IdListDup(ptr noundef, ptr noundef) #1

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
