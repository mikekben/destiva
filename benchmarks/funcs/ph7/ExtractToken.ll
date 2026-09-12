; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @ExtractToken(ptr noundef %pzIn, ptr noundef %zEnd, ptr noundef %zMask, i32 noundef %nMasklen, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %pzIn.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %zMask.addr = alloca ptr, align 8
  %nMasklen.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  store ptr %pzIn, ptr %pzIn.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  store ptr %zMask, ptr %zMask.addr, align 8
  store i32 %nMasklen, ptr %nMasklen.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pzIn.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %zIn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %zIn, align 8
  %3 = load ptr, ptr %zEnd.addr, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load ptr, ptr %zIn, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp slt i32 %conv, 192
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %zIn, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %7 to i32
  %8 = load ptr, ptr %zMask.addr, align 8
  %9 = load i32, ptr %nMasklen.addr, align 4
  %call = call i32 @CheckMask(i32 noundef %conv4, ptr noundef %8, i32 noundef %9, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd.addr, align 8
  %cmp5 = icmp uge ptr %12, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %zIn, align 8
  store ptr %14, ptr %zPtr, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %if.end36, %if.end
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zEnd.addr, align 8
  %cmp8 = icmp ult ptr %15, %16
  br i1 %cmp8, label %while.body10, label %while.end37

while.body10:                                     ; preds = %while.cond7
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %18 to i32
  %cmp13 = icmp sge i32 %conv12, 192
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body10
  %19 = load ptr, ptr %zIn, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr16, ptr %zIn, align 8
  br label %while.cond17

while.cond17:                                     ; preds = %while.body26, %if.then15
  %20 = load ptr, ptr %zIn, align 8
  %21 = load ptr, ptr %zEnd.addr, align 8
  %cmp18 = icmp ult ptr %20, %21
  br i1 %cmp18, label %land.rhs20, label %land.end25

land.rhs20:                                       ; preds = %while.cond17
  %22 = load ptr, ptr %zIn, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %23 to i32
  %and = and i32 %conv22, 192
  %cmp23 = icmp eq i32 %and, 128
  br label %land.end25

land.end25:                                       ; preds = %land.rhs20, %while.cond17
  %24 = phi i1 [ false, %while.cond17 ], [ %cmp23, %land.rhs20 ]
  br i1 %24, label %while.body26, label %while.end28

while.body26:                                     ; preds = %land.end25
  %25 = load ptr, ptr %zIn, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr27, ptr %zIn, align 8
  br label %while.cond17, !llvm.loop !8

while.end28:                                      ; preds = %land.end25
  br label %if.end36

if.else:                                          ; preds = %while.body10
  %26 = load ptr, ptr %zIn, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %27 to i32
  %28 = load ptr, ptr %zMask.addr, align 8
  %29 = load i32, ptr %nMasklen.addr, align 4
  %call31 = call i32 @CheckMask(i32 noundef %conv30, ptr noundef %28, i32 noundef %29, ptr noundef null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else
  br label %while.end37

if.end34:                                         ; preds = %if.else
  %30 = load ptr, ptr %zIn, align 8
  %incdec.ptr35 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr35, ptr %zIn, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %while.end28
  br label %while.cond7, !llvm.loop !9

while.end37:                                      ; preds = %if.then33, %while.cond7
  %31 = load ptr, ptr %zPtr, align 8
  %32 = load ptr, ptr %pOut.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 0
  store ptr %31, ptr %zString, align 8
  %33 = load ptr, ptr %zIn, align 8
  %34 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv38 = trunc i64 %sub.ptr.sub to i32
  %35 = load ptr, ptr %pOut.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  store i32 %conv38, ptr %nByte, align 8
  %36 = load ptr, ptr %zIn, align 8
  %37 = load ptr, ptr %pzIn.addr, align 8
  store ptr %36, ptr %37, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end37, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @CheckMask(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

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
