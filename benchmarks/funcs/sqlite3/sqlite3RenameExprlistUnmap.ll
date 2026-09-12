; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @renameUnmapExprCb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RenameExprlistUnmap(ptr noundef %pParse, ptr noundef %pEList) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sWalker = alloca %struct.Walker, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  %0 = load ptr, ptr %pEList.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %sWalker, i8 0, i64 48, i1 false)
  %1 = load ptr, ptr %pParse.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 0
  store ptr %1, ptr %pParse1, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 1
  store ptr @renameUnmapExprCb, ptr %xExprCallback, align 8
  %2 = load ptr, ptr %pEList.addr, align 8
  %call = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %pEList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 1
  %9 = load ptr, ptr %zName, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %6, ptr noundef null, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
