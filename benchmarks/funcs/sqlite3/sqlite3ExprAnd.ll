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

@.str.558 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprAnd(ptr noundef %pParse, ptr noundef %pLeft, ptr noundef %pRight) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pLeft.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pRight.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pRight.addr, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %pLeft.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %6 = load ptr, ptr %pLeft.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 536870913
  %cmp5 = icmp eq i32 %and, 536870912
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else4
  %8 = load ptr, ptr %pRight.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %flags6, align 4
  %and7 = and i32 %9, 536870913
  %cmp8 = icmp eq i32 %and7, 536870912
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false, %if.else4
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pLeft.addr, align 8
  call void @sqlite3ExprUnmapAndDelete(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pRight.addr, align 8
  call void @sqlite3ExprUnmapAndDelete(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3Expr(ptr noundef %14, i32 noundef 150, ptr noundef @.str.558)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else10:                                        ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pLeft.addr, align 8
  %17 = load ptr, ptr %pRight.addr, align 8
  %call11 = call ptr @sqlite3PExpr(ptr noundef %15, i32 noundef 44, ptr noundef %16, ptr noundef %17)
  store ptr %call11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else10, %if.then9, %if.then3, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprUnmapAndDelete(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
