; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSorterClose(ptr noundef %db, ptr noundef %pCsr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pCsr.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pCsr, ptr %pCsr.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pSorter, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %pSorter, align 8
  call void @sqlite3VdbeSorterReset(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %pSorter, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %5, i32 0, i32 9
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 1
  %6 = load ptr, ptr %aMemory, align 8
  call void @sqlite3_free(ptr noundef %6)
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pSorter, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %pCsr.addr, align 8
  %uc1 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %9, i32 0, i32 12
  store ptr null, ptr %uc1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSorterReset(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
