; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeCursorMoveto(ptr noundef %pp, ptr noundef %piCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %piCol.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %iMap = alloca i32, align 4
  store ptr %pp, ptr %pp.addr, align 8
  store ptr %piCol, ptr %piCol.addr, align 8
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %deferredMoveto = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %deferredMoveto, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %aAltMap = getelementptr inbounds nuw %struct.VdbeCursor, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %aAltMap, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %p, align 8
  %aAltMap2 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %aAltMap2, align 8
  %8 = load ptr, ptr %piCol.addr, align 8
  %9 = load i32, ptr %8, align 4
  %add = add nsw i32 1, %9
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  store i32 %10, ptr %iMap, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %p, align 8
  %pAltCursor = getelementptr inbounds nuw %struct.VdbeCursor, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %pAltCursor, align 8
  %13 = load ptr, ptr %pp.addr, align 8
  store ptr %12, ptr %13, align 8
  %14 = load i32, ptr %iMap, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load ptr, ptr %piCol.addr, align 8
  store i32 %sub, ptr %15, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %16 = load ptr, ptr %p, align 8
  %call = call i32 @handleDeferredMoveto(ptr noundef %16)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %17 = load ptr, ptr %p, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %uc, align 8
  %call5 = call i32 @sqlite3BtreeCursorHasMoved(ptr noundef %18)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %19 = load ptr, ptr %p, align 8
  %call8 = call i32 @handleMovedCursor(ptr noundef %19)
  store i32 %call8, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.end, %if.then3
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i32 @handleDeferredMoveto(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCursorHasMoved(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @handleMovedCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
