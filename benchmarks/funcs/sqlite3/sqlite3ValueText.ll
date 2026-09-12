; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ValueText(ptr noundef %pVal, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  store ptr %pVal, ptr %pVal.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load ptr, ptr %pVal.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pVal.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 514
  %cmp = icmp eq i32 %and, 514
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %pVal.addr, align 8
  %enc2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %enc2, align 2
  %conv3 = zext i8 %4 to i32
  %5 = load i8, ptr %enc.addr, align 1
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pVal.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %z, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %pVal.addr, align 8
  %flags9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %flags9, align 8
  %conv10 = zext i16 %9 to i32
  %and11 = and i32 %conv10, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end8
  %10 = load ptr, ptr %pVal.addr, align 8
  %11 = load i8, ptr %enc.addr, align 1
  %call = call ptr @valueToText(ptr noundef %10, i8 noundef zeroext %11)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then7, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
declare hidden ptr @valueToText(ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
