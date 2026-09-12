; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereAndInfo = type { %struct.WhereClause }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }

; Function Attrs: nounwind uwtable
define hidden ptr @whereNthSubterm(ptr noundef %pTerm, i32 noundef %N) #0 {
entry:
  %retval = alloca ptr, align 8
  %pTerm.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %pTerm, ptr %pTerm.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %pTerm.addr, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 4
  %1 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %N.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load ptr, ptr %pTerm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %N.addr, align 4
  %5 = load ptr, ptr %pTerm.addr, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %u, align 8
  %wc = getelementptr inbounds nuw %struct.WhereAndInfo, ptr %6, i32 0, i32 0
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %wc, i32 0, i32 4
  %7 = load i32, ptr %nTerm, align 4
  %cmp4 = icmp slt i32 %4, %7
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %pTerm.addr, align 8
  %u7 = getelementptr inbounds nuw %struct.WhereTerm, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %u7, align 8
  %wc8 = getelementptr inbounds nuw %struct.WhereAndInfo, ptr %9, i32 0, i32 0
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %wc8, i32 0, i32 6
  %10 = load ptr, ptr %a, align 8
  %11 = load i32, ptr %N.addr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %10, i64 %idxprom
  store ptr %arrayidx, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then6, %cond.end
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
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
