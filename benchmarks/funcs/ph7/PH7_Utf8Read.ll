; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UtfTrans1 = external hidden constant [64 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_Utf8Read(ptr noundef %z, ptr noundef %zTerm, ptr noundef %pzNext) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %zTerm.addr = alloca ptr, align 8
  %pzNext.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %zTerm, ptr %zTerm.addr, align 8
  store ptr %pzNext, ptr %pzNext.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %z.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %cmp = icmp sge i32 %2, 192
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %3, 192
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [64 x i8], ptr @UtfTrans1, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load ptr, ptr %z.addr, align 8
  %6 = load ptr, ptr %zTerm.addr, align 8
  %cmp3 = icmp ne ptr %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv5 = zext i8 %8 to i32
  %and = and i32 %conv5, 192
  %cmp6 = icmp eq i32 %and, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, ptr %c, align 4
  %shl = shl i32 %10, 6
  %11 = load ptr, ptr %z.addr, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr8, ptr %z.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv9 = zext i8 %12 to i32
  %and10 = and i32 63, %conv9
  %add = add nsw i32 %shl, %and10
  store i32 %add, ptr %c, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %13 = load i32, ptr %c, align 4
  %cmp11 = icmp slt i32 %13, 128
  br i1 %cmp11, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %14 = load i32, ptr %c, align 4
  %and13 = and i32 %14, -2048
  %cmp14 = icmp eq i32 %and13, 55296
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %c, align 4
  %and17 = and i32 %15, -2
  %cmp18 = icmp eq i32 %and17, 65534
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %while.end
  store i32 65533, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then20, %lor.lhs.false16
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry
  %16 = load ptr, ptr %z.addr, align 8
  %17 = load ptr, ptr %pzNext.addr, align 8
  store ptr %16, ptr %17, align 8
  %18 = load i32, ptr %c, align 4
  ret i32 %18
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
