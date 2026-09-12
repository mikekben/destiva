; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden void @applyNumericAffinity(ptr noundef %pRec, i32 noundef %bTryForInt) #0 {
entry:
  %pRec.addr = alloca ptr, align 8
  %bTryForInt.addr = alloca i32, align 4
  %rValue = alloca double, align 8
  %enc = alloca i8, align 1
  %rc = alloca i32, align 4
  store ptr %pRec, ptr %pRec.addr, align 8
  store i32 %bTryForInt, ptr %bTryForInt.addr, align 4
  %0 = load ptr, ptr %pRec.addr, align 8
  %enc1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %enc1, align 2
  store i8 %1, ptr %enc, align 1
  %2 = load ptr, ptr %pRec.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %z, align 8
  %4 = load ptr, ptr %pRec.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %n, align 4
  %6 = load i8, ptr %enc, align 1
  %call = call i32 @sqlite3AtoF(ptr noundef %3, ptr noundef %rValue, i32 noundef %5, i8 noundef zeroext %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %pRec.addr, align 8
  %10 = load double, ptr %rValue, align 8
  %11 = load ptr, ptr %pRec.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 0
  %call3 = call i32 @alsoAnInt(ptr noundef %9, double noundef %10, ptr noundef %u)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %pRec.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags, align 8
  %conv = zext i16 %13 to i32
  %or = or i32 %conv, 4
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, ptr %flags, align 8
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load double, ptr %rValue, align 8
  %15 = load ptr, ptr %pRec.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 0
  store double %14, ptr %u6, align 8
  %16 = load ptr, ptr %pRec.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 1
  %17 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %17 to i32
  %or9 = or i32 %conv8, 8
  %conv10 = trunc i32 %or9 to i16
  store i16 %conv10, ptr %flags7, align 8
  %18 = load i32, ptr %bTryForInt.addr, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  %19 = load ptr, ptr %pRec.addr, align 8
  call void @sqlite3VdbeIntegerAffinity(ptr noundef %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then4
  %20 = load ptr, ptr %pRec.addr, align 8
  %flags15 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 1
  %21 = load i16, ptr %flags15, align 8
  %conv16 = zext i16 %21 to i32
  %and = and i32 %conv16, -3
  %conv17 = trunc i32 %and to i16
  store i16 %conv17, ptr %flags15, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeIntegerAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @alsoAnInt(ptr noundef, double noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
