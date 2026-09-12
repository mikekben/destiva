; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.295 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.340 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.670 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.773 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.777 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @explainIndexColumnName(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @explainAppendTerm(ptr noundef %pStr, ptr noundef %pIdx, i32 noundef %nTerm, i32 noundef %iTerm, i32 noundef %bAnd, ptr noundef %zOp) #0 {
entry:
  %pStr.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %nTerm.addr = alloca i32, align 4
  %iTerm.addr = alloca i32, align 4
  %bAnd.addr = alloca i32, align 4
  %zOp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pStr, ptr %pStr.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %nTerm, ptr %nTerm.addr, align 4
  store i32 %iTerm, ptr %iTerm.addr, align 4
  store i32 %bAnd, ptr %bAnd.addr, align 4
  store ptr %zOp, ptr %zOp.addr, align 8
  %0 = load i32, ptr %bAnd.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef @.str.773, i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %nTerm.addr, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %3, ptr noundef @.str.777, i32 noundef 1)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nTerm.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %7 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %7, ptr noundef @.str.670, i32 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body
  %8 = load ptr, ptr %pStr.addr, align 8
  %9 = load ptr, ptr %pIdx.addr, align 8
  %10 = load i32, ptr %iTerm.addr, align 4
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 %10, %11
  %call = call ptr @explainIndexColumnName(ptr noundef %9, i32 noundef %add)
  call void @sqlite3_str_appendall(ptr noundef %8, ptr noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %nTerm.addr, align 4
  %cmp7 = icmp sgt i32 %13, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  %14 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %14, ptr noundef @.str.295, i32 noundef 1)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.end
  %15 = load ptr, ptr %pStr.addr, align 8
  %16 = load ptr, ptr %zOp.addr, align 8
  call void @sqlite3_str_append(ptr noundef %15, ptr noundef %16, i32 noundef 1)
  %17 = load i32, ptr %nTerm.addr, align 4
  %cmp10 = icmp sgt i32 %17, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %18 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %18, ptr noundef @.str.777, i32 noundef 1)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %if.end12
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %nTerm.addr, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %21 = load i32, ptr %i, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body15
  %22 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %22, ptr noundef @.str.670, i32 noundef 1)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body15
  %23 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %23, ptr noundef @.str.340, i32 noundef 1)
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %24 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond13, !llvm.loop !8

for.end21:                                        ; preds = %for.cond13
  %25 = load i32, ptr %nTerm.addr, align 4
  %cmp22 = icmp sgt i32 %25, 1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end21
  %26 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %26, ptr noundef @.str.295, i32 noundef 1)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end21
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
