; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RealSameAsInt(double noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @alsoAnInt(ptr noundef %pRec, double noundef %rValue, ptr noundef %piValue) #0 {
entry:
  %retval = alloca i32, align 4
  %pRec.addr = alloca ptr, align 8
  %rValue.addr = alloca double, align 8
  %piValue.addr = alloca ptr, align 8
  %iValue = alloca i64, align 8
  store ptr %pRec, ptr %pRec.addr, align 8
  store double %rValue, ptr %rValue.addr, align 8
  store ptr %piValue, ptr %piValue.addr, align 8
  %0 = load double, ptr %rValue.addr, align 8
  %conv = fptosi double %0 to i64
  store i64 %conv, ptr %iValue, align 8
  %1 = load double, ptr %rValue.addr, align 8
  %2 = load i64, ptr %iValue, align 8
  %call = call i32 @sqlite3RealSameAsInt(double noundef %1, i64 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %iValue, align 8
  %4 = load ptr, ptr %piValue.addr, align 8
  store i64 %3, ptr %4, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pRec.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %piValue.addr, align 8
  %8 = load ptr, ptr %pRec.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %pRec.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %enc, align 2
  %call1 = call i32 @sqlite3Atoi64(ptr noundef %6, ptr noundef %7, i32 noundef %9, i8 noundef zeroext %11)
  %cmp = icmp eq i32 0, %call1
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
