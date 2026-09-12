; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFind(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameWalkWith(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @renameTableSelectCb(ptr noundef %pWalker, ptr noundef %pSelect) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %pSelect.addr, align 8
  %pSrc1 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pSrc1, align 8
  store ptr %3, ptr %pSrc, align 8
  %4 = load ptr, ptr %pSrc, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nSrc, align 8
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %10 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pTab, align 8
  %12 = load ptr, ptr %p, align 8
  %pTab3 = getelementptr inbounds nuw %struct.RenameCtx, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pTab3, align 8
  %cmp4 = icmp eq ptr %11, %13
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %14 = load ptr, ptr %pWalker.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pParse, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %zName, align 8
  call void @renameTokenFind(ptr noundef %15, ptr noundef %16, ptr noundef %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pWalker.addr, align 8
  %21 = load ptr, ptr %pSelect.addr, align 8
  call void @renameWalkWith(ptr noundef %20, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
