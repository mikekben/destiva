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
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprForVectorField(ptr noundef %pParse, ptr noundef %pVector, i32 noundef %iField) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pVector.addr = alloca ptr, align 8
  %iField.addr = alloca i32, align 4
  %pRet = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pVector, ptr %pVector.addr, align 8
  store i32 %iField, ptr %iField.addr, align 4
  %0 = load ptr, ptr %pVector.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 134
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3PExpr(ptr noundef %2, i32 noundef 173, ptr noundef null, ptr noundef null)
  store ptr %call, ptr %pRet, align 8
  %3 = load ptr, ptr %pRet, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %iField.addr, align 4
  %conv3 = trunc i32 %4 to i16
  %5 = load ptr, ptr %pRet, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 9
  store i16 %conv3, ptr %iColumn, align 8
  %6 = load ptr, ptr %pVector.addr, align 8
  %7 = load ptr, ptr %pRet, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 4
  store ptr %6, ptr %pLeft, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end11

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pVector.addr, align 8
  %op4 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 0
  %9 = load i8, ptr %op4, align 8
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 172
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  %10 = load ptr, ptr %pVector.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %iField.addr, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %13 = load ptr, ptr %pExpr, align 8
  store ptr %13, ptr %pVector.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else
  %14 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %pVector.addr, align 8
  %call10 = call ptr @sqlite3ExprDup(ptr noundef %15, ptr noundef %16, i32 noundef 0)
  store ptr %call10, ptr %pRet, align 8
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pRet, align 8
  %19 = load ptr, ptr %pVector.addr, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %17, ptr noundef %18, ptr noundef %19)
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end
  %20 = load ptr, ptr %pRet, align 8
  ret ptr %20
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
