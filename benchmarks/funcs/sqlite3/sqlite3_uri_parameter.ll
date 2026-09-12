; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_uri_parameter(ptr noundef %zFilename, ptr noundef %zParam) #1 {
entry:
  %retval = alloca ptr, align 8
  %zFilename.addr = alloca ptr, align 8
  %zParam.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %zParam, ptr %zParam.addr, align 8
  %0 = load ptr, ptr %zFilename.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %zParam.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %zFilename.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %2)
  %add = add nsw i32 %call, 1
  %3 = load ptr, ptr %zFilename.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %zFilename.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load ptr, ptr %zFilename.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %zFilename.addr, align 8
  %7 = load ptr, ptr %zParam.addr, align 8
  %call2 = call i32 @strcmp(ptr noundef %6, ptr noundef %7) #2
  store i32 %call2, ptr %x, align 4
  %8 = load ptr, ptr %zFilename.addr, align 8
  %call3 = call i32 @sqlite3Strlen30(ptr noundef %8)
  %add4 = add nsw i32 %call3, 1
  %9 = load ptr, ptr %zFilename.addr, align 8
  %idx.ext5 = sext i32 %add4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 %idx.ext5
  store ptr %add.ptr6, ptr %zFilename.addr, align 8
  %10 = load i32, ptr %x, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  %11 = load ptr, ptr %zFilename.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %while.body
  %12 = load ptr, ptr %zFilename.addr, align 8
  %call10 = call i32 @sqlite3Strlen30(ptr noundef %12)
  %add11 = add nsw i32 %call10, 1
  %13 = load ptr, ptr %zFilename.addr, align 8
  %idx.ext12 = sext i32 %add11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %13, i64 %idx.ext12
  store ptr %add.ptr13, ptr %zFilename.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

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
