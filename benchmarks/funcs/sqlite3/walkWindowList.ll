; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walkWindowList(ptr noundef %pWalker, ptr noundef %pList) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  store ptr %0, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pWalker.addr, align 8
  %3 = load ptr, ptr %pWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pOrderBy, align 8
  %call = call i32 @sqlite3WalkExprList(ptr noundef %2, ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %pWalker.addr, align 8
  %7 = load ptr, ptr %pWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pPartition, align 8
  %call2 = call i32 @sqlite3WalkExprList(ptr noundef %6, ptr noundef %8)
  store i32 %call2, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %pWalker.addr, align 8
  %11 = load ptr, ptr %pWin, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 13
  %12 = load ptr, ptr %pFilter, align 8
  %call6 = call i32 @sqlite3WalkExpr(ptr noundef %10, ptr noundef %12)
  store i32 %call6, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %14 = load ptr, ptr %pWalker.addr, align 8
  %15 = load ptr, ptr %pWin, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %pStart, align 8
  %call10 = call i32 @sqlite3WalkExpr(ptr noundef %14, ptr noundef %16)
  store i32 %call10, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %18 = load ptr, ptr %pWalker.addr, align 8
  %19 = load ptr, ptr %pWin, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %pEnd, align 8
  %call14 = call i32 @sqlite3WalkExpr(ptr noundef %18, ptr noundef %20)
  store i32 %call14, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 2, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %22 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pNextWin, align 8
  store ptr %23, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then12, %if.then8, %if.then4, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
