; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.76 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.193 = external hidden unnamed_addr constant [40 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @seek_forward(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define hidden i32 @find_wav_chunk(ptr noundef %in, ptr noundef %type, ptr noundef %len) #3 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %buf = alloca [8 x i8], align 1
  store ptr %in, ptr %in.addr, align 8
  store ptr %type, ptr %type.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end52, %entry
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %cmp = icmp ult i64 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.76) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %type.addr, align 8
  %call3 = call i32 @memcmp(ptr noundef %arraydecay2, ptr noundef %2, i64 noundef 4) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay5, i64 4
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %conv, 24
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr7 = getelementptr inbounds i8, ptr %arraydecay6, i64 4
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr7, i64 2
  %4 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %shl10 = shl i32 %conv9, 16
  %or = or i32 %shl, %shl10
  %arraydecay11 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr12 = getelementptr inbounds i8, ptr %arraydecay11, i64 4
  %arrayidx13 = getelementptr inbounds i8, ptr %add.ptr12, i64 1
  %5 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %5 to i32
  %shl15 = shl i32 %conv14, 8
  %or16 = or i32 %or, %shl15
  %arraydecay17 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr18 = getelementptr inbounds i8, ptr %arraydecay17, i64 4
  %arrayidx19 = getelementptr inbounds i8, ptr %add.ptr18, i64 0
  %6 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %6 to i32
  %and = and i32 %conv20, 255
  %or21 = or i32 %or16, %and
  %7 = load ptr, ptr %len.addr, align 8
  store i32 %or21, ptr %7, align 4
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load ptr, ptr %len.addr, align 8
  %10 = load i32, ptr %9, align 4
  %call22 = call i32 @seek_forward(ptr noundef %8, i32 noundef %10)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then4
  %arrayidx26 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 4
  store i8 0, ptr %arrayidx26, align 1
  %11 = load ptr, ptr @stderr, align 8
  %arraydecay27 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %12 = load ptr, ptr %len.addr, align 8
  %13 = load i32, ptr %12, align 4
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.193, ptr noundef %arraydecay27, i32 noundef %13) #4
  br label %if.end52

if.else:                                          ; preds = %if.end
  %arraydecay29 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr30 = getelementptr inbounds i8, ptr %arraydecay29, i64 4
  %arrayidx31 = getelementptr inbounds i8, ptr %add.ptr30, i64 3
  %14 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %14 to i32
  %shl33 = shl i32 %conv32, 24
  %arraydecay34 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr35 = getelementptr inbounds i8, ptr %arraydecay34, i64 4
  %arrayidx36 = getelementptr inbounds i8, ptr %add.ptr35, i64 2
  %15 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %15 to i32
  %shl38 = shl i32 %conv37, 16
  %or39 = or i32 %shl33, %shl38
  %arraydecay40 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr41 = getelementptr inbounds i8, ptr %arraydecay40, i64 4
  %arrayidx42 = getelementptr inbounds i8, ptr %add.ptr41, i64 1
  %16 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %16 to i32
  %shl44 = shl i32 %conv43, 8
  %or45 = or i32 %or39, %shl44
  %arraydecay46 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr47 = getelementptr inbounds i8, ptr %arraydecay46, i64 4
  %arrayidx48 = getelementptr inbounds i8, ptr %add.ptr47, i64 0
  %17 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %17 to i32
  %and50 = and i32 %conv49, 255
  %or51 = or i32 %or45, %and50
  %18 = load ptr, ptr %len.addr, align 8
  store i32 %or51, ptr %18, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end25
  br label %while.body

return:                                           ; preds = %if.else, %if.then24, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
