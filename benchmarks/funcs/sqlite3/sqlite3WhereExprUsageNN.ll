; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprListUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @exprSelectUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @sqlite3WhereExprUsageNN(ptr noundef %pMaskSet, ptr noundef %p) #0 {
entry:
  %retval = alloca i64, align 8
  %pMaskSet.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  store ptr %pMaskSet, ptr %pMaskSet.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 162
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pMaskSet.addr, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %iTable, align 4
  %call = call i64 @sqlite3WhereGetMask(ptr noundef %4, i32 noundef %6)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %p.addr, align 8
  %flags4 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags4, align 4
  %and5 = and i32 %8, 8404992
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %op10 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %op10, align 8
  %conv11 = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 174
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %11 = load ptr, ptr %pMaskSet.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %iTable14 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %iTable14, align 4
  %call15 = call i64 @sqlite3WhereGetMask(ptr noundef %11, i32 noundef %13)
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call15, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, ptr %mask, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then16, label %if.end19

if.then16:                                        ; preds = %cond.end
  %16 = load ptr, ptr %pMaskSet.addr, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %pLeft17 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pLeft17, align 8
  %call18 = call i64 @sqlite3WhereExprUsageNN(ptr noundef %16, ptr noundef %18)
  %19 = load i64, ptr %mask, align 8
  %or = or i64 %19, %call18
  store i64 %or, ptr %mask, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %cond.end
  %20 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pRight, align 8
  %tobool20 = icmp ne ptr %21, null
  br i1 %tobool20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end19
  %22 = load ptr, ptr %pMaskSet.addr, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %pRight22 = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %pRight22, align 8
  %call23 = call i64 @sqlite3WhereExprUsageNN(ptr noundef %22, ptr noundef %24)
  %25 = load i64, ptr %mask, align 8
  %or24 = or i64 %25, %call23
  store i64 %or24, ptr %mask, align 8
  br label %if.end48

if.else25:                                        ; preds = %if.end19
  %26 = load ptr, ptr %p.addr, align 8
  %flags26 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %flags26, align 4
  %and27 = and i32 %27, 2048
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.else25
  %28 = load ptr, ptr %p.addr, align 8
  %flags31 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %flags31, align 4
  %and32 = and i32 %29, 32
  %cmp33 = icmp ne i32 %and32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  %30 = load ptr, ptr %pMaskSet.addr, align 8
  %bVarSelect = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %30, i32 0, i32 0
  store i32 1, ptr %bVarSelect, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then30
  %31 = load ptr, ptr %pMaskSet.addr, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %x, align 8
  %call37 = call i64 @exprSelectUsage(ptr noundef %31, ptr noundef %33)
  %34 = load i64, ptr %mask, align 8
  %or38 = or i64 %34, %call37
  store i64 %or38, ptr %mask, align 8
  br label %if.end47

if.else39:                                        ; preds = %if.else25
  %35 = load ptr, ptr %p.addr, align 8
  %x40 = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %x40, align 8
  %tobool41 = icmp ne ptr %36, null
  br i1 %tobool41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.else39
  %37 = load ptr, ptr %pMaskSet.addr, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %x43 = getelementptr inbounds nuw %struct.Expr, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %x43, align 8
  %call44 = call i64 @sqlite3WhereExprListUsage(ptr noundef %37, ptr noundef %39)
  %40 = load i64, ptr %mask, align 8
  %or45 = or i64 %40, %call44
  store i64 %or45, ptr %mask, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.else39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end36
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then21
  %41 = load ptr, ptr %p.addr, align 8
  %op49 = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 0
  %42 = load i8, ptr %op49, align 8
  %conv50 = zext i8 %42 to i32
  %cmp51 = icmp eq i32 %conv50, 167
  br i1 %cmp51, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %if.end48
  %43 = load ptr, ptr %p.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 14
  %44 = load ptr, ptr %y, align 8
  %tobool54 = icmp ne ptr %44, null
  br i1 %tobool54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %land.lhs.true53
  %45 = load ptr, ptr %pMaskSet.addr, align 8
  %46 = load ptr, ptr %p.addr, align 8
  %y56 = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 14
  %47 = load ptr, ptr %y56, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %pPartition, align 8
  %call57 = call i64 @sqlite3WhereExprListUsage(ptr noundef %45, ptr noundef %48)
  %49 = load i64, ptr %mask, align 8
  %or58 = or i64 %49, %call57
  store i64 %or58, ptr %mask, align 8
  %50 = load ptr, ptr %pMaskSet.addr, align 8
  %51 = load ptr, ptr %p.addr, align 8
  %y59 = getelementptr inbounds nuw %struct.Expr, ptr %51, i32 0, i32 14
  %52 = load ptr, ptr %y59, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %pOrderBy, align 8
  %call60 = call i64 @sqlite3WhereExprListUsage(ptr noundef %50, ptr noundef %53)
  %54 = load i64, ptr %mask, align 8
  %or61 = or i64 %54, %call60
  store i64 %or61, ptr %mask, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %land.lhs.true53, %if.end48
  %55 = load i64, ptr %mask, align 8
  store i64 %55, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end62, %if.then8, %if.then
  %56 = load i64, ptr %retval, align 8
  ret i64 %56
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereGetMask(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
