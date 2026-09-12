; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @whereLoopFindLesser(ptr noundef %ppPrev, ptr noundef %pTemplate) #0 {
entry:
  %retval = alloca ptr, align 8
  %ppPrev.addr = alloca ptr, align 8
  %pTemplate.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %ppPrev, ptr %ppPrev.addr, align 8
  store ptr %pTemplate, ptr %pTemplate.addr, align 8
  %0 = load ptr, ptr %ppPrev.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %iTab, align 8
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %pTemplate.addr, align 8
  %iTab1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %iTab1, align 8
  %conv2 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load ptr, ptr %p, align 8
  %iSortIdx = getelementptr inbounds nuw %struct.WhereLoop, ptr %7, i32 0, i32 3
  %8 = load i8, ptr %iSortIdx, align 1
  %conv4 = zext i8 %8 to i32
  %9 = load ptr, ptr %pTemplate.addr, align 8
  %iSortIdx5 = getelementptr inbounds nuw %struct.WhereLoop, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %iSortIdx5, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv4, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %p, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %wsFlags, align 8
  %and = and i32 %12, 16384
  %cmp9 = icmp ne i32 %and, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %pTemplate.addr, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %13, i32 0, i32 10
  %14 = load i16, ptr %nSkip, align 2
  %conv11 = zext i16 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end31

land.lhs.true14:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %pTemplate.addr, align 8
  %wsFlags15 = getelementptr inbounds nuw %struct.WhereLoop, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %wsFlags15, align 8
  %and16 = and i32 %16, 512
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end31

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %17 = load ptr, ptr %pTemplate.addr, align 8
  %wsFlags20 = getelementptr inbounds nuw %struct.WhereLoop, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %wsFlags20, align 8
  %and21 = and i32 %18, 1
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end31

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %19 = load ptr, ptr %p, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %prereq, align 8
  %21 = load ptr, ptr %pTemplate.addr, align 8
  %prereq25 = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %prereq25, align 8
  %and26 = and i64 %20, %22
  %23 = load ptr, ptr %pTemplate.addr, align 8
  %prereq27 = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %prereq27, align 8
  %cmp28 = icmp eq i64 %and26, %24
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true24
  br label %for.end

if.end31:                                         ; preds = %land.lhs.true24, %land.lhs.true19, %land.lhs.true14, %land.lhs.true, %if.end
  %25 = load ptr, ptr %p, align 8
  %prereq32 = getelementptr inbounds nuw %struct.WhereLoop, ptr %25, i32 0, i32 0
  %26 = load i64, ptr %prereq32, align 8
  %27 = load ptr, ptr %pTemplate.addr, align 8
  %prereq33 = getelementptr inbounds nuw %struct.WhereLoop, ptr %27, i32 0, i32 0
  %28 = load i64, ptr %prereq33, align 8
  %and34 = and i64 %26, %28
  %29 = load ptr, ptr %p, align 8
  %prereq35 = getelementptr inbounds nuw %struct.WhereLoop, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %prereq35, align 8
  %cmp36 = icmp eq i64 %and34, %30
  br i1 %cmp36, label %land.lhs.true38, label %if.end57

land.lhs.true38:                                  ; preds = %if.end31
  %31 = load ptr, ptr %p, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %31, i32 0, i32 4
  %32 = load i16, ptr %rSetup, align 2
  %conv39 = sext i16 %32 to i32
  %33 = load ptr, ptr %pTemplate.addr, align 8
  %rSetup40 = getelementptr inbounds nuw %struct.WhereLoop, ptr %33, i32 0, i32 4
  %34 = load i16, ptr %rSetup40, align 2
  %conv41 = sext i16 %34 to i32
  %cmp42 = icmp sle i32 %conv39, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %if.end57

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %35 = load ptr, ptr %p, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %35, i32 0, i32 5
  %36 = load i16, ptr %rRun, align 4
  %conv45 = sext i16 %36 to i32
  %37 = load ptr, ptr %pTemplate.addr, align 8
  %rRun46 = getelementptr inbounds nuw %struct.WhereLoop, ptr %37, i32 0, i32 5
  %38 = load i16, ptr %rRun46, align 4
  %conv47 = sext i16 %38 to i32
  %cmp48 = icmp sle i32 %conv45, %conv47
  br i1 %cmp48, label %land.lhs.true50, label %if.end57

