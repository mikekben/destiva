; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

@.str.295 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.768 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.769 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.772 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.773 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.774 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.775 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @explainIndexRange(ptr noundef %pStr, ptr noundef %pLoop) #0 {
entry:
  %pStr.addr = alloca ptr, align 8
  %pLoop.addr = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %nEq = alloca i16, align 2
  %nSkip = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %z = alloca ptr, align 8
  store ptr %pStr, ptr %pStr.addr, align 8
  store ptr %pLoop, ptr %pLoop.addr, align 8
  %0 = load ptr, ptr %pLoop.addr, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 7
  %pIndex1 = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 4
  %1 = load ptr, ptr %pIndex1, align 8
  store ptr %1, ptr %pIndex, align 8
  %2 = load ptr, ptr %pLoop.addr, align 8
  %u2 = getelementptr inbounds nuw %struct.WhereLoop, ptr %2, i32 0, i32 7
  %nEq3 = getelementptr inbounds nuw %struct.anon.19, ptr %u2, i32 0, i32 0
  %3 = load i16, ptr %nEq3, align 8
  store i16 %3, ptr %nEq, align 2
  %4 = load ptr, ptr %pLoop.addr, align 8
  %nSkip4 = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 10
  %5 = load i16, ptr %nSkip4, align 2
  store i16 %5, ptr %nSkip, align 2
  %6 = load i16, ptr %nEq, align 2
  %conv = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %pLoop.addr, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %wsFlags, align 8
  %and = and i32 %8, 48
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %9, ptr noundef @.str.772, i32 noundef 2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i16, ptr %nEq, align 2
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp slt i32 %10, %conv8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pIndex, align 8
  %13 = load i32, ptr %i, align 4
  %call = call ptr @explainIndexColumnName(ptr noundef %12, i32 noundef %13)
  store ptr %call, ptr %z, align 8
  %14 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  %15 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %15, ptr noundef @.str.773, i32 noundef 5)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.body
  %16 = load ptr, ptr %pStr.addr, align 8
  %17 = load i32, ptr %i, align 4
  %18 = load i16, ptr %nSkip, align 2
  %conv13 = zext i16 %18 to i32
  %cmp14 = icmp sge i32 %17, %conv13
  %19 = zext i1 %cmp14 to i64
  %cond = select i1 %cmp14, ptr @.str.774, ptr @.str.775
  %20 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %16, ptr noundef %cond, ptr noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %i, align 4
  store i32 %22, ptr %j, align 4
  %23 = load ptr, ptr %pLoop.addr, align 8
  %wsFlags16 = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %wsFlags16, align 8
  %and17 = and i32 %24, 32
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.end
  %25 = load ptr, ptr %pStr.addr, align 8
  %26 = load ptr, ptr %pIndex, align 8
  %27 = load ptr, ptr %pLoop.addr, align 8
  %u20 = getelementptr inbounds nuw %struct.WhereLoop, ptr %27, i32 0, i32 7
  %nBtm = getelementptr inbounds nuw %struct.anon.19, ptr %u20, i32 0, i32 1
  %28 = load i16, ptr %nBtm, align 2
  %conv21 = zext i16 %28 to i32
  %29 = load i32, ptr %j, align 4
  %30 = load i32, ptr %i, align 4
  call void @explainAppendTerm(ptr noundef %25, ptr noundef %26, i32 noundef %conv21, i32 noundef %29, i32 noundef %30, ptr noundef @.str.768)
  store i32 1, ptr %i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.end
  %31 = load ptr, ptr %pLoop.addr, align 8
  %wsFlags23 = getelementptr inbounds nuw %struct.WhereLoop, ptr %31, i32 0, i32 8
  %32 = load i32, ptr %wsFlags23, align 8
  %and24 = and i32 %32, 16
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  %33 = load ptr, ptr %pStr.addr, align 8
  %34 = load ptr, ptr %pIndex, align 8
  %35 = load ptr, ptr %pLoop.addr, align 8
  %u27 = getelementptr inbounds nuw %struct.WhereLoop, ptr %35, i32 0, i32 7
  %nTop = getelementptr inbounds nuw %struct.anon.19, ptr %u27, i32 0, i32 2
  %36 = load i16, ptr %nTop, align 4
  %conv28 = zext i16 %36 to i32
  %37 = load i32, ptr %j, align 4
  %38 = load i32, ptr %i, align 4
  call void @explainAppendTerm(ptr noundef %33, ptr noundef %34, i32 noundef %conv28, i32 noundef %37, i32 noundef %38, ptr noundef @.str.769)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22
  %39 = load ptr, ptr %pStr.addr, align 8
  call void @sqlite3_str_append(ptr noundef %39, ptr noundef @.str.295, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end29, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @explainIndexColumnName(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @explainAppendTerm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

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
