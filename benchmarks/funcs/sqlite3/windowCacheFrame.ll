; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

@leadName = external hidden constant [5 x i8], align 1
@lagName = external hidden constant [4 x i8], align 1
@nth_valueName = external hidden constant [10 x i8], align 1
@first_valueName = external hidden constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @windowCacheFrame(ptr noundef %pMWin) #0 {
entry:
  %retval = alloca i32, align 4
  %pMWin.addr = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  store ptr %pMWin, ptr %pMWin.addr, align 8
  %0 = load ptr, ptr %pMWin.addr, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %regStartRowid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pMWin.addr, align 8
  store ptr %2, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %pWin, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pWin, align 8
  %pFunc2 = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %pFunc2, align 8
  store ptr %5, ptr %pFunc, align 8
  %6 = load ptr, ptr %pFunc, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %zName, align 8
  %cmp = icmp eq ptr %7, @nth_valueName
  br i1 %cmp, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %pFunc, align 8
  %zName3 = getelementptr inbounds nuw %struct.FuncDef, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %zName3, align 8
  %cmp4 = icmp eq ptr %9, @first_valueName
  br i1 %cmp4, label %if.then11, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pFunc, align 8
  %zName6 = getelementptr inbounds nuw %struct.FuncDef, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %zName6, align 8
  %cmp7 = icmp eq ptr %11, @leadName
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %12 = load ptr, ptr %pFunc, align 8
  %zName9 = getelementptr inbounds nuw %struct.FuncDef, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %zName9, align 8
  %cmp10 = icmp eq ptr %13, @lagName
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false8
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %14 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pNextWin, align 8
  store ptr %15, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
