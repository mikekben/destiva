; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MemCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @minmaxFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %iBest = alloca i32, align 4
  %pColl = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %0)
  %cmp = icmp eq ptr %call, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 -1
  store i32 %cond, ptr %mask, align 4
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3GetFuncCollSeq(ptr noundef %2)
  store ptr %call1, ptr %pColl, align 8
  store i32 0, ptr %iBest, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @sqlite3_value_type(ptr noundef %4)
  %cmp3 = icmp eq i32 %call2, 5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %argc.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %9)
  %cmp7 = icmp eq i32 %call6, 5
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %return

if.end9:                                          ; preds = %for.body
  %10 = load ptr, ptr %argv.addr, align 8
  %11 = load i32, ptr %iBest, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %10, i64 %idxprom10
  %12 = load ptr, ptr %arrayidx11, align 8
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 %idxprom12
  %15 = load ptr, ptr %arrayidx13, align 8
  %16 = load ptr, ptr %pColl, align 8
  %call14 = call i32 @sqlite3MemCompare(ptr noundef %12, ptr noundef %15, ptr noundef %16)
  %17 = load i32, ptr %mask, align 4
  %xor = xor i32 %call14, %17
  %cmp15 = icmp sge i32 %xor, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  %18 = load i32, ptr %i, align 4
  store i32 %18, ptr %iBest, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %context.addr, align 8
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %iBest, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %21, i64 %idxprom18
  %23 = load ptr, ptr %arrayidx19, align 8
  call void @sqlite3_result_value(ptr noundef %20, ptr noundef %23)
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetFuncCollSeq(ptr noundef) #0

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
