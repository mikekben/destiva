; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @clearSelect(ptr noundef %db, ptr noundef %p, i32 noundef %bFree) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %bFree.addr = alloca i32, align 4
  %pPrior = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %bFree, ptr %bFree.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %pPrior1 = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %pPrior1, align 8
  store ptr %2, ptr %pPrior, align 8
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pEList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %pSrc, align 8
  call void @sqlite3SrcListDelete(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %pWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 10
  %14 = load ptr, ptr %pGroupBy, align 8
  call void @sqlite3ExprListDelete(ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %pHaving, align 8
  call void @sqlite3ExprDelete(ptr noundef %15, ptr noundef %17)
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pOrderBy, align 8
  call void @sqlite3ExprListDelete(ptr noundef %18, ptr noundef %20)
  %21 = load ptr, ptr %db.addr, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 15
  %23 = load ptr, ptr %pLimit, align 8
  call void @sqlite3ExprDelete(ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %p.addr, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 18
  %25 = load ptr, ptr %pWinDefn, align 8
  %tobool2 = icmp ne ptr %25, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %pWinDefn3 = getelementptr inbounds nuw %struct.Select, ptr %27, i32 0, i32 18
  %28 = load ptr, ptr %pWinDefn3, align 8
  call void @sqlite3WindowListDelete(ptr noundef %26, ptr noundef %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %29 = load ptr, ptr %p.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 16
  %30 = load ptr, ptr %pWith, align 8
  %tobool4 = icmp ne ptr %30, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %pWith6 = getelementptr inbounds nuw %struct.Select, ptr %32, i32 0, i32 16
  %33 = load ptr, ptr %pWith6, align 8
  call void @sqlite3WithDelete(ptr noundef %31, ptr noundef %33)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %34 = load i32, ptr %bFree.addr, align 4
  %tobool8 = icmp ne i32 %34, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %35 = load ptr, ptr %db.addr, align 8
  %36 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %35, ptr noundef %36)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %37 = load ptr, ptr %pPrior, align 8
  store ptr %37, ptr %p.addr, align 8
  store i32 1, ptr %bFree.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithDelete(ptr noundef, ptr noundef) #0

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
