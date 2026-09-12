; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @checkColumnOverlap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CodeRowTrigger(ptr noundef %pParse, ptr noundef %pTrigger, i32 noundef %op, ptr noundef %pChanges, i32 noundef %tr_tm, ptr noundef %pTab, i32 noundef %reg, i32 noundef %orconf, i32 noundef %ignoreJump) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pChanges.addr = alloca ptr, align 8
  %tr_tm.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %orconf.addr = alloca i32, align 4
  %ignoreJump.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store i32 %tr_tm, ptr %tr_tm.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  store i32 %orconf, ptr %orconf.addr, align 4
  store i32 %ignoreJump, ptr %ignoreJump.addr, align 4
  %0 = load ptr, ptr %pTrigger.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8
  %op1 = getelementptr inbounds nuw %struct.Trigger, ptr %2, i32 0, i32 2
  %3 = load i8, ptr %op1, align 8
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %conv, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %tr_tm3 = getelementptr inbounds nuw %struct.Trigger, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %tr_tm3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i32, ptr %tr_tm.addr, align 4
  %cmp5 = icmp eq i32 %conv4, %7
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %p, align 8
  %pColumns = getelementptr inbounds nuw %struct.Trigger, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %pColumns, align 8
  %10 = load ptr, ptr %pChanges.addr, align 8
  %call = call i32 @checkColumnOverlap(ptr noundef %9, ptr noundef %10)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true7
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %pTab.addr, align 8
  %14 = load i32, ptr %reg.addr, align 4
  %15 = load i32, ptr %orconf.addr, align 4
  %16 = load i32, ptr %ignoreJump.addr, align 4
  call void @sqlite3CodeRowTriggerDirect(ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %pNext, align 8
  store ptr %18, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRowTriggerDirect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
