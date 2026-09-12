; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @selectPopWith(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pWith2 = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %pWith = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 66
  %3 = load ptr, ptr %pWith, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pPrior, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p.addr, align 8
  %call = call ptr @findRightmost(ptr noundef %6)
  %pWith3 = getelementptr inbounds nuw %struct.Select, ptr %call, i32 0, i32 16
  %7 = load ptr, ptr %pWith3, align 8
  store ptr %7, ptr %pWith2, align 8
  %8 = load ptr, ptr %pWith2, align 8
  %cmp4 = icmp ne ptr %8, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %pWith2, align 8
  %pOuter = getelementptr inbounds nuw %struct.With, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pOuter, align 8
  %11 = load ptr, ptr %pParse, align 8
  %pWith6 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 66
  store ptr %10, ptr %pWith6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @findRightmost(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
