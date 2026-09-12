; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_ucwords(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_null(ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %zIn, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx6, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end88, %if.end5
  %8 = load ptr, ptr %zIn, align 8
  store ptr %8, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %9 = load ptr, ptr %zIn, align 8
  %10 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp ult ptr %9, %10
  br i1 %cmp7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %11 = load ptr, ptr %zIn, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %12 to i32
  %cmp9 = icmp slt i32 %conv, 128
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call11 = call ptr @__ctype_b_loc() #3
  %13 = load ptr, ptr %call11, align 8
  %14 = load ptr, ptr %zIn, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %13, i64 %idxprom14
  %16 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %16 to i32
  %and = and i32 %conv16, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %19 = load ptr, ptr %zCur, align 8
  %20 = load ptr, ptr %zIn, align 8
  %cmp17 = icmp ult ptr %19, %20
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %while.end
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %zCur, align 8
  %23 = load ptr, ptr %zIn, align 8
  %24 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = trunc i64 %sub.ptr.sub to i32
  %call21 = call i32 @ph7_result_string(ptr noundef %21, ptr noundef %22, i32 noundef %conv20)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %while.end
  %25 = load ptr, ptr %zIn, align 8
  %26 = load ptr, ptr %zEnd, align 8
  %cmp23 = icmp uge ptr %25, %26
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  br label %for.end

if.end26:                                         ; preds = %if.end22
  %27 = load ptr, ptr %zIn, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %28 to i32
  store i32 %conv28, ptr %c, align 4
  %29 = load i32, ptr %c, align 4
  %cmp29 = icmp slt i32 %29, 128
  br i1 %cmp29, label %land.lhs.true31, label %if.end40

land.lhs.true31:                                  ; preds = %if.end26
  %call32 = call ptr @__ctype_b_loc() #3
  %30 = load ptr, ptr %call32, align 8
  %31 = load i32, ptr %c, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds i16, ptr %30, i64 %idxprom33
  %32 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %32 to i32
  %and36 = and i32 %conv35, 512
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %land.lhs.true31
  %33 = load i32, ptr %c, align 4
  %call39 = call i32 @toupper(i32 noundef %33) #4
  store i32 %call39, ptr %c, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true31, %if.end26
  %34 = load ptr, ptr %pCtx.addr, align 8
  %call41 = call i32 @ph7_result_string(ptr noundef %34, ptr noundef %c, i32 noundef 1)
  %35 = load ptr, ptr %zIn, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr42, ptr %zIn, align 8
  %36 = load ptr, ptr %zIn, align 8
  store ptr %36, ptr %zCur, align 8
  br label %while.cond43

while.cond43:                                     ; preds = %if.end78, %if.end40
  %37 = load ptr, ptr %zIn, align 8
  %38 = load ptr, ptr %zEnd, align 8
  %cmp44 = icmp ult ptr %37, %38
  br i1 %cmp44, label %while.body46, label %while.end79

while.body46:                                     ; preds = %while.cond43
  %39 = load ptr, ptr %zIn, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %40 to i32
  %cmp49 = icmp sge i32 %conv48, 192
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %while.body46
  %41 = load ptr, ptr %zIn, align 8
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr52, ptr %zIn, align 8
  br label %while.cond53

while.cond53:                                     ; preds = %while.body63, %if.then51
  %42 = load ptr, ptr %zIn, align 8
  %43 = load ptr, ptr %zEnd, align 8
  %cmp54 = icmp ult ptr %42, %43
  br i1 %cmp54, label %land.rhs56, label %land.end62

land.rhs56:                                       ; preds = %while.cond53
  %44 = load ptr, ptr %zIn, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %45 to i32
  %and59 = and i32 %conv58, 192
  %cmp60 = icmp eq i32 %and59, 128
  br label %land.end62

land.end62:                                       ; preds = %land.rhs56, %while.cond53
  %46 = phi i1 [ false, %while.cond53 ], [ %cmp60, %land.rhs56 ]
  br i1 %46, label %while.body63, label %while.end65

while.body63:                                     ; preds = %land.end62
  %47 = load ptr, ptr %zIn, align 8
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %47, i32 1
  store ptr %incdec.ptr64, ptr %zIn, align 8
  br label %while.cond53, !llvm.loop !8

while.end65:                                      ; preds = %land.end62
  br label %if.end78

if.else:                                          ; preds = %while.body46
  %call66 = call ptr @__ctype_b_loc() #3
  %48 = load ptr, ptr %call66, align 8
  %49 = load ptr, ptr %zIn, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %50 to i32
  %idxprom69 = sext i32 %conv68 to i64
  %arrayidx70 = getelementptr inbounds i16, ptr %48, i64 %idxprom69
  %51 = load i16, ptr %arrayidx70, align 2
  %conv71 = zext i16 %51 to i32
  %and72 = and i32 %conv71, 8192
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.else76, label %if.then74

if.then74:                                        ; preds = %if.else
  %52 = load ptr, ptr %zIn, align 8
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %52, i32 1
  store ptr %incdec.ptr75, ptr %zIn, align 8
  br label %if.end77

if.else76:                                        ; preds = %if.else
  br label %while.end79

if.end77:                                         ; preds = %if.then74
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %while.end65
  br label %while.cond43, !llvm.loop !9

while.end79:                                      ; preds = %if.else76, %while.cond43
  %53 = load ptr, ptr %zCur, align 8
  %54 = load ptr, ptr %zIn, align 8
  %cmp80 = icmp ult ptr %53, %54
  br i1 %cmp80, label %if.then82, label %if.end88

if.then82:                                        ; preds = %while.end79
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load ptr, ptr %zCur, align 8
  %57 = load ptr, ptr %zIn, align 8
  %58 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast83 = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast84 = ptrtoint ptr %58 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  %call87 = call i32 @ph7_result_string(ptr noundef %55, ptr noundef %56, i32 noundef %conv86)
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %while.end79
  br label %for.cond

for.end:                                          ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #2

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
