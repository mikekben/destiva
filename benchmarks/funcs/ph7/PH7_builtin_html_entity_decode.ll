; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.170 = external hidden unnamed_addr constant [2 x i8], align 1
@azHtmlEscape = external hidden global [40 x ptr], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

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
define hidden i32 @PH7_builtin_html_entity_decode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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
  %n = alloca i32, align 4
  %iLen = alloca i32, align 4
  %c = alloca i32, align 4
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

for.cond:                                         ; preds = %if.end90, %if.end12
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp uge ptr %12, %13
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.cond
  br label %for.end91

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
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp26 = icmp uge ptr %27, %28
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %for.end91

if.end29:                                         ; preds = %if.end25
  %29 = load ptr, ptr %zEnd, align 8
  %30 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast30 = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast31 = ptrtoint ptr %30 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i64 %sub.ptr.sub32 to i32
  store i32 %conv33, ptr %nLen, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %if.end29
  %31 = load i32, ptr %n, align 4
  %conv35 = zext i32 %31 to i64
  %cmp36 = icmp ult i64 %conv35, 40
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond34
  %32 = load i32, ptr %n, align 4
  %idxprom38 = zext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom38
  %33 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i32 @SyStrlen(ptr noundef %33)
  store i32 %call40, ptr %iLen, align 4
  %34 = load i32, ptr %nLen, align 4
  %35 = load i32, ptr %iLen, align 4
  %cmp41 = icmp sge i32 %34, %35
  br i1 %cmp41, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %for.body
  %36 = load ptr, ptr %zIn, align 8
  %37 = load i32, ptr %n, align 4
  %idxprom43 = zext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom43
  %38 = load ptr, ptr %arrayidx44, align 8
  %39 = load i32, ptr %iLen, align 4
  %call45 = call i32 @SyStrnicmp(ptr noundef %36, ptr noundef %38, i32 noundef %39)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  %40 = load i32, ptr %iLen, align 4
  %41 = load ptr, ptr %zIn, align 8
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  br label %for.end

if.end49:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %42 = load i32, ptr %n, align 4
  %add = add i32 %42, 2
  store i32 %add, ptr %n, align 4
  br label %for.cond34, !llvm.loop !8

for.end:                                          ; preds = %if.then48, %for.cond34
  %43 = load i32, ptr %n, align 4
  %conv50 = zext i32 %43 to i64
  %cmp51 = icmp ult i64 %conv50, 40
  br i1 %cmp51, label %if.then53, label %if.else87

if.then53:                                        ; preds = %for.end
  %44 = load i32, ptr %n, align 4
  %add54 = add i32 %44, 1
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom55
  %45 = load ptr, ptr %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %46 to i32
  store i32 %conv58, ptr %c, align 4
  %47 = load i32, ptr %c, align 4
  %cmp59 = icmp eq i32 %47, 39
  br i1 %cmp59, label %land.lhs.true61, label %if.else

land.lhs.true61:                                  ; preds = %if.then53
  %48 = load i32, ptr %iFlags, align 4
  %and = and i32 %48, 2
  %cmp62 = icmp eq i32 %and, 0
  br i1 %cmp62, label %if.then67, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true61
  %49 = load i32, ptr %iFlags, align 4
  %and65 = and i32 %49, 4
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.else

if.then67:                                        ; preds = %lor.lhs.false64, %land.lhs.true61
  %50 = load ptr, ptr %pCtx.addr, align 8
  %51 = load i32, ptr %n, align 4
  %idxprom68 = zext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom68
  %52 = load ptr, ptr %arrayidx69, align 8
  %call70 = call i32 @ph7_result_string(ptr noundef %50, ptr noundef %52, i32 noundef -1)
  br label %if.end86

if.else:                                          ; preds = %lor.lhs.false64, %if.then53
  %53 = load i32, ptr %c, align 4
  %cmp71 = icmp eq i32 %53, 34
  br i1 %cmp71, label %land.lhs.true73, label %if.else80

land.lhs.true73:                                  ; preds = %if.else
  %54 = load i32, ptr %iFlags, align 4
  %and74 = and i32 %54, 4
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.else80

if.then76:                                        ; preds = %land.lhs.true73
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load i32, ptr %n, align 4
  %idxprom77 = zext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom77
  %57 = load ptr, ptr %arrayidx78, align 8
  %call79 = call i32 @ph7_result_string(ptr noundef %55, ptr noundef %57, i32 noundef -1)
  br label %if.end85

if.else80:                                        ; preds = %land.lhs.true73, %if.else
  %58 = load ptr, ptr %pCtx.addr, align 8
  %59 = load i32, ptr %n, align 4
  %add81 = add i32 %59, 1
  %idxprom82 = zext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom82
  %60 = load ptr, ptr %arrayidx83, align 8
  %call84 = call i32 @ph7_result_string(ptr noundef %58, ptr noundef %60, i32 noundef -1)
  br label %if.end85

if.end85:                                         ; preds = %if.else80, %if.then76
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then67
  br label %if.end90

if.else87:                                        ; preds = %for.end
  %61 = load ptr, ptr %pCtx.addr, align 8
  %call88 = call i32 @ph7_result_string(ptr noundef %61, ptr noundef @.str.170, i32 noundef 1)
  %62 = load ptr, ptr %zIn, align 8
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr89, ptr %zIn, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.end86
  br label %for.cond

for.end91:                                        ; preds = %if.then28, %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end91, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
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
!8 = distinct !{!8, !7}
