; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat4Accum = type { i32, i32, i32, i32, i32, %struct.Stat4Sample, i32, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.Stat4Sample = type { ptr, ptr }

@.str.920 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.921 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @statGet(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  %zRet = alloca ptr, align 8
  %nDistinct = alloca i64, align 8
  %iVal = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %1)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Stat4Accum, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nKeyCol, align 4
  %add = add nsw i32 %3, 1
  %mul = mul nsw i32 %add, 25
  %conv = sext i32 %mul to i64
  %call1 = call ptr @sqlite3MallocZero(i64 noundef %conv)
  store ptr %call1, ptr %zRet, align 8
  %4 = load ptr, ptr %zRet, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %5)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %zRet, align 8
  %7 = load ptr, ptr %p, align 8
  %nRow = getelementptr inbounds nuw %struct.Stat4Accum, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nRow, align 8
  %conv3 = zext i32 %8 to i64
  %call4 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 24, ptr noundef %6, ptr noundef @.str.920, i64 noundef %conv3)
  %9 = load ptr, ptr %zRet, align 8
  %10 = load ptr, ptr %zRet, align 8
  %call5 = call i32 @sqlite3Strlen30(ptr noundef %10)
  %idx.ext = sext i32 %call5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %z, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %p, align 8
  %nKeyCol6 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %nKeyCol6, align 4
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8
  %current = getelementptr inbounds nuw %struct.Stat4Accum, ptr %14, i32 0, i32 5
  %anDLt = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current, i32 0, i32 1
  %15 = load ptr, ptr %anDLt, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom
  %17 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %17, 1
  %conv11 = zext i32 %add10 to i64
  store i64 %conv11, ptr %nDistinct, align 8
  %18 = load ptr, ptr %p, align 8
  %nRow12 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nRow12, align 8
  %conv13 = zext i32 %19 to i64
  %20 = load i64, ptr %nDistinct, align 8
  %add14 = add i64 %conv13, %20
  %sub = sub i64 %add14, 1
  %21 = load i64, ptr %nDistinct, align 8
  %div = udiv i64 %sub, %21
  store i64 %div, ptr %iVal, align 8
  %22 = load ptr, ptr %z, align 8
  %23 = load i64, ptr %iVal, align 8
  %call15 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 24, ptr noundef %22, ptr noundef @.str.921, i64 noundef %23)
  %24 = load ptr, ptr %z, align 8
  %call16 = call i32 @sqlite3Strlen30(ptr noundef %24)
  %25 = load ptr, ptr %z, align 8
  %idx.ext17 = sext i32 %call16 to i64
  %add.ptr18 = getelementptr inbounds i8, ptr %25, i64 %idx.ext17
  store ptr %add.ptr18, ptr %z, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %context.addr, align 8
  %28 = load ptr, ptr %zRet, align 8
  call void @sqlite3_result_text(ptr noundef %27, ptr noundef %28, i32 noundef -1, ptr noundef @sqlite3_free)
  %29 = load i32, ptr %argc.addr, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
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
