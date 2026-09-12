; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SubselectError(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCheckIN(ptr noundef %pParse, ptr noundef %pIn) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %nVector = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  %0 = load ptr, ptr %pIn.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pLeft, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %1)
  store i32 %call, ptr %nVector, align 4
  %2 = load ptr, ptr %pIn.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %nVector, align 4
  %5 = load ptr, ptr %pIn.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nExpr, align 8
  %cmp = icmp ne i32 %4, %8
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pIn.addr, align 8
  %x2 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x2, align 8
  %pEList3 = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEList3, align 8
  %nExpr4 = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nExpr4, align 8
  %14 = load i32, ptr %nVector, align 4
  call void @sqlite3SubselectError(ptr noundef %9, i32 noundef %13, i32 noundef %14)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.else:                                          ; preds = %entry
  %15 = load i32, ptr %nVector, align 4
  %cmp5 = icmp ne i32 %15, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pIn.addr, align 8
  %pLeft7 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pLeft7, align 8
  call void @sqlite3VectorErrorMsg(ptr noundef %16, ptr noundef %18)
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then6, %if.then1
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VectorErrorMsg(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
