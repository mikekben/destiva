; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @render_point(i32 noundef %x0, i32 noundef %x1, i32 noundef %y0, i32 noundef %y1, i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %dy = alloca i32, align 4
  %adx = alloca i32, align 4
  %ady = alloca i32, align 4
  %err = alloca i32, align 4
  %off = alloca i32, align 4
  store i32 %x0, ptr %x0.addr, align 4
  store i32 %x1, ptr %x1.addr, align 4
  store i32 %y0, ptr %y0.addr, align 4
  store i32 %y1, ptr %y1.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %y0.addr, align 4
  %and = and i32 %0, 32767
  store i32 %and, ptr %y0.addr, align 4
  %1 = load i32, ptr %y1.addr, align 4
  %and1 = and i32 %1, 32767
  store i32 %and1, ptr %y1.addr, align 4
  %2 = load i32, ptr %y1.addr, align 4
  %3 = load i32, ptr %y0.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr %dy, align 4
  %4 = load i32, ptr %x1.addr, align 4
  %5 = load i32, ptr %x0.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  store i32 %sub2, ptr %adx, align 4
  %6 = load i32, ptr %dy, align 4
  %7 = call i32 @llvm.abs.i32(i32 %6, i1 true)
  store i32 %7, ptr %ady, align 4
  %8 = load i32, ptr %ady, align 4
  %9 = load i32, ptr %x.addr, align 4
  %10 = load i32, ptr %x0.addr, align 4
  %sub3 = sub nsw i32 %9, %10
  %mul = mul nsw i32 %8, %sub3
  store i32 %mul, ptr %err, align 4
  %11 = load i32, ptr %err, align 4
  %12 = load i32, ptr %adx, align 4
  %div = sdiv i32 %11, %12
  store i32 %div, ptr %off, align 4
  %13 = load i32, ptr %dy, align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %y0.addr, align 4
  %15 = load i32, ptr %off, align 4
  %sub4 = sub nsw i32 %14, %15
  store i32 %sub4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, ptr %y0.addr, align 4
  %17 = load i32, ptr %off, align 4
  %add = add nsw i32 %16, %17
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
