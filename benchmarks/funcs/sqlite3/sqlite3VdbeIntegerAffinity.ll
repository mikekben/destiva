; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i64 @doubleToInt64(double noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeIntegerAffinity(ptr noundef %pMem) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %ix = alloca i64, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 0
  %1 = load double, ptr %u, align 8
  %call = call i64 @doubleToInt64(double noundef %1)
  store i64 %call, ptr %ix, align 8
  %2 = load ptr, ptr %pMem.addr, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 0
  %3 = load double, ptr %u1, align 8
  %4 = load i64, ptr %ix, align 8
  %conv = sitofp i64 %4 to double
  %cmp = fcmp oeq double %3, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %ix, align 8
  %cmp3 = icmp sgt i64 %5, -9223372036854775808
  br i1 %cmp3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load i64, ptr %ix, align 8
  %cmp6 = icmp slt i64 %6, 9223372036854775807
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  %7 = load i64, ptr %ix, align 8
  %8 = load ptr, ptr %pMem.addr, align 8
  %u8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 0
  store i64 %7, ptr %u8, align 8
  %9 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags, align 8
  %conv9 = zext i16 %10 to i32
  %and = and i32 %conv9, -49600
  %or = or i32 %and, 4
  %conv10 = trunc i32 %or to i16
  %11 = load ptr, ptr %pMem.addr, align 8
  %flags11 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 1
  store i16 %conv10, ptr %flags11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true, %entry
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
