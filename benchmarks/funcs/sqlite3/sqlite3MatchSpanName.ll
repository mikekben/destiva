; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3MatchSpanName(ptr noundef %zSpan, ptr noundef %zCol, ptr noundef %zTab, ptr noundef %zDb) #0 {
entry:
  %retval = alloca i32, align 4
  %zSpan.addr = alloca ptr, align 8
  %zCol.addr = alloca ptr, align 8
  %zTab.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %zSpan, ptr %zSpan.addr, align 8
  store ptr %zCol, ptr %zCol.addr, align 8
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %zSpan.addr, align 8
  %1 = load i32, ptr %n, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %zSpan.addr, align 8
  %4 = load i32, ptr %n, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv3, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %8 = load ptr, ptr %zDb.addr, align 8
  %tobool5 = icmp ne ptr %8, null
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %9 = load ptr, ptr %zSpan.addr, align 8
  %10 = load ptr, ptr %zDb.addr, align 8
  %11 = load i32, ptr %n, align 4
  %call = call i32 @sqlite3_strnicmp(ptr noundef %9, ptr noundef %10, i32 noundef %11)
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load ptr, ptr %zDb.addr, align 8
  %13 = load i32, ptr %n, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %for.end
  %15 = load i32, ptr %n, align 4
  %add = add nsw i32 %15, 1
  %16 = load ptr, ptr %zSpan.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  store ptr %add.ptr, ptr %zSpan.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %if.end
  %17 = load ptr, ptr %zSpan.addr, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 %idxprom14
  %19 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %19 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.rhs18, label %land.end24

land.rhs18:                                       ; preds = %for.cond13
  %20 = load ptr, ptr %zSpan.addr, align 8
  %21 = load i32, ptr %n, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 %idxprom19
  %22 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp ne i32 %conv21, 46
  br label %land.end24

land.end24:                                       ; preds = %land.rhs18, %for.cond13
  %23 = phi i1 [ false, %for.cond13 ], [ %cmp22, %land.rhs18 ]
  br i1 %23, label %for.body25, label %for.end28

for.body25:                                       ; preds = %land.end24
  br label %for.inc26

for.inc26:                                        ; preds = %for.body25
  %24 = load i32, ptr %n, align 4
  %inc27 = add nsw i32 %24, 1
  store i32 %inc27, ptr %n, align 4
  br label %for.cond13, !llvm.loop !8

for.end28:                                        ; preds = %land.end24
  %25 = load ptr, ptr %zTab.addr, align 8
  %tobool29 = icmp ne ptr %25, null
  br i1 %tobool29, label %land.lhs.true30, label %if.end41

land.lhs.true30:                                  ; preds = %for.end28
  %26 = load ptr, ptr %zSpan.addr, align 8
  %27 = load ptr, ptr %zTab.addr, align 8
  %28 = load i32, ptr %n, align 4
  %call31 = call i32 @sqlite3_strnicmp(ptr noundef %26, ptr noundef %27, i32 noundef %28)
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then40, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true30
  %29 = load ptr, ptr %zTab.addr, align 8
  %30 = load i32, ptr %n, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %29, i64 %idxprom35
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false34, %land.lhs.true30
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false34, %for.end28
  %32 = load i32, ptr %n, align 4
  %add42 = add nsw i32 %32, 1
  %33 = load ptr, ptr %zSpan.addr, align 8
  %idx.ext43 = sext i32 %add42 to i64
  %add.ptr44 = getelementptr inbounds i8, ptr %33, i64 %idx.ext43
  store ptr %add.ptr44, ptr %zSpan.addr, align 8
  %34 = load ptr, ptr %zCol.addr, align 8
  %tobool45 = icmp ne ptr %34, null
  br i1 %tobool45, label %land.lhs.true46, label %if.end51

land.lhs.true46:                                  ; preds = %if.end41
  %35 = load ptr, ptr %zSpan.addr, align 8
  %36 = load ptr, ptr %zCol.addr, align 8
  %call47 = call i32 @sqlite3StrICmp(ptr noundef %35, ptr noundef %36)
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true46
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %land.lhs.true46, %if.end41
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then50, %if.then40, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
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
!8 = distinct !{!8, !7}
