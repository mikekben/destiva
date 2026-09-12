; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef %pParse, ptr noundef %pLeft, ptr noundef %pRight) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  %0 = load ptr, ptr %pLeft.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pLeft.addr, align 8
  %call = call ptr @sqlite3ExprCollSeq(ptr noundef %2, ptr noundef %3)
  store ptr %call, ptr %pColl, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pRight.addr, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.else
  %5 = load ptr, ptr %pRight.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %flags2, align 4
  %and3 = and i32 %6, 256
  %cmp = icmp ne i32 %and3, 0
  br i1 %cmp, label %if.then4, label %if.else6

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pRight.addr, align 8
  %call5 = call ptr @sqlite3ExprCollSeq(ptr noundef %7, ptr noundef %8)
  store ptr %call5, ptr %pColl, align 8
  br label %if.end11

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pLeft.addr, align 8
  %call7 = call ptr @sqlite3ExprCollSeq(ptr noundef %9, ptr noundef %10)
  store ptr %call7, ptr %pColl, align 8
  %11 = load ptr, ptr %pColl, align 8
  %tobool8 = icmp ne ptr %11, null
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.else6
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pRight.addr, align 8
  %call10 = call ptr @sqlite3ExprCollSeq(ptr noundef %12, ptr noundef %13)
  store ptr %call10, ptr %pColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %14 = load ptr, ptr %pColl, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
