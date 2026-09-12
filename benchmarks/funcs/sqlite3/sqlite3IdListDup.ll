; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3IdListDup(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNewItem = alloca ptr, align 8
  %pOldItem = alloca ptr, align 8
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
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %1, i64 noundef 16)
  store ptr %call, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nId, align 8
  %5 = load ptr, ptr %pNew, align 8
  %nId4 = getelementptr inbounds nuw %struct.IdList, ptr %5, i32 0, i32 1
  store i32 %4, ptr %nId4, align 8
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %nId5 = getelementptr inbounds nuw %struct.IdList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nId5, align 8
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 16
  %call6 = call ptr @sqlite3DbMallocRawNN(ptr noundef %6, i64 noundef %mul)
  %9 = load ptr, ptr %pNew, align 8
  %a = getelementptr inbounds nuw %struct.IdList, ptr %9, i32 0, i32 0
  store ptr %call6, ptr %a, align 8
  %10 = load ptr, ptr %pNew, align 8
  %a7 = getelementptr inbounds nuw %struct.IdList, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %a7, align 8
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end3
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %pNew, align 8
  call void @sqlite3DbFreeNN(ptr noundef %12, ptr noundef %13)
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %nId12 = getelementptr inbounds nuw %struct.IdList, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nId12, align 8
  %cmp13 = icmp slt i32 %14, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pNew, align 8
  %a15 = getelementptr inbounds nuw %struct.IdList, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %a15, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds %struct.IdList_item, ptr %18, i64 %idxprom
  store ptr %arrayidx, ptr %pNewItem, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.IdList, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %a16, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.IdList_item, ptr %21, i64 %idxprom17
  store ptr %arrayidx18, ptr %pOldItem, align 8
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load ptr, ptr %pOldItem, align 8
  %zName = getelementptr inbounds nuw %struct.IdList_item, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zName, align 8
  %call19 = call ptr @sqlite3DbStrDup(ptr noundef %23, ptr noundef %25)
  %26 = load ptr, ptr %pNewItem, align 8
  %zName20 = getelementptr inbounds nuw %struct.IdList_item, ptr %26, i32 0, i32 0
  store ptr %call19, ptr %zName20, align 8
  %27 = load ptr, ptr %pOldItem, align 8
  %idx = getelementptr inbounds nuw %struct.IdList_item, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %idx, align 8
  %29 = load ptr, ptr %pNewItem, align 8
  %idx21 = getelementptr inbounds nuw %struct.IdList_item, ptr %29, i32 0, i32 1
  store i32 %28, ptr %idx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %pNew, align 8
  store ptr %31, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then2, %if.then
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
