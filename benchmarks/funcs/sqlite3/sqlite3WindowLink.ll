; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WindowCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowLink(ptr noundef %pSel, ptr noundef %pWin) #0 {
entry:
  %pSel.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  store ptr %pSel, ptr %pSel.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  %0 = load ptr, ptr %pSel.addr, align 8
  %pWin1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %pWin1, align 8
  %cmp = icmp eq ptr null, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pSel.addr, align 8
  %pWin2 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 17
  %3 = load ptr, ptr %pWin2, align 8
  %4 = load ptr, ptr %pWin.addr, align 8
  %call = call i32 @sqlite3WindowCompare(ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %cmp3 = icmp eq i32 0, %call
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %pSel.addr, align 8
  %pWin4 = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 17
  %6 = load ptr, ptr %pWin4, align 8
  %7 = load ptr, ptr %pWin.addr, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %7, i32 0, i32 12
  store ptr %6, ptr %pNextWin, align 8
  %8 = load ptr, ptr %pSel.addr, align 8
  %pWin5 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 17
  %9 = load ptr, ptr %pWin5, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %pWin.addr, align 8
  %pNextWin7 = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pSel.addr, align 8
  %pWin8 = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %pWin8, align 8
  %ppThis = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 11
  store ptr %pNextWin7, ptr %ppThis, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load ptr, ptr %pWin.addr, align 8
  %14 = load ptr, ptr %pSel.addr, align 8
  %pWin9 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 17
  store ptr %13, ptr %pWin9, align 8
  %15 = load ptr, ptr %pSel.addr, align 8
  %pWin10 = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %pWin.addr, align 8
  %ppThis11 = getelementptr inbounds nuw %struct.Window, ptr %16, i32 0, i32 11
  store ptr %pWin10, ptr %ppThis11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %lor.lhs.false
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
