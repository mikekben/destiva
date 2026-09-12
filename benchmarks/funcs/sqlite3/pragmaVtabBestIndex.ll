; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.PragmaVtab = type { %struct.sqlite3_vtab, ptr, ptr, i8, i8 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pConstraint = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %seen = alloca [2 x i32], align 4
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  %0 = load ptr, ptr %tab.addr, align 8
  store ptr %0, ptr %pTab, align 8
  %1 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %1, i32 0, i32 9
  store double 1.000000e+00, ptr %estimatedCost, align 8
  %2 = load ptr, ptr %pTab, align 8
  %nHidden = getelementptr inbounds nuw %struct.PragmaVtab, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %nHidden, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %aConstraint, align 8
  store ptr %5, ptr %pConstraint, align 8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 1
  store i32 0, ptr %arrayidx2, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nConstraint, align 8
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pConstraint, align 8
  %usable = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %9, i32 0, i32 2
  %10 = load i8, ptr %usable, align 1
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %11 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %11, i32 0, i32 1
  %12 = load i8, ptr %op, align 4
  %conv10 = zext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %13 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %iColumn, align 4
  %15 = load ptr, ptr %pTab, align 8
  %iHidden = getelementptr inbounds nuw %struct.PragmaVtab, ptr %15, i32 0, i32 4
  %16 = load i8, ptr %iHidden, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp slt i32 %14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  %17 = load ptr, ptr %pConstraint, align 8
  %iColumn20 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %iColumn20, align 4
  %19 = load ptr, ptr %pTab, align 8
  %iHidden21 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %19, i32 0, i32 4
  %20 = load i8, ptr %iHidden21, align 1
  %conv22 = zext i8 %20 to i32
  %sub = sub nsw i32 %18, %conv22
  store i32 %sub, ptr %j, align 4
  %21 = load i32, ptr %i, align 4
  %add = add nsw i32 %21, 1
  %22 = load i32, ptr %j, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then18, %if.then13, %if.then8
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  %24 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx24 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 0
  %25 = load i32, ptr %arrayidx24, align 4
  %cmp25 = icmp eq i32 %25, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end
  %26 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost28 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %26, i32 0, i32 9
  store double 0x41DFFFFFFFC00000, ptr %estimatedCost28, align 8
  %27 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %27, i32 0, i32 10
  store i64 2147483647, ptr %estimatedRows, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %for.end
  %arrayidx30 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 0
  %28 = load i32, ptr %arrayidx30, align 4
  %sub31 = sub nsw i32 %28, 1
  store i32 %sub31, ptr %j, align 4
  %29 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %aConstraintUsage, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %30, i64 %idxprom32
  %argvIndex = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx33, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %32 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage34 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %aConstraintUsage34, align 8
  %34 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %33, i64 %idxprom35
  %omit = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx36, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  %arrayidx37 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 1
  %35 = load i32, ptr %arrayidx37, align 4
  %cmp38 = icmp eq i32 %35, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end29
  %36 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost42 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %36, i32 0, i32 9
  store double 2.000000e+01, ptr %estimatedCost42, align 8
  %37 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows43 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %37, i32 0, i32 10
  store i64 20, ptr %estimatedRows43, align 8
  %arrayidx44 = getelementptr inbounds [2 x i32], ptr %seen, i64 0, i64 1
  %38 = load i32, ptr %arrayidx44, align 4
  %sub45 = sub nsw i32 %38, 1
  store i32 %sub45, ptr %j, align 4
  %39 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage46 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %aConstraintUsage46, align 8
  %41 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %40, i64 %idxprom47
  %argvIndex49 = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx48, i32 0, i32 0
  store i32 2, ptr %argvIndex49, align 4
  %42 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage50 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %aConstraintUsage50, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %43, i64 %idxprom51
  %omit53 = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx52, i32 0, i32 1
  store i8 1, ptr %omit53, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then40, %if.then27, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
