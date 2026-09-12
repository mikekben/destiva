; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nounwind uwtable
define hidden void @whereLoopAdjustCost(ptr noundef %p, ptr noundef %pTemplate) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pTemplate.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pTemplate, ptr %pTemplate.addr, align 8
  %0 = load ptr, ptr %pTemplate.addr, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %wsFlags, align 8
  %and = and i32 %1, 512
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %iTab, align 8
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %pTemplate.addr, align 8
  %iTab1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %iTab1, align 8
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %7 = load ptr, ptr %p.addr, align 8
  %wsFlags7 = getelementptr inbounds nuw %struct.WhereLoop, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %wsFlags7, align 8
  %and8 = and i32 %8, 512
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  br label %for.inc

if.end12:                                         ; preds = %if.end6
  %9 = load ptr, ptr %p.addr, align 8
  %10 = load ptr, ptr %pTemplate.addr, align 8
  %call = call i32 @whereLoopCheaperProperSubset(ptr noundef %9, ptr noundef %10)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %p.addr, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %11, i32 0, i32 5
  %12 = load i16, ptr %rRun, align 4
  %13 = load ptr, ptr %pTemplate.addr, align 8
  %rRun15 = getelementptr inbounds nuw %struct.WhereLoop, ptr %13, i32 0, i32 5
  store i16 %12, ptr %rRun15, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %14, i32 0, i32 6
  %15 = load i16, ptr %nOut, align 2
  %conv16 = sext i16 %15 to i32
  %sub = sub nsw i32 %conv16, 1
  %conv17 = trunc i32 %sub to i16
  %16 = load ptr, ptr %pTemplate.addr, align 8
  %nOut18 = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 6
  store i16 %conv17, ptr %nOut18, align 2
  br label %if.end29

if.else:                                          ; preds = %if.end12
  %17 = load ptr, ptr %pTemplate.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %call19 = call i32 @whereLoopCheaperProperSubset(ptr noundef %17, ptr noundef %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.else
  %19 = load ptr, ptr %p.addr, align 8
  %rRun22 = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 5
  %20 = load i16, ptr %rRun22, align 4
  %21 = load ptr, ptr %pTemplate.addr, align 8
  %rRun23 = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 5
  store i16 %20, ptr %rRun23, align 4
  %22 = load ptr, ptr %p.addr, align 8
  %nOut24 = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 6
  %23 = load i16, ptr %nOut24, align 2
  %conv25 = sext i16 %23 to i32
  %add = add nsw i32 %conv25, 1
  %conv26 = trunc i32 %add to i16
  %24 = load ptr, ptr %pTemplate.addr, align 8
  %nOut27 = getelementptr inbounds nuw %struct.WhereLoop, ptr %24, i32 0, i32 6
  store i16 %conv26, ptr %nOut27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then11, %if.then5
  %25 = load ptr, ptr %p.addr, align 8
  %pNextLoop = getelementptr inbounds nuw %struct.WhereLoop, ptr %25, i32 0, i32 13
  %26 = load ptr, ptr %pNextLoop, align 8
  store ptr %26, ptr %p.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopCheaperProperSubset(ptr noundef, ptr noundef) #0

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
