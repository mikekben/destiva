; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden ptr @out2Prerelease(ptr noundef %p, ptr noundef %pOp) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pOp.addr = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pOp, ptr %pOp.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aMem, align 8
  %2 = load ptr, ptr %pOp.addr, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %p2, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %pOut, align 8
  %4 = load ptr, ptr %pOut, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags, align 8
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 9216
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pOut, align 8
  %call = call ptr @out2PrereleaseWithClear(ptr noundef %6)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pOut, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  store i16 4, ptr %flags2, align 8
  %8 = load ptr, ptr %pOut, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
declare hidden ptr @out2PrereleaseWithClear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
