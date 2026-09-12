; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @VmFindLongOpt(ptr noundef %zLong, i32 noundef %nByte, ptr noundef %zIn, ptr noundef %zEnd) #1 {
entry:
  %retval = alloca ptr, align 8
  %zLong.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zIn.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %zOpt = alloca ptr, align 8
  store ptr %zLong, ptr %zLong.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %entry
  %0 = load ptr, ptr %zIn.addr, align 8
  %1 = load ptr, ptr %zEnd.addr, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %while.body, label %while.end35

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %zIn.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr %zIn.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load ptr, ptr %zEnd.addr, align 8
  %cmp4 = icmp ult ptr %arrayidx3, %5
  br i1 %cmp4, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %zIn.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true6
  %8 = load ptr, ptr %zIn.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %add.ptr, ptr %zIn.addr, align 8
  %9 = load ptr, ptr %zIn.addr, align 8
  store ptr %9, ptr %zOpt, align 8
  br label %while.cond11

while.cond11:                                     ; preds = %if.end, %if.then
  %10 = load ptr, ptr %zIn.addr, align 8
  %11 = load ptr, ptr %zEnd.addr, align 8
  %cmp12 = icmp ult ptr %10, %11
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond11
  %call = call ptr @__ctype_b_loc() #2
  %12 = load ptr, ptr %call, align 8
  %13 = load ptr, ptr %zIn.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %idxprom = sext i32 %conv15 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %15 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %15 to i32
  %and = and i32 %conv17, 8192
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond11
  %16 = phi i1 [ false, %while.cond11 ], [ %lnot, %land.rhs ]
  br i1 %16, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end
  %17 = load ptr, ptr %zIn.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 61
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %while.body18
  br label %while.end

if.end:                                           ; preds = %while.body18
  %19 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  br label %while.cond11, !llvm.loop !6

while.end:                                        ; preds = %if.then23, %land.end
  %20 = load ptr, ptr %zIn.addr, align 8
  %21 = load ptr, ptr %zOpt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  %22 = load i32, ptr %nByte.addr, align 4
  %cmp25 = icmp eq i32 %conv24, %22
  br i1 %cmp25, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %while.end
  %23 = load ptr, ptr %zOpt, align 8
  %24 = load ptr, ptr %zLong.addr, align 8
  %25 = load i32, ptr %nByte.addr, align 4
  %call28 = call i32 @SyMemcmp(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true27
  %26 = load ptr, ptr %zIn.addr, align 8
  store ptr %26, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %land.lhs.true27, %while.end
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %while.body
  %27 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr33, ptr %zIn.addr, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end32
  br label %while.cond, !llvm.loop !8

while.end35:                                      ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end35, %if.then31
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
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
