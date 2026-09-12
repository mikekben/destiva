; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @valueToText(ptr noundef %pVal, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  store ptr %pVal, ptr %pVal.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load ptr, ptr %pVal.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 18
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pVal.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 16384
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %pVal.addr, align 8
  %call = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %4)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then6, label %if.end

cond.false:                                       ; preds = %if.then
  br i1 false, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.false, %cond.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %5 = load ptr, ptr %pVal.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %6 to i32
  %or = or i32 %conv8, 2
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, ptr %flags7, align 8
  %7 = load ptr, ptr %pVal.addr, align 8
  %enc10 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %enc10, align 2
  %conv11 = zext i8 %8 to i32
  %9 = load i8, ptr %enc.addr, align 1
  %conv12 = zext i8 %9 to i32
  %and13 = and i32 %conv12, -9
  %cmp = icmp ne i32 %conv11, %and13
  br i1 %cmp, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %10 = load ptr, ptr %pVal.addr, align 8
  %11 = load i8, ptr %enc.addr, align 1
  %conv16 = zext i8 %11 to i32
  %and17 = and i32 %conv16, -9
  %call18 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %10, i32 noundef %and17)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %12 = load i8, ptr %enc.addr, align 1
  %conv20 = zext i8 %12 to i32
  %and21 = and i32 %conv20, 8
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end19
  %13 = load ptr, ptr %pVal.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %z, align 8
  %15 = ptrtoint ptr %14 to i64
  %conv24 = trunc i64 %15 to i32
  %and25 = and i32 1, %conv24
  %cmp26 = icmp eq i32 1, %and25
  br i1 %cmp26, label %if.then28, label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %pVal.addr, align 8
  %call29 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %16)
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then28
  store ptr null, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true, %if.end19
  %17 = load ptr, ptr %pVal.addr, align 8
  %call35 = call i32 @sqlite3VdbeMemNulTerminate(ptr noundef %17)
  br label %if.end37

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %pVal.addr, align 8
  %19 = load i8, ptr %enc.addr, align 1
  %call36 = call i32 @sqlite3VdbeMemStringify(ptr noundef %18, i8 noundef zeroext %19, i8 noundef zeroext 0)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end34
  %20 = load ptr, ptr %pVal.addr, align 8
  %enc38 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 2
  %21 = load i8, ptr %enc38, align 2
  %conv39 = zext i8 %21 to i32
  %22 = load i8, ptr %enc.addr, align 1
  %conv40 = zext i8 %22 to i32
  %and41 = and i32 %conv40, -9
  %cmp42 = icmp eq i32 %conv39, %and41
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.end37
  %23 = load ptr, ptr %pVal.addr, align 8
  %z45 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %z45, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

if.else46:                                        ; preds = %if.end37
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else46, %if.then44, %if.then32, %if.then6
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemNulTerminate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemStringify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
