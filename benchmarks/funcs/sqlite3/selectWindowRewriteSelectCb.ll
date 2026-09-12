; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.WindowRewrite = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @selectWindowRewriteSelectCb(ptr noundef %pWalker, ptr noundef %pSelect) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pSave = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %pSubSelect = getelementptr inbounds nuw %struct.WindowRewrite, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pSubSelect, align 8
  store ptr %3, ptr %pSave, align 8
  %4 = load ptr, ptr %pSave, align 8
  %5 = load ptr, ptr %pSelect.addr, align 8
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pSelect.addr, align 8
  %7 = load ptr, ptr %p, align 8
  %pSubSelect1 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %7, i32 0, i32 4
  store ptr %6, ptr %pSubSelect1, align 8
  %8 = load ptr, ptr %pWalker.addr, align 8
  %9 = load ptr, ptr %pSelect.addr, align 8
  %call = call i32 @sqlite3WalkSelect(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %pSave, align 8
  %11 = load ptr, ptr %p, align 8
  %pSubSelect2 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %11, i32 0, i32 4
  store ptr %10, ptr %pSubSelect2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
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
