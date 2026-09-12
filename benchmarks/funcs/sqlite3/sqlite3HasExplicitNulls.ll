; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.699 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.700 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.701 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3HasExplicitNulls(ptr noundef %pParse, ptr noundef %pList) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sf = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %bNulls = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 4
  %bf.load = load i8, ptr %bNulls, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr %pList.addr, align 8
  %a3 = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a3, i64 0, i64 %idxprom4
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx5, i32 0, i32 3
  %8 = load i8, ptr %sortFlags, align 8
  store i8 %8, ptr %sf, align 1
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load i8, ptr %sf, align 1
  %conv = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then2
  %11 = load i8, ptr %sf, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then2
  %12 = phi i1 [ true, %if.then2 ], [ %cmp9, %lor.rhs ]
  %13 = zext i1 %12 to i64
  %cond = select i1 %12, ptr @.str.700, ptr @.str.701
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %9, ptr noundef @.str.699, ptr noundef %cond)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %lor.end
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
