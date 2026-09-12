; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@.str.967 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmGetNextLine(ptr noundef %pCursor, ptr noundef %pCurrent) #1 {
entry:
  %retval = alloca i32, align 4
  %pCursor.addr = alloca ptr, align 8
  %pCurrent.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %nPos = alloca i32, align 4
  store ptr %pCursor, ptr %pCursor.addr, align 8
  store ptr %pCurrent, ptr %pCurrent.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pCursor.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %pCursor.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp slt i32 %conv, 192
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %5 = load ptr, ptr %call, align 8
  %6 = load ptr, ptr %pCursor.addr, align 8
  %zString3 = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zString3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %9 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %9 to i32
  %and = and i32 %conv7, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %pCursor.addr, align 8
  %nByte8 = getelementptr inbounds nuw %struct.SyString, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nByte8, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %nByte8, align 8
  %13 = load ptr, ptr %pCursor.addr, align 8
  %zString9 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zString9, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %zString9, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %pCursor.addr, align 8
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nByte10, align 8
  %cmp11 = icmp ult i32 %16, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load ptr, ptr %pCurrent.addr, align 8
  %zString13 = getelementptr inbounds nuw %struct.SyString, ptr %17, i32 0, i32 0
  store ptr null, ptr %zString13, align 8
  %18 = load ptr, ptr %pCurrent.addr, align 8
  %nByte14 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  store i32 0, ptr %nByte14, align 8
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %19 = load ptr, ptr %pCursor.addr, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %zString15, align 8
  store ptr %20, ptr %zIn, align 8
  %21 = load ptr, ptr %pCursor.addr, align 8
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zString16, align 8
  %23 = load ptr, ptr %pCursor.addr, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nByte17, align 8
  %call18 = call i32 @SyByteListFind(ptr noundef %22, i32 noundef %24, ptr noundef @.str.967, ptr noundef %nPos)
  %cmp19 = icmp ne i32 0, %call18
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end
  %25 = load ptr, ptr %pCursor.addr, align 8
  %zString22 = getelementptr inbounds nuw %struct.SyString, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zString22, align 8
  %27 = load ptr, ptr %pCurrent.addr, align 8
  %zString23 = getelementptr inbounds nuw %struct.SyString, ptr %27, i32 0, i32 0
  store ptr %26, ptr %zString23, align 8
  %28 = load ptr, ptr %pCursor.addr, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nByte24, align 8
  %30 = load ptr, ptr %pCurrent.addr, align 8
  %nByte25 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  store i32 %29, ptr %nByte25, align 8
  store i32 -8, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end
  %31 = load ptr, ptr %zIn, align 8
  %32 = load ptr, ptr %pCurrent.addr, align 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 0
  store ptr %31, ptr %zString27, align 8
  %33 = load i32, ptr %nPos, align 4
  %34 = load ptr, ptr %pCurrent.addr, align 8
  %nByte28 = getelementptr inbounds nuw %struct.SyString, ptr %34, i32 0, i32 1
  store i32 %33, ptr %nByte28, align 8
  %35 = load ptr, ptr %zIn, align 8
  %36 = load i32, ptr %nPos, align 4
  %idxprom29 = zext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom29
  %37 = load ptr, ptr %pCursor.addr, align 8
  %zString31 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 0
  store ptr %arrayidx30, ptr %zString31, align 8
  %38 = load i32, ptr %nPos, align 4
  %39 = load ptr, ptr %pCursor.addr, align 8
  %nByte32 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nByte32, align 8
  %sub = sub i32 %40, %38
  store i32 %sub, ptr %nByte32, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then21, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteListFind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
