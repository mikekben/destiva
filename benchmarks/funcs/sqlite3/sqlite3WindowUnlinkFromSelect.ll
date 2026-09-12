; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowUnlinkFromSelect(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %ppThis = getelementptr inbounds nuw %struct.Window, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %ppThis, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pNextWin, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %ppThis1 = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %ppThis1, align 8
  store ptr %3, ptr %5, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pNextWin2 = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pNextWin2, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8
  %ppThis5 = getelementptr inbounds nuw %struct.Window, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %ppThis5, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %pNextWin6 = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pNextWin6, align 8
  %ppThis7 = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 11
  store ptr %9, ptr %ppThis7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %12 = load ptr, ptr %p.addr, align 8
  %ppThis8 = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 11
  store ptr null, ptr %ppThis8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
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
