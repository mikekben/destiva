; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct._ht = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @removeElementGivenHash(ptr noundef %pH, ptr noundef %elem, i32 noundef %h) #0 {
entry:
  %pH.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %h.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pH, ptr %pH.addr, align 8
  store ptr %elem, ptr %elem.addr, align 8
  store i32 %h, ptr %h.addr, align 4
  %0 = load ptr, ptr %elem.addr, align 8
  %prev = getelementptr inbounds nuw %struct.HashElem, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %prev, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %elem.addr, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next, align 8
  %4 = load ptr, ptr %elem.addr, align 8
  %prev1 = getelementptr inbounds nuw %struct.HashElem, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev1, align 8
  %next2 = getelementptr inbounds nuw %struct.HashElem, ptr %5, i32 0, i32 0
  store ptr %3, ptr %next2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %elem.addr, align 8
  %next3 = getelementptr inbounds nuw %struct.HashElem, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next3, align 8
  %8 = load ptr, ptr %pH.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %8, i32 0, i32 2
  store ptr %7, ptr %first, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %elem.addr, align 8
  %next4 = getelementptr inbounds nuw %struct.HashElem, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next4, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %elem.addr, align 8
  %prev7 = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %prev7, align 8
  %13 = load ptr, ptr %elem.addr, align 8
  %next8 = getelementptr inbounds nuw %struct.HashElem, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %next8, align 8
  %prev9 = getelementptr inbounds nuw %struct.HashElem, ptr %14, i32 0, i32 1
  store ptr %12, ptr %prev9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  %15 = load ptr, ptr %pH.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %ht, align 8
  %tobool11 = icmp ne ptr %16, null
  br i1 %tobool11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end10
  %17 = load ptr, ptr %pH.addr, align 8
  %ht13 = getelementptr inbounds nuw %struct.Hash, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %ht13, align 8
  %19 = load i32, ptr %h.addr, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds nuw %struct._ht, ptr %18, i64 %idxprom
  store ptr %arrayidx, ptr %pEntry, align 8
  %20 = load ptr, ptr %pEntry, align 8
  %chain = getelementptr inbounds nuw %struct._ht, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %chain, align 8
  %22 = load ptr, ptr %elem.addr, align 8
  %cmp = icmp eq ptr %21, %22
  br i1 %cmp, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then12
  %23 = load ptr, ptr %elem.addr, align 8
  %next15 = getelementptr inbounds nuw %struct.HashElem, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %next15, align 8
  %25 = load ptr, ptr %pEntry, align 8
  %chain16 = getelementptr inbounds nuw %struct._ht, ptr %25, i32 0, i32 1
  store ptr %24, ptr %chain16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12
  %26 = load ptr, ptr %pEntry, align 8
  %count = getelementptr inbounds nuw %struct._ht, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %count, align 8
  %dec = add i32 %27, -1
  store i32 %dec, ptr %count, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end10
  %28 = load ptr, ptr %elem.addr, align 8
  call void @sqlite3_free(ptr noundef %28)
  %29 = load ptr, ptr %pH.addr, align 8
  %count19 = getelementptr inbounds nuw %struct.Hash, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %count19, align 4
  %dec20 = add i32 %30, -1
  store i32 %dec20, ptr %count19, align 4
  %31 = load ptr, ptr %pH.addr, align 8
  %count21 = getelementptr inbounds nuw %struct.Hash, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %count21, align 4
  %cmp22 = icmp eq i32 %32, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %33 = load ptr, ptr %pH.addr, align 8
  call void @sqlite3HashClear(ptr noundef %33)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18
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
