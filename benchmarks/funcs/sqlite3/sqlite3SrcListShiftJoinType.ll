; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SrcListShiftJoinType(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nSrc, align 8
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %i, align 4
  %sub1 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %6 = load i8, ptr %jointype, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.SrcList, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a2, i64 0, i64 %idxprom3
  %fg5 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx4, i32 0, i32 9
  %jointype6 = getelementptr inbounds nuw %struct.anon, ptr %fg5, i32 0, i32 0
  store i8 %6, ptr %jointype6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %p.addr, align 8
  %a7 = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a7, i64 0, i64 0
  %fg9 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx8, i32 0, i32 9
  %jointype10 = getelementptr inbounds nuw %struct.anon, ptr %fg9, i32 0, i32 0
  store i8 0, ptr %jointype10, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
