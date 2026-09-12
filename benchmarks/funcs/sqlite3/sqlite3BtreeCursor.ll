; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCursor(ptr noundef %p, i32 noundef %iTable, i32 noundef %wrFlag, ptr noundef %pKeyInfo, ptr noundef %pCur) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %wrFlag.addr = alloca i32, align 4
  %pKeyInfo.addr = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  store i32 %wrFlag, ptr %wrFlag.addr, align 4
  store ptr %pKeyInfo, ptr %pKeyInfo.addr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load i32, ptr %iTable.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 67818)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %1)
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load i32, ptr %iTable.addr, align 4
  %4 = load i32, ptr %wrFlag.addr, align 4
  %5 = load ptr, ptr %pKeyInfo.addr, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %call1 = call i32 @btreeCursor(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call1, ptr %rc, align 4
  %7 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeCursor(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
