; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walkWindowList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalkSelectExpr(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pEList, align 8
  %call = call i32 @sqlite3WalkExprList(ptr noundef %0, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pWalker.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %pWhere, align 8
  %call1 = call i32 @sqlite3WalkExpr(ptr noundef %3, ptr noundef %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %pWalker.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %pGroupBy, align 8
  %call5 = call i32 @sqlite3WalkExprList(ptr noundef %6, ptr noundef %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 2, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %pWalker.addr, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 11
  %11 = load ptr, ptr %pHaving, align 8
  %call9 = call i32 @sqlite3WalkExpr(ptr noundef %9, ptr noundef %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %12 = load ptr, ptr %pWalker.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pOrderBy, align 8
  %call13 = call i32 @sqlite3WalkExprList(ptr noundef %12, ptr noundef %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 2, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %15 = load ptr, ptr %pWalker.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 15
  %17 = load ptr, ptr %pLimit, align 8
  %call17 = call i32 @sqlite3WalkExpr(ptr noundef %15, ptr noundef %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 2, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %18 = load ptr, ptr %pWalker.addr, align 8
  %pParse21 = getelementptr inbounds nuw %struct.Walker, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pParse21, align 8
  store ptr %19, ptr %pParse, align 8
  %20 = load ptr, ptr %pParse, align 8
  %tobool22 = icmp ne ptr %20, null
  br i1 %tobool22, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end20
  %21 = load ptr, ptr %pParse, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 51
  %22 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %pWalker.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 18
  %25 = load ptr, ptr %pWinDefn, align 8
  %call25 = call i32 @walkWindowList(ptr noundef %23, ptr noundef %25)
  store i32 %call25, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true, %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then24, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
