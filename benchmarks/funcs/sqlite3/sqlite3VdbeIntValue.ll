; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i64 @sqlite3VdbeIntValue(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i64, align 8
  %pMem.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags1, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %flags, align 4
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 36
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %u, align 8
  store i64 %4, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %flags, align 4
  %and2 = and i32 %5, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %pMem.addr, align 8
  %u5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 0
  %7 = load double, ptr %u5, align 8
  %call = call i64 @doubleToInt64(double noundef %7)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else6:                                         ; preds = %if.else
  %8 = load i32, ptr %flags, align 4
  %and7 = and i32 %8, 18
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else6
  %9 = load ptr, ptr %pMem.addr, align 8
  %call10 = call i64 @memIntValue(ptr noundef %9)
  store i64 %call10, ptr %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else6
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else11, %if.then9, %if.then4, %if.then
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind uwtable
declare hidden i64 @doubleToInt64(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @memIntValue(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
