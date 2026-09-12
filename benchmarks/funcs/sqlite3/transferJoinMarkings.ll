; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @transferJoinMarkings(ptr noundef %pDerived, ptr noundef %pBase) #0 {
entry:
  %pDerived.addr = alloca ptr, align 8
  %pBase.addr = alloca ptr, align 8
  store ptr %pDerived, ptr %pDerived.addr, align 8
  store ptr %pBase, ptr %pBase.addr, align 8
  %0 = load ptr, ptr %pDerived.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBase.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %3 = load ptr, ptr %pDerived.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %flags1, align 4
  %or = or i32 %4, %and
  store i32 %or, ptr %flags1, align 4
  %5 = load ptr, ptr %pBase.addr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 11
  %6 = load i16, ptr %iRightJoinTable, align 4
  %7 = load ptr, ptr %pDerived.addr, align 8
  %iRightJoinTable2 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 11
  store i16 %6, ptr %iRightJoinTable2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
