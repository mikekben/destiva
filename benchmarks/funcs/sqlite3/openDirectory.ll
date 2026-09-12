; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.58 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define hidden i32 @openDirectory(ptr noundef %zFilename, ptr noundef %pFd) #1 {
entry:
  %retval = alloca i32, align 4
  %zFilename.addr = alloca ptr, align 8
  %pFd.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %fd = alloca i32, align 4
  %zDirname = alloca [513 x i8], align 16
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  store i32 -1, ptr %fd, align 4
  %arraydecay = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  %0 = load ptr, ptr %zFilename.addr, align 8
  %call = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 512, ptr noundef %arraydecay, ptr noundef @.str.20, ptr noundef %0)
  %arraydecay1 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #2
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %ii, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %ii, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %6 = load i32, ptr %ii, align 4
  %cmp7 = icmp sgt i32 %6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %7 = load i32, ptr %ii, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 %idxprom9
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end18

if.else:                                          ; preds = %for.end
  %arrayidx11 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  %8 = load i8, ptr %arrayidx11, align 16
  %conv12 = sext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 47
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %arrayidx16 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  store i8 46, ptr %arrayidx16, align 16
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  %arrayidx17 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 1
  store i8 0, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %arraydecay19 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  %call20 = call i32 @robust_open(ptr noundef %arraydecay19, i32 noundef 0, i32 noundef 0)
  store i32 %call20, ptr %fd, align 4
  %9 = load i32, ptr %fd, align 4
  %cmp21 = icmp sge i32 %9, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18
  %10 = load i32, ptr %fd, align 4
  %11 = load ptr, ptr %pFd.addr, align 8
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %fd, align 4
  %cmp25 = icmp sge i32 %12, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @sqlite3CantopenError(i32 noundef 36382)
  %arraydecay30 = getelementptr inbounds [513 x i8], ptr %zDirname, i64 0, i64 0
  %call31 = call i32 @unixLogErrorAtLine(i32 noundef %call29, ptr noundef @.str.58, ptr noundef %arraydecay30, i32 noundef 36382)
  store i32 %call31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_open(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
