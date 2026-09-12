; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @freePage(ptr noundef %pPage, ptr noundef %pRC) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pRC.addr = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pRC.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %pBt, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %5 = load ptr, ptr %pPage.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %pgno, align 4
  %call = call i32 @freePage2(ptr noundef %3, ptr noundef %4, i32 noundef %6)
  %7 = load ptr, ptr %pRC.addr, align 8
  store i32 %call, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @freePage2(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
