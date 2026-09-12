; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.556 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.967 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_chunk_split(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %nSepLen = alloca i32, align 4
  %nChunkLen = alloca i32, align 4
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr @.str.967, ptr %zSep, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 2, ptr %nSepLen, align 4
  store i32 76, ptr %nChunkLen, align 4
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call3, ptr %zIn, align 8
  %6 = load ptr, ptr %zIn, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx4, ptr %zEnd, align 8
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %8, 1
  br i1 %cmp5, label %if.then6, label %if.end20

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %10)
  store i32 %call8, ptr %nChunkLen, align 4
  %11 = load i32, ptr %nChunkLen, align 4
  %cmp9 = icmp slt i32 %11, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  store i32 76, ptr %nChunkLen, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6
  %12 = load i32, ptr %nArg.addr, align 4
  %cmp12 = icmp sgt i32 %12, 2
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 2
  %14 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @ph7_value_to_string(ptr noundef %14, ptr noundef %nSepLen)
  store ptr %call15, ptr %zSep, align 8
  %15 = load i32, ptr %nSepLen, align 4
  %cmp16 = icmp slt i32 %15, 1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  store ptr @.str.967, ptr %zSep, align 8
  store i32 2, ptr %nSepLen, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %16 = load i32, ptr %nChunkLen, align 4
  %17 = load i32, ptr %nLen, align 4
  %cmp21 = icmp sgt i32 %16, %17
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load i32, ptr %nLen, align 4
  %20 = load ptr, ptr %zIn, align 8
  %21 = load i32, ptr %nSepLen, align 4
  %22 = load ptr, ptr %zSep, align 8
  %call23 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %18, ptr noundef @.str.556, i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end24
  %23 = load ptr, ptr %zIn, align 8
  %24 = load ptr, ptr %zEnd, align 8
  %cmp25 = icmp ult ptr %23, %24
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, ptr %nChunkLen, align 4
  %26 = load ptr, ptr %zEnd, align 8
  %27 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp26 = icmp sgt i32 %25, %conv
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %while.body
  %28 = load ptr, ptr %zEnd, align 8
  %29 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast29 = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %29 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i32
  store i32 %conv32, ptr %nChunkLen, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %while.body
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load i32, ptr %nChunkLen, align 4
  %32 = load ptr, ptr %zIn, align 8
  %33 = load i32, ptr %nSepLen, align 4
  %34 = load ptr, ptr %zSep, align 8
  %call34 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %30, ptr noundef @.str.556, i32 noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34)
  %35 = load i32, ptr %nChunkLen, align 4
  %36 = load ptr, ptr %zIn, align 8
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, ptr %36, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then22, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

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
