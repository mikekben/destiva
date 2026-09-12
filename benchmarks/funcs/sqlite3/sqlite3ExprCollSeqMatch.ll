; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCollSeqMatch(ptr noundef %pParse, ptr noundef %pE1, ptr noundef %pE2) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pE1.addr = alloca ptr, align 8
  %pE2.addr = alloca ptr, align 8
  %pColl1 = alloca ptr, align 8
  %pColl2 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pE1, ptr %pE1.addr, align 8
  store ptr %pE2, ptr %pE2.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pE1.addr, align 8
  %call = call ptr @sqlite3ExprNNCollSeq(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %pColl1, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pE2.addr, align 8
  %call1 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %2, ptr noundef %3)
  store ptr %call1, ptr %pColl2, align 8
  %4 = load ptr, ptr %pColl1, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zName, align 8
  %6 = load ptr, ptr %pColl2, align 8
  %zName2 = getelementptr inbounds nuw %struct.CollSeq, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zName2, align 8
  %call3 = call i32 @sqlite3StrICmp(ptr noundef %5, ptr noundef %7)
  %cmp = icmp eq i32 %call3, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
