; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabEponymousTableClear(ptr noundef %db, ptr noundef %pMod) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pMod.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pMod, ptr %pMod.addr, align 8
  %0 = load ptr, ptr %pMod.addr, align 8
  %pEpoTab = getelementptr inbounds nuw %struct.Module, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pEpoTab, align 8
  store ptr %1, ptr %pTab, align 8
  %2 = load ptr, ptr %pTab, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %tabFlags, align 8
  %or = or i32 %4, 2
  store i32 %or, ptr %tabFlags, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %pMod.addr, align 8
  %pEpoTab1 = getelementptr inbounds nuw %struct.Module, ptr %7, i32 0, i32 5
  store ptr null, ptr %pEpoTab1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
