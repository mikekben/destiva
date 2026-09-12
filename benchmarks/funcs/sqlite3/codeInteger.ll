; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.293 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.569 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.570 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DecOrHexToI64(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeInteger(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %negFlag, i32 noundef %iMem) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %negFlag.addr = alloca i32, align 4
  %iMem.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %value = alloca i64, align 8
  %z = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %negFlag, ptr %negFlag.addr, align 4
  store i32 %iMem, ptr %iMem.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %u, align 8
  store i32 %5, ptr %i, align 4
  %6 = load i32, ptr %negFlag.addr, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %7
  store i32 %sub, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %8 = load ptr, ptr %v, align 8
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %iMem.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %8, i32 noundef 70, i32 noundef %9, i32 noundef %10)
  br label %if.end27

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pExpr.addr, align 8
  %u3 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %u3, align 8
  store ptr %12, ptr %z, align 8
  %13 = load ptr, ptr %z, align 8
  %call4 = call i32 @sqlite3DecOrHexToI64(ptr noundef %13, ptr noundef %value)
  store i32 %call4, ptr %c, align 4
  %14 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %14, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %15 = load i32, ptr %negFlag.addr, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %16 = load i32, ptr %c, align 4
  %cmp6 = icmp eq i32 %16, 2
  br i1 %cmp6, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %17 = load i32, ptr %negFlag.addr, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.else18

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  %18 = load i64, ptr %value, align 8
  %cmp10 = icmp eq i64 %18, -9223372036854775808
  br i1 %cmp10, label %if.then11, label %if.else18

if.then11:                                        ; preds = %land.lhs.true9, %lor.lhs.false, %land.lhs.true
  %19 = load ptr, ptr %z, align 8
  %call12 = call i32 @sqlite3_strnicmp(ptr noundef %19, ptr noundef @.str.569, i32 noundef 2)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then11
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load i32, ptr %negFlag.addr, align 4
  %tobool15 = icmp ne i32 %21, 0
  %22 = zext i1 %tobool15 to i64
  %cond = select i1 %tobool15, ptr @.str.293, ptr @.str.3
  %23 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %20, ptr noundef @.str.570, ptr noundef %cond, ptr noundef %23)
  br label %if.end17

if.else16:                                        ; preds = %if.then11
  %24 = load ptr, ptr %v, align 8
  %25 = load ptr, ptr %z, align 8
  %26 = load i32, ptr %negFlag.addr, align 4
  %27 = load i32, ptr %iMem.addr, align 4
  call void @codeReal(ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27)
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  br label %if.end26

if.else18:                                        ; preds = %land.lhs.true9, %lor.lhs.false7
  %28 = load i32, ptr %negFlag.addr, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.else18
  %29 = load i32, ptr %c, align 4
  %cmp21 = icmp eq i32 %29, 3
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  %30 = load i64, ptr %value, align 8
  %sub22 = sub nsw i64 0, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i64 [ -9223372036854775808, %cond.true ], [ %sub22, %cond.false ]
  store i64 %cond23, ptr %value, align 8
  br label %if.end24

if.end24:                                         ; preds = %cond.end, %if.else18
  %31 = load ptr, ptr %v, align 8
  %32 = load i32, ptr %iMem.addr, align 4
  %call25 = call i32 @sqlite3VdbeAddOp4Dup8(ptr noundef %31, i32 noundef 71, i32 noundef 0, i32 noundef %32, i32 noundef 0, ptr noundef %value, i32 noundef -14)
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @codeReal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Dup8(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
