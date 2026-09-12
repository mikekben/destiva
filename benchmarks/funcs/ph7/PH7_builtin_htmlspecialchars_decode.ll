; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.159 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.160 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.170 = external hidden unnamed_addr constant [2 x i8], align 1
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
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_htmlspecialchars_decode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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
  %nJump = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 1, ptr %iFlags, align 4
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
  store i32 1, ptr %iFlags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end95, %if.end12
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
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx17, align 1
  %conv = sext i8 %18 to i32
  %cmp18 = icmp ne i32 %conv, 38
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %zCur, align 8
  %22 = load ptr, ptr %zIn, align 8
  %cmp20 = icmp ult ptr %21, %22
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %while.end
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %zCur, align 8
  %25 = load ptr, ptr %zIn, align 8
  %26 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  %call24 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %24, i32 noundef %conv23)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %while.end
  %27 = load ptr, ptr %zEnd, align 8
  %28 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast26 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast27 = ptrtoint ptr %28 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %conv29 = trunc i64 %sub.ptr.sub28 to i32
  store i32 %conv29, ptr %nLen, align 4
  store i32 1, ptr %nJump, align 4
  %29 = load i32, ptr %nLen, align 4
  %cmp30 = icmp sge i32 %29, 5
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end25
  %30 = load ptr, ptr %zIn, align 8
  %call32 = call i32 @SyStrnicmp(ptr noundef %30, ptr noundef @.str.971, i32 noundef 5)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call36 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef @.str.170, i32 noundef 1)
  store i32 5, ptr %nJump, align 4
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true, %if.end25
  %32 = load i32, ptr %nLen, align 4
  %cmp37 = icmp sge i32 %32, 4
  br i1 %cmp37, label %land.lhs.true39, label %if.else45

land.lhs.true39:                                  ; preds = %if.else
  %33 = load ptr, ptr %zIn, align 8
  %call40 = call i32 @SyStrnicmp(ptr noundef %33, ptr noundef @.str.972, i32 noundef 4)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %land.lhs.true39
  %34 = load ptr, ptr %pCtx.addr, align 8
  %call44 = call i32 @ph7_result_string(ptr noundef %34, ptr noundef @.str.159, i32 noundef 1)
  store i32 4, ptr %nJump, align 4
  br label %if.end94

if.else45:                                        ; preds = %land.lhs.true39, %if.else
  %35 = load i32, ptr %nLen, align 4
  %cmp46 = icmp sge i32 %35, 4
  br i1 %cmp46, label %land.lhs.true48, label %if.else54

land.lhs.true48:                                  ; preds = %if.else45
  %36 = load ptr, ptr %zIn, align 8
  %call49 = call i32 @SyStrnicmp(ptr noundef %36, ptr noundef @.str.973, i32 noundef 4)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %land.lhs.true48
  %37 = load ptr, ptr %pCtx.addr, align 8
  %call53 = call i32 @ph7_result_string(ptr noundef %37, ptr noundef @.str.160, i32 noundef 1)
  store i32 4, ptr %nJump, align 4
  br label %if.end93

if.else54:                                        ; preds = %land.lhs.true48, %if.else45
  %38 = load i32, ptr %nLen, align 4
  %cmp55 = icmp sge i32 %38, 6
  br i1 %cmp55, label %land.lhs.true57, label %if.else69

land.lhs.true57:                                  ; preds = %if.else54
  %39 = load ptr, ptr %zIn, align 8
  %call58 = call i32 @SyStrnicmp(ptr noundef %39, ptr noundef @.str.975, i32 noundef 6)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else69

if.then61:                                        ; preds = %land.lhs.true57
  %40 = load i32, ptr %iFlags, align 4
  %and = and i32 %40, 4
  %cmp62 = icmp eq i32 %and, 0
  br i1 %cmp62, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.then61
  %41 = load ptr, ptr %pCtx.addr, align 8
  %call65 = call i32 @ph7_result_string(ptr noundef %41, ptr noundef @.str.242, i32 noundef 1)
  br label %if.end68

if.else66:                                        ; preds = %if.then61
  %42 = load ptr, ptr %pCtx.addr, align 8
  %call67 = call i32 @ph7_result_string(ptr noundef %42, ptr noundef @.str.975, i32 noundef 6)
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  store i32 6, ptr %nJump, align 4
  br label %if.end92

if.else69:                                        ; preds = %land.lhs.true57, %if.else54
  %43 = load i32, ptr %nLen, align 4
  %cmp70 = icmp sge i32 %43, 6
  br i1 %cmp70, label %land.lhs.true72, label %if.else84

land.lhs.true72:                                  ; preds = %if.else69
  %44 = load ptr, ptr %zIn, align 8
  %call73 = call i32 @SyStrnicmp(ptr noundef %44, ptr noundef @.str.974, i32 noundef 6)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.else84

if.then76:                                        ; preds = %land.lhs.true72
  %45 = load i32, ptr %iFlags, align 4
  %and77 = and i32 %45, 2
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.then76
  %46 = load ptr, ptr %pCtx.addr, align 8
  %call80 = call i32 @ph7_result_string(ptr noundef %46, ptr noundef @.str.241, i32 noundef 1)
  br label %if.end83

if.else81:                                        ; preds = %if.then76
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call82 = call i32 @ph7_result_string(ptr noundef %47, ptr noundef @.str.974, i32 noundef 6)
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then79
  store i32 6, ptr %nJump, align 4
  br label %if.end91

if.else84:                                        ; preds = %land.lhs.true72, %if.else69
  %48 = load i32, ptr %nLen, align 4
  %cmp85 = icmp sge i32 %48, 1
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else84
  %49 = load ptr, ptr %pCtx.addr, align 8
  %call88 = call i32 @ph7_result_string(ptr noundef %49, ptr noundef @.str.170, i32 noundef 1)
  br label %if.end90

if.else89:                                        ; preds = %if.else84
  br label %for.end

if.end90:                                         ; preds = %if.then87
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end83
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end68
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then52
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then43
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then35
  %50 = load i32, ptr %nJump, align 4
  %51 = load ptr, ptr %zIn, align 8
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds i8, ptr %51, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else89, %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
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
