; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
define hidden i32 @ptrmapPageno(ptr noundef %pBt, i32 noundef %pgno) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %nPagesPerMapPage = alloca i32, align 4
  %iPtrMap = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  %0 = load i32, ptr %pgno.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pBt.addr, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %2, 5
  %add = add i32 %div, 1
  store i32 %add, ptr %nPagesPerMapPage, align 4
  %3 = load i32, ptr %pgno.addr, align 4
  %sub = sub i32 %3, 2
  %4 = load i32, ptr %nPagesPerMapPage, align 4
  %div1 = udiv i32 %sub, %4
  store i32 %div1, ptr %iPtrMap, align 4
  %5 = load i32, ptr %iPtrMap, align 4
  %6 = load i32, ptr %nPagesPerMapPage, align 4
  %mul = mul i32 %5, %6
  %add2 = add i32 %mul, 2
  store i32 %add2, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %8 = load i32, ptr @sqlite3PendingByte, align 4
  %9 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 15
  %10 = load i32, ptr %pageSize, align 8
  %div3 = udiv i32 %8, %10
  %add4 = add i32 %div3, 1
  %cmp5 = icmp eq i32 %7, %add4
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load i32, ptr %ret, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %12 = load i32, ptr %ret, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
