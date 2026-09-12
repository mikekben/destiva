; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @pagerFlushOnCommit(ptr noundef %pPager, i32 noundef %bCommit) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %bCommit.addr = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %bCommit, ptr %bCommit.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %tempFile, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %bCommit.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 30
  %4 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMethods, align 8
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 58
  %7 = load ptr, ptr %pPCache, align 8
  %call = call i32 @sqlite3PCachePercentDirty(ptr noundef %7)
  %cmp8 = icmp sge i32 %call, 25
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PCachePercentDirty(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
