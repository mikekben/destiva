; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbeFreeOpArray(ptr noundef %db, ptr noundef %aOp, i32 noundef %nOp) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %aOp.addr = alloca ptr, align 8
  %nOp.addr = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %aOp, ptr %aOp.addr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  %0 = load ptr, ptr %aOp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %aOp.addr, align 8
  %2 = load i32, ptr %nOp.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load ptr, ptr %pOp, align 8
  %4 = load ptr, ptr %aOp.addr, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %p4type, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp sle i32 %conv, -7
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pOp, align 8
  %p4type4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %p4type4, align 1
  %conv5 = sext i8 %9 to i32
  %10 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %p4, align 8
  call void @freeP4(ptr noundef %7, i32 noundef %conv5, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %pOp, align 8
  %incdec.ptr = getelementptr inbounds %struct.VdbeOp, ptr %12, i32 -1
  store ptr %incdec.ptr, ptr %pOp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %aOp.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %13, ptr noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @freeP4(ptr noundef, i32 noundef, ptr noundef) #0

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
