; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.129 = external hidden unnamed_addr constant [5 x i8], align 1
@__PRETTY_FUNCTION__.res_drain_interleaved = external hidden unnamed_addr constant [49 x i8], align 1

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @res_drain_interleaved(ptr noundef %state, ptr noundef %dest) #3 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %result = alloca i32, align 4
  %poolfill = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 -1, ptr %result, align 4
  store i32 -1, ptr %poolfill, align 4
  store i32 -1, ptr %offset, align 4
  %0 = load ptr, ptr %state.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3572, ptr noundef @__PRETTY_FUNCTION__.res_drain_interleaved) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %dest.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.129, ptr noundef @.str.116, i32 noundef 3573, ptr noundef @__PRETTY_FUNCTION__.res_drain_interleaved) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load ptr, ptr %state.addr, align 8
  %poolfill5 = getelementptr inbounds nuw %struct.res_state, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %poolfill5, align 8
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(ptr noundef @.str.128, ptr noundef @.str.116, i32 noundef 3574, ptr noundef @__PRETTY_FUNCTION__.res_drain_interleaved) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %4 = load ptr, ptr %state.addr, align 8
  %taps = getelementptr inbounds nuw %struct.res_state, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %taps, align 4
  %conv = zext i32 %5 to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #5
  store ptr %call, ptr %tail, align 8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %state.addr, align 8
  %channels = getelementptr inbounds nuw %struct.res_state, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %channels, align 8
  %cmp13 = icmp ult i32 %6, %8
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %state.addr, align 8
  %poolfill15 = getelementptr inbounds nuw %struct.res_state, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %poolfill15, align 8
  store i32 %10, ptr %poolfill, align 4
  %11 = load ptr, ptr %state.addr, align 8
  %offset16 = getelementptr inbounds nuw %struct.res_state, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %offset16, align 4
  store i32 %12, ptr %offset, align 4
  %13 = load ptr, ptr %state.addr, align 8
  %14 = load ptr, ptr %state.addr, align 8
  %pool = getelementptr inbounds nuw %struct.res_state, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pool, align 8
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %state.addr, align 8
  %taps17 = getelementptr inbounds nuw %struct.res_state, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %taps17, align 4
  %mul = mul i32 %16, %18
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds nuw float, ptr %15, i64 %idx.ext
  %19 = load ptr, ptr %dest.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idx.ext18 = sext i32 %20 to i64
  %add.ptr19 = getelementptr inbounds float, ptr %19, i64 %idx.ext18
  %21 = load ptr, ptr %state.addr, align 8
  %channels20 = getelementptr inbounds nuw %struct.res_state, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %channels20, align 8
  %23 = load ptr, ptr %tail, align 8
  %24 = load ptr, ptr %state.addr, align 8
  %taps21 = getelementptr inbounds nuw %struct.res_state, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %taps21, align 4
  %div = udiv i32 %25, 2
  %sub = sub i32 %div, 1
  %conv22 = zext i32 %sub to i64
  %call23 = call i32 @push(ptr noundef %13, ptr noundef %add.ptr, ptr noundef %poolfill, ptr noundef %offset, ptr noundef %add.ptr19, i32 noundef %22, ptr noundef %23, i32 noundef 1, i64 noundef %conv22)
  store i32 %call23, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %tail, align 8
  call void @free(ptr noundef %27) #6
  %28 = load ptr, ptr %state.addr, align 8
  %poolfill24 = getelementptr inbounds nuw %struct.res_state, ptr %28, i32 0, i32 6
  store i32 -1, ptr %poolfill24, align 8
  %29 = load i32, ptr %result, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

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
