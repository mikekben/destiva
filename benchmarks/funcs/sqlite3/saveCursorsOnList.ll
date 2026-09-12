; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @saveCursorsOnList(ptr noundef %p, i32 noundef %iRoot, ptr noundef %pExcept) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iRoot.addr = alloca i32, align 4
  %pExcept.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %iRoot, ptr %iRoot.addr, align 4
  store ptr %pExcept, ptr %pExcept.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %pExcept.addr, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %iRoot.addr, align 4
  %cmp1 = icmp eq i32 0, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %p.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %pgnoRoot, align 8
  %5 = load i32, ptr %iRoot.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load ptr, ptr %p.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %eState, align 8
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then10, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8
  %eState6 = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 0
  %9 = load i8, ptr %eState6, align 8
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false5, %if.then
  %10 = load ptr, ptr %p.addr, align 8
  %call = call i32 @saveCursorPosition(ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 0, %11
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then10
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then10
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false5
  %13 = load ptr, ptr %p.addr, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %13)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %lor.lhs.false, %do.body
  %14 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %pNext, align 8
  store ptr %15, ptr %p.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end15
  %16 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then13
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @saveCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

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
