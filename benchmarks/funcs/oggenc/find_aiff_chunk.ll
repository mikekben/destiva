; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.192 = external hidden unnamed_addr constant [39 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @find_aiff_chunk(ptr noundef %in, ptr noundef %type, ptr noundef %len) #3 {
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

while.body:                                       ; preds = %if.end30, %entry
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %cmp = icmp ult i64 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.192) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay2, i64 4
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr4 = getelementptr inbounds i8, ptr %arraydecay3, i64 4
  %arrayidx5 = getelementptr inbounds i8, ptr %add.ptr4, i64 1
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %shl7 = shl i32 %conv6, 16
  %or = or i32 %shl, %shl7
  %arraydecay8 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr9 = getelementptr inbounds i8, ptr %arraydecay8, i64 4
  %arrayidx10 = getelementptr inbounds i8, ptr %add.ptr9, i64 2
  %4 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %4 to i32
  %shl12 = shl i32 %conv11, 8
  %or13 = or i32 %or, %shl12
  %arraydecay14 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %add.ptr15 = getelementptr inbounds i8, ptr %arraydecay14, i64 4
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr15, i64 3
  %5 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %5 to i32
  %and = and i32 %conv17, 255
  %or18 = or i32 %or13, %and
  %6 = load ptr, ptr %len.addr, align 8
  store i32 %or18, ptr %6, align 4
  %arraydecay19 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %7 = load ptr, ptr %type.addr, align 8
  %call20 = call i32 @memcmp(ptr noundef %arraydecay19, ptr noundef %7, i64 noundef 4) #5
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %8 = load ptr, ptr %len.addr, align 8
  %9 = load i32, ptr %8, align 4
  %and22 = and i32 %9, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %10 = load ptr, ptr %len.addr, align 8
  %11 = load i32, ptr %10, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %10, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21
  %12 = load ptr, ptr %in.addr, align 8
  %13 = load ptr, ptr %len.addr, align 8
  %14 = load i32, ptr %13, align 4
  %call26 = call i32 @seek_forward(ptr noundef %12, i32 noundef %14)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  br label %if.end30

if.else:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end29
  br label %while.body

return:                                           ; preds = %if.else, %if.then28, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @seek_forward(ptr noundef, i32 noundef) #3

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
