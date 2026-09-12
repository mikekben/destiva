; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.analysisInfo = type { ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @analysisLoader(ptr noundef %pData, i32 noundef %argc, ptr noundef %argv, ptr noundef %NotUsed) #0 {
entry:
  %retval = alloca i32, align 4
  %pData.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %NotUsed.addr = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %pTable = alloca ptr, align 8
  %z = alloca ptr, align 8
  %aiRowEst = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %fakeIdx = alloca %struct.Index, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  %0 = load ptr, ptr %pData.addr, align 8
  store ptr %0, ptr %pInfo, align 8
  %1 = load ptr, ptr %NotUsed.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 2
  %7 = load ptr, ptr %arrayidx3, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %pInfo, align 8
  %db = getelementptr inbounds nuw %struct.analysisInfo, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx5, align 8
  %12 = load ptr, ptr %pInfo, align 8
  %zDatabase = getelementptr inbounds nuw %struct.analysisInfo, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zDatabase, align 8
  %call = call ptr @sqlite3FindTable(ptr noundef %9, ptr noundef %11, ptr noundef %13)
  store ptr %call, ptr %pTable, align 8
  %14 = load ptr, ptr %pTable, align 8
  %cmp6 = icmp eq ptr %14, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx9, align 8
  %cmp10 = icmp eq ptr %16, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  store ptr null, ptr %pIndex, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end8
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx12, align 8
  %19 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_stricmp(ptr noundef %18, ptr noundef %20)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %21 = load ptr, ptr %pTable, align 8
  %call17 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %21)
  store ptr %call17, ptr %pIndex, align 8
  br label %if.end23

if.else18:                                        ; preds = %if.else
  %22 = load ptr, ptr %pInfo, align 8
  %db19 = getelementptr inbounds nuw %struct.analysisInfo, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %db19, align 8
  %24 = load ptr, ptr %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %24, i64 1
  %25 = load ptr, ptr %arrayidx20, align 8
  %26 = load ptr, ptr %pInfo, align 8
  %zDatabase21 = getelementptr inbounds nuw %struct.analysisInfo, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %zDatabase21, align 8
  %call22 = call ptr @sqlite3FindIndex(ptr noundef %23, ptr noundef %25, ptr noundef %27)
  store ptr %call22, ptr %pIndex, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then11
  %28 = load ptr, ptr %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %28, i64 2
  %29 = load ptr, ptr %arrayidx25, align 8
  store ptr %29, ptr %z, align 8
  %30 = load ptr, ptr %pIndex, align 8
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then26, label %if.else36

if.then26:                                        ; preds = %if.end24
  store ptr null, ptr %aiRowEst, align 8
  %31 = load ptr, ptr %pIndex, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 13
  %32 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %32 to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, ptr %nCol, align 4
  %33 = load ptr, ptr %pIndex, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %33, i32 0, i32 16
  %bf.load = load i16, ptr %bUnordered, align 1
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr %bUnordered, align 1
  %34 = load ptr, ptr %z, align 8
  %35 = load i32, ptr %nCol, align 4
  %36 = load ptr, ptr %aiRowEst, align 8
  %37 = load ptr, ptr %pIndex, align 8
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %aiRowLogEst, align 8
  %39 = load ptr, ptr %pIndex, align 8
  call void @decodeIntArray(ptr noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %pIndex, align 8
  %hasStat1 = getelementptr inbounds nuw %struct.Index, ptr %40, i32 0, i32 16
  %bf.load27 = load i16, ptr %hasStat1, align 1
  %bf.clear28 = and i16 %bf.load27, -129
  %bf.set29 = or i16 %bf.clear28, 128
  store i16 %bf.set29, ptr %hasStat1, align 1
  %41 = load ptr, ptr %pIndex, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp30 = icmp eq ptr %42, null
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then26
  %43 = load ptr, ptr %pIndex, align 8
  %aiRowLogEst33 = getelementptr inbounds nuw %struct.Index, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %aiRowLogEst33, align 8
  %arrayidx34 = getelementptr inbounds i16, ptr %44, i64 0
  %45 = load i16, ptr %arrayidx34, align 2
  %46 = load ptr, ptr %pTable, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %46, i32 0, i32 12
  store i16 %45, ptr %nRowLogEst, align 8
  %47 = load ptr, ptr %pTable, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 9
  %48 = load i32, ptr %tabFlags, align 8
  %or = or i32 %48, 16
  store i32 %or, ptr %tabFlags, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then26
  br label %if.end42

if.else36:                                        ; preds = %if.end24
  %49 = load ptr, ptr %pTable, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 13
  %50 = load i16, ptr %szTabRow, align 2
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %fakeIdx, i32 0, i32 12
  store i16 %50, ptr %szIdxRow, align 4
  %51 = load ptr, ptr %z, align 8
  %52 = load ptr, ptr %pTable, align 8
  %nRowLogEst37 = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 12
  call void @decodeIntArray(ptr noundef %51, i32 noundef 1, ptr noundef null, ptr noundef %nRowLogEst37, ptr noundef %fakeIdx)
  %szIdxRow38 = getelementptr inbounds nuw %struct.Index, ptr %fakeIdx, i32 0, i32 12
  %53 = load i16, ptr %szIdxRow38, align 4
  %54 = load ptr, ptr %pTable, align 8
  %szTabRow39 = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 13
  store i16 %53, ptr %szTabRow39, align 2
  %55 = load ptr, ptr %pTable, align 8
  %tabFlags40 = getelementptr inbounds nuw %struct.Table, ptr %55, i32 0, i32 9
  %56 = load i32, ptr %tabFlags40, align 8
  %or41 = or i32 %56, 16
  store i32 %or41, ptr %tabFlags40, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then7, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
declare hidden void @decodeIntArray(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
