; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden i32 @checkColumnOverlap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3TriggerColmask(ptr noundef %pParse, ptr noundef %pTrigger, ptr noundef %pChanges, i32 noundef %isNew, i32 noundef %tr_tm, ptr noundef %pTab, i32 noundef %orconf) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %pChanges.addr = alloca ptr, align 8
  %isNew.addr = alloca i32, align 4
  %tr_tm.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %orconf.addr = alloca i32, align 4
  %op = alloca i32, align 4
  %mask = alloca i32, align 4
  %p = alloca ptr, align 8
  %pPrg = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store i32 %isNew, ptr %isNew.addr, align 4
  store i32 %tr_tm, ptr %tr_tm.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %orconf, ptr %orconf.addr, align 4
  %0 = load ptr, ptr %pChanges.addr, align 8
  %tobool = icmp ne ptr %0, null
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 125, i32 124
  store i32 %cond, ptr %op, align 4
  store i32 0, ptr %mask, align 4
  %2 = load ptr, ptr %pTrigger.addr, align 8
  store ptr %2, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %op2 = getelementptr inbounds nuw %struct.Trigger, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %op2, align 8
  %conv = zext i8 %5 to i32
  %6 = load i32, ptr %op, align 4
  %cmp = icmp eq i32 %conv, %6
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, ptr %tr_tm.addr, align 4
  %8 = load ptr, ptr %p, align 8
  %tr_tm4 = getelementptr inbounds nuw %struct.Trigger, ptr %8, i32 0, i32 3
  %9 = load i8, ptr %tr_tm4, align 1
  %conv5 = zext i8 %9 to i32
  %and = and i32 %7, %conv5
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %p, align 8
  %pColumns = getelementptr inbounds nuw %struct.Trigger, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pColumns, align 8
  %12 = load ptr, ptr %pChanges.addr, align 8
  %call = call i32 @checkColumnOverlap(ptr noundef %11, ptr noundef %12)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true7
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %p, align 8
  %15 = load ptr, ptr %pTab.addr, align 8
  %16 = load i32, ptr %orconf.addr, align 4
  %call9 = call ptr @getRowTrigger(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16)
  store ptr %call9, ptr %pPrg, align 8
  %17 = load ptr, ptr %pPrg, align 8
  %tobool10 = icmp ne ptr %17, null
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %18 = load ptr, ptr %pPrg, align 8
  %aColmask = getelementptr inbounds nuw %struct.TriggerPrg, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %isNew.addr, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr %aColmask, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %21 = load i32, ptr %mask, align 4
  %or = or i32 %21, %20
  store i32 %or, ptr %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %22 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %pNext, align 8
  store ptr %23, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %mask, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden ptr @getRowTrigger(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
