; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden void @btreeParseCellPtrNoPayload(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pInfo) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %1 = load ptr, ptr %pCell.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 4
  %2 = load ptr, ptr %pInfo.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %2, i32 0, i32 0
  %call = call zeroext i8 @sqlite3GetVarint(ptr noundef %arrayidx, ptr noundef %nKey)
  %conv = zext i8 %call to i32
  %add = add nsw i32 4, %conv
  %conv1 = trunc i32 %add to i16
  %3 = load ptr, ptr %pInfo.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %3, i32 0, i32 4
  store i16 %conv1, ptr %nSize, align 2
  %4 = load ptr, ptr %pInfo.addr, align 8
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %4, i32 0, i32 2
  store i32 0, ptr %nPayload, align 8
  %5 = load ptr, ptr %pInfo.addr, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %5, i32 0, i32 3
  store i16 0, ptr %nLocal, align 4
  %6 = load ptr, ptr %pInfo.addr, align 8
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %6, i32 0, i32 1
  store ptr null, ptr %pPayload, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
