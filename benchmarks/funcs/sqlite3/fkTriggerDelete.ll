; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @fkTriggerDelete(ptr noundef %dbMem, ptr noundef %p) #0 {
entry:
  %dbMem.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  store ptr %dbMem, ptr %dbMem.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %step_list, align 8
  store ptr %2, ptr %pStep, align 8
  %3 = load ptr, ptr %dbMem.addr, align 8
  %4 = load ptr, ptr %pStep, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %dbMem.addr, align 8
  %7 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pExprList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %dbMem.addr, align 8
  %10 = load ptr, ptr %pStep, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %dbMem.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %pWhen = getelementptr inbounds nuw %struct.Trigger, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pWhen, align 8
  call void @sqlite3ExprDelete(ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %dbMem.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFree(ptr noundef %15, ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
