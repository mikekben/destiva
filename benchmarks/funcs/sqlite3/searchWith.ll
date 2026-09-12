; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @searchWith(ptr noundef %pWith, ptr noundef %pItem, ptr noundef %ppContext) #0 {
entry:
  %retval = alloca ptr, align 8
  %pWith.addr = alloca ptr, align 8
  %pItem.addr = alloca ptr, align 8
  %ppContext.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pWith, ptr %pWith.addr, align 8
  store ptr %pItem, ptr %pItem.addr, align 8
  store ptr %ppContext, ptr %ppContext.addr, align 8
  %0 = load ptr, ptr %pItem.addr, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zDatabase, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pItem.addr, align 8
  %zName1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %zName1, align 8
  store ptr %3, ptr %zName, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pWith.addr, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %if.then
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nCte, align 8
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %9 = load ptr, ptr %zName, align 8
  %10 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  %zName6 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx, i32 0, i32 0
  %12 = load ptr, ptr %zName6, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %9, ptr noundef %12)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body5
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %ppContext.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %p, align 8
  %a9 = getelementptr inbounds nuw %struct.With, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [1 x %struct.Cte], ptr %a9, i64 0, i64 %idxprom10
  store ptr %arrayidx11, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %18 = load ptr, ptr %p, align 8
  %pOuter = getelementptr inbounds nuw %struct.With, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pOuter, align 8
  store ptr %19, ptr %p, align 8
  br label %for.cond, !llvm.loop !8

for.end13:                                        ; preds = %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end13, %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then8
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
