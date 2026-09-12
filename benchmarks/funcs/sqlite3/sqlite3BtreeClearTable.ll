; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeClearTable(ptr noundef %p, i32 noundef %iTable, ptr noundef %pnChange) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %pnChange.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  store ptr %pnChange, ptr %pnChange.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %4 = load i32, ptr %iTable.addr, align 4
  %call = call i32 @saveAllCursors(ptr noundef %3, i32 noundef %4, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 0, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %iTable.addr, align 4
  call void @invalidateIncrblobCursors(ptr noundef %6, i32 noundef %7, i64 noundef 0, i32 noundef 1)
  %8 = load ptr, ptr %pBt, align 8
  %9 = load i32, ptr %iTable.addr, align 4
  %10 = load ptr, ptr %pnChange.addr, align 8
  %call2 = call i32 @clearDatabasePage(ptr noundef %8, i32 noundef %9, i32 noundef 0, ptr noundef %10)
  store i32 %call2, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %11)
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden void @invalidateIncrblobCursors(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @clearDatabasePage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
