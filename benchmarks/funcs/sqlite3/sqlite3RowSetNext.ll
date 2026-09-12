; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3RowSetNext(ptr noundef %p, ptr noundef %pRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %rsFlags = getelementptr inbounds nuw %struct.RowSet, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %rsFlags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %rsFlags2 = getelementptr inbounds nuw %struct.RowSet, ptr %2, i32 0, i32 7
  %3 = load i16, ptr %rsFlags2, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 1
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  %pEntry = getelementptr inbounds nuw %struct.RowSet, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pEntry, align 8
  %call = call ptr @rowSetEntrySort(ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8
  %pEntry8 = getelementptr inbounds nuw %struct.RowSet, ptr %6, i32 0, i32 2
  store ptr %call, ptr %pEntry8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %7 = load ptr, ptr %p.addr, align 8
  %rsFlags9 = getelementptr inbounds nuw %struct.RowSet, ptr %7, i32 0, i32 7
  %8 = load i16, ptr %rsFlags9, align 2
  %conv10 = zext i16 %8 to i32
  %or = or i32 %conv10, 3
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, ptr %rsFlags9, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  %9 = load ptr, ptr %p.addr, align 8
  %pEntry13 = getelementptr inbounds nuw %struct.RowSet, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pEntry13, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %p.addr, align 8
  %pEntry15 = getelementptr inbounds nuw %struct.RowSet, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pEntry15, align 8
  %v = getelementptr inbounds nuw %struct.RowSetEntry, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %v, align 8
  %14 = load ptr, ptr %pRowid.addr, align 8
  store i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pEntry16 = getelementptr inbounds nuw %struct.RowSet, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pEntry16, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pRight, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %pEntry17 = getelementptr inbounds nuw %struct.RowSet, ptr %18, i32 0, i32 2
  store ptr %17, ptr %pEntry17, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %pEntry18 = getelementptr inbounds nuw %struct.RowSet, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pEntry18, align 8
  %cmp19 = icmp eq ptr %20, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then14
  %21 = load ptr, ptr %p.addr, align 8
  call void @sqlite3RowSetClear(ptr noundef %21)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then14
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end22
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RowSetClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntrySort(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
