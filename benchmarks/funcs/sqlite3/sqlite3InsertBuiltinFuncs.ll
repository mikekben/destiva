; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDefHash = type { [23 x ptr] }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

@sqlite3BuiltinFunctions = external hidden global %struct.FuncDefHash, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3InsertBuiltinFuncs(ptr noundef %aDef, i32 noundef %nDef) #0 {
entry:
  %aDef.addr = alloca ptr, align 8
  %nDef.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pOther = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %nName = alloca i32, align 4
  %h = alloca i32, align 4
  store ptr %aDef, ptr %aDef.addr, align 8
  store i32 %nDef, ptr %nDef.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %nDef.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %aDef.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.FuncDef, ptr %2, i64 %idxprom
  %zName1 = getelementptr inbounds nuw %struct.FuncDef, ptr %arrayidx, i32 0, i32 8
  %4 = load ptr, ptr %zName1, align 8
  store ptr %4, ptr %zName, align 8
  %5 = load ptr, ptr %zName, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %5)
  store i32 %call, ptr %nName, align 4
  %6 = load ptr, ptr %zName, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, ptr %nName, align 4
  %add = add nsw i32 %conv, %8
  %rem = srem i32 %add, 23
  store i32 %rem, ptr %h, align 4
  %9 = load i32, ptr %h, align 4
  %10 = load ptr, ptr %zName, align 8
  %call3 = call ptr @sqlite3FunctionSearch(i32 noundef %9, ptr noundef %10)
  store ptr %call3, ptr %pOther, align 8
  %11 = load ptr, ptr %pOther, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %pOther, align 8
  %pNext = getelementptr inbounds nuw %struct.FuncDef, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pNext, align 8
  %14 = load ptr, ptr %aDef.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds %struct.FuncDef, ptr %14, i64 %idxprom4
  %pNext6 = getelementptr inbounds nuw %struct.FuncDef, ptr %arrayidx5, i32 0, i32 3
  store ptr %13, ptr %pNext6, align 8
  %16 = load ptr, ptr %aDef.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.FuncDef, ptr %16, i64 %idxprom7
  %18 = load ptr, ptr %pOther, align 8
  %pNext9 = getelementptr inbounds nuw %struct.FuncDef, ptr %18, i32 0, i32 3
  store ptr %arrayidx8, ptr %pNext9, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %aDef.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds %struct.FuncDef, ptr %19, i64 %idxprom10
  %pNext12 = getelementptr inbounds nuw %struct.FuncDef, ptr %arrayidx11, i32 0, i32 3
  store ptr null, ptr %pNext12, align 8
  %21 = load i32, ptr %h, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [23 x ptr], ptr @sqlite3BuiltinFunctions, i64 0, i64 %idxprom13
  %22 = load ptr, ptr %arrayidx14, align 8
  %23 = load ptr, ptr %aDef.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds %struct.FuncDef, ptr %23, i64 %idxprom15
  %u = getelementptr inbounds nuw %struct.FuncDef, ptr %arrayidx16, i32 0, i32 9
  store ptr %22, ptr %u, align 8
  %25 = load ptr, ptr %aDef.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds %struct.FuncDef, ptr %25, i64 %idxprom17
  %27 = load i32, ptr %h, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [23 x ptr], ptr @sqlite3BuiltinFunctions, i64 0, i64 %idxprom19
  store ptr %arrayidx18, ptr %arrayidx20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FunctionSearch(i32 noundef, ptr noundef) #0

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
