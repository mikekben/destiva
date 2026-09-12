; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ht = type { i32, ptr }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @insertElement(ptr noundef %pH, ptr noundef %pEntry, ptr noundef %pNew) #0 {
entry:
  %pH.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %pHead = alloca ptr, align 8
  store ptr %pH, ptr %pH.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pEntry.addr, align 8
  %count = getelementptr inbounds nuw %struct._ht, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %count, align 8
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load ptr, ptr %pEntry.addr, align 8
  %chain = getelementptr inbounds nuw %struct._ht, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %chain, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pHead, align 8
  %5 = load ptr, ptr %pEntry.addr, align 8
  %count2 = getelementptr inbounds nuw %struct._ht, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %count2, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %count2, align 8
  %7 = load ptr, ptr %pNew.addr, align 8
  %8 = load ptr, ptr %pEntry.addr, align 8
  %chain3 = getelementptr inbounds nuw %struct._ht, ptr %8, i32 0, i32 1
  store ptr %7, ptr %chain3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr null, ptr %pHead, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %9 = load ptr, ptr %pHead, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.then5, label %if.else15

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %pHead, align 8
  %11 = load ptr, ptr %pNew.addr, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 0
  store ptr %10, ptr %next, align 8
  %12 = load ptr, ptr %pHead, align 8
  %prev = getelementptr inbounds nuw %struct.HashElem, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %prev, align 8
  %14 = load ptr, ptr %pNew.addr, align 8
  %prev6 = getelementptr inbounds nuw %struct.HashElem, ptr %14, i32 0, i32 1
  store ptr %13, ptr %prev6, align 8
  %15 = load ptr, ptr %pHead, align 8
  %prev7 = getelementptr inbounds nuw %struct.HashElem, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %prev7, align 8
  %tobool8 = icmp ne ptr %16, null
  br i1 %tobool8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.then5
  %17 = load ptr, ptr %pNew.addr, align 8
  %18 = load ptr, ptr %pHead, align 8
  %prev10 = getelementptr inbounds nuw %struct.HashElem, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %prev10, align 8
  %next11 = getelementptr inbounds nuw %struct.HashElem, ptr %19, i32 0, i32 0
  store ptr %17, ptr %next11, align 8
  br label %if.end13

if.else12:                                        ; preds = %if.then5
  %20 = load ptr, ptr %pNew.addr, align 8
  %21 = load ptr, ptr %pH.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %21, i32 0, i32 2
  store ptr %20, ptr %first, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then9
  %22 = load ptr, ptr %pNew.addr, align 8
  %23 = load ptr, ptr %pHead, align 8
  %prev14 = getelementptr inbounds nuw %struct.HashElem, ptr %23, i32 0, i32 1
  store ptr %22, ptr %prev14, align 8
  br label %if.end26

if.else15:                                        ; preds = %if.end
  %24 = load ptr, ptr %pH.addr, align 8
  %first16 = getelementptr inbounds nuw %struct.Hash, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %first16, align 8
  %26 = load ptr, ptr %pNew.addr, align 8
  %next17 = getelementptr inbounds nuw %struct.HashElem, ptr %26, i32 0, i32 0
  store ptr %25, ptr %next17, align 8
  %27 = load ptr, ptr %pH.addr, align 8
  %first18 = getelementptr inbounds nuw %struct.Hash, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %first18, align 8
  %tobool19 = icmp ne ptr %28, null
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.else15
  %29 = load ptr, ptr %pNew.addr, align 8
  %30 = load ptr, ptr %pH.addr, align 8
  %first21 = getelementptr inbounds nuw %struct.Hash, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %first21, align 8
  %prev22 = getelementptr inbounds nuw %struct.HashElem, ptr %31, i32 0, i32 1
  store ptr %29, ptr %prev22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.else15
  %32 = load ptr, ptr %pNew.addr, align 8
  %prev24 = getelementptr inbounds nuw %struct.HashElem, ptr %32, i32 0, i32 1
  store ptr null, ptr %prev24, align 8
  %33 = load ptr, ptr %pNew.addr, align 8
  %34 = load ptr, ptr %pH.addr, align 8
  %first25 = getelementptr inbounds nuw %struct.Hash, ptr %34, i32 0, i32 2
  store ptr %33, ptr %first25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end13
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
