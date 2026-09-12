; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @rowSetNDeepTree(ptr noundef %ppList, i32 noundef %iDepth) #0 {
entry:
  %retval = alloca ptr, align 8
  %ppList.addr = alloca ptr, align 8
  %iDepth.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  store ptr %ppList, ptr %ppList.addr, align 8
  store i32 %iDepth, ptr %iDepth.addr, align 4
  %0 = load ptr, ptr %ppList.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %iDepth.addr, align 4
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %ppList.addr, align 8
  %4 = load i32, ptr %iDepth.addr, align 4
  %sub = sub nsw i32 %4, 1
  %call = call ptr @rowSetNDeepTree(ptr noundef %3, i32 noundef %sub)
  store ptr %call, ptr %pLeft, align 8
  %5 = load ptr, ptr %ppList.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %8 = load ptr, ptr %pLeft, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.then2
  %9 = load ptr, ptr %pLeft, align 8
  %10 = load ptr, ptr %p, align 8
  %pLeft6 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %10, i32 0, i32 2
  store ptr %9, ptr %pLeft6, align 8
  %11 = load ptr, ptr %p, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pRight, align 8
  %13 = load ptr, ptr %ppList.addr, align 8
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %ppList.addr, align 8
  %15 = load i32, ptr %iDepth.addr, align 4
  %sub7 = sub nsw i32 %15, 1
  %call8 = call ptr @rowSetNDeepTree(ptr noundef %14, i32 noundef %sub7)
  %16 = load ptr, ptr %p, align 8
  %pRight9 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %16, i32 0, i32 1
  store ptr %call8, ptr %pRight9, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %ppList.addr, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %p, align 8
  %19 = load ptr, ptr %p, align 8
  %pRight10 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pRight10, align 8
  %21 = load ptr, ptr %ppList.addr, align 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %p, align 8
  %pRight11 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %22, i32 0, i32 1
  store ptr null, ptr %pRight11, align 8
  %23 = load ptr, ptr %p, align 8
  %pLeft12 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %23, i32 0, i32 2
  store ptr null, ptr %pLeft12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end5
  %24 = load ptr, ptr %p, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then4, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
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
