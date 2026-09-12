; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

@aOpTable = external hidden constant [62 x { { ptr, i32, [4 x i8] }, i32, i32, i32, i32 }], align 16

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_ExprExtractOperator(ptr noundef %pStr, ptr noundef %pLast) #1 {
entry:
  %retval = alloca ptr, align 8
  %pStr.addr = alloca ptr, align 8
  %pLast.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %rc = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %pStr, ptr %pStr.addr, align 8
  store ptr %pLast, ptr %pLast.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end105, %entry
  %0 = load i32, ptr %n, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp uge i64 %conv, 62
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %call = call ptr @__ctype_b_loc() #2
  %1 = load ptr, ptr %call, align 8
  %2 = load i32, ptr %n, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom
  %sOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sOp, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 16
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %1, i64 %idxprom4
  %5 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %5 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %pStr.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom8 = zext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom8
  %sOp10 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx9, i32 0, i32 0
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sOp10, i32 0, i32 1
  %9 = load i32, ptr %nByte11, align 8
  %cmp12 = icmp eq i32 %7, %9
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  %10 = load ptr, ptr %pStr.addr, align 8
  %zString14 = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString14, align 8
  %12 = load i32, ptr %n, align 4
  %idxprom15 = zext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom15
  %sOp17 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx16, i32 0, i32 0
  %zString18 = getelementptr inbounds nuw %struct.SyString, ptr %sOp17, i32 0, i32 0
  %13 = load ptr, ptr %zString18, align 16
  %14 = load i32, ptr %n, align 4
  %idxprom19 = zext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom19
  %sOp21 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx20, i32 0, i32 0
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %sOp21, i32 0, i32 1
  %15 = load i32, ptr %nByte22, align 8
  %call23 = call i32 @SyStrnicmp(ptr noundef %11, ptr noundef %13, i32 noundef %15)
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  %16 = load ptr, ptr %pStr.addr, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nByte24, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom25 = zext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom25
  %sOp27 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx26, i32 0, i32 0
  %nByte28 = getelementptr inbounds nuw %struct.SyString, ptr %sOp27, i32 0, i32 1
  %19 = load i32, ptr %nByte28, align 8
  %sub = sub i32 %17, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call23, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  br label %if.end56

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %pStr.addr, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nByte29, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom30 = zext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom30
  %sOp32 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx31, i32 0, i32 0
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %sOp32, i32 0, i32 1
  %23 = load i32, ptr %nByte33, align 8
  %cmp34 = icmp eq i32 %21, %23
  br i1 %cmp34, label %cond.true36, label %cond.false47

cond.true36:                                      ; preds = %if.else
  %24 = load ptr, ptr %pStr.addr, align 8
  %zString37 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString37, align 8
  %26 = load i32, ptr %n, align 4
  %idxprom38 = zext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom38
  %sOp40 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx39, i32 0, i32 0
  %zString41 = getelementptr inbounds nuw %struct.SyString, ptr %sOp40, i32 0, i32 0
  %27 = load ptr, ptr %zString41, align 16
  %28 = load i32, ptr %n, align 4
  %idxprom42 = zext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom42
  %sOp44 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx43, i32 0, i32 0
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %sOp44, i32 0, i32 1
  %29 = load i32, ptr %nByte45, align 8
  %call46 = call i32 @SyMemcmp(ptr noundef %25, ptr noundef %27, i32 noundef %29)
  br label %cond.end54

cond.false47:                                     ; preds = %if.else
  %30 = load ptr, ptr %pStr.addr, align 8
  %nByte48 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nByte48, align 8
  %32 = load i32, ptr %n, align 4
  %idxprom49 = zext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom49
  %sOp51 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx50, i32 0, i32 0
  %nByte52 = getelementptr inbounds nuw %struct.SyString, ptr %sOp51, i32 0, i32 1
  %33 = load i32, ptr %nByte52, align 8
  %sub53 = sub i32 %31, %33
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %sub53, %cond.false47 ]
  store i32 %cond55, ptr %rc, align 4
  br label %if.end56

if.end56:                                         ; preds = %cond.end54, %cond.end
  %34 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %34, 0
  br i1 %cmp57, label %if.then59, label %if.end105

if.then59:                                        ; preds = %if.end56
  %35 = load i32, ptr %n, align 4
  %idxprom60 = zext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom60
  %sOp62 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx61, i32 0, i32 0
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %sOp62, i32 0, i32 1
  %36 = load i32, ptr %nByte63, align 8
  %conv64 = zext i32 %36 to i64
  %cmp65 = icmp ne i64 %conv64, 1
  br i1 %cmp65, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then59
  %37 = load i32, ptr %n, align 4
  %idxprom67 = zext i32 %37 to i64
  %arrayidx68 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom67
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx68, i32 0, i32 1
  %38 = load i32, ptr %iOp, align 16
  %cmp69 = icmp ne i32 %38, 10
  br i1 %cmp69, label %land.lhs.true, label %lor.lhs.false76

land.lhs.true:                                    ; preds = %lor.lhs.false
  %39 = load i32, ptr %n, align 4
  %idxprom71 = zext i32 %39 to i64
  %arrayidx72 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom71
  %iOp73 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %arrayidx72, i32 0, i32 1
  %40 = load i32, ptr %iOp73, align 16
  %cmp74 = icmp ne i32 %40, 11
  br i1 %cmp74, label %if.then79, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %41 = load ptr, ptr %pLast.addr, align 8
  %cmp77 = icmp eq ptr %41, null
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %lor.lhs.false76, %land.lhs.true, %if.then59
  %42 = load i32, ptr %n, align 4
  %idxprom80 = zext i32 %42 to i64
  %arrayidx81 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom80
  store ptr %arrayidx81, ptr %retval, align 8
  br label %return

if.end82:                                         ; preds = %lor.lhs.false76
  %43 = load ptr, ptr %pLast.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %nType, align 8
  %and83 = and i32 %44, 1182272
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end82
  %45 = load i32, ptr %n, align 4
  %idxprom86 = zext i32 %45 to i64
  %arrayidx87 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom86
  store ptr %arrayidx87, ptr %retval, align 8
  br label %return

if.end88:                                         ; preds = %if.end82
  %46 = load ptr, ptr %pLast.addr, align 8
  %nType89 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %nType89, align 8
  %and90 = and i32 %47, 32
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end104

if.then92:                                        ; preds = %if.end88
  %48 = load ptr, ptr %pLast.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %pUserData, align 8
  store ptr %49, ptr %pOp, align 8
  %50 = load ptr, ptr %pOp, align 8
  %iOp93 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %iOp93, align 8
  %cmp94 = icmp ne i32 %51, 7
  br i1 %cmp94, label %land.lhs.true96, label %if.end103

land.lhs.true96:                                  ; preds = %if.then92
  %52 = load ptr, ptr %pOp, align 8
  %iOp97 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %iOp97, align 8
  %cmp98 = icmp ne i32 %53, 8
  br i1 %cmp98, label %if.then100, label %if.end103

if.then100:                                       ; preds = %land.lhs.true96
  %54 = load i32, ptr %n, align 4
  %idxprom101 = zext i32 %54 to i64
  %arrayidx102 = getelementptr inbounds nuw [62 x %struct.ph7_expr_op], ptr @aOpTable, i64 0, i64 %idxprom101
  store ptr %arrayidx102, ptr %retval, align 8
  br label %return

if.end103:                                        ; preds = %land.lhs.true96, %if.then92
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end88
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end56
  %55 = load i32, ptr %n, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then100, %if.then85, %if.then79
  %56 = load ptr, ptr %retval, align 8
  ret ptr %56
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
