; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopCheaperProperSubset(ptr noundef %pX, ptr noundef %pY) #0 {
entry:
  %retval = alloca i32, align 4
  %pX.addr = alloca ptr, align 8
  %pY.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pX, ptr %pX.addr, align 8
  store ptr %pY, ptr %pY.addr, align 8
  %0 = load ptr, ptr %pX.addr, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 9
  %1 = load i16, ptr %nLTerm, align 4
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr %pX.addr, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %2, i32 0, i32 10
  %3 = load i16, ptr %nSkip, align 2
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %4 = load ptr, ptr %pY.addr, align 8
  %nLTerm2 = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %nLTerm2, align 4
  %conv3 = zext i16 %5 to i32
  %6 = load ptr, ptr %pY.addr, align 8
  %nSkip4 = getelementptr inbounds nuw %struct.WhereLoop, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %nSkip4, align 2
  %conv5 = zext i16 %7 to i32
  %sub6 = sub nsw i32 %conv3, %conv5
  %cmp = icmp sge i32 %sub, %sub6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pY.addr, align 8
  %nSkip8 = getelementptr inbounds nuw %struct.WhereLoop, ptr %8, i32 0, i32 10
  %9 = load i16, ptr %nSkip8, align 2
  %conv9 = zext i16 %9 to i32
  %10 = load ptr, ptr %pX.addr, align 8
  %nSkip10 = getelementptr inbounds nuw %struct.WhereLoop, ptr %10, i32 0, i32 10
  %11 = load i16, ptr %nSkip10, align 2
  %conv11 = zext i16 %11 to i32
  %cmp12 = icmp sgt i32 %conv9, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %12 = load ptr, ptr %pX.addr, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 5
  %13 = load i16, ptr %rRun, align 4
  %conv16 = sext i16 %13 to i32
  %14 = load ptr, ptr %pY.addr, align 8
  %rRun17 = getelementptr inbounds nuw %struct.WhereLoop, ptr %14, i32 0, i32 5
  %15 = load i16, ptr %rRun17, align 4
  %conv18 = sext i16 %15 to i32
  %cmp19 = icmp sge i32 %conv16, %conv18
  br i1 %cmp19, label %if.then21, label %if.end37

if.then21:                                        ; preds = %if.end15
  %16 = load ptr, ptr %pX.addr, align 8
  %rRun22 = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 5
  %17 = load i16, ptr %rRun22, align 4
  %conv23 = sext i16 %17 to i32
  %18 = load ptr, ptr %pY.addr, align 8
  %rRun24 = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 5
  %19 = load i16, ptr %rRun24, align 4
  %conv25 = sext i16 %19 to i32
  %cmp26 = icmp sgt i32 %conv23, %conv25
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then21
  %20 = load ptr, ptr %pX.addr, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %20, i32 0, i32 6
  %21 = load i16, ptr %nOut, align 2
  %conv30 = sext i16 %21 to i32
  %22 = load ptr, ptr %pY.addr, align 8
  %nOut31 = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 6
  %23 = load i16, ptr %nOut31, align 2
  %conv32 = sext i16 %23 to i32
  %cmp33 = icmp sgt i32 %conv30, %conv32
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end29
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end15
  %24 = load ptr, ptr %pX.addr, align 8
  %nLTerm38 = getelementptr inbounds nuw %struct.WhereLoop, ptr %24, i32 0, i32 9
  %25 = load i16, ptr %nLTerm38, align 4
  %conv39 = zext i16 %25 to i32
  %sub40 = sub nsw i32 %conv39, 1
  store i32 %sub40, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %if.end37
  %26 = load i32, ptr %i, align 4
  %cmp41 = icmp sge i32 %26, 0
  br i1 %cmp41, label %for.body, label %for.end70

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pX.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %aLTerm, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 %idxprom
  %30 = load ptr, ptr %arrayidx, align 8
  %cmp43 = icmp eq ptr %30, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body
  br label %for.inc68

if.end46:                                         ; preds = %for.body
  %31 = load ptr, ptr %pY.addr, align 8
  %nLTerm47 = getelementptr inbounds nuw %struct.WhereLoop, ptr %31, i32 0, i32 9
  %32 = load i16, ptr %nLTerm47, align 4
  %conv48 = zext i16 %32 to i32
  %sub49 = sub nsw i32 %conv48, 1
  store i32 %sub49, ptr %j, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc, %if.end46
  %33 = load i32, ptr %j, align 4
  %cmp51 = icmp sge i32 %33, 0
  br i1 %cmp51, label %for.body53, label %for.end

for.body53:                                       ; preds = %for.cond50
  %34 = load ptr, ptr %pY.addr, align 8
  %aLTerm54 = getelementptr inbounds nuw %struct.WhereLoop, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %aLTerm54, align 8
  %36 = load i32, ptr %j, align 4
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %35, i64 %idxprom55
  %37 = load ptr, ptr %arrayidx56, align 8
  %38 = load ptr, ptr %pX.addr, align 8
  %aLTerm57 = getelementptr inbounds nuw %struct.WhereLoop, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %aLTerm57, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %39, i64 %idxprom58
  %41 = load ptr, ptr %arrayidx59, align 8
  %cmp60 = icmp eq ptr %37, %41
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.body53
  br label %for.end

if.end63:                                         ; preds = %for.body53
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %42 = load i32, ptr %j, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond50, !llvm.loop !6

for.end:                                          ; preds = %if.then62, %for.cond50
  %43 = load i32, ptr %j, align 4
  %cmp64 = icmp slt i32 %43, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %for.end
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67, %if.then45
  %44 = load i32, ptr %i, align 4
  %dec69 = add nsw i32 %44, -1
  store i32 %dec69, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end70:                                        ; preds = %for.cond
  %45 = load ptr, ptr %pX.addr, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %45, i32 0, i32 8
  %46 = load i32, ptr %wsFlags, align 8
  %and = and i32 %46, 64
  %cmp71 = icmp ne i32 %and, 0
  br i1 %cmp71, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %for.end70
  %47 = load ptr, ptr %pY.addr, align 8
  %wsFlags73 = getelementptr inbounds nuw %struct.WhereLoop, ptr %47, i32 0, i32 8
  %48 = load i32, ptr %wsFlags73, align 8
  %and74 = and i32 %48, 64
  %cmp75 = icmp eq i32 %and74, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true, %for.end70
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then77, %if.then66, %if.then35, %if.then28, %if.then14, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
