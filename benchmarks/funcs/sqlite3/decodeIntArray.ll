; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.345 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.346 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.347 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strglob(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @decodeIntArray(ptr noundef %zIntArray, i32 noundef %nOut, ptr noundef %aOut, ptr noundef %aLog, ptr noundef %pIndex) #0 {
entry:
  %zIntArray.addr = alloca ptr, align 8
  %nOut.addr = alloca i32, align 4
  %aOut.addr = alloca ptr, align 8
  %aLog.addr = alloca ptr, align 8
  %pIndex.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %zIntArray, ptr %zIntArray.addr, align 8
  store i32 %nOut, ptr %nOut.addr, align 4
  store ptr %aOut, ptr %aOut.addr, align 8
  store ptr %aLog, ptr %aLog.addr, align 8
  store ptr %pIndex, ptr %pIndex.addr, align 8
  %0 = load ptr, ptr %zIntArray.addr, align 8
  store ptr %0, ptr %z, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %z, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %nOut.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  store i32 0, ptr %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %7 to i32
  store i32 %conv2, ptr %c, align 4
  %cmp3 = icmp sge i32 %conv2, 48
  br i1 %cmp3, label %land.rhs5, label %land.end8

land.rhs5:                                        ; preds = %while.cond
  %8 = load i32, ptr %c, align 4
  %cmp6 = icmp sle i32 %8, 57
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs5 ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end8
  %10 = load i32, ptr %v, align 4
  %mul = mul i32 %10, 10
  %11 = load i32, ptr %c, align 4
  %add = add i32 %mul, %11
  %sub = sub i32 %add, 48
  store i32 %sub, ptr %v, align 4
  %12 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end8
  %13 = load ptr, ptr %aOut.addr, align 8
  %14 = load i32, ptr %v, align 4
  %conv9 = zext i32 %14 to i64
  %call = call signext i16 @sqlite3LogEst(i64 noundef %conv9)
  %15 = load ptr, ptr %aLog.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %15, i64 %idxprom
  store i16 %call, ptr %arrayidx10, align 2
  %17 = load ptr, ptr %z, align 8
  %18 = load i8, ptr %17, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 32
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %19 = load ptr, ptr %z, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr14, ptr %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end
  %21 = load ptr, ptr %pIndex.addr, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 16
  %bf.load = load i16, ptr %bUnordered, align 1
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr %bUnordered, align 1
  %22 = load ptr, ptr %pIndex.addr, align 8
  %noSkipScan = getelementptr inbounds nuw %struct.Index, ptr %22, i32 0, i32 16
  %bf.load15 = load i16, ptr %noSkipScan, align 1
  %bf.clear16 = and i16 %bf.load15, -65
  %bf.set17 = or i16 %bf.clear16, 0
  store i16 %bf.set17, ptr %noSkipScan, align 1
  br label %while.cond18

while.cond18:                                     ; preds = %while.end74, %for.end
  %23 = load ptr, ptr %z, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx19, align 1
  %tobool20 = icmp ne i8 %24, 0
  br i1 %tobool20, label %while.body21, label %while.end75

while.body21:                                     ; preds = %while.cond18
  %25 = load ptr, ptr %z, align 8
  %call22 = call i32 @sqlite3_strglob(ptr noundef @.str.345, ptr noundef %25)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.body21
  %26 = load ptr, ptr %pIndex.addr, align 8
  %bUnordered26 = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 16
  %bf.load27 = load i16, ptr %bUnordered26, align 1
  %bf.clear28 = and i16 %bf.load27, -5
  %bf.set29 = or i16 %bf.clear28, 4
  store i16 %bf.set29, ptr %bUnordered26, align 1
  br label %if.end52

if.else:                                          ; preds = %while.body21
  %27 = load ptr, ptr %z, align 8
  %call30 = call i32 @sqlite3_strglob(ptr noundef @.str.346, ptr noundef %27)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else41

if.then33:                                        ; preds = %if.else
  %28 = load ptr, ptr %z, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 3
  %call34 = call i32 @sqlite3Atoi(ptr noundef %add.ptr)
  store i32 %call34, ptr %sz, align 4
  %29 = load i32, ptr %sz, align 4
  %cmp35 = icmp slt i32 %29, 2
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  store i32 2, ptr %sz, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then33
  %30 = load i32, ptr %sz, align 4
  %conv39 = sext i32 %30 to i64
  %call40 = call signext i16 @sqlite3LogEst(i64 noundef %conv39)
  %31 = load ptr, ptr %pIndex.addr, align 8
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 12
  store i16 %call40, ptr %szIdxRow, align 4
  br label %if.end51

if.else41:                                        ; preds = %if.else
  %32 = load ptr, ptr %z, align 8
  %call42 = call i32 @sqlite3_strglob(ptr noundef @.str.347, ptr noundef %32)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.else41
  %33 = load ptr, ptr %pIndex.addr, align 8
  %noSkipScan46 = getelementptr inbounds nuw %struct.Index, ptr %33, i32 0, i32 16
  %bf.load47 = load i16, ptr %noSkipScan46, align 1
  %bf.clear48 = and i16 %bf.load47, -65
  %bf.set49 = or i16 %bf.clear48, 64
  store i16 %bf.set49, ptr %noSkipScan46, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.else41
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end38
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then25
  br label %while.cond53

while.cond53:                                     ; preds = %while.body64, %if.end52
  %34 = load ptr, ptr %z, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %35 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %land.rhs58, label %land.end63

land.rhs58:                                       ; preds = %while.cond53
  %36 = load ptr, ptr %z, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %37 to i32
  %cmp61 = icmp ne i32 %conv60, 32
  br label %land.end63

land.end63:                                       ; preds = %land.rhs58, %while.cond53
  %38 = phi i1 [ false, %while.cond53 ], [ %cmp61, %land.rhs58 ]
  br i1 %38, label %while.body64, label %while.end66

while.body64:                                     ; preds = %land.end63
  %39 = load ptr, ptr %z, align 8
  %incdec.ptr65 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr65, ptr %z, align 8
  br label %while.cond53, !llvm.loop !9

while.end66:                                      ; preds = %land.end63
  br label %while.cond67

while.cond67:                                     ; preds = %while.body72, %while.end66
  %40 = load ptr, ptr %z, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx68, align 1
  %conv69 = sext i8 %41 to i32
  %cmp70 = icmp eq i32 %conv69, 32
  br i1 %cmp70, label %while.body72, label %while.end74

while.body72:                                     ; preds = %while.cond67
  %42 = load ptr, ptr %z, align 8
  %incdec.ptr73 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr73, ptr %z, align 8
  br label %while.cond67, !llvm.loop !10

while.end74:                                      ; preds = %while.cond67
  br label %while.cond18, !llvm.loop !11

while.end75:                                      ; preds = %while.cond18
  ret void
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
