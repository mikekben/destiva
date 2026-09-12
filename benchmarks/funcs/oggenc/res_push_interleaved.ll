; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [21 x i8], align 1
@__PRETTY_FUNCTION__.res_push_interleaved = external hidden unnamed_addr constant [72 x i8], align 1
@.str.129 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.130 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @res_push_interleaved(ptr noundef %state, ptr noundef %dest, ptr noundef %source, i64 noundef %srclen) #1 {
entry:
  %state.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %srclen.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %poolfill = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i64 %srclen, ptr %srclen.addr, align 8
  store i32 -1, ptr %result, align 4
  store i32 -1, ptr %poolfill, align 4
  store i32 -1, ptr %offset, align 4
  %0 = load ptr, ptr %state.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3522, ptr noundef @__PRETTY_FUNCTION__.res_push_interleaved) #2
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %dest.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.129, ptr noundef @.str.116, i32 noundef 3523, ptr noundef @__PRETTY_FUNCTION__.res_push_interleaved) #2
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load ptr, ptr %source.addr, align 8
  %tobool5 = icmp ne ptr %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(ptr noundef @.str.130, ptr noundef @.str.116, i32 noundef 3524, ptr noundef @__PRETTY_FUNCTION__.res_push_interleaved) #2
  unreachable

if.end8:                                          ; preds = %if.then6
  %3 = load ptr, ptr %state.addr, align 8
  %poolfill9 = getelementptr inbounds nuw %struct.res_state, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %poolfill9, align 8
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  br label %if.end12

if.else11:                                        ; preds = %if.end8
  call void @__assert_fail(ptr noundef @.str.128, ptr noundef @.str.116, i32 noundef 3525, ptr noundef @__PRETTY_FUNCTION__.res_push_interleaved) #2
  unreachable

if.end12:                                         ; preds = %if.then10
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %state.addr, align 8
  %channels = getelementptr inbounds nuw %struct.res_state, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %channels, align 8
  %cmp13 = icmp ult i32 %5, %7
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %state.addr, align 8
  %poolfill14 = getelementptr inbounds nuw %struct.res_state, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %poolfill14, align 8
  store i32 %9, ptr %poolfill, align 4
  %10 = load ptr, ptr %state.addr, align 8
  %offset15 = getelementptr inbounds nuw %struct.res_state, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %offset15, align 4
  store i32 %11, ptr %offset, align 4
  %12 = load ptr, ptr %state.addr, align 8
  %13 = load ptr, ptr %state.addr, align 8
  %pool = getelementptr inbounds nuw %struct.res_state, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pool, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %state.addr, align 8
  %taps = getelementptr inbounds nuw %struct.res_state, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %taps, align 4
  %mul = mul i32 %15, %17
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds nuw float, ptr %14, i64 %idx.ext
  %18 = load ptr, ptr %dest.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idx.ext16 = sext i32 %19 to i64
  %add.ptr17 = getelementptr inbounds float, ptr %18, i64 %idx.ext16
  %20 = load ptr, ptr %state.addr, align 8
  %channels18 = getelementptr inbounds nuw %struct.res_state, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %channels18, align 8
  %22 = load ptr, ptr %source.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idx.ext19 = sext i32 %23 to i64
  %add.ptr20 = getelementptr inbounds float, ptr %22, i64 %idx.ext19
  %24 = load ptr, ptr %state.addr, align 8
  %channels21 = getelementptr inbounds nuw %struct.res_state, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %channels21, align 8
  %26 = load i64, ptr %srclen.addr, align 8
  %call = call i32 @push(ptr noundef %12, ptr noundef %add.ptr, ptr noundef %poolfill, ptr noundef %offset, ptr noundef %add.ptr17, i32 noundef %21, ptr noundef %add.ptr20, i32 noundef %25, i64 noundef %26)
  store i32 %call, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %28 = load i32, ptr %poolfill, align 4
  %29 = load ptr, ptr %state.addr, align 8
  %poolfill22 = getelementptr inbounds nuw %struct.res_state, ptr %29, i32 0, i32 6
  store i32 %28, ptr %poolfill22, align 8
  %30 = load i32, ptr %offset, align 4
  %31 = load ptr, ptr %state.addr, align 8
  %offset23 = getelementptr inbounds nuw %struct.res_state, ptr %31, i32 0, i32 7
  store i32 %30, ptr %offset23, align 4
  %32 = load i32, ptr %result, align 4
  ret i32 %32
}

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
