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

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MemCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ValueFromExpr(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprCompareVariable(ptr noundef %pParse, ptr noundef %pVar, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pVar.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %iVar = alloca i32, align 4
  %pL = alloca ptr, align 8
  %pR = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pVar, ptr %pVar.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %res, align 4
  store ptr null, ptr %pR, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ValueFromExpr(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 65, ptr noundef %pR)
  %3 = load ptr, ptr %pR, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pVar.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %iColumn, align 8
  %conv = sext i16 %5 to i32
  store i32 %conv, ptr %iVar, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pVdbe, align 8
  %8 = load i32, ptr %iVar, align 4
  call void @sqlite3VdbeSetVarmask(ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %pParse.addr, align 8
  %pReprepare = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 56
  %10 = load ptr, ptr %pReprepare, align 8
  %11 = load i32, ptr %iVar, align 4
  %call1 = call ptr @sqlite3VdbeGetBoundValue(ptr noundef %10, i32 noundef %11, i8 noundef zeroext 65)
  store ptr %call1, ptr %pL, align 8
  %12 = load ptr, ptr %pL, align 8
  %tobool2 = icmp ne ptr %12, null
  br i1 %tobool2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %if.then
  %13 = load ptr, ptr %pL, align 8
  %call4 = call i32 @sqlite3_value_type(ptr noundef %13)
  %cmp = icmp eq i32 %call4, 3
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %14 = load ptr, ptr %pL, align 8
  %call7 = call ptr @sqlite3_value_text(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then3
  %15 = load ptr, ptr %pL, align 8
  %16 = load ptr, ptr %pR, align 8
  %call8 = call i32 @sqlite3MemCompare(ptr noundef %15, ptr noundef %16, ptr noundef null)
  %cmp9 = icmp eq i32 0, %call8
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, ptr %res, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %17 = load ptr, ptr %pR, align 8
  call void @sqlite3ValueFree(ptr noundef %17)
  %18 = load ptr, ptr %pL, align 8
  call void @sqlite3ValueFree(ptr noundef %18)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %19 = load i32, ptr %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetVarmask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetBoundValue(ptr noundef, i32 noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
