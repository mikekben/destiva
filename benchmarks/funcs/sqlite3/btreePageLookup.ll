; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @btreePageFromDbPage(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @btreePageLookup(ptr noundef %pBt, i32 noundef %pgno) #0 {
entry:
  %retval = alloca ptr, align 8
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %pDbPage = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pPager, align 8
  %2 = load i32, ptr %pgno.addr, align 4
  %call = call ptr @sqlite3PagerLookup(ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %pDbPage, align 8
  %3 = load ptr, ptr %pDbPage, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pDbPage, align 8
  %5 = load i32, ptr %pgno.addr, align 4
  %6 = load ptr, ptr %pBt.addr, align 8
  %call1 = call ptr @btreePageFromDbPage(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
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
