; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }

@pragCName = external hidden constant [47 x ptr], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @setPragmaResultColumnNames(ptr noundef %v, ptr noundef %pPragma) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %pPragma.addr = alloca ptr, align 8
  %n = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store ptr %pPragma, ptr %pPragma.addr, align 8
  %0 = load ptr, ptr %pPragma.addr, align 8
  %nPragCName = getelementptr inbounds nuw %struct.PragmaName, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %nPragCName, align 1
  store i8 %1, ptr %n, align 1
  %2 = load ptr, ptr %v.addr, align 8
  %3 = load i8, ptr %n, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8, ptr %n, align 1
  %conv2 = zext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv2, %cond.false ]
  call void @sqlite3VdbeSetNumCols(ptr noundef %2, i32 noundef %cond)
  %5 = load i8, ptr %n, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %v.addr, align 8
  %7 = load ptr, ptr %pPragma.addr, align 8
  %zName = getelementptr inbounds nuw %struct.PragmaName, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %zName, align 8
  %call = call i32 @sqlite3VdbeSetColName(ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef %8, ptr noundef null)
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, ptr %i, align 4
  %9 = load ptr, ptr %pPragma.addr, align 8
  %iPragCName = getelementptr inbounds nuw %struct.PragmaName, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %iPragCName, align 2
  %conv6 = zext i8 %10 to i32
  store i32 %conv6, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, ptr %i, align 4
  %12 = load i8, ptr %n, align 1
  %conv7 = zext i8 %12 to i32
  %cmp8 = icmp slt i32 %11, %conv7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %v.addr, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [47 x ptr], ptr @pragCName, i64 0, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %call10 = call i32 @sqlite3VdbeSetColName(ptr noundef %13, i32 noundef %14, i32 noundef 0, ptr noundef %16, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
