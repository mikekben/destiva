; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ArrayAllocate(ptr noundef %db, ptr noundef %pArray, i32 noundef %szEntry, ptr noundef %pnEntry, ptr noundef %pIdx) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pArray.addr = alloca ptr, align 8
  %szEntry.addr = alloca i32, align 4
  %pnEntry.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %n = alloca i64, align 8
  %sz = alloca i64, align 8
  %pNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pArray, ptr %pArray.addr, align 8
  store i32 %szEntry, ptr %szEntry.addr, align 4
  store ptr %pnEntry, ptr %pnEntry.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pnEntry.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %pIdx.addr, align 8
  store i32 %1, ptr %2, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %n, align 8
  %3 = load i64, ptr %n, align 8
  %4 = load i64, ptr %n, align 8
  %sub = sub nsw i64 %4, 1
  %and = and i64 %3, %sub
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %n, align 8
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i64, ptr %n, align 8
  %mul = mul nsw i64 2, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %mul, %cond.false ]
  store i64 %cond, ptr %sz, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pArray.addr, align 8
  %9 = load i64, ptr %sz, align 8
  %10 = load i32, ptr %szEntry.addr, align 4
  %conv4 = sext i32 %10 to i64
  %mul5 = mul nsw i64 %9, %conv4
  %call = call ptr @sqlite3DbRealloc(ptr noundef %7, ptr noundef %8, i64 noundef %mul5)
  store ptr %call, ptr %pNew, align 8
  %11 = load ptr, ptr %pNew, align 8
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %cond.end
  %12 = load ptr, ptr %pIdx.addr, align 8
  store i32 -1, ptr %12, align 4
  %13 = load ptr, ptr %pArray.addr, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %14 = load ptr, ptr %pNew, align 8
  store ptr %14, ptr %pArray.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %pArray.addr, align 8
  store ptr %15, ptr %z, align 8
  %16 = load ptr, ptr %z, align 8
  %17 = load i64, ptr %n, align 8
  %18 = load i32, ptr %szEntry.addr, align 4
  %conv10 = sext i32 %18 to i64
  %mul11 = mul nsw i64 %17, %conv10
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %mul11
  %19 = load i32, ptr %szEntry.addr, align 4
  %conv12 = sext i32 %19 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx, i8 0, i64 %conv12, i1 false)
  %20 = load ptr, ptr %pnEntry.addr, align 8
  %21 = load i32, ptr %20, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %20, align 4
  %22 = load ptr, ptr %pArray.addr, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
