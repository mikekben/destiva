; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddCollateType(ptr noundef %pParse, ptr noundef %pToken) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %zColl = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %pNewTable, align 8
  store ptr %1, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end24

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 11
  %3 = load i16, ptr %nCol, align 2
  %conv = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %i, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db1, align 8
  store ptr %5, ptr %db, align 8
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %pToken.addr, align 8
  %call = call ptr @sqlite3NameFromToken(ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %zColl, align 8
  %8 = load ptr, ptr %zColl, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %if.end24

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %zColl, align 8
  %call4 = call ptr @sqlite3LocateCollSeq(ptr noundef %9, ptr noundef %10)
  %tobool5 = icmp ne ptr %call4, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aCol, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %13, i64 %idxprom
  %zColl7 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 2
  %15 = load ptr, ptr %zColl7, align 8
  call void @sqlite3DbFree(ptr noundef %11, ptr noundef %15)
  %16 = load ptr, ptr %zColl, align 8
  %17 = load ptr, ptr %p, align 8
  %aCol8 = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %aCol8, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds %struct.Column, ptr %18, i64 %idxprom9
  %zColl11 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx10, i32 0, i32 2
  store ptr %16, ptr %zColl11, align 8
  %20 = load ptr, ptr %p, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pIndex, align 8
  store ptr %21, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %22 = load ptr, ptr %pIdx, align 8
  %tobool12 = icmp ne ptr %22, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %aiColumn, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %24, i64 0
  %25 = load i16, ptr %arrayidx13, align 2
  %conv14 = sext i16 %25 to i32
  %26 = load i32, ptr %i, align 4
  %cmp15 = icmp eq i32 %conv14, %26
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %for.body
  %27 = load ptr, ptr %p, align 8
  %aCol18 = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %aCol18, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds %struct.Column, ptr %28, i64 %idxprom19
  %zColl21 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx20, i32 0, i32 2
  %30 = load ptr, ptr %zColl21, align 8
  %31 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %azColl, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %32, i64 0
  store ptr %30, ptr %arrayidx22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %33 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %pNext, align 8
  store ptr %34, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.else:                                          ; preds = %if.end3
  %35 = load ptr, ptr %db, align 8
  %36 = load ptr, ptr %zColl, align 8
  call void @sqlite3DbFree(ptr noundef %35, ptr noundef %36)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %for.end, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateCollSeq(ptr noundef, ptr noundef) #0

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
