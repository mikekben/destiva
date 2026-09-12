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
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IsLikeFunction(ptr noundef %db, ptr noundef %pExpr, ptr noundef %pIsNocase, ptr noundef %aWc) #1 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pIsNocase.addr = alloca ptr, align 8
  %aWc.addr = alloca ptr, align 8
  %pDef = alloca ptr, align 8
  %nExpr = alloca i32, align 4
  %pEscape = alloca ptr, align 8
  %zEscape = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pIsNocase, ptr %pIsNocase.addr, align 8
  store ptr %aWc, ptr %aWc.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 167
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %x, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pExpr.addr, align 8
  %x2 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %x2, align 8
  %nExpr3 = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr3, align 8
  store i32 %6, ptr %nExpr, align 4
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %u, align 8
  %10 = load i32, ptr %nExpr, align 4
  %call = call ptr @sqlite3FindFunction(ptr noundef %7, ptr noundef %9, i32 noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 0)
  store ptr %call, ptr %pDef, align 8
  %11 = load ptr, ptr %pDef, align 8
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %12 = load ptr, ptr %pDef, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %funcFlags, align 4
  %and = and i32 %13, 4
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false6
  %14 = load i32, ptr %nExpr, align 4
  %cmp11 = icmp slt i32 %14, 3
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %15 = load ptr, ptr %aWc.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 3
  store i8 0, ptr %arrayidx, align 1
  br label %if.end37

if.else:                                          ; preds = %if.end10
  %16 = load ptr, ptr %pExpr.addr, align 8
  %x14 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %x14, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 2
  %pExpr16 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx15, i32 0, i32 0
  %18 = load ptr, ptr %pExpr16, align 8
  store ptr %18, ptr %pEscape, align 8
  %19 = load ptr, ptr %pEscape, align 8
  %op17 = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 0
  %20 = load i8, ptr %op17, align 8
  %conv18 = zext i8 %20 to i32
  %cmp19 = icmp ne i32 %conv18, 113
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.else
  %21 = load ptr, ptr %pEscape, align 8
  %u23 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %u23, align 8
  store ptr %22, ptr %zEscape, align 8
  %23 = load ptr, ptr %zEscape, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then33, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end22
  %25 = load ptr, ptr %zEscape, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %26 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false28, %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false28
  %27 = load ptr, ptr %zEscape, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx35, align 1
  %29 = load ptr, ptr %aWc.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %28, ptr %arrayidx36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.then13
  %30 = load ptr, ptr %aWc.addr, align 8
  %31 = load ptr, ptr %pDef, align 8
  %pUserData = getelementptr inbounds nuw %struct.FuncDef, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pUserData, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %32, i64 3, i1 false)
  %33 = load ptr, ptr %pDef, align 8
  %funcFlags38 = getelementptr inbounds nuw %struct.FuncDef, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %funcFlags38, align 4
  %and39 = and i32 %34, 8
  %cmp40 = icmp eq i32 %and39, 0
  %conv41 = zext i1 %cmp40 to i32
  %35 = load ptr, ptr %pIsNocase.addr, align 8
  store i32 %conv41, ptr %35, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then33, %if.then21, %if.then9, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
