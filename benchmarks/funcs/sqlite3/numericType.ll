; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @numericType(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i16, align 2
  %pMem.addr = alloca ptr, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 44
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 44
  %conv4 = trunc i32 %and3 to i16
  store i16 %conv4, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pMem.addr, align 8
  %flags5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags5, align 8
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 18
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %6 = load ptr, ptr %pMem.addr, align 8
  %call = call zeroext i16 @computeNumericType(ptr noundef %6)
  store i16 %call, ptr %retval, align 2
  br label %return

if.end10:                                         ; preds = %if.end
  store i16 0, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %7 = load i16, ptr %retval, align 2
  ret i16 %7
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @computeNumericType(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
