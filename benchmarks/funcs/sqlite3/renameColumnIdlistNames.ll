; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFind(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameColumnIdlistNames(ptr noundef %pParse, ptr noundef %pCtx, ptr noundef %pIdList, ptr noundef %zOld) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pIdList.addr = alloca ptr, align 8
  %zOld.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %zName = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pIdList, ptr %pIdList.addr, align 8
  store ptr %zOld, ptr %zOld.addr, align 8
  %0 = load ptr, ptr %pIdList.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pIdList.addr, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nId, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pIdList.addr, align 8
  %a = getelementptr inbounds nuw %struct.IdList, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %a, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.IdList_item, ptr %5, i64 %idxprom
  %zName1 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx, i32 0, i32 0
  %7 = load ptr, ptr %zName1, align 8
  store ptr %7, ptr %zName, align 8
  %8 = load ptr, ptr %zName, align 8
  %9 = load ptr, ptr %zOld.addr, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %8, ptr noundef %9)
  %cmp2 = icmp eq i32 0, %call
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %zName, align 8
  call void @renameTokenFind(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry
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
