; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.241 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.242 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.971 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.972 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.973 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.974 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.975 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_htmlspecialchars(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %nLen = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 65, ptr %iFlags, align 4
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
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %10)
  store i32 %call8, ptr %iFlags, align 4
  %11 = load i32, ptr %iFlags, align 4
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  store i32 65, ptr %iFlags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end90, %if.end12
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp uge ptr %12, %13
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.cond
  br label %for.end

if.end15:                                         ; preds = %for.cond
  %14 = load ptr, ptr %zIn, align 8
  store ptr %14, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp16 = icmp ult ptr %15, %16
  br i1 %cmp16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx17, align 1
  %conv = sext i8 %18 to i32
  %cmp18 = icmp ne i32 %conv, 38
  br i1 %cmp18, label %land.lhs.true20, label %land.end

land.lhs.true20:                                  ; preds = %land.lhs.true
  %19 = load ptr, ptr %zIn, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp ne i32 %conv22, 39
  br i1 %cmp23, label %land.lhs.true25, label %land.end

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %21 = load ptr, ptr %zIn, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %cmp28 = icmp ne i32 %conv27, 34
  br i1 %cmp28, label %land.lhs.true30, label %land.end

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %23 = load ptr, ptr %zIn, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %24 to i32
  %cmp33 = icmp ne i32 %conv32, 60
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true30
  %25 = load ptr, ptr %zIn, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %cmp37 = icmp ne i32 %conv36, 62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true30, %land.lhs.true25, %land.lhs.true20, %land.lhs.true, %while.cond
  %27 = phi i1 [ false, %land.lhs.true30 ], [ false, %land.lhs.true25 ], [ false, %land.lhs.true20 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %29 = load ptr, ptr %zCur, align 8
  %30 = load ptr, ptr %zIn, align 8
  %cmp39 = icmp ult ptr %29, %30
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %while.end
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load ptr, ptr %zCur, align 8
  %33 = load ptr, ptr %zIn, align 8
  %34 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv42 = trunc i64 %sub.ptr.sub to i32
  %call43 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef %32, i32 noundef %conv42)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %while.end
  %35 = load ptr, ptr %zIn, align 8
  %36 = load ptr, ptr %zEnd, align 8
  %cmp45 = icmp uge ptr %35, %36
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  br label %for.end

if.end48:                                         ; preds = %if.end44
  %37 = load ptr, ptr %zIn, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %38 to i32
  store i32 %conv50, ptr %c, align 4
  %39 = load i32, ptr %c, align 4
  %cmp51 = icmp eq i32 %39, 38
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end48
  %40 = load ptr, ptr %pCtx.addr, align 8
  %call54 = call i32 @ph7_result_string(ptr noundef %40, ptr noundef @.str.971, i32 noundef 5)
  br label %if.end90

if.else:                                          ; preds = %if.end48
  %41 = load i32, ptr %c, align 4
  %cmp55 = icmp eq i32 %41, 60
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.else
  %42 = load ptr, ptr %pCtx.addr, align 8
  %call58 = call i32 @ph7_result_string(ptr noundef %42, ptr noundef @.str.972, i32 noundef 4)
  br label %if.end89

if.else59:                                        ; preds = %if.else
  %43 = load i32, ptr %c, align 4
  %cmp60 = icmp eq i32 %43, 62
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.else59
  %44 = load ptr, ptr %pCtx.addr, align 8
  %call63 = call i32 @ph7_result_string(ptr noundef %44, ptr noundef @.str.973, i32 noundef 4)
  br label %if.end88

if.else64:                                        ; preds = %if.else59
  %45 = load i32, ptr %c, align 4
  %cmp65 = icmp eq i32 %45, 39
  br i1 %cmp65, label %if.then67, label %if.else74

if.then67:                                        ; preds = %if.else64
  %46 = load i32, ptr %iFlags, align 4
  %and = and i32 %46, 2
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.then67
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call70 = call i32 @ph7_result_string(ptr noundef %47, ptr noundef @.str.974, i32 noundef 6)
  br label %if.end73

if.else71:                                        ; preds = %if.then67
  %48 = load ptr, ptr %pCtx.addr, align 8
  %call72 = call i32 @ph7_result_string(ptr noundef %48, ptr noundef @.str.241, i32 noundef 1)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  br label %if.end87

if.else74:                                        ; preds = %if.else64
  %49 = load i32, ptr %c, align 4
  %cmp75 = icmp eq i32 %49, 34
  br i1 %cmp75, label %if.then77, label %if.end86

if.then77:                                        ; preds = %if.else74
  %50 = load i32, ptr %iFlags, align 4
  %and78 = and i32 %50, 4
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.then77
  %51 = load ptr, ptr %pCtx.addr, align 8
  %call82 = call i32 @ph7_result_string(ptr noundef %51, ptr noundef @.str.975, i32 noundef 6)
  br label %if.end85

if.else83:                                        ; preds = %if.then77
  %52 = load ptr, ptr %pCtx.addr, align 8
  %call84 = call i32 @ph7_result_string(ptr noundef %52, ptr noundef @.str.242, i32 noundef 1)
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then81
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.else74
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end73
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then62
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then57
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then53
  %53 = load ptr, ptr %zIn, align 8
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr91, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then47, %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
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
