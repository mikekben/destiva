; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @fkChildIsModified(ptr noundef %pTab, ptr noundef %p, ptr noundef %aChange, i32 noundef %bChngRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %aChange.addr = alloca ptr, align 8
  %bChngRowid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iChildKey = alloca i32, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %aChange, ptr %aChange.addr, align 8
  store i32 %bChngRowid, ptr %bChngRowid.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nCol, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 %idxprom
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx, i32 0, i32 0
  %5 = load i32, ptr %iFrom, align 8
  store i32 %5, ptr %iChildKey, align 4
  %6 = load ptr, ptr %aChange.addr, align 8
  %7 = load i32, ptr %iChildKey, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom1
  %8 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load i32, ptr %iChildKey, align 4
  %10 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 10
  %11 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %11 to i32
  %cmp4 = icmp eq i32 %9, %conv
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, ptr %bChngRowid.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
