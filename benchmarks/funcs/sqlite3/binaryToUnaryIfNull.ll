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
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @binaryToUnaryIfNull(ptr noundef %pParse, ptr noundef %pY, ptr noundef %pA, i32 noundef %op) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pY.addr = alloca ptr, align 8
  %pA.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pY, ptr %pY.addr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pA.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pY.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %pY.addr, align 8
  %op4 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op4, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 117
  br i1 %cmp, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %6 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 51
  %7 = load i8, ptr %eParseMode, align 4
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp sge i32 %conv7, 2
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  %8 = load i32, ptr %op.addr, align 4
  %conv10 = trunc i32 %8 to i8
  %9 = load ptr, ptr %pA.addr, align 8
  %op11 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  store i8 %conv10, ptr %op11, align 8
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %pA.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pRight, align 8
  call void @sqlite3ExprDelete(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %pA.addr, align 8
  %pRight12 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 5
  store ptr null, ptr %pRight12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  ret void
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
