; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExtractNonSpaceToken(ptr noundef %pzIn, ptr noundef %zEnd, ptr noundef %pOut) #1 {
entry:
  %retval = alloca i32, align 4
  %pzIn.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  store ptr %pzIn, ptr %pzIn.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
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
  %call = call ptr @__ctype_b_loc() #2
  %6 = load ptr, ptr %call, align 8
  %7 = load ptr, ptr %zIn, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %idxprom = sext i32 %conv4 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %6, i64 %idxprom
  %9 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %9 to i32
  %and = and i32 %conv6, 8192
  %tobool = icmp ne i32 %and, 0
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
  %cmp7 = icmp uge ptr %12, %13
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %zIn, align 8
  store ptr %14, ptr %zPtr, align 8
  br label %while.cond9

while.cond9:                                      ; preds = %while.body27, %if.end
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zEnd.addr, align 8
  %cmp10 = icmp ult ptr %15, %16
  br i1 %cmp10, label %land.lhs.true12, label %land.end26

land.lhs.true12:                                  ; preds = %while.cond9
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %cmp15 = icmp slt i32 %conv14, 192
  br i1 %cmp15, label %land.rhs17, label %land.end26

land.rhs17:                                       ; preds = %land.lhs.true12
  %call18 = call ptr @__ctype_b_loc() #2
  %19 = load ptr, ptr %call18, align 8
  %20 = load ptr, ptr %zIn, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %21 to i32
  %idxprom21 = sext i32 %conv20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %19, i64 %idxprom21
  %22 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %22 to i32
  %and24 = and i32 %conv23, 8192
  %tobool25 = icmp ne i32 %and24, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end26

land.end26:                                       ; preds = %land.rhs17, %land.lhs.true12, %while.cond9
  %23 = phi i1 [ false, %land.lhs.true12 ], [ false, %while.cond9 ], [ %lnot, %land.rhs17 ]
  br i1 %23, label %while.body27, label %while.end29

while.body27:                                     ; preds = %land.end26
  %24 = load ptr, ptr %zIn, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr28, ptr %zIn, align 8
  br label %while.cond9, !llvm.loop !8

while.end29:                                      ; preds = %land.end26
  %25 = load ptr, ptr %zPtr, align 8
  %26 = load ptr, ptr %pOut.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 0
  store ptr %25, ptr %zString, align 8
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv30 = trunc i64 %sub.ptr.sub to i32
  %29 = load ptr, ptr %pOut.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %29, i32 0, i32 1
  store i32 %conv30, ptr %nByte, align 8
  %30 = load ptr, ptr %zIn, align 8
  %31 = load ptr, ptr %pzIn.addr, align 8
  store ptr %30, ptr %31, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end29, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

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
!8 = distinct !{!8, !7}
