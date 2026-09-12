; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameExprUnmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WindowOffsetExpr(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprIsConstant(ptr noundef %0)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 51
  %2 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %2 to i32
  %cmp1 = icmp sge i32 %conv, 2
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %pParse.addr, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3RenameExprUnmap(ptr noundef %3, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %5 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %pParse.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db4, align 8
  %call5 = call ptr @sqlite3ExprAlloc(ptr noundef %9, i32 noundef 117, ptr noundef null, i32 noundef 0)
  store ptr %call5, ptr %pExpr.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %pExpr.addr, align 8
  ret ptr %10
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
