; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @applyNumericAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemStringify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @applyAffinity(ptr noundef %pRec, i8 noundef signext %affinity, i8 noundef zeroext %enc) #0 {
entry:
  %pRec.addr = alloca ptr, align 8
  %affinity.addr = alloca i8, align 1
  %enc.addr = alloca i8, align 1
  store ptr %pRec, ptr %pRec.addr, align 8
  store i8 %affinity, ptr %affinity.addr, align 1
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load i8, ptr %affinity.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 67
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRec.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 4
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.end17

if.then5:                                         ; preds = %if.then
  %3 = load ptr, ptr %pRec.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %flags6, align 8
  %conv7 = zext i16 %4 to i32
  %and8 = and i32 %conv7, 8
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then5
  %5 = load ptr, ptr %pRec.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags12, align 8
  %conv13 = zext i16 %6 to i32
  %and14 = and i32 %conv13, 2
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then11
  %7 = load ptr, ptr %pRec.addr, align 8
  call void @applyNumericAffinity(ptr noundef %7, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then11
  br label %if.end16

if.else:                                          ; preds = %if.then5
  %8 = load ptr, ptr %pRec.addr, align 8
  call void @sqlite3VdbeIntegerAffinity(ptr noundef %8)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  br label %if.end41

if.else18:                                        ; preds = %entry
  %9 = load i8, ptr %affinity.addr, align 1
  %conv19 = sext i8 %9 to i32
  %cmp20 = icmp eq i32 %conv19, 66
  br i1 %cmp20, label %if.then22, label %if.end40

if.then22:                                        ; preds = %if.else18
  %10 = load ptr, ptr %pRec.addr, align 8
  %flags23 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %flags23, align 8
  %conv24 = zext i16 %11 to i32
  %and25 = and i32 %conv24, 2
  %cmp26 = icmp eq i32 0, %and25
  br i1 %cmp26, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.then22
  %12 = load ptr, ptr %pRec.addr, align 8
  %flags29 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags29, align 8
  %conv30 = zext i16 %13 to i32
  %and31 = and i32 %conv30, 44
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then28
  %14 = load ptr, ptr %pRec.addr, align 8
  %15 = load i8, ptr %enc.addr, align 1
  %call = call i32 @sqlite3VdbeMemStringify(ptr noundef %14, i8 noundef zeroext %15, i8 noundef zeroext 1)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then22
  %16 = load ptr, ptr %pRec.addr, align 8
  %flags36 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 1
  %17 = load i16, ptr %flags36, align 8
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, -45
  %conv39 = trunc i32 %and38 to i16
  store i16 %conv39, ptr %flags36, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.else18
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end17
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeIntegerAffinity(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
