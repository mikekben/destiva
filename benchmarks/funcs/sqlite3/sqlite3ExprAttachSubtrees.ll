; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprAttachSubtrees(ptr noundef %db, ptr noundef %pRoot, ptr noundef %pLeft, ptr noundef %pRight) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pRoot.addr = alloca ptr, align 8
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  %0 = load ptr, ptr %pRoot.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %pLeft.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %pRight.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %3, ptr noundef %4)
  br label %if.end12

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pRight.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  %6 = load ptr, ptr %pRight.addr, align 8
  %7 = load ptr, ptr %pRoot.addr, align 8
  %pRight2 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 5
  store ptr %6, ptr %pRight2, align 8
  %8 = load ptr, ptr %pRight.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %flags, align 4
  %and = and i32 2097412, %9
  %10 = load ptr, ptr %pRoot.addr, align 8
  %flags3 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %flags3, align 4
  %or = or i32 %11, %and
  store i32 %or, ptr %flags3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  %12 = load ptr, ptr %pLeft.addr, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %pLeft.addr, align 8
  %14 = load ptr, ptr %pRoot.addr, align 8
  %pLeft6 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 4
  store ptr %13, ptr %pLeft6, align 8
  %15 = load ptr, ptr %pLeft.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %flags7, align 4
  %and8 = and i32 2097412, %16
  %17 = load ptr, ptr %pRoot.addr, align 8
  %flags9 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %flags9, align 4
  %or10 = or i32 %18, %and8
  store i32 %or10, ptr %flags9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  %19 = load ptr, ptr %pRoot.addr, align 8
  call void @exprSetHeight(ptr noundef %19)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @exprSetHeight(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
