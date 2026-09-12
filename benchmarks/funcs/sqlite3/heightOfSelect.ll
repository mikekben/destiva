; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @heightOfSelect(ptr noundef %pSelect, ptr noundef %pnHeight) #0 {
entry:
  %pSelect.addr = alloca ptr, align 8
  %pnHeight.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pnHeight, ptr %pnHeight.addr, align 8
  %0 = load ptr, ptr %pSelect.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %pWhere, align 8
  %4 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExpr(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %p, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %pHaving, align 8
  %7 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExpr(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %p, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 15
  %9 = load ptr, ptr %pLimit, align 8
  %10 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExpr(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %p, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEList, align 8
  %13 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExprList(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %p, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %pGroupBy, align 8
  %16 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExprList(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %p, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pOrderBy, align 8
  %19 = load ptr, ptr %pnHeight.addr, align 8
  call void @heightOfExprList(ptr noundef %18, ptr noundef %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load ptr, ptr %p, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 13
  %21 = load ptr, ptr %pPrior, align 8
  store ptr %21, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @heightOfExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @heightOfExprList(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
