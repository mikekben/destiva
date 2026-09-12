; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OpenTableAndIndices(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %op, i8 noundef zeroext %p5, i32 noundef %iBase, ptr noundef %aToOpen, ptr noundef %piDataCur, ptr noundef %piIdxCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %p5.addr = alloca i8, align 1
  %iBase.addr = alloca i32, align 4
  %aToOpen.addr = alloca ptr, align 8
  %piDataCur.addr = alloca ptr, align 8
  %piIdxCur.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iDb = alloca i32, align 4
  %iDataCur = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %v = alloca ptr, align 8
  %iIdxCur = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i8 %p5, ptr %p5.addr, align 1
  store i32 %iBase, ptr %iBase.addr, align 4
  store ptr %aToOpen, ptr %aToOpen.addr, align 8
  store ptr %piDataCur, ptr %piDataCur.addr, align 8
  store ptr %piIdxCur, ptr %piIdxCur.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 20
  %5 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %3, ptr noundef %5)
  store i32 %call, ptr %iDb, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %call1 = call ptr @sqlite3GetVdbe(ptr noundef %6)
  store ptr %call1, ptr %v, align 8
  %7 = load i32, ptr %iBase.addr, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 17
  %9 = load i32, ptr %nTab, align 4
  store i32 %9, ptr %iBase.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, ptr %iBase.addr, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %iBase.addr, align 4
  store i32 %10, ptr %iDataCur, align 4
  %11 = load ptr, ptr %piDataCur.addr, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32, ptr %iDataCur, align 4
  %13 = load ptr, ptr %piDataCur.addr, align 8
  store i32 %12, ptr %13, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %14 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %tabFlags, align 8
  %and = and i32 %15, 32
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %16 = load ptr, ptr %aToOpen.addr, align 8
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load ptr, ptr %aToOpen.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %tobool9 = icmp ne i32 %conv, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load i32, ptr %iDataCur, align 4
  %21 = load i32, ptr %iDb, align 4
  %22 = load ptr, ptr %pTab.addr, align 8
  %23 = load i32, ptr %op.addr, align 4
  call void @sqlite3OpenTable(ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false, %if.end6
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load i32, ptr %iDb, align 4
  %26 = load ptr, ptr %pTab.addr, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %tnum, align 8
  %28 = load i32, ptr %op.addr, align 4
  %cmp11 = icmp eq i32 %28, 98
  %conv12 = zext i1 %cmp11 to i32
  %conv13 = trunc i32 %conv12 to i8
  %29 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %zName, align 8
  call void @sqlite3TableLock(ptr noundef %24, i32 noundef %25, i32 noundef %27, i8 noundef zeroext %conv13, ptr noundef %30)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %31 = load ptr, ptr %piIdxCur.addr, align 8
  %tobool15 = icmp ne ptr %31, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %32 = load i32, ptr %iBase.addr, align 4
  %33 = load ptr, ptr %piIdxCur.addr, align 8
  store i32 %32, ptr %33, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  store i32 0, ptr %i, align 4
  %34 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %pIndex, align 8
  store ptr %35, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %36 = load ptr, ptr %pIdx, align 8
  %tobool18 = icmp ne ptr %36, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, ptr %iBase.addr, align 4
  %inc19 = add nsw i32 %37, 1
  store i32 %inc19, ptr %iBase.addr, align 4
  store i32 %37, ptr %iIdxCur, align 4
  %38 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp20 = icmp eq i32 %bf.cast, 2
  br i1 %cmp20, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %for.body
  %39 = load ptr, ptr %pTab.addr, align 8
  %tabFlags23 = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 9
  %40 = load i32, ptr %tabFlags23, align 8
  %and24 = and i32 %40, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.end31, label %if.then27

if.then27:                                        ; preds = %land.lhs.true22
  %41 = load ptr, ptr %piDataCur.addr, align 8
  %tobool28 = icmp ne ptr %41, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %42 = load i32, ptr %iIdxCur, align 4
  %43 = load ptr, ptr %piDataCur.addr, align 8
  store i32 %42, ptr %43, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  store i8 0, ptr %p5.addr, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true22, %for.body
  %44 = load ptr, ptr %aToOpen.addr, align 8
  %cmp32 = icmp eq ptr %44, null
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end31
  %45 = load ptr, ptr %aToOpen.addr, align 8
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %idxprom = sext i32 %add to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %45, i64 %idxprom
  %47 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %47 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %lor.lhs.false34, %if.end31
  %48 = load ptr, ptr %v, align 8
  %49 = load i32, ptr %op.addr, align 4
  %50 = load i32, ptr %iIdxCur, align 4
  %51 = load ptr, ptr %pIdx, align 8
  %tnum39 = getelementptr inbounds nuw %struct.Index, ptr %51, i32 0, i32 11
  %52 = load i32, ptr %tnum39, align 8
  %53 = load i32, ptr %iDb, align 4
  %call40 = call i32 @sqlite3VdbeAddOp3(ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %pIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %v, align 8
  %57 = load i8, ptr %p5.addr, align 1
  %conv41 = zext i8 %57 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %56, i16 noundef zeroext %conv41)
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %lor.lhs.false34
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %58 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %pNext, align 8
  store ptr %59, ptr %pIdx, align 8
  %60 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %60, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %61 = load i32, ptr %iBase.addr, align 4
  %62 = load ptr, ptr %pParse.addr, align 8
  %nTab44 = getelementptr inbounds nuw %struct.Parse, ptr %62, i32 0, i32 17
  %63 = load i32, ptr %nTab44, align 4
  %cmp45 = icmp sgt i32 %61, %63
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.end
  %64 = load i32, ptr %iBase.addr, align 4
  %65 = load ptr, ptr %pParse.addr, align 8
  %nTab48 = getelementptr inbounds nuw %struct.Parse, ptr %65, i32 0, i32 17
  store i32 %64, ptr %nTab48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end
  %66 = load i32, ptr %i, align 4
  store i32 %66, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
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
