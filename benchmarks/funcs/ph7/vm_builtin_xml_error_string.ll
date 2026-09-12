; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.598 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.601 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.603 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.604 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.605 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.606 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.607 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.608 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.609 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_xml_error_string(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %nErr = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 -1, ptr %nErr, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_to_int(ptr noundef %2)
  store i32 %call, ptr %nErr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %nErr, align 4
  switch i32 %3, label %sw.default [
    i32 9, label %sw.bb
    i32 20, label %sw.bb2
    i32 5, label %sw.bb4
    i32 18, label %sw.bb6
    i32 2, label %sw.bb8
    i32 1, label %sw.bb10
    i32 8, label %sw.bb12
    i32 -1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_string(ptr noundef %4, ptr noundef @.str.598, i32 noundef -1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.603, i32 noundef -1)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_string(ptr noundef %6, ptr noundef @.str.604, i32 noundef -1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @ph7_result_string(ptr noundef %7, ptr noundef @.str.605, i32 noundef -1)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_string(ptr noundef %8, ptr noundef @.str.601, i32 noundef -1)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_string(ptr noundef %9, ptr noundef @.str.606, i32 noundef -1)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_string(ptr noundef %10, ptr noundef @.str.607, i32 noundef -1)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef @.str.608, i32 noundef -1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call i32 @ph7_result_string(ptr noundef %12, ptr noundef @.str.609, i32 noundef -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  ret i32 0
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
