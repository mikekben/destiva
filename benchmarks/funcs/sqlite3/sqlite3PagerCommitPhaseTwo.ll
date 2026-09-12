; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_end_transaction(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerCommitPhaseTwo(ptr noundef %pPager) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %errCode, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %errCode1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %errCode1, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %eState, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %exclusiveMode, align 8
  %conv3 = zext i8 %7 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %journalMode, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true5
  %10 = load ptr, ptr %pPager.addr, align 8
  %eState10 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 13
  store i8 1, ptr %eState10, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %11 = load ptr, ptr %pPager.addr, align 8
  %iDataVersion = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 38
  %12 = load i32, ptr %iDataVersion, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %iDataVersion, align 4
  %13 = load ptr, ptr %pPager.addr, align 8
  %14 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 16
  %15 = load i8, ptr %setMaster, align 1
  %conv12 = zext i8 %15 to i32
  %call = call i32 @pager_end_transaction(ptr noundef %13, i32 noundef %conv12, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %16 = load ptr, ptr %pPager.addr, align 8
  %17 = load i32, ptr %rc, align 4
  %call13 = call i32 @pager_error(ptr noundef %16, i32 noundef %17)
  store i32 %call13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
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
