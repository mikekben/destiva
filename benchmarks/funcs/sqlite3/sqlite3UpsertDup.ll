; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3UpsertNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3UpsertDup(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pUpsertTarget, align 8
  %call = call ptr @sqlite3ExprListDup(ptr noundef %2, ptr noundef %4, i32 noundef 0)
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pUpsertTargetWhere, align 8
  %call1 = call ptr @sqlite3ExprDup(ptr noundef %5, ptr noundef %7, i32 noundef 0)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pUpsertSet, align 8
  %call2 = call ptr @sqlite3ExprListDup(ptr noundef %8, ptr noundef %10, i32 noundef 0)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pUpsertWhere, align 8
  %call3 = call ptr @sqlite3ExprDup(ptr noundef %11, ptr noundef %13, i32 noundef 0)
  %call4 = call ptr @sqlite3UpsertNew(ptr noundef %1, ptr noundef %call, ptr noundef %call1, ptr noundef %call2, ptr noundef %call3)
  store ptr %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
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
