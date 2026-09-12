; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereLikeOptimizationStringFixup(ptr noundef %v, ptr noundef %pLevel, ptr noundef %pTerm) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %pLevel.addr = alloca ptr, align 8
  %pTerm.addr = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store ptr %pTerm, ptr %pTerm.addr, align 8
  %0 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 3
  %1 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %call = call ptr @sqlite3VdbeGetOp(ptr noundef %2, i32 noundef -1)
  store ptr %call, ptr %pOp, align 8
  %3 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr = getelementptr inbounds nuw %struct.WhereLevel, ptr %3, i32 0, i32 11
  %4 = load i32, ptr %iLikeRepCntr, align 4
  %shr = lshr i32 %4, 1
  %5 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %5, i32 0, i32 5
  store i32 %shr, ptr %p3, align 4
  %6 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr1 = getelementptr inbounds nuw %struct.WhereLevel, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %iLikeRepCntr1, align 4
  %and2 = and i32 %7, 1
  %conv3 = trunc i32 %and2 to i8
  %conv4 = zext i8 %conv3 to i16
  %8 = load ptr, ptr %pOp, align 8
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %8, i32 0, i32 2
  store i16 %conv4, ptr %p5, align 2
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
