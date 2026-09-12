; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@__PRETTY_FUNCTION__.res_push = external hidden unnamed_addr constant [62 x i8], align 1
@.str.126 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.127 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @res_push(ptr noundef %state, ptr noundef %dstlist, ptr noundef %srclist, i64 noundef %srclen) #1 {
entry:
  %state.addr = alloca ptr, align 8
  %dstlist.addr = alloca ptr, align 8
  %srclist.addr = alloca ptr, align 8
  %srclen.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %poolfill = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %dstlist, ptr %dstlist.addr, align 8
  store ptr %srclist, ptr %srclist.addr, align 8
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
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3500, ptr noundef @__PRETTY_FUNCTION__.res_push) #2
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %dstlist.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.126, ptr noundef @.str.116, i32 noundef 3501, ptr noundef @__PRETTY_FUNCTION__.res_push) #2
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load ptr, ptr %srclist.addr, align 8
  %tobool5 = icmp ne ptr %2, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(ptr noundef @.str.127, ptr noundef @.str.116, i32 noundef 3502, ptr noundef @__PRETTY_FUNCTION__.res_push) #2
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
  call void @__assert_fail(ptr noundef @.str.128, ptr noundef @.str.116, i32 noundef 3503, ptr noundef @__PRETTY_FUNCTION__.res_push) #2
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
  %18 = load ptr, ptr %dstlist.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = load ptr, ptr %srclist.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %21, i64 %idxprom16
  %23 = load ptr, ptr %arrayidx17, align 8
  %24 = load i64, ptr %srclen.addr, align 8
  %call = call i32 @push(ptr noundef %12, ptr noundef %add.ptr, ptr noundef %poolfill, ptr noundef %offset, ptr noundef %20, i32 noundef 1, ptr noundef %23, i32 noundef 1, i64 noundef %24)
  store i32 %call, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %poolfill, align 4
  %27 = load ptr, ptr %state.addr, align 8
  %poolfill18 = getelementptr inbounds nuw %struct.res_state, ptr %27, i32 0, i32 6
  store i32 %26, ptr %poolfill18, align 8
  %28 = load i32, ptr %offset, align 4
  %29 = load ptr, ptr %state.addr, align 8
  %offset19 = getelementptr inbounds nuw %struct.res_state, ptr %29, i32 0, i32 7
  store i32 %28, ptr %offset19, align 4
  %30 = load i32, ptr %result, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) #1

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
