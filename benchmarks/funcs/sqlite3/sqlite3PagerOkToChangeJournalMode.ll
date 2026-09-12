; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerOkToChangeJournalMode(ptr noundef %pPager) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %eState, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 31
  %3 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 33
  %6 = load i64, ptr %journalOff, align 8
  %cmp4 = icmp sgt i64 %6, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
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
