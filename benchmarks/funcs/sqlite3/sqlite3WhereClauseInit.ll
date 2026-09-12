; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WhereClauseInit(ptr noundef %pWC, ptr noundef %pWInfo) #0 {
entry:
  %pWC.addr = alloca ptr, align 8
  %pWInfo.addr = alloca ptr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %1 = load ptr, ptr %pWC.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereClause, ptr %1, i32 0, i32 0
  store ptr %0, ptr %pWInfo1, align 8
  %2 = load ptr, ptr %pWC.addr, align 8
  %hasOr = getelementptr inbounds nuw %struct.WhereClause, ptr %2, i32 0, i32 3
  store i8 0, ptr %hasOr, align 1
  %3 = load ptr, ptr %pWC.addr, align 8
  %pOuter = getelementptr inbounds nuw %struct.WhereClause, ptr %3, i32 0, i32 1
  store ptr null, ptr %pOuter, align 8
  %4 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 4
  store i32 0, ptr %nTerm, align 4
  %5 = load ptr, ptr %pWC.addr, align 8
  %nSlot = getelementptr inbounds nuw %struct.WhereClause, ptr %5, i32 0, i32 5
  store i32 8, ptr %nSlot, align 8
  %6 = load ptr, ptr %pWC.addr, align 8
  %aStatic = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.WhereTerm], ptr %aStatic, i64 0, i64 0
  %7 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %7, i32 0, i32 6
  store ptr %arraydecay, ptr %a, align 8
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
