; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.997 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @roundFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %r = alloca double, align 8
  %zBuf = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %n, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp1 = icmp eq i32 5, %call
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_int(ptr noundef %4)
  store i32 %call4, ptr %n, align 4
  %5 = load i32, ptr %n, align 4
  %cmp5 = icmp sgt i32 %5, 30
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 30, ptr %n, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %6 = load i32, ptr %n, align 4
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %n, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_type(ptr noundef %8)
  %cmp14 = icmp eq i32 %call13, 5
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %return

if.end16:                                         ; preds = %if.end11
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx17, align 8
  %call18 = call double @sqlite3_value_double(ptr noundef %10)
  store double %call18, ptr %r, align 8
  %11 = load double, ptr %r, align 8
  %cmp19 = fcmp olt double %11, 0xC330000000000000
  br i1 %cmp19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %12 = load double, ptr %r, align 8
  %cmp20 = fcmp ogt double %12, 0x4330000000000000
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %lor.lhs.false, %if.end16
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false
  %13 = load i32, ptr %n, align 4
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else
  %14 = load double, ptr %r, align 8
  %15 = load double, ptr %r, align 8
  %cmp24 = fcmp olt double %15, 0.000000e+00
  %16 = zext i1 %cmp24 to i64
  %cond = select i1 %cmp24, double -5.000000e-01, double 5.000000e-01
  %add = fadd double %14, %cond
  %conv = fptosi double %add to i64
  %conv25 = sitofp i64 %conv to double
  store double %conv25, ptr %r, align 8
  br label %if.end34

if.else26:                                        ; preds = %if.else
  %17 = load i32, ptr %n, align 4
  %18 = load double, ptr %r, align 8
  %call27 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.997, i32 noundef %17, double noundef %18)
  store ptr %call27, ptr %zBuf, align 8
  %19 = load ptr, ptr %zBuf, align 8
  %cmp28 = icmp eq ptr %19, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else26
  %20 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %20)
  br label %return

if.end31:                                         ; preds = %if.else26
  %21 = load ptr, ptr %zBuf, align 8
  %22 = load ptr, ptr %zBuf, align 8
  %call32 = call i32 @sqlite3Strlen30(ptr noundef %22)
  %call33 = call i32 @sqlite3AtoF(ptr noundef %21, ptr noundef %r, i32 noundef %call32, i8 noundef zeroext 1)
  %23 = load ptr, ptr %zBuf, align 8
  call void @sqlite3_free(ptr noundef %23)
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then23
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then21
  %24 = load ptr, ptr %context.addr, align 8
  %25 = load double, ptr %r, align 8
  call void @sqlite3_result_double(ptr noundef %24, double noundef %25)
  br label %return

return:                                           ; preds = %if.end35, %if.then30, %if.then15, %if.then2
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
