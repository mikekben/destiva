; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.71 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @wav_id(ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %flen = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %call = call i32 @memcmp(ptr noundef %1, ptr noundef @.str.71, i64 noundef 4) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 4
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 24
  %4 = load ptr, ptr %buf.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %4, i64 4
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr3, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 16
  %or = or i32 %shl, %shl6
  %6 = load ptr, ptr %buf.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %6, i64 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr7, i64 1
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %8 = load ptr, ptr %buf.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %8, i64 4
  %arrayidx13 = getelementptr inbounds i8, ptr %add.ptr12, i64 0
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %and = and i32 %conv14, 255
  %or15 = or i32 %or11, %and
  store i32 %or15, ptr %flen, align 4
  %10 = load ptr, ptr %buf.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %10, i64 8
  %call17 = call i32 @memcmp(ptr noundef %add.ptr16, ptr noundef @.str.72, i64 noundef 4) #2
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end2
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end2
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then1, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
