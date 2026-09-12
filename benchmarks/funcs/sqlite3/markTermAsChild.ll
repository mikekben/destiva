; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @markTermAsChild(ptr noundef %pWC, i32 noundef %iChild, i32 noundef %iParent) #0 {
entry:
  %pWC.addr = alloca ptr, align 8
  %iChild.addr = alloca i32, align 4
  %iParent.addr = alloca i32, align 4
  store ptr %pWC, ptr %pWC.addr, align 8
  store i32 %iChild, ptr %iChild.addr, align 4
  store i32 %iParent, ptr %iParent.addr, align 4
  %0 = load i32, ptr %iParent.addr, align 4
  %1 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %a, align 8
  %3 = load i32, ptr %iChild.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %2, i64 %idxprom
  %iParent1 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx, i32 0, i32 7
  store i32 %0, ptr %iParent1, align 8
  %4 = load ptr, ptr %pWC.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %a2, align 8
  %6 = load i32, ptr %iParent.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds %struct.WhereTerm, ptr %5, i64 %idxprom3
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx4, i32 0, i32 2
  %7 = load i16, ptr %truthProb, align 8
  %8 = load ptr, ptr %pWC.addr, align 8
  %a5 = getelementptr inbounds nuw %struct.WhereClause, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %a5, align 8
  %10 = load i32, ptr %iChild.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds %struct.WhereTerm, ptr %9, i64 %idxprom6
  %truthProb8 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx7, i32 0, i32 2
  store i16 %7, ptr %truthProb8, align 8
  %11 = load ptr, ptr %pWC.addr, align 8
  %a9 = getelementptr inbounds nuw %struct.WhereClause, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %a9, align 8
  %13 = load i32, ptr %iParent.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds %struct.WhereTerm, ptr %12, i64 %idxprom10
  %nChild = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx11, i32 0, i32 5
  %14 = load i8, ptr %nChild, align 2
  %inc = add i8 %14, 1
  store i8 %inc, ptr %nChild, align 2
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
