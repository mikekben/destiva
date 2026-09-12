; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IndexHasDuplicateRootPage(ptr noundef %pIndex) #0 {
entry:
  %retval = alloca i32, align 4
  %pIndex.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pIndex, ptr %pIndex.addr, align 8
  %0 = load ptr, ptr %pIndex.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pTable, align 8
  %pIndex1 = getelementptr inbounds nuw %struct.Table, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pIndex1, align 8
  store ptr %2, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 11
  %5 = load i32, ptr %tnum, align 8
  %6 = load ptr, ptr %pIndex.addr, align 8
  %tnum2 = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %tnum2, align 8
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %p, align 8
  %9 = load ptr, ptr %pIndex.addr, align 8
  %cmp3 = icmp ne ptr %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pNext, align 8
  store ptr %11, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
