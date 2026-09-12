; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.RowLoadInfo = type { i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @innerLoopLoadRow(ptr noundef %pParse, ptr noundef %pSelect, ptr noundef %pInfo) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pEList, align 8
  %3 = load ptr, ptr %pInfo.addr, align 8
  %regResult = getelementptr inbounds nuw %struct.RowLoadInfo, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %regResult, align 4
  %5 = load ptr, ptr %pInfo.addr, align 8
  %ecelFlags = getelementptr inbounds nuw %struct.RowLoadInfo, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %ecelFlags, align 4
  %call = call i32 @sqlite3ExprCodeExprList(ptr noundef %0, ptr noundef %2, i32 noundef %4, i32 noundef 0, i8 noundef zeroext %6)
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
