; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3UpsertNew(ptr noundef %db, ptr noundef %pTarget, ptr noundef %pTargetWhere, ptr noundef %pSet, ptr noundef %pWhere) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pTarget.addr = alloca ptr, align 8
  %pTargetWhere.addr = alloca ptr, align 8
  %pSet.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTarget, ptr %pTarget.addr, align 8
  store ptr %pTargetWhere, ptr %pTargetWhere.addr, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef %0, i64 noundef 64)
  store ptr %call, ptr %pNew, align 8
  %1 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %pTarget.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %pTargetWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %pSet.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %8, ptr noundef %9)
  store ptr null, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pTarget.addr, align 8
  %11 = load ptr, ptr %pNew, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %11, i32 0, i32 0
  store ptr %10, ptr %pUpsertTarget, align 8
  %12 = load ptr, ptr %pTargetWhere.addr, align 8
  %13 = load ptr, ptr %pNew, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %13, i32 0, i32 1
  store ptr %12, ptr %pUpsertTargetWhere, align 8
  %14 = load ptr, ptr %pSet.addr, align 8
  %15 = load ptr, ptr %pNew, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %15, i32 0, i32 2
  store ptr %14, ptr %pUpsertSet, align 8
  %16 = load ptr, ptr %pWhere.addr, align 8
  %17 = load ptr, ptr %pNew, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %17, i32 0, i32 3
  store ptr %16, ptr %pUpsertWhere, align 8
  %18 = load ptr, ptr %pNew, align 8
  %pUpsertIdx = getelementptr inbounds nuw %struct.Upsert, ptr %18, i32 0, i32 4
  store ptr null, ptr %pUpsertIdx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %19 = load ptr, ptr %pNew, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
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
