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
declare hidden i32 @vdbeSorterJoinAll(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterRewind(ptr noundef %pCsr, ptr noundef %pbEof) #0 {
entry:
  %retval = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %pbEof.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store ptr %pbEof, ptr %pbEof.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pSorter, align 8
  %bUsePMA = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %bUsePMA, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pSorter, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %4, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 0
  %5 = load ptr, ptr %pList, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pbEof.addr, align 8
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %pSorter, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %7, i32 0, i32 17
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 0
  %8 = load ptr, ptr %pSorter, align 8
  %list3 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %8, i32 0, i32 9
  %call = call i32 @vdbeSorterSort(ptr noundef %arrayidx, ptr noundef %list3)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pbEof.addr, align 8
  store i32 1, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %11 = load ptr, ptr %pSorter, align 8
  %call5 = call i32 @vdbeSorterFlushPMA(ptr noundef %11)
  store i32 %call5, ptr %rc, align 4
  %12 = load ptr, ptr %pSorter, align 8
  %13 = load i32, ptr %rc, align 4
  %call6 = call i32 @vdbeSorterJoinAll(ptr noundef %12, i32 noundef %13)
  store i32 %call6, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %15 = load ptr, ptr %pSorter, align 8
  %call10 = call i32 @vdbeSorterSetupMerge(ptr noundef %15)
  store i32 %call10, ptr %rc, align 4
  %16 = load ptr, ptr %pbEof.addr, align 8
  store i32 0, ptr %16, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.end
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterSort(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterFlushPMA(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterSetupMerge(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
