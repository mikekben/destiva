; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

@.str.358 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.359 = external hidden unnamed_addr constant [25 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @setPageReferenced(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkAppendMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getPageReferenced(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @checkRef(ptr noundef %pCheck, i32 noundef %iPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pCheck.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  %0 = load i32, ptr %iPage.addr, align 4
  %1 = load ptr, ptr %pCheck.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.IntegrityCk, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nPage, align 8
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %iPage.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pCheck.addr, align 8
  %5 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %4, ptr noundef @.str.358, i32 noundef %5)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pCheck.addr, align 8
  %7 = load i32, ptr %iPage.addr, align 4
  %call = call i32 @getPageReferenced(ptr noundef %6, i32 noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCheck.addr, align 8
  %9 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %8, ptr noundef @.str.359, i32 noundef %9)
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load ptr, ptr %pCheck.addr, align 8
  %11 = load i32, ptr %iPage.addr, align 4
  call void @setPageReferenced(ptr noundef %10, i32 noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
