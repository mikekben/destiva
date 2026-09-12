; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @rowSetTreeToList(ptr noundef %pIn, ptr noundef %ppFirst, ptr noundef %ppLast) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %ppFirst.addr = alloca ptr, align 8
  %ppLast.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %ppFirst, ptr %ppFirst.addr, align 8
  store ptr %ppLast, ptr %ppLast.addr, align 8
  %0 = load ptr, ptr %pIn.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.RowSetEntry, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pIn.addr, align 8
  %pLeft1 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pLeft1, align 8
  %4 = load ptr, ptr %ppFirst.addr, align 8
  call void @rowSetTreeToList(ptr noundef %3, ptr noundef %4, ptr noundef %p)
  %5 = load ptr, ptr %pIn.addr, align 8
  %6 = load ptr, ptr %p, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %6, i32 0, i32 1
  store ptr %5, ptr %pRight, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pIn.addr, align 8
  %8 = load ptr, ptr %ppFirst.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %pIn.addr, align 8
  %pRight2 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pRight2, align 8
  %tobool3 = icmp ne ptr %10, null
  br i1 %tobool3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %pIn.addr, align 8
  %pRight5 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pRight5, align 8
  %13 = load ptr, ptr %pIn.addr, align 8
  %pRight6 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %ppLast.addr, align 8
  call void @rowSetTreeToList(ptr noundef %12, ptr noundef %pRight6, ptr noundef %14)
  br label %if.end8

if.else7:                                         ; preds = %if.end
  %15 = load ptr, ptr %pIn.addr, align 8
  %16 = load ptr, ptr %ppLast.addr, align 8
  store ptr %15, ptr %16, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then4
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
