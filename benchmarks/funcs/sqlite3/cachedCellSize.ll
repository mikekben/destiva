; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @cachedCellSize(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %retval = alloca i16, align 2
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %szCell, align 8
  %2 = load i32, ptr %N.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %szCell1 = getelementptr inbounds nuw %struct.CellArray, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %szCell1, align 8
  %6 = load i32, ptr %N.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %5, i64 %idxprom2
  %7 = load i16, ptr %arrayidx3, align 2
  store i16 %7, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %N.addr, align 4
  %call = call zeroext i16 @computeCellSize(ptr noundef %8, i32 noundef %9)
  store i16 %call, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i16, ptr %retval, align 2
  ret i16 %10
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @computeCellSize(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
