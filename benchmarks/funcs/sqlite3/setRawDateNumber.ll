; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden void @setRawDateNumber(ptr noundef %p, double noundef %r) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %r.addr = alloca double, align 8
  store ptr %p, ptr %p.addr, align 8
  store double %r, ptr %r.addr, align 8
  %0 = load double, ptr %r.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %s = getelementptr inbounds nuw %struct.DateTime, ptr %1, i32 0, i32 7
  store double %0, ptr %s, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %2, i32 0, i32 9
  store i8 1, ptr %rawS, align 1
  %3 = load double, ptr %r.addr, align 8
  %cmp = fcmp oge double %3, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load double, ptr %r.addr, align 8
  %cmp1 = fcmp olt double %4, 0x41547F8B20000000
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load double, ptr %r.addr, align 8
  %6 = call double @llvm.fmuladd.f64(double %5, double 8.640000e+07, double 5.000000e-01)
  %conv = fptosi double %6 to i64
  %7 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %7, i32 0, i32 0
  store i64 %conv, ptr %iJD, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %8, i32 0, i32 8
  store i8 1, ptr %validJD, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
