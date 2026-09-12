; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PagerSetBusyHandler(ptr noundef %pPager, ptr noundef %xBusyHandler, ptr noundef %pBusyHandlerArg) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %xBusyHandler.addr = alloca ptr, align 8
  %pBusyHandlerArg.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %xBusyHandler, ptr %xBusyHandler.addr, align 8
  store ptr %pBusyHandlerArg, ptr %pBusyHandlerArg.addr, align 8
  %0 = load ptr, ptr %xBusyHandler.addr, align 8
  %1 = load ptr, ptr %pPager.addr, align 8
  %xBusyHandler1 = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 52
  store ptr %0, ptr %xBusyHandler1, align 8
  %2 = load ptr, ptr %pBusyHandlerArg.addr, align 8
  %3 = load ptr, ptr %pPager.addr, align 8
  %pBusyHandlerArg2 = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 53
  store ptr %2, ptr %pBusyHandlerArg2, align 8
  %4 = load ptr, ptr %pPager.addr, align 8
  %xBusyHandler3 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 52
  store ptr %xBusyHandler3, ptr %ap, align 8
  %5 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 30
  %6 = load ptr, ptr %fd, align 8
  %7 = load ptr, ptr %ap, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %6, i32 noundef 15, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
