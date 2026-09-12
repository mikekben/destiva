; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden signext i8 @sqlite3CompareAffinity(ptr noundef %pExpr, i8 noundef signext %aff2) #0 {
entry:
  %retval = alloca i8, align 1
  %pExpr.addr = alloca ptr, align 8
  %aff2.addr = alloca i8, align 1
  %aff1 = alloca i8, align 1
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i8 %aff2, ptr %aff2.addr, align 1
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call signext i8 @sqlite3ExprAffinity(ptr noundef %0)
  store i8 %call, ptr %aff1, align 1
  %1 = load i8, ptr %aff1, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, 64
  br i1 %cmp, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr %aff2.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp sgt i32 %conv2, 64
  br i1 %cmp3, label %if.then, label %if.else12

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, ptr %aff1, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp sge i32 %conv5, 67
  br i1 %cmp6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i8, ptr %aff2.addr, align 1
  %conv8 = sext i8 %4 to i32
  %cmp9 = icmp sge i32 %conv8, 67
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %if.then
  store i8 67, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i8 65, ptr %retval, align 1
  br label %return

if.else12:                                        ; preds = %land.lhs.true, %entry
  %5 = load i8, ptr %aff1, align 1
  %conv13 = sext i8 %5 to i32
  %cmp14 = icmp sle i32 %conv13, 64
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else12
  %6 = load i8, ptr %aff2.addr, align 1
  %conv16 = sext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else12
  %7 = load i8, ptr %aff1, align 1
  %conv17 = sext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %conv17, %cond.false ]
  %or = or i32 %cond, 64
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, ptr %retval, align 1
  br label %return

return:                                           ; preds = %cond.end, %if.else, %if.then11
  %8 = load i8, ptr %retval, align 1
  ret i8 %8
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
