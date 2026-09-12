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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3PExpr(ptr noundef %pParse, i32 noundef %op, ptr noundef %pLeft, ptr noundef %pRight) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %1, i64 noundef 72)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 72, i1 false)
  %4 = load i32, ptr %op.addr, align 4
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %5 = load ptr, ptr %p, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 0
  store i8 %conv, ptr %op1, align 8
  %6 = load ptr, ptr %p, align 8
  %iAgg = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 10
  store i16 -1, ptr %iAgg, align 2
  %7 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db2, align 8
  %9 = load ptr, ptr %p, align 8
  %10 = load ptr, ptr %pLeft.addr, align 8
  %11 = load ptr, ptr %pRight.addr, align 8
  call void @sqlite3ExprAttachSubtrees(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %p, align 8
  %nHeight = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 7
  %14 = load i32, ptr %nHeight, align 8
  %call3 = call i32 @sqlite3ExprCheckHeight(ptr noundef %12, i32 noundef %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %pParse.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %db4, align 8
  %17 = load ptr, ptr %pLeft.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %db5, align 8
  %20 = load ptr, ptr %pRight.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %19, ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load ptr, ptr %p, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprAttachSubtrees(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCheckHeight(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
