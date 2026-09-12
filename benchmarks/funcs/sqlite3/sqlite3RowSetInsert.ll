; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }
%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RowSetInsert(ptr noundef %p, i64 noundef %rowid) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %rowid.addr = alloca i64, align 8
  %pEntry = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %rowid, ptr %rowid.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @rowSetEntryAlloc(ptr noundef %0)
  store ptr %call, ptr %pEntry, align 8
  %1 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %rowid.addr, align 8
  %3 = load ptr, ptr %pEntry, align 8
  %v = getelementptr inbounds nuw %struct.RowSetEntry, ptr %3, i32 0, i32 0
  store i64 %2, ptr %v, align 8
  %4 = load ptr, ptr %pEntry, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %4, i32 0, i32 1
  store ptr null, ptr %pRight, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pLast1 = getelementptr inbounds nuw %struct.RowSet, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pLast1, align 8
  store ptr %6, ptr %pLast, align 8
  %7 = load ptr, ptr %pLast, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i64, ptr %rowid.addr, align 8
  %9 = load ptr, ptr %pLast, align 8
  %v3 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %v3, align 8
  %cmp4 = icmp sle i64 %8, %10
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %p.addr, align 8
  %rsFlags = getelementptr inbounds nuw %struct.RowSet, ptr %11, i32 0, i32 7
  %12 = load i16, ptr %rsFlags, align 2
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, -2
  %conv6 = trunc i32 %and to i16
  store i16 %conv6, ptr %rsFlags, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2
  %13 = load ptr, ptr %pEntry, align 8
  %14 = load ptr, ptr %pLast, align 8
  %pRight8 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %14, i32 0, i32 1
  store ptr %13, ptr %pRight8, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %pEntry, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %pEntry9 = getelementptr inbounds nuw %struct.RowSet, ptr %16, i32 0, i32 2
  store ptr %15, ptr %pEntry9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end7
  %17 = load ptr, ptr %pEntry, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %pLast11 = getelementptr inbounds nuw %struct.RowSet, ptr %18, i32 0, i32 3
  store ptr %17, ptr %pLast11, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntryAlloc(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