land.lhs.true50:                                  ; preds = %land.lhs.true44
  %39 = load ptr, ptr %p, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %39, i32 0, i32 6
  %40 = load i16, ptr %nOut, align 2
  %conv51 = sext i16 %40 to i32
  %41 = load ptr, ptr %pTemplate.addr, align 8
  %nOut52 = getelementptr inbounds nuw %struct.WhereLoop, ptr %41, i32 0, i32 6
  %42 = load i16, ptr %nOut52, align 2
  %conv53 = sext i16 %42 to i32
  %cmp54 = icmp sle i32 %conv51, %conv53
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true50
  store ptr null, ptr %retval, align 8
  br label %return

if.end57:                                         ; preds = %land.lhs.true50, %land.lhs.true44, %land.lhs.true38, %if.end31
  %43 = load ptr, ptr %p, align 8
  %prereq58 = getelementptr inbounds nuw %struct.WhereLoop, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %prereq58, align 8
  %45 = load ptr, ptr %pTemplate.addr, align 8
  %prereq59 = getelementptr inbounds nuw %struct.WhereLoop, ptr %45, i32 0, i32 0
  %46 = load i64, ptr %prereq59, align 8
  %and60 = and i64 %44, %46
  %47 = load ptr, ptr %pTemplate.addr, align 8
  %prereq61 = getelementptr inbounds nuw %struct.WhereLoop, ptr %47, i32 0, i32 0
  %48 = load i64, ptr %prereq61, align 8
  %cmp62 = icmp eq i64 %and60, %48
  br i1 %cmp62, label %land.lhs.true64, label %if.end79

land.lhs.true64:                                  ; preds = %if.end57
  %49 = load ptr, ptr %p, align 8
  %rRun65 = getelementptr inbounds nuw %struct.WhereLoop, ptr %49, i32 0, i32 5
  %50 = load i16, ptr %rRun65, align 4
  %conv66 = sext i16 %50 to i32
  %51 = load ptr, ptr %pTemplate.addr, align 8
  %rRun67 = getelementptr inbounds nuw %struct.WhereLoop, ptr %51, i32 0, i32 5
  %52 = load i16, ptr %rRun67, align 4
  %conv68 = sext i16 %52 to i32
  %cmp69 = icmp sge i32 %conv66, %conv68
  br i1 %cmp69, label %land.lhs.true71, label %if.end79

land.lhs.true71:                                  ; preds = %land.lhs.true64
  %53 = load ptr, ptr %p, align 8
  %nOut72 = getelementptr inbounds nuw %struct.WhereLoop, ptr %53, i32 0, i32 6
  %54 = load i16, ptr %nOut72, align 2
  %conv73 = sext i16 %54 to i32
  %55 = load ptr, ptr %pTemplate.addr, align 8
  %nOut74 = getelementptr inbounds nuw %struct.WhereLoop, ptr %55, i32 0, i32 6
  %56 = load i16, ptr %nOut74, align 2
  %conv75 = sext i16 %56 to i32
  %cmp76 = icmp sge i32 %conv73, %conv75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true71
  br label %for.end

if.end79:                                         ; preds = %land.lhs.true71, %land.lhs.true64, %if.end57
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %if.then
  %57 = load ptr, ptr %p, align 8
  %pNextLoop = getelementptr inbounds nuw %struct.WhereLoop, ptr %57, i32 0, i32 13
  store ptr %pNextLoop, ptr %ppPrev.addr, align 8
  %58 = load ptr, ptr %ppPrev.addr, align 8
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then78, %if.then30, %for.cond
  %60 = load ptr, ptr %ppPrev.addr, align 8
  store ptr %60, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then56
  %61 = load ptr, ptr %retval, align 8
  ret ptr %61
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
