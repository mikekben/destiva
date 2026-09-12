; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WhereOrderByLimitOptLabel(ptr noundef %pWInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %pWInfo.addr = alloca ptr, align 8
  %pInner = alloca ptr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %bOrderedInnerLoop = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 17
  %1 = load i8, ptr %bOrderedInnerLoop, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pWInfo.addr, align 8
  %iContinue = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %iContinue, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pWInfo.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereInfo, ptr %4, i32 0, i32 24
  %5 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %5, i32 0, i32 11
  %6 = load i8, ptr %nLevel, align 2
  %conv = zext i8 %6 to i32
  %sub = sub nsw i32 %conv, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pInner, align 8
  %7 = load ptr, ptr %pInner, align 8
  %addrNxt = getelementptr inbounds nuw %struct.WhereLevel, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %addrNxt, align 8
  store i32 %8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
