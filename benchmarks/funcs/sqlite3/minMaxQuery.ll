; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.785 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.786 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @minMaxQuery(ptr noundef %db, ptr noundef %pFunc, ptr noundef %ppMinMax) #0 {
entry:
  %retval = alloca i8, align 1
  %db.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %ppMinMax.addr = alloca ptr, align 8
  %eRet = alloca i32, align 4
  %pEList = alloca ptr, align 8
  %zFunc = alloca ptr, align 8
  %pOrderBy = alloca ptr, align 8
  %sortFlags = alloca i8, align 1
  store ptr %db, ptr %db.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  store ptr %ppMinMax, ptr %ppMinMax.addr, align 8
  store i32 0, ptr %eRet, align 4
  %0 = load ptr, ptr %pFunc.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %x, align 8
  store ptr %1, ptr %pEList, align 8
  %2 = load ptr, ptr %pEList, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  %cmp1 = icmp ne i32 %4, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pFunc.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 16777216
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load i32, ptr %eRet, align 4
  %conv = trunc i32 %7 to i8
  store i8 %conv, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %pFunc.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %u, align 8
  store ptr %9, ptr %zFunc, align 8
  %10 = load ptr, ptr %zFunc, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %10, ptr noundef @.str.785)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %eRet, align 4
  store i8 2, ptr %sortFlags, align 1
  br label %if.end14

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %zFunc, align 8
  %call7 = call i32 @sqlite3StrICmp(ptr noundef %11, ptr noundef @.str.786)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  store i32 2, ptr %eRet, align 4
  store i8 1, ptr %sortFlags, align 1
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %12 = load i32, ptr %eRet, align 4
  %conv12 = trunc i32 %12 to i8
  store i8 %conv12, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %pEList, align 8
  %call15 = call ptr @sqlite3ExprListDup(ptr noundef %13, ptr noundef %14, i32 noundef 0)
  store ptr %call15, ptr %pOrderBy, align 8
  %15 = load ptr, ptr %ppMinMax.addr, align 8
  store ptr %call15, ptr %15, align 8
  %16 = load ptr, ptr %pOrderBy, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %17 = load i8, ptr %sortFlags, align 1
  %18 = load ptr, ptr %pOrderBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %sortFlags17 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 3
  store i8 %17, ptr %sortFlags17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %19 = load i32, ptr %eRet, align 4
  %conv19 = trunc i32 %19 to i8
  store i8 %conv19, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end18, %if.else11, %if.then
  %20 = load i8, ptr %retval, align 1
  ret i8 %20
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
