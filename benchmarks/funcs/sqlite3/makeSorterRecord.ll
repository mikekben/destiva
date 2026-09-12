; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortCtx = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @innerLoopLoadRow(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @makeSorterRecord(ptr noundef %pParse, ptr noundef %pSort, ptr noundef %pSelect, i32 noundef %regBase, i32 noundef %nBase) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSort.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %regBase.addr = alloca i32, align 4
  %nBase.addr = alloca i32, align 4
  %nOBSat = alloca i32, align 4
  %v = alloca ptr, align 8
  %regOut = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSort, ptr %pSort.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i32 %regBase, ptr %regBase.addr, align 4
  store i32 %nBase, ptr %nBase.addr, align 4
  %0 = load ptr, ptr %pSort.addr, align 8
  %nOBSat1 = getelementptr inbounds nuw %struct.SortCtx, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nOBSat1, align 8
  store i32 %1, ptr %nOBSat, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regOut, align 4
  %6 = load ptr, ptr %pSort.addr, align 8
  %pDeferredRowLoad = getelementptr inbounds nuw %struct.SortCtx, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %pDeferredRowLoad, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pSelect.addr, align 8
  %10 = load ptr, ptr %pSort.addr, align 8
  %pDeferredRowLoad2 = getelementptr inbounds nuw %struct.SortCtx, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %pDeferredRowLoad2, align 8
  call void @innerLoopLoadRow(ptr noundef %8, ptr noundef %9, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %regBase.addr, align 4
  %14 = load i32, ptr %nOBSat, align 4
  %add = add nsw i32 %13, %14
  %15 = load i32, ptr %nBase.addr, align 4
  %16 = load i32, ptr %nOBSat, align 4
  %sub = sub nsw i32 %15, %16
  %17 = load i32, ptr %regOut, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %12, i32 noundef 92, i32 noundef %add, i32 noundef %sub, i32 noundef %17)
  %18 = load i32, ptr %regOut, align 4
  ret i32 %18
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
