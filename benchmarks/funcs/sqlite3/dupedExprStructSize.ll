; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @dupedExprStructSize(ptr noundef %p, i32 noundef %flags) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nSize = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %flags.addr, align 4
  %cmp = icmp eq i32 0, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 173
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %p.addr, align 8
  %flags4 = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %flags4, align 4
  %and = and i32 %4, 16777216
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 72, ptr %nSize, align 4
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else
  %7 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %x, align 8
  %tobool8 = icmp ne ptr %8, null
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false7, %if.else
  store i32 8236, ptr %nSize, align 4
  br label %if.end

if.else10:                                        ; preds = %lor.lhs.false7
  store i32 16400, ptr %nSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %9 = load i32, ptr %nSize, align 4
  ret i32 %9
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
