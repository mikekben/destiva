; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.21 = type { i8, i8, i8 }
%struct.Token = type { ptr, i32 }

@sqlite3JoinType.zKeyText = external hidden constant [34 x i8], align 16
@sqlite3JoinType.aKeyword = external hidden constant [7 x %struct.anon.21], align 16
@.str.795 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.796 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.797 = external hidden unnamed_addr constant [55 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3JoinType(ptr noundef %pParse, ptr noundef %pA, ptr noundef %pB, ptr noundef %pC) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pC.addr = alloca ptr, align 8
  %jointype = alloca i32, align 4
  %apAll = alloca [3 x ptr], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zSp = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %pC, ptr %pC.addr, align 8
  store i32 0, ptr %jointype, align 4
  %0 = load ptr, ptr %pA.addr, align 8
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %apAll, i64 0, i64 0
  store ptr %0, ptr %arrayidx, align 16
  %1 = load ptr, ptr %pB.addr, align 8
  %arrayidx1 = getelementptr inbounds [3 x ptr], ptr %apAll, i64 0, i64 1
  store ptr %1, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %pC.addr, align 8
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %apAll, i64 0, i64 2
  store ptr %2, ptr %arrayidx2, align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x ptr], ptr %apAll, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx3, align 8
  %tobool = icmp ne ptr %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %for.body, label %for.end31

for.body:                                         ; preds = %land.end
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [3 x ptr], ptr %apAll, i64 0, i64 %idxprom4
  %8 = load ptr, ptr %arrayidx5, align 8
  store ptr %8, ptr %p, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4
  %cmp7 = icmp slt i32 %9, 7
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %10 = load ptr, ptr %p, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %n, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [7 x %struct.anon.21], ptr @sqlite3JoinType.aKeyword, i64 0, i64 %idxprom9
  %nChar = getelementptr inbounds nuw %struct.anon.21, ptr %arrayidx10, i32 0, i32 1
  %13 = load i8, ptr %nChar, align 1
  %conv = zext i8 %13 to i32
  %cmp11 = icmp eq i32 %11, %conv
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %14 = load ptr, ptr %p, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %z, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [7 x %struct.anon.21], ptr @sqlite3JoinType.aKeyword, i64 0, i64 %idxprom13
  %i15 = getelementptr inbounds nuw %struct.anon.21, ptr %arrayidx14, i32 0, i32 0
  %17 = load i8, ptr %i15, align 1
  %idxprom16 = zext i8 %17 to i64
  %arrayidx17 = getelementptr inbounds nuw [34 x i8], ptr @sqlite3JoinType.zKeyText, i64 0, i64 %idxprom16
  %18 = load ptr, ptr %p, align 8
  %n18 = getelementptr inbounds nuw %struct.Token, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %n18, align 8
  %call = call i32 @sqlite3_strnicmp(ptr noundef %15, ptr noundef %arrayidx17, i32 noundef %19)
  %cmp19 = icmp eq i32 %call, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [7 x %struct.anon.21], ptr @sqlite3JoinType.aKeyword, i64 0, i64 %idxprom21
  %code = getelementptr inbounds nuw %struct.anon.21, ptr %arrayidx22, i32 0, i32 2
  %21 = load i8, ptr %code, align 1
  %conv23 = zext i8 %21 to i32
  %22 = load i32, ptr %jointype, align 4
  %or = or i32 %22, %conv23
  store i32 %or, ptr %jointype, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond6
  %24 = load i32, ptr %j, align 4
  %cmp24 = icmp sge i32 %24, 7
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.end
  %25 = load i32, ptr %jointype, align 4
  %or27 = or i32 %25, 64
  store i32 %or27, ptr %jointype, align 4
  br label %for.end31

if.end28:                                         ; preds = %for.end
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %26 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end31:                                        ; preds = %if.then26, %land.end
  %27 = load i32, ptr %jointype, align 4
  %and = and i32 %27, 33
  %cmp32 = icmp eq i32 %and, 33
  br i1 %cmp32, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end31
  %28 = load i32, ptr %jointype, align 4
  %and34 = and i32 %28, 64
  %cmp35 = icmp ne i32 %and34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %lor.lhs.false, %for.end31
  store ptr @.str.795, ptr %zSp, align 8
  %29 = load ptr, ptr %pC.addr, align 8
  %cmp38 = icmp eq ptr %29, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  %30 = load ptr, ptr %zSp, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %zSp, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pA.addr, align 8
  %33 = load ptr, ptr %pB.addr, align 8
  %34 = load ptr, ptr %zSp, align 8
  %35 = load ptr, ptr %pC.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %31, ptr noundef @.str.796, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35)
  store i32 1, ptr %jointype, align 4
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false
  %36 = load i32, ptr %jointype, align 4
  %and42 = and i32 %36, 32
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end50

land.lhs.true45:                                  ; preds = %if.else
  %37 = load i32, ptr %jointype, align 4
  %and46 = and i32 %37, 24
  %cmp47 = icmp ne i32 %and46, 8
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true45
  %38 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %38, ptr noundef @.str.797)
  store i32 1, ptr %jointype, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true45, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end41
  %39 = load i32, ptr %jointype, align 4
  ret i32 %39
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
