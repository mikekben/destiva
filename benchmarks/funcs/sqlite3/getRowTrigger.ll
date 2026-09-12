; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }

; Function Attrs: nounwind uwtable
define hidden ptr @getRowTrigger(ptr noundef %pParse, ptr noundef %pTrigger, ptr noundef %pTab, i32 noundef %orconf) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %orconf.addr = alloca i32, align 4
  %pRoot = alloca ptr, align 8
  %pPrg = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %orconf, ptr %orconf.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pRoot, align 8
  %5 = load ptr, ptr %pRoot, align 8
  %pTriggerPrg = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 65
  %6 = load ptr, ptr %pTriggerPrg, align 8
  store ptr %6, ptr %pPrg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load ptr, ptr %pPrg, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pPrg, align 8
  %pTrigger3 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pTrigger3, align 8
  %10 = load ptr, ptr %pTrigger.addr, align 8
  %cmp = icmp ne ptr %9, %10
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %11 = load ptr, ptr %pPrg, align 8
  %orconf4 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %orconf4, align 8
  %13 = load i32, ptr %orconf.addr, align 4
  %cmp5 = icmp ne i32 %12, %13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %14, %lor.end ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %pPrg, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerPrg, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pNext, align 8
  store ptr %17, ptr %pPrg, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %pPrg, align 8
  %tobool6 = icmp ne ptr %18, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pTrigger.addr, align 8
  %21 = load ptr, ptr %pTab.addr, align 8
  %22 = load i32, ptr %orconf.addr, align 4
  %call = call ptr @codeRowTrigger(ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22)
  store ptr %call, ptr %pPrg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load ptr, ptr %pPrg, align 8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
declare hidden ptr @codeRowTrigger(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
