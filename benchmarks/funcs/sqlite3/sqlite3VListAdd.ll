; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VListAdd(ptr noundef %db, ptr noundef %pIn, ptr noundef %zName, i32 noundef %nName, i32 noundef %iVal) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nName.addr = alloca i32, align 4
  %iVal.addr = alloca i32, align 4
  %nInt = alloca i32, align 4
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  %nAlloc = alloca i64, align 8
  %pOut = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nName, ptr %nName.addr, align 4
  store i32 %iVal, ptr %iVal.addr, align 4
  %0 = load i32, ptr %nName.addr, align 4
  %div = sdiv i32 %0, 4
  %add = add nsw i32 %div, 3
  store i32 %add, ptr %nInt, align 4
  %1 = load ptr, ptr %pIn.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pIn.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %nInt, align 4
  %add1 = add nsw i32 %3, %4
  %5 = load ptr, ptr %pIn.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %add1, %6
  br i1 %cmp3, label %if.then, label %if.end18

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %pIn.addr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load ptr, ptr %pIn.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 0
  %9 = load i32, ptr %arrayidx4, align 4
  %conv = sext i32 %9 to i64
  %mul = mul nsw i64 2, %conv
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 10, %cond.false ]
  %10 = load i32, ptr %nInt, align 4
  %conv5 = sext i32 %10 to i64
  %add6 = add nsw i64 %cond, %conv5
  store i64 %add6, ptr %nAlloc, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pIn.addr, align 8
  %13 = load i64, ptr %nAlloc, align 8
  %mul7 = mul i64 %13, 4
  %call = call ptr @sqlite3DbRealloc(ptr noundef %11, ptr noundef %12, i64 noundef %mul7)
  store ptr %call, ptr %pOut, align 8
  %14 = load ptr, ptr %pOut, align 8
  %cmp8 = icmp eq ptr %14, null
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %cond.end
  %15 = load ptr, ptr %pIn.addr, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %16 = load ptr, ptr %pIn.addr, align 8
  %cmp11 = icmp eq ptr %16, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  %17 = load ptr, ptr %pOut, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %17, i64 1
  store i32 2, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %18 = load ptr, ptr %pOut, align 8
  store ptr %18, ptr %pIn.addr, align 8
  %19 = load i64, ptr %nAlloc, align 8
  %conv16 = trunc i64 %19 to i32
  %20 = load ptr, ptr %pIn.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %20, i64 0
  store i32 %conv16, ptr %arrayidx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %lor.lhs.false
  %21 = load ptr, ptr %pIn.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 1
  %22 = load i32, ptr %arrayidx19, align 4
  store i32 %22, ptr %i, align 4
  %23 = load i32, ptr %iVal.addr, align 4
  %24 = load ptr, ptr %pIn.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %24, i64 %idxprom
  store i32 %23, ptr %arrayidx20, align 4
  %26 = load i32, ptr %nInt, align 4
  %27 = load ptr, ptr %pIn.addr, align 8
  %28 = load i32, ptr %i, align 4
  %add21 = add nsw i32 %28, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %27, i64 %idxprom22
  store i32 %26, ptr %arrayidx23, align 4
  %29 = load ptr, ptr %pIn.addr, align 8
  %30 = load i32, ptr %i, align 4
  %add24 = add nsw i32 %30, 2
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %29, i64 %idxprom25
  store ptr %arrayidx26, ptr %z, align 8
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %nInt, align 4
  %add27 = add nsw i32 %31, %32
  %33 = load ptr, ptr %pIn.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 %add27, ptr %arrayidx28, align 4
  %34 = load ptr, ptr %z, align 8
  %35 = load ptr, ptr %zName.addr, align 8
  %36 = load i32, ptr %nName.addr, align 4
  %conv29 = sext i32 %36 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %conv29, i1 false)
  %37 = load ptr, ptr %z, align 8
  %38 = load i32, ptr %nName.addr, align 4
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %37, i64 %idxprom30
  store i8 0, ptr %arrayidx31, align 1
  %39 = load ptr, ptr %pIn.addr, align 8
  store ptr %39, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then10
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
