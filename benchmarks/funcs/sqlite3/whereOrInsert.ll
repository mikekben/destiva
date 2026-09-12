; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereOrSet = type { i16, [3 x %struct.WhereOrCost] }
%struct.WhereOrCost = type { i64, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @whereOrInsert(ptr noundef %pSet, i64 noundef %prereq, i16 noundef signext %rRun, i16 noundef signext %nOut) #0 {
entry:
  %retval = alloca i32, align 4
  %pSet.addr = alloca ptr, align 8
  %prereq.addr = alloca i64, align 8
  %rRun.addr = alloca i16, align 2
  %nOut.addr = alloca i16, align 2
  %i = alloca i16, align 2
  %p = alloca ptr, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  store i64 %prereq, ptr %prereq.addr, align 8
  store i16 %rRun, ptr %rRun.addr, align 2
  store i16 %nOut, ptr %nOut.addr, align 2
  %0 = load ptr, ptr %pSet.addr, align 8
  %n = getelementptr inbounds nuw %struct.WhereOrSet, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %n, align 8
  store i16 %1, ptr %i, align 2
  %2 = load ptr, ptr %pSet.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereOrSet, ptr %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, ptr %i, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16, ptr %rRun.addr, align 2
  %conv2 = sext i16 %4 to i32
  %5 = load ptr, ptr %p, align 8
  %rRun3 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %rRun3, align 8
  %conv4 = sext i16 %6 to i32
  %cmp5 = icmp sle i32 %conv2, %conv4
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, ptr %prereq.addr, align 8
  %8 = load ptr, ptr %p, align 8
  %prereq7 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %prereq7, align 8
  %and = and i64 %7, %9
  %10 = load i64, ptr %prereq.addr, align 8
  %cmp8 = icmp eq i64 %and, %10
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %whereOrInsert_done

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load ptr, ptr %p, align 8
  %rRun10 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %rRun10, align 8
  %conv11 = sext i16 %12 to i32
  %13 = load i16, ptr %rRun.addr, align 2
  %conv12 = sext i16 %13 to i32
  %cmp13 = icmp sle i32 %conv11, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %if.end22

land.lhs.true15:                                  ; preds = %if.end
  %14 = load ptr, ptr %p, align 8
  %prereq16 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %prereq16, align 8
  %16 = load i64, ptr %prereq.addr, align 8
  %and17 = and i64 %15, %16
  %17 = load ptr, ptr %p, align 8
  %prereq18 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %prereq18, align 8
  %cmp19 = icmp eq i64 %and17, %18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true15
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %land.lhs.true15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %19 = load i16, ptr %i, align 2
  %dec = add i16 %19, -1
  store i16 %dec, ptr %i, align 2
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereOrCost, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %pSet.addr, align 8
  %n23 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %21, i32 0, i32 0
  %22 = load i16, ptr %n23, align 8
  %conv24 = zext i16 %22 to i32
  %cmp25 = icmp slt i32 %conv24, 3
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.end
  %23 = load ptr, ptr %pSet.addr, align 8
  %a28 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pSet.addr, align 8
  %n29 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %24, i32 0, i32 0
  %25 = load i16, ptr %n29, align 8
  %inc = add i16 %25, 1
  store i16 %inc, ptr %n29, align 8
  %idxprom = zext i16 %25 to i64
  %arrayidx = getelementptr inbounds nuw [3 x %struct.WhereOrCost], ptr %a28, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %26 = load i16, ptr %nOut.addr, align 2
  %27 = load ptr, ptr %p, align 8
  %nOut30 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %27, i32 0, i32 2
  store i16 %26, ptr %nOut30, align 2
  br label %if.end64

if.else:                                          ; preds = %for.end
  %28 = load ptr, ptr %pSet.addr, align 8
  %a31 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %28, i32 0, i32 1
  %arraydecay32 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a31, i64 0, i64 0
  store ptr %arraydecay32, ptr %p, align 8
  store i16 1, ptr %i, align 2
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc54, %if.else
  %29 = load i16, ptr %i, align 2
  %conv34 = zext i16 %29 to i32
  %30 = load ptr, ptr %pSet.addr, align 8
  %n35 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %30, i32 0, i32 0
  %31 = load i16, ptr %n35, align 8
  %conv36 = zext i16 %31 to i32
  %cmp37 = icmp slt i32 %conv34, %conv36
  br i1 %cmp37, label %for.body39, label %for.end56

for.body39:                                       ; preds = %for.cond33
  %32 = load ptr, ptr %p, align 8
  %rRun40 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %32, i32 0, i32 1
  %33 = load i16, ptr %rRun40, align 8
  %conv41 = sext i16 %33 to i32
  %34 = load ptr, ptr %pSet.addr, align 8
  %a42 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %34, i32 0, i32 1
  %35 = load i16, ptr %i, align 2
  %idxprom43 = zext i16 %35 to i64
  %arrayidx44 = getelementptr inbounds nuw [3 x %struct.WhereOrCost], ptr %a42, i64 0, i64 %idxprom43
  %rRun45 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx44, i32 0, i32 1
  %36 = load i16, ptr %rRun45, align 8
  %conv46 = sext i16 %36 to i32
  %cmp47 = icmp sgt i32 %conv41, %conv46
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %for.body39
  %37 = load ptr, ptr %pSet.addr, align 8
  %a50 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %37, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a50, i64 0, i64 0
  %38 = load i16, ptr %i, align 2
  %conv52 = zext i16 %38 to i32
  %idx.ext = sext i32 %conv52 to i64
  %add.ptr = getelementptr inbounds %struct.WhereOrCost, ptr %arraydecay51, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %for.body39
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %39 = load i16, ptr %i, align 2
  %inc55 = add i16 %39, 1
  store i16 %inc55, ptr %i, align 2
  br label %for.cond33, !llvm.loop !8

for.end56:                                        ; preds = %for.cond33
  %40 = load ptr, ptr %p, align 8
  %rRun57 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %40, i32 0, i32 1
  %41 = load i16, ptr %rRun57, align 8
  %conv58 = sext i16 %41 to i32
  %42 = load i16, ptr %rRun.addr, align 2
  %conv59 = sext i16 %42 to i32
  %cmp60 = icmp sle i32 %conv58, %conv59
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end56
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %for.end56
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then27
  br label %whereOrInsert_done

whereOrInsert_done:                               ; preds = %if.end64, %if.then
  %43 = load i64, ptr %prereq.addr, align 8
  %44 = load ptr, ptr %p, align 8
  %prereq65 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %44, i32 0, i32 0
  store i64 %43, ptr %prereq65, align 8
  %45 = load i16, ptr %rRun.addr, align 2
  %46 = load ptr, ptr %p, align 8
  %rRun66 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %46, i32 0, i32 1
  store i16 %45, ptr %rRun66, align 8
  %47 = load ptr, ptr %p, align 8
  %nOut67 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %47, i32 0, i32 2
  %48 = load i16, ptr %nOut67, align 2
  %conv68 = sext i16 %48 to i32
  %49 = load i16, ptr %nOut.addr, align 2
  %conv69 = sext i16 %49 to i32
  %cmp70 = icmp sgt i32 %conv68, %conv69
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %whereOrInsert_done
  %50 = load i16, ptr %nOut.addr, align 2
  %51 = load ptr, ptr %p, align 8
  %nOut73 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %51, i32 0, i32 2
  store i16 %50, ptr %nOut73, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %whereOrInsert_done
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then62, %if.then21
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
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
