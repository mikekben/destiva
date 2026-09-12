; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexdigits = external hidden constant [16 x i8], align 16

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @hexFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %pBlob = alloca ptr, align 8
  %zHex = alloca ptr, align 8
  %z = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %2)
  store ptr %call, ptr %pBlob, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %4)
  store i32 %call2, ptr %n, align 4
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load i32, ptr %n, align 4
  %conv = sext i32 %6 to i64
  %mul = mul nsw i64 %conv, 2
  %add = add nsw i64 %mul, 1
  %call3 = call ptr @contextMalloc(ptr noundef %5, i64 noundef %add)
  store ptr %call3, ptr %zHex, align 8
  store ptr %call3, ptr %z, align 8
  %7 = load ptr, ptr %zHex, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pBlob, align 8
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %c, align 1
  %12 = load i8, ptr %c, align 1
  %conv5 = zext i8 %12 to i32
  %shr = ashr i32 %conv5, 4
  %and = and i32 %shr, 15
  %idxprom = sext i32 %and to i64
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr @hexdigits, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx6, align 1
  %14 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  store i8 %13, ptr %14, align 1
  %15 = load i8, ptr %c, align 1
  %conv7 = zext i8 %15 to i32
  %and8 = and i32 %conv7, 15
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr @hexdigits, i64 0, i64 %idxprom9
  %16 = load i8, ptr %arrayidx10, align 1
  %17 = load ptr, ptr %z, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr11, ptr %z, align 8
  store i8 %16, ptr %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  %19 = load ptr, ptr %pBlob, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr12, ptr %pBlob, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %z, align 8
  store i8 0, ptr %20, align 1
  %21 = load ptr, ptr %context.addr, align 8
  %22 = load ptr, ptr %zHex, align 8
  %23 = load i32, ptr %n, align 4
  %mul13 = mul nsw i32 %23, 2
  call void @sqlite3_result_text(ptr noundef %21, ptr noundef %22, i32 noundef %mul13, ptr noundef @sqlite3_free)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @contextMalloc(ptr noundef, i64 noundef) #0

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
