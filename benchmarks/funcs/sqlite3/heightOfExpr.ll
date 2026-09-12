; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @heightOfExpr(ptr noundef %p, ptr noundef %pnHeight) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pnHeight.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pnHeight, ptr %pnHeight.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %nHeight = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %nHeight, align 8
  %3 = load ptr, ptr %pnHeight.addr, align 8
  %4 = load i32, ptr %3, align 4
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %p.addr, align 8
  %nHeight2 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %nHeight2, align 8
  %7 = load ptr, ptr %pnHeight.addr, align 8
  store i32 %6, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
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
