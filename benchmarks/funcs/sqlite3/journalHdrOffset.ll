; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @journalHdrOffset(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %offset = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i64 0, ptr %offset, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 33
  %1 = load i64, ptr %journalOff, align 8
  store i64 %1, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %c, align 8
  %sub = sub nsw i64 %3, 1
  %4 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 46
  %5 = load i32, ptr %sectorSize, align 8
  %conv = zext i32 %5 to i64
  %div = sdiv i64 %sub, %conv
  %add = add nsw i64 %div, 1
  %6 = load ptr, ptr %pPager.addr, align 8
  %sectorSize1 = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 46
  %7 = load i32, ptr %sectorSize1, align 8
  %conv2 = zext i32 %7 to i64
  %mul = mul nsw i64 %add, %conv2
  store i64 %mul, ptr %offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %offset, align 8
  ret i64 %8
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
