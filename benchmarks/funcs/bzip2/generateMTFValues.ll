; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
define hidden void @generateMTFValues(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %yy = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zPend = alloca i32, align 4
  %wr = alloca i32, align 4
  %EOB = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %mtfv = alloca ptr, align 8
  %ll_i = alloca i8, align 1
  %rtmp = alloca i8, align 1
  %ryy_j = alloca ptr, align 8
  %rll_i = alloca i8, align 1
  %rtmp2 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %ptr1 = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %ptr1, align 8
  store ptr %1, ptr %ptr, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %block2 = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %block2, align 8
  store ptr %3, ptr %block, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %mtfv3 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %mtfv3, align 8
  store ptr %5, ptr %mtfv, align 8
  %6 = load ptr, ptr %s.addr, align 8
  call void @makeMaps_e(ptr noundef %6)
  %7 = load ptr, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 21
  %8 = load i32, ptr %nInUse, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, ptr %EOB, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %EOB, align 4
  %cmp = icmp sle i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8
  %mtfFreq = getelementptr inbounds nuw %struct.EState, ptr %11, i32 0, i32 32
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [258 x i32], ptr %mtfFreq, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %wr, align 4
  store i32 0, ptr %zPend, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %nInUse5 = getelementptr inbounds nuw %struct.EState, ptr %15, i32 0, i32 21
  %16 = load i32, ptr %nInUse5, align 4
  %cmp6 = icmp slt i32 %14, %16
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond4
  %17 = load i32, ptr %i, align 4
  %conv = trunc i32 %17 to i8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 %idxprom8
  store i8 %conv, ptr %arrayidx9, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %19 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end12:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc82, %for.end12
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %nblock = getelementptr inbounds nuw %struct.EState, ptr %21, i32 0, i32 17
  %22 = load i32, ptr %nblock, align 4
  %cmp14 = icmp slt i32 %20, %22
  br i1 %cmp14, label %for.body16, label %for.end84

for.body16:                                       ; preds = %for.cond13
  %23 = load ptr, ptr %ptr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %23, i64 %idxprom17
  %25 = load i32, ptr %arrayidx18, align 4
  %sub = sub i32 %25, 1
  store i32 %sub, ptr %j, align 4
  %26 = load i32, ptr %j, align 4
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  %27 = load ptr, ptr %s.addr, align 8
  %nblock21 = getelementptr inbounds nuw %struct.EState, ptr %27, i32 0, i32 17
  %28 = load i32, ptr %nblock21, align 4
  %29 = load i32, ptr %j, align 4
  %add22 = add nsw i32 %29, %28
  store i32 %add22, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body16
  %30 = load ptr, ptr %s.addr, align 8
  %unseqToSeq = getelementptr inbounds nuw %struct.EState, ptr %30, i32 0, i32 23
  %31 = load ptr, ptr %block, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %31, i64 %idxprom23
  %33 = load i8, ptr %arrayidx24, align 1
  %idxprom25 = zext i8 %33 to i64
  %arrayidx26 = getelementptr inbounds nuw [256 x i8], ptr %unseqToSeq, i64 0, i64 %idxprom25
  %34 = load i8, ptr %arrayidx26, align 1
  store i8 %34, ptr %ll_i, align 1
  %arrayidx27 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 0
  %35 = load i8, ptr %arrayidx27, align 16
  %conv28 = zext i8 %35 to i32
  %36 = load i8, ptr %ll_i, align 1
  %conv29 = zext i8 %36 to i32
  %cmp30 = icmp eq i32 %conv28, %conv29
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end
  %37 = load i32, ptr %zPend, align 4
  %inc33 = add nsw i32 %37, 1
  store i32 %inc33, ptr %zPend, align 4
  br label %if.end81

if.else:                                          ; preds = %if.end
  %38 = load i32, ptr %zPend, align 4
  %cmp34 = icmp sgt i32 %38, 0
  br i1 %cmp34, label %if.then36, label %if.end57

if.then36:                                        ; preds = %if.else
  %39 = load i32, ptr %zPend, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, ptr %zPend, align 4
  br label %while.body

while.body:                                       ; preds = %if.end55, %if.then36
  %40 = load i32, ptr %zPend, align 4
  %and = and i32 %40, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then37, label %if.else44

if.then37:                                        ; preds = %while.body
  %41 = load ptr, ptr %mtfv, align 8
  %42 = load i32, ptr %wr, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %41, i64 %idxprom38
  store i16 1, ptr %arrayidx39, align 2
  %43 = load i32, ptr %wr, align 4
  %inc40 = add nsw i32 %43, 1
  store i32 %inc40, ptr %wr, align 4
  %44 = load ptr, ptr %s.addr, align 8
  %mtfFreq41 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 32
  %arrayidx42 = getelementptr inbounds [258 x i32], ptr %mtfFreq41, i64 0, i64 1
  %45 = load i32, ptr %arrayidx42, align 4
  %inc43 = add nsw i32 %45, 1
  store i32 %inc43, ptr %arrayidx42, align 4
  br label %if.end51

if.else44:                                        ; preds = %while.body
  %46 = load ptr, ptr %mtfv, align 8
  %47 = load i32, ptr %wr, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %46, i64 %idxprom45
  store i16 0, ptr %arrayidx46, align 2
  %48 = load i32, ptr %wr, align 4
  %inc47 = add nsw i32 %48, 1
  store i32 %inc47, ptr %wr, align 4
  %49 = load ptr, ptr %s.addr, align 8
  %mtfFreq48 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 32
  %arrayidx49 = getelementptr inbounds [258 x i32], ptr %mtfFreq48, i64 0, i64 0
  %50 = load i32, ptr %arrayidx49, align 8
  %inc50 = add nsw i32 %50, 1
  store i32 %inc50, ptr %arrayidx49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else44, %if.then37
  %51 = load i32, ptr %zPend, align 4
  %cmp52 = icmp slt i32 %51, 2
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  br label %while.end

if.end55:                                         ; preds = %if.end51
  %52 = load i32, ptr %zPend, align 4
  %sub56 = sub nsw i32 %52, 2
  %div = sdiv i32 %sub56, 2
  store i32 %div, ptr %zPend, align 4
  br label %while.body

while.end:                                        ; preds = %if.then54
  store i32 0, ptr %zPend, align 4
  br label %if.end57

if.end57:                                         ; preds = %while.end, %if.else
  %arrayidx58 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 1
  %53 = load i8, ptr %arrayidx58, align 1
  store i8 %53, ptr %rtmp, align 1
  %arrayidx59 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 0
  %54 = load i8, ptr %arrayidx59, align 16
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 1
  store i8 %54, ptr %arrayidx60, align 1
  %arrayidx61 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 1
  store ptr %arrayidx61, ptr %ryy_j, align 8
  %55 = load i8, ptr %ll_i, align 1
  store i8 %55, ptr %rll_i, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body66, %if.end57
  %56 = load i8, ptr %rll_i, align 1
  %conv62 = zext i8 %56 to i32
  %57 = load i8, ptr %rtmp, align 1
  %conv63 = zext i8 %57 to i32
  %cmp64 = icmp ne i32 %conv62, %conv63
  br i1 %cmp64, label %while.body66, label %while.end67

while.body66:                                     ; preds = %while.cond
  %58 = load ptr, ptr %ryy_j, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr, ptr %ryy_j, align 8
  %59 = load i8, ptr %rtmp, align 1
  store i8 %59, ptr %rtmp2, align 1
  %60 = load ptr, ptr %ryy_j, align 8
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr %rtmp, align 1
  %62 = load i8, ptr %rtmp2, align 1
  %63 = load ptr, ptr %ryy_j, align 8
  store i8 %62, ptr %63, align 1
  br label %while.cond, !llvm.loop !9

while.end67:                                      ; preds = %while.cond
  %64 = load i8, ptr %rtmp, align 1
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 0
  store i8 %64, ptr %arrayidx68, align 16
  %65 = load ptr, ptr %ryy_j, align 8
  %arrayidx69 = getelementptr inbounds [256 x i8], ptr %yy, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %65 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx69 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv70 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv70, ptr %j, align 4
  %66 = load i32, ptr %j, align 4
  %add71 = add nsw i32 %66, 1
  %conv72 = trunc i32 %add71 to i16
  %67 = load ptr, ptr %mtfv, align 8
  %68 = load i32, ptr %wr, align 4
  %idxprom73 = sext i32 %68 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %67, i64 %idxprom73
  store i16 %conv72, ptr %arrayidx74, align 2
  %69 = load i32, ptr %wr, align 4
  %inc75 = add nsw i32 %69, 1
  store i32 %inc75, ptr %wr, align 4
  %70 = load ptr, ptr %s.addr, align 8
  %mtfFreq76 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 32
  %71 = load i32, ptr %j, align 4
  %add77 = add nsw i32 %71, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [258 x i32], ptr %mtfFreq76, i64 0, i64 %idxprom78
  %72 = load i32, ptr %arrayidx79, align 4
  %inc80 = add nsw i32 %72, 1
  store i32 %inc80, ptr %arrayidx79, align 4
  br label %if.end81

if.end81:                                         ; preds = %while.end67, %if.then32
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %73 = load i32, ptr %i, align 4
  %inc83 = add nsw i32 %73, 1
  store i32 %inc83, ptr %i, align 4
  br label %for.cond13, !llvm.loop !10

for.end84:                                        ; preds = %for.cond13
  %74 = load i32, ptr %zPend, align 4
  %cmp85 = icmp sgt i32 %74, 0
  br i1 %cmp85, label %if.then87, label %if.end115

if.then87:                                        ; preds = %for.end84
  %75 = load i32, ptr %zPend, align 4
  %dec88 = add nsw i32 %75, -1
  store i32 %dec88, ptr %zPend, align 4
  br label %while.body90

while.body90:                                     ; preds = %if.end111, %if.then87
  %76 = load i32, ptr %zPend, align 4
  %and91 = and i32 %76, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else100

if.then93:                                        ; preds = %while.body90
  %77 = load ptr, ptr %mtfv, align 8
  %78 = load i32, ptr %wr, align 4
  %idxprom94 = sext i32 %78 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %77, i64 %idxprom94
  store i16 1, ptr %arrayidx95, align 2
  %79 = load i32, ptr %wr, align 4
  %inc96 = add nsw i32 %79, 1
  store i32 %inc96, ptr %wr, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %mtfFreq97 = getelementptr inbounds nuw %struct.EState, ptr %80, i32 0, i32 32
  %arrayidx98 = getelementptr inbounds [258 x i32], ptr %mtfFreq97, i64 0, i64 1
  %81 = load i32, ptr %arrayidx98, align 4
  %inc99 = add nsw i32 %81, 1
  store i32 %inc99, ptr %arrayidx98, align 4
  br label %if.end107

if.else100:                                       ; preds = %while.body90
  %82 = load ptr, ptr %mtfv, align 8
  %83 = load i32, ptr %wr, align 4
  %idxprom101 = sext i32 %83 to i64
  %arrayidx102 = getelementptr inbounds i16, ptr %82, i64 %idxprom101
  store i16 0, ptr %arrayidx102, align 2
  %84 = load i32, ptr %wr, align 4
  %inc103 = add nsw i32 %84, 1
  store i32 %inc103, ptr %wr, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %mtfFreq104 = getelementptr inbounds nuw %struct.EState, ptr %85, i32 0, i32 32
  %arrayidx105 = getelementptr inbounds [258 x i32], ptr %mtfFreq104, i64 0, i64 0
  %86 = load i32, ptr %arrayidx105, align 8
  %inc106 = add nsw i32 %86, 1
  store i32 %inc106, ptr %arrayidx105, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else100, %if.then93
  %87 = load i32, ptr %zPend, align 4
  %cmp108 = icmp slt i32 %87, 2
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end107
  br label %while.end114

if.end111:                                        ; preds = %if.end107
  %88 = load i32, ptr %zPend, align 4
  %sub112 = sub nsw i32 %88, 2
  %div113 = sdiv i32 %sub112, 2
  store i32 %div113, ptr %zPend, align 4
  br label %while.body90

while.end114:                                     ; preds = %if.then110
  store i32 0, ptr %zPend, align 4
  br label %if.end115

if.end115:                                        ; preds = %while.end114, %for.end84
  %89 = load i32, ptr %EOB, align 4
  %conv116 = trunc i32 %89 to i16
  %90 = load ptr, ptr %mtfv, align 8
  %91 = load i32, ptr %wr, align 4
  %idxprom117 = sext i32 %91 to i64
  %arrayidx118 = getelementptr inbounds i16, ptr %90, i64 %idxprom117
  store i16 %conv116, ptr %arrayidx118, align 2
  %92 = load i32, ptr %wr, align 4
  %inc119 = add nsw i32 %92, 1
  store i32 %inc119, ptr %wr, align 4
  %93 = load ptr, ptr %s.addr, align 8
  %mtfFreq120 = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 32
  %94 = load i32, ptr %EOB, align 4
  %idxprom121 = sext i32 %94 to i64
  %arrayidx122 = getelementptr inbounds [258 x i32], ptr %mtfFreq120, i64 0, i64 %idxprom121
  %95 = load i32, ptr %arrayidx122, align 4
  %inc123 = add nsw i32 %95, 1
  store i32 %inc123, ptr %arrayidx122, align 4
  %96 = load i32, ptr %wr, align 4
  %97 = load ptr, ptr %s.addr, align 8
  %nMTF = getelementptr inbounds nuw %struct.EState, ptr %97, i32 0, i32 31
  store i32 %96, ptr %nMTF, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @makeMaps_e(ptr noundef) #0

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
