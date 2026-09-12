; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalkSelect(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pWalker.addr, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %xSelectCallback, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end3
  %3 = load ptr, ptr %pWalker.addr, align 8
  %xSelectCallback4 = getelementptr inbounds nuw %struct.Walker, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %xSelectCallback4, align 8
  %5 = load ptr, ptr %pWalker.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %call = call i32 %4(ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body
  %8 = load i32, ptr %rc, align 4
  %and = and i32 %8, 2
  store i32 %and, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.body
  %9 = load ptr, ptr %pWalker.addr, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %call7 = call i32 @sqlite3WalkSelectExpr(ptr noundef %9, ptr noundef %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %11 = load ptr, ptr %pWalker.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %call9 = call i32 @sqlite3WalkSelectFrom(ptr noundef %11, ptr noundef %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pWalker.addr, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %xSelectCallback2, align 8
  %tobool13 = icmp ne ptr %14, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %15 = load ptr, ptr %pWalker.addr, align 8
  %xSelectCallback215 = getelementptr inbounds nuw %struct.Walker, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %xSelectCallback215, align 8
  %17 = load ptr, ptr %pWalker.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  call void %16(ptr noundef %17, ptr noundef %18)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %19 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pPrior, align 8
  store ptr %20, ptr %p.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end16
  %21 = load ptr, ptr %p.addr, align 8
  %cmp17 = icmp ne ptr %21, null
  br i1 %cmp17, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then11, %if.then5, %if.then2, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelectExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelectFrom(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
