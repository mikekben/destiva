; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_format = type { ptr, i32, ptr, ptr, ptr, ptr }

@formats = external dso_local global [3 x { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }], align 16

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @open_audio_file(ptr noundef %in, ptr noundef %opt) #1 {
entry:
  %retval = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %buf = alloca ptr, align 8
  %buf_size = alloca i32, align 4
  %buf_filled = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store i32 0, ptr %j, align 4
  store ptr null, ptr %buf, align 8
  store i32 0, ptr %buf_size, align 4
  store i32 0, ptr %buf_filled, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.then11, %entry
  %0 = load i32, ptr %j, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.input_format], ptr @formats, i64 0, i64 %idxprom
  %id_func = getelementptr inbounds nuw %struct.input_format, ptr %arrayidx, i32 0, i32 0
  %1 = load ptr, ptr %id_func, align 16
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %j, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x %struct.input_format], ptr @formats, i64 0, i64 %idxprom1
  %id_data_len = getelementptr inbounds nuw %struct.input_format, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %id_data_len, align 8
  store i32 %3, ptr %size, align 4
  %4 = load i32, ptr %size, align 4
  %5 = load i32, ptr %buf_size, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %buf, align 8
  %7 = load i32, ptr %size, align 4
  %conv = sext i32 %7 to i64
  %call = call ptr @realloc(ptr noundef %6, i64 noundef %conv) #4
  store ptr %call, ptr %buf, align 8
  %8 = load i32, ptr %size, align 4
  store i32 %8, ptr %buf_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, ptr %size, align 4
  %10 = load i32, ptr %buf_filled, align 4
  %cmp3 = icmp sgt i32 %9, %10
  br i1 %cmp3, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %buf, align 8
  %12 = load i32, ptr %buf_filled, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %13 = load i32, ptr %buf_size, align 4
  %14 = load i32, ptr %buf_filled, align 4
  %sub = sub nsw i32 %13, %14
  %conv6 = sext i32 %sub to i64
  %15 = load ptr, ptr %in.addr, align 8
  %call7 = call i64 @fread(ptr noundef %add.ptr, i64 noundef 1, i64 noundef %conv6, ptr noundef %15)
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr %ret, align 4
  %16 = load i32, ptr %ret, align 4
  %17 = load i32, ptr %buf_filled, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, ptr %buf_filled, align 4
  %18 = load i32, ptr %buf_filled, align 4
  %19 = load i32, ptr %size, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then5
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond, !llvm.loop !6

if.end12:                                         ; preds = %if.then5
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %21 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.input_format], ptr @formats, i64 0, i64 %idxprom14
  %id_func16 = getelementptr inbounds nuw %struct.input_format, ptr %arrayidx15, i32 0, i32 0
  %22 = load ptr, ptr %id_func16, align 16
  %23 = load ptr, ptr %buf, align 8
  %24 = load i32, ptr %buf_filled, align 4
  %call17 = call i32 %22(ptr noundef %23, i32 noundef %24)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end13
  %25 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [3 x %struct.input_format], ptr @formats, i64 0, i64 %idxprom20
  %open_func = getelementptr inbounds nuw %struct.input_format, ptr %arrayidx21, i32 0, i32 2
  %26 = load ptr, ptr %open_func, align 16
  %27 = load ptr, ptr %in.addr, align 8
  %28 = load ptr, ptr %opt.addr, align 8
  %29 = load ptr, ptr %buf, align 8
  %30 = load i32, ptr %buf_filled, align 4
  %call22 = call i32 %26(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.then19
  %31 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %31) #5
  %32 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.input_format], ptr @formats, i64 0, i64 %idxprom25
  store ptr %arrayidx26, ptr %retval, align 8
  br label %return

if.end27:                                         ; preds = %if.then19
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end13
  %33 = load i32, ptr %j, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, ptr %j, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %34) #5
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then24
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) }
attributes #5 = { nounwind }

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
