; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @fkParentIsModified(ptr noundef %pTab, ptr noundef %p, ptr noundef %aChange, i32 noundef %bChngRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %aChange.addr = alloca ptr, align 8
  %bChngRowid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %zKey = alloca ptr, align 8
  %iKey = alloca i32, align 4
  %pCol = alloca ptr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %aChange, ptr %aChange.addr, align 8
  store i32 %bChngRowid, ptr %bChngRowid.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nCol, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 %idxprom
  %zCol = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx, i32 0, i32 1
  %5 = load ptr, ptr %zCol, align 8
  store ptr %5, ptr %zKey, align 8
  store i32 0, ptr %iKey, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %iKey, align 4
  %7 = load ptr, ptr %pTab.addr, align 8
  %nCol2 = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 11
  %8 = load i16, ptr %nCol2, align 2
  %conv = sext i16 %8 to i32
  %cmp3 = icmp slt i32 %6, %conv
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %aChange.addr, align 8
  %10 = load i32, ptr %iKey, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp sge i32 %11, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body5
  %12 = load i32, ptr %iKey, align 4
  %13 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 10
  %14 = load i16, ptr %iPKey, align 4
  %conv10 = sext i16 %14 to i32
  %cmp11 = icmp eq i32 %12, %conv10
  br i1 %cmp11, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false
  %15 = load i32, ptr %bChngRowid.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %land.lhs.true, %for.body5
  %16 = load ptr, ptr %pTab.addr, align 8
  %aCol13 = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %aCol13, align 8
  %18 = load i32, ptr %iKey, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds %struct.Column, ptr %17, i64 %idxprom14
  store ptr %arrayidx15, ptr %pCol, align 8
  %19 = load ptr, ptr %zKey, align 8
  %tobool16 = icmp ne ptr %19, null
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then
  %20 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zName, align 8
  %22 = load ptr, ptr %zKey, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %21, ptr noundef %22)
  %cmp18 = icmp eq i32 0, %call
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then17
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then17
  br label %if.end25

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %23, i32 0, i32 6
  %24 = load i8, ptr %colFlags, align 1
  %conv21 = zext i8 %24 to i32
  %and = and i32 %conv21, 1
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %25 = load i32, ptr %iKey, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %iKey, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %26 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end29:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end29, %if.then23, %if.then20
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
!8 = distinct !{!8, !7}
